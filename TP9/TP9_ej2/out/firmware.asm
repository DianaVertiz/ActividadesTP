
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	89 0f 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a a1 0f 00 1a c1 0f 00 1a e1 0f 00 1a     ................
1a0000cc:	01 10 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a0020f4 	.word	0x1a0020f4
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	0000001c 	.word	0x0000001c

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
1a000430:	f000 fa13 	bl	1a00085a <main>
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
1a000468:	2204      	movs	r2, #4
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
1a000480:	f000 f812 	bl	1a0004a8 <ledOnOff_clearInEvents>
1a000484:	6878      	ldr	r0, [r7, #4]
1a000486:	f000 f81c 	bl	1a0004c2 <ledOnOff_clearOutEvents>
1a00048a:	bf00      	nop
1a00048c:	3710      	adds	r7, #16
1a00048e:	46bd      	mov	sp, r7
1a000490:	bd80      	pop	{r7, pc}

1a000492 <ledOnOff_enter>:
1a000492:	b580      	push	{r7, lr}
1a000494:	b082      	sub	sp, #8
1a000496:	af00      	add	r7, sp, #0
1a000498:	6078      	str	r0, [r7, #4]
1a00049a:	6878      	ldr	r0, [r7, #4]
1a00049c:	f000 f943 	bl	1a000726 <ledOnOff_enseq_main_region_default>
1a0004a0:	bf00      	nop
1a0004a2:	3708      	adds	r7, #8
1a0004a4:	46bd      	mov	sp, r7
1a0004a6:	bd80      	pop	{r7, pc}

1a0004a8 <ledOnOff_clearInEvents>:
1a0004a8:	b480      	push	{r7}
1a0004aa:	b083      	sub	sp, #12
1a0004ac:	af00      	add	r7, sp, #0
1a0004ae:	6078      	str	r0, [r7, #4]
1a0004b0:	687b      	ldr	r3, [r7, #4]
1a0004b2:	2200      	movs	r2, #0
1a0004b4:	721a      	strb	r2, [r3, #8]
1a0004b6:	bf00      	nop
1a0004b8:	370c      	adds	r7, #12
1a0004ba:	46bd      	mov	sp, r7
1a0004bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004c0:	4770      	bx	lr

1a0004c2 <ledOnOff_clearOutEvents>:
1a0004c2:	b480      	push	{r7}
1a0004c4:	b083      	sub	sp, #12
1a0004c6:	af00      	add	r7, sp, #0
1a0004c8:	6078      	str	r0, [r7, #4]
1a0004ca:	bf00      	nop
1a0004cc:	370c      	adds	r7, #12
1a0004ce:	46bd      	mov	sp, r7
1a0004d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004d4:	4770      	bx	lr
1a0004d6:	Address 0x000000001a0004d6 is out of bounds.


1a0004d8 <ledOnOff_runCycle>:
1a0004d8:	b580      	push	{r7, lr}
1a0004da:	b082      	sub	sp, #8
1a0004dc:	af00      	add	r7, sp, #0
1a0004de:	6078      	str	r0, [r7, #4]
1a0004e0:	6878      	ldr	r0, [r7, #4]
1a0004e2:	f7ff ffee 	bl	1a0004c2 <ledOnOff_clearOutEvents>
1a0004e6:	687b      	ldr	r3, [r7, #4]
1a0004e8:	2200      	movs	r2, #0
1a0004ea:	605a      	str	r2, [r3, #4]
1a0004ec:	e026      	b.n	1a00053c <ledOnOff_runCycle+0x64>
1a0004ee:	687b      	ldr	r3, [r7, #4]
1a0004f0:	685b      	ldr	r3, [r3, #4]
1a0004f2:	687a      	ldr	r2, [r7, #4]
1a0004f4:	5cd3      	ldrb	r3, [r2, r3]
1a0004f6:	2b03      	cmp	r3, #3
1a0004f8:	d81a      	bhi.n	1a000530 <ledOnOff_runCycle+0x58>
1a0004fa:	a201      	add	r2, pc, #4	; (adr r2, 1a000500 <ledOnOff_runCycle+0x28>)
1a0004fc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a000500:	1a000511 	.word	0x1a000511
1a000504:	1a000519 	.word	0x1a000519
1a000508:	1a000521 	.word	0x1a000521
1a00050c:	1a000529 	.word	0x1a000529
1a000510:	6878      	ldr	r0, [r7, #4]
1a000512:	f000 f953 	bl	1a0007bc <ledOnOff_react_main_region_led0>
1a000516:	e00c      	b.n	1a000532 <ledOnOff_runCycle+0x5a>
1a000518:	6878      	ldr	r0, [r7, #4]
1a00051a:	f000 f960 	bl	1a0007de <ledOnOff_react_main_region_led3>
1a00051e:	e008      	b.n	1a000532 <ledOnOff_runCycle+0x5a>
1a000520:	6878      	ldr	r0, [r7, #4]
1a000522:	f000 f96d 	bl	1a000800 <ledOnOff_react_main_region_led1>
1a000526:	e004      	b.n	1a000532 <ledOnOff_runCycle+0x5a>
1a000528:	6878      	ldr	r0, [r7, #4]
1a00052a:	f000 f97a 	bl	1a000822 <ledOnOff_react_main_region_led2>
1a00052e:	e000      	b.n	1a000532 <ledOnOff_runCycle+0x5a>
1a000530:	bf00      	nop
1a000532:	687b      	ldr	r3, [r7, #4]
1a000534:	685b      	ldr	r3, [r3, #4]
1a000536:	1c5a      	adds	r2, r3, #1
1a000538:	687b      	ldr	r3, [r7, #4]
1a00053a:	605a      	str	r2, [r3, #4]
1a00053c:	687b      	ldr	r3, [r7, #4]
1a00053e:	685b      	ldr	r3, [r3, #4]
1a000540:	2b00      	cmp	r3, #0
1a000542:	d0d4      	beq.n	1a0004ee <ledOnOff_runCycle+0x16>
1a000544:	6878      	ldr	r0, [r7, #4]
1a000546:	f7ff ffaf 	bl	1a0004a8 <ledOnOff_clearInEvents>
1a00054a:	bf00      	nop
1a00054c:	3708      	adds	r7, #8
1a00054e:	46bd      	mov	sp, r7
1a000550:	bd80      	pop	{r7, pc}
1a000552:	bf00      	nop

1a000554 <ledOnOffIface_raise_keyPress>:
1a000554:	b480      	push	{r7}
1a000556:	b083      	sub	sp, #12
1a000558:	af00      	add	r7, sp, #0
1a00055a:	6078      	str	r0, [r7, #4]
1a00055c:	687b      	ldr	r3, [r7, #4]
1a00055e:	2201      	movs	r2, #1
1a000560:	721a      	strb	r2, [r3, #8]
1a000562:	bf00      	nop
1a000564:	370c      	adds	r7, #12
1a000566:	46bd      	mov	sp, r7
1a000568:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00056c:	4770      	bx	lr

1a00056e <ledOnOff_check_main_region_led0_tr0_tr0>:
1a00056e:	b480      	push	{r7}
1a000570:	b083      	sub	sp, #12
1a000572:	af00      	add	r7, sp, #0
1a000574:	6078      	str	r0, [r7, #4]
1a000576:	687b      	ldr	r3, [r7, #4]
1a000578:	7a1b      	ldrb	r3, [r3, #8]
1a00057a:	4618      	mov	r0, r3
1a00057c:	370c      	adds	r7, #12
1a00057e:	46bd      	mov	sp, r7
1a000580:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000584:	4770      	bx	lr

1a000586 <ledOnOff_check_main_region_led3_tr0_tr0>:
1a000586:	b480      	push	{r7}
1a000588:	b083      	sub	sp, #12
1a00058a:	af00      	add	r7, sp, #0
1a00058c:	6078      	str	r0, [r7, #4]
1a00058e:	687b      	ldr	r3, [r7, #4]
1a000590:	7a1b      	ldrb	r3, [r3, #8]
1a000592:	4618      	mov	r0, r3
1a000594:	370c      	adds	r7, #12
1a000596:	46bd      	mov	sp, r7
1a000598:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00059c:	4770      	bx	lr

1a00059e <ledOnOff_check_main_region_led1_tr0_tr0>:
1a00059e:	b480      	push	{r7}
1a0005a0:	b083      	sub	sp, #12
1a0005a2:	af00      	add	r7, sp, #0
1a0005a4:	6078      	str	r0, [r7, #4]
1a0005a6:	687b      	ldr	r3, [r7, #4]
1a0005a8:	7a1b      	ldrb	r3, [r3, #8]
1a0005aa:	4618      	mov	r0, r3
1a0005ac:	370c      	adds	r7, #12
1a0005ae:	46bd      	mov	sp, r7
1a0005b0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005b4:	4770      	bx	lr

1a0005b6 <ledOnOff_check_main_region_led2_tr0_tr0>:
1a0005b6:	b480      	push	{r7}
1a0005b8:	b083      	sub	sp, #12
1a0005ba:	af00      	add	r7, sp, #0
1a0005bc:	6078      	str	r0, [r7, #4]
1a0005be:	687b      	ldr	r3, [r7, #4]
1a0005c0:	7a1b      	ldrb	r3, [r3, #8]
1a0005c2:	4618      	mov	r0, r3
1a0005c4:	370c      	adds	r7, #12
1a0005c6:	46bd      	mov	sp, r7
1a0005c8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005cc:	4770      	bx	lr

1a0005ce <ledOnOff_effect_main_region_led0_tr0>:
1a0005ce:	b580      	push	{r7, lr}
1a0005d0:	b082      	sub	sp, #8
1a0005d2:	af00      	add	r7, sp, #0
1a0005d4:	6078      	str	r0, [r7, #4]
1a0005d6:	6878      	ldr	r0, [r7, #4]
1a0005d8:	f000 f8b0 	bl	1a00073c <ledOnOff_exseq_main_region_led0>
1a0005dc:	6878      	ldr	r0, [r7, #4]
1a0005de:	f000 f880 	bl	1a0006e2 <ledOnOff_enseq_main_region_led1_default>
1a0005e2:	bf00      	nop
1a0005e4:	3708      	adds	r7, #8
1a0005e6:	46bd      	mov	sp, r7
1a0005e8:	bd80      	pop	{r7, pc}

1a0005ea <ledOnOff_effect_main_region_led3_tr0>:
1a0005ea:	b580      	push	{r7, lr}
1a0005ec:	b082      	sub	sp, #8
1a0005ee:	af00      	add	r7, sp, #0
1a0005f0:	6078      	str	r0, [r7, #4]
1a0005f2:	6878      	ldr	r0, [r7, #4]
1a0005f4:	f000 f8b2 	bl	1a00075c <ledOnOff_exseq_main_region_led3>
1a0005f8:	6878      	ldr	r0, [r7, #4]
1a0005fa:	f000 f850 	bl	1a00069e <ledOnOff_enseq_main_region_led0_default>
1a0005fe:	bf00      	nop
1a000600:	3708      	adds	r7, #8
1a000602:	46bd      	mov	sp, r7
1a000604:	bd80      	pop	{r7, pc}

1a000606 <ledOnOff_effect_main_region_led1_tr0>:
1a000606:	b580      	push	{r7, lr}
1a000608:	b082      	sub	sp, #8
1a00060a:	af00      	add	r7, sp, #0
1a00060c:	6078      	str	r0, [r7, #4]
1a00060e:	6878      	ldr	r0, [r7, #4]
1a000610:	f000 f8b4 	bl	1a00077c <ledOnOff_exseq_main_region_led1>
1a000614:	6878      	ldr	r0, [r7, #4]
1a000616:	f000 f875 	bl	1a000704 <ledOnOff_enseq_main_region_led2_default>
1a00061a:	bf00      	nop
1a00061c:	3708      	adds	r7, #8
1a00061e:	46bd      	mov	sp, r7
1a000620:	bd80      	pop	{r7, pc}

1a000622 <ledOnOff_effect_main_region_led2_tr0>:
1a000622:	b580      	push	{r7, lr}
1a000624:	b082      	sub	sp, #8
1a000626:	af00      	add	r7, sp, #0
1a000628:	6078      	str	r0, [r7, #4]
1a00062a:	6878      	ldr	r0, [r7, #4]
1a00062c:	f000 f8b6 	bl	1a00079c <ledOnOff_exseq_main_region_led2>
1a000630:	6878      	ldr	r0, [r7, #4]
1a000632:	f000 f845 	bl	1a0006c0 <ledOnOff_enseq_main_region_led3_default>
1a000636:	bf00      	nop
1a000638:	3708      	adds	r7, #8
1a00063a:	46bd      	mov	sp, r7
1a00063c:	bd80      	pop	{r7, pc}

1a00063e <ledOnOff_enact_main_region_led0>:
1a00063e:	b580      	push	{r7, lr}
1a000640:	b082      	sub	sp, #8
1a000642:	af00      	add	r7, sp, #0
1a000644:	6078      	str	r0, [r7, #4]
1a000646:	2104      	movs	r1, #4
1a000648:	6878      	ldr	r0, [r7, #4]
1a00064a:	f000 fad2 	bl	1a000bf2 <ledOnOffIface_setLedFromMask>
1a00064e:	bf00      	nop
1a000650:	3708      	adds	r7, #8
1a000652:	46bd      	mov	sp, r7
1a000654:	bd80      	pop	{r7, pc}

1a000656 <ledOnOff_enact_main_region_led3>:
1a000656:	b580      	push	{r7, lr}
1a000658:	b082      	sub	sp, #8
1a00065a:	af00      	add	r7, sp, #0
1a00065c:	6078      	str	r0, [r7, #4]
1a00065e:	2120      	movs	r1, #32
1a000660:	6878      	ldr	r0, [r7, #4]
1a000662:	f000 fac6 	bl	1a000bf2 <ledOnOffIface_setLedFromMask>
1a000666:	bf00      	nop
1a000668:	3708      	adds	r7, #8
1a00066a:	46bd      	mov	sp, r7
1a00066c:	bd80      	pop	{r7, pc}

1a00066e <ledOnOff_enact_main_region_led1>:
1a00066e:	b580      	push	{r7, lr}
1a000670:	b082      	sub	sp, #8
1a000672:	af00      	add	r7, sp, #0
1a000674:	6078      	str	r0, [r7, #4]
1a000676:	2108      	movs	r1, #8
1a000678:	6878      	ldr	r0, [r7, #4]
1a00067a:	f000 faba 	bl	1a000bf2 <ledOnOffIface_setLedFromMask>
1a00067e:	bf00      	nop
1a000680:	3708      	adds	r7, #8
1a000682:	46bd      	mov	sp, r7
1a000684:	bd80      	pop	{r7, pc}

1a000686 <ledOnOff_enact_main_region_led2>:
1a000686:	b580      	push	{r7, lr}
1a000688:	b082      	sub	sp, #8
1a00068a:	af00      	add	r7, sp, #0
1a00068c:	6078      	str	r0, [r7, #4]
1a00068e:	2110      	movs	r1, #16
1a000690:	6878      	ldr	r0, [r7, #4]
1a000692:	f000 faae 	bl	1a000bf2 <ledOnOffIface_setLedFromMask>
1a000696:	bf00      	nop
1a000698:	3708      	adds	r7, #8
1a00069a:	46bd      	mov	sp, r7
1a00069c:	bd80      	pop	{r7, pc}

1a00069e <ledOnOff_enseq_main_region_led0_default>:
1a00069e:	b580      	push	{r7, lr}
1a0006a0:	b082      	sub	sp, #8
1a0006a2:	af00      	add	r7, sp, #0
1a0006a4:	6078      	str	r0, [r7, #4]
1a0006a6:	6878      	ldr	r0, [r7, #4]
1a0006a8:	f7ff ffc9 	bl	1a00063e <ledOnOff_enact_main_region_led0>
1a0006ac:	687b      	ldr	r3, [r7, #4]
1a0006ae:	2200      	movs	r2, #0
1a0006b0:	701a      	strb	r2, [r3, #0]
1a0006b2:	687b      	ldr	r3, [r7, #4]
1a0006b4:	2200      	movs	r2, #0
1a0006b6:	605a      	str	r2, [r3, #4]
1a0006b8:	bf00      	nop
1a0006ba:	3708      	adds	r7, #8
1a0006bc:	46bd      	mov	sp, r7
1a0006be:	bd80      	pop	{r7, pc}

1a0006c0 <ledOnOff_enseq_main_region_led3_default>:
1a0006c0:	b580      	push	{r7, lr}
1a0006c2:	b082      	sub	sp, #8
1a0006c4:	af00      	add	r7, sp, #0
1a0006c6:	6078      	str	r0, [r7, #4]
1a0006c8:	6878      	ldr	r0, [r7, #4]
1a0006ca:	f7ff ffc4 	bl	1a000656 <ledOnOff_enact_main_region_led3>
1a0006ce:	687b      	ldr	r3, [r7, #4]
1a0006d0:	2201      	movs	r2, #1
1a0006d2:	701a      	strb	r2, [r3, #0]
1a0006d4:	687b      	ldr	r3, [r7, #4]
1a0006d6:	2200      	movs	r2, #0
1a0006d8:	605a      	str	r2, [r3, #4]
1a0006da:	bf00      	nop
1a0006dc:	3708      	adds	r7, #8
1a0006de:	46bd      	mov	sp, r7
1a0006e0:	bd80      	pop	{r7, pc}

1a0006e2 <ledOnOff_enseq_main_region_led1_default>:
1a0006e2:	b580      	push	{r7, lr}
1a0006e4:	b082      	sub	sp, #8
1a0006e6:	af00      	add	r7, sp, #0
1a0006e8:	6078      	str	r0, [r7, #4]
1a0006ea:	6878      	ldr	r0, [r7, #4]
1a0006ec:	f7ff ffbf 	bl	1a00066e <ledOnOff_enact_main_region_led1>
1a0006f0:	687b      	ldr	r3, [r7, #4]
1a0006f2:	2202      	movs	r2, #2
1a0006f4:	701a      	strb	r2, [r3, #0]
1a0006f6:	687b      	ldr	r3, [r7, #4]
1a0006f8:	2200      	movs	r2, #0
1a0006fa:	605a      	str	r2, [r3, #4]
1a0006fc:	bf00      	nop
1a0006fe:	3708      	adds	r7, #8
1a000700:	46bd      	mov	sp, r7
1a000702:	bd80      	pop	{r7, pc}

1a000704 <ledOnOff_enseq_main_region_led2_default>:
1a000704:	b580      	push	{r7, lr}
1a000706:	b082      	sub	sp, #8
1a000708:	af00      	add	r7, sp, #0
1a00070a:	6078      	str	r0, [r7, #4]
1a00070c:	6878      	ldr	r0, [r7, #4]
1a00070e:	f7ff ffba 	bl	1a000686 <ledOnOff_enact_main_region_led2>
1a000712:	687b      	ldr	r3, [r7, #4]
1a000714:	2203      	movs	r2, #3
1a000716:	701a      	strb	r2, [r3, #0]
1a000718:	687b      	ldr	r3, [r7, #4]
1a00071a:	2200      	movs	r2, #0
1a00071c:	605a      	str	r2, [r3, #4]
1a00071e:	bf00      	nop
1a000720:	3708      	adds	r7, #8
1a000722:	46bd      	mov	sp, r7
1a000724:	bd80      	pop	{r7, pc}

1a000726 <ledOnOff_enseq_main_region_default>:
1a000726:	b580      	push	{r7, lr}
1a000728:	b082      	sub	sp, #8
1a00072a:	af00      	add	r7, sp, #0
1a00072c:	6078      	str	r0, [r7, #4]
1a00072e:	6878      	ldr	r0, [r7, #4]
1a000730:	f000 f888 	bl	1a000844 <ledOnOff_react_main_region__entry_Default>
1a000734:	bf00      	nop
1a000736:	3708      	adds	r7, #8
1a000738:	46bd      	mov	sp, r7
1a00073a:	bd80      	pop	{r7, pc}

1a00073c <ledOnOff_exseq_main_region_led0>:
1a00073c:	b480      	push	{r7}
1a00073e:	b083      	sub	sp, #12
1a000740:	af00      	add	r7, sp, #0
1a000742:	6078      	str	r0, [r7, #4]
1a000744:	687b      	ldr	r3, [r7, #4]
1a000746:	2204      	movs	r2, #4
1a000748:	701a      	strb	r2, [r3, #0]
1a00074a:	687b      	ldr	r3, [r7, #4]
1a00074c:	2200      	movs	r2, #0
1a00074e:	605a      	str	r2, [r3, #4]
1a000750:	bf00      	nop
1a000752:	370c      	adds	r7, #12
1a000754:	46bd      	mov	sp, r7
1a000756:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00075a:	4770      	bx	lr

1a00075c <ledOnOff_exseq_main_region_led3>:
1a00075c:	b480      	push	{r7}
1a00075e:	b083      	sub	sp, #12
1a000760:	af00      	add	r7, sp, #0
1a000762:	6078      	str	r0, [r7, #4]
1a000764:	687b      	ldr	r3, [r7, #4]
1a000766:	2204      	movs	r2, #4
1a000768:	701a      	strb	r2, [r3, #0]
1a00076a:	687b      	ldr	r3, [r7, #4]
1a00076c:	2200      	movs	r2, #0
1a00076e:	605a      	str	r2, [r3, #4]
1a000770:	bf00      	nop
1a000772:	370c      	adds	r7, #12
1a000774:	46bd      	mov	sp, r7
1a000776:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00077a:	4770      	bx	lr

1a00077c <ledOnOff_exseq_main_region_led1>:
1a00077c:	b480      	push	{r7}
1a00077e:	b083      	sub	sp, #12
1a000780:	af00      	add	r7, sp, #0
1a000782:	6078      	str	r0, [r7, #4]
1a000784:	687b      	ldr	r3, [r7, #4]
1a000786:	2204      	movs	r2, #4
1a000788:	701a      	strb	r2, [r3, #0]
1a00078a:	687b      	ldr	r3, [r7, #4]
1a00078c:	2200      	movs	r2, #0
1a00078e:	605a      	str	r2, [r3, #4]
1a000790:	bf00      	nop
1a000792:	370c      	adds	r7, #12
1a000794:	46bd      	mov	sp, r7
1a000796:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00079a:	4770      	bx	lr

1a00079c <ledOnOff_exseq_main_region_led2>:
1a00079c:	b480      	push	{r7}
1a00079e:	b083      	sub	sp, #12
1a0007a0:	af00      	add	r7, sp, #0
1a0007a2:	6078      	str	r0, [r7, #4]
1a0007a4:	687b      	ldr	r3, [r7, #4]
1a0007a6:	2204      	movs	r2, #4
1a0007a8:	701a      	strb	r2, [r3, #0]
1a0007aa:	687b      	ldr	r3, [r7, #4]
1a0007ac:	2200      	movs	r2, #0
1a0007ae:	605a      	str	r2, [r3, #4]
1a0007b0:	bf00      	nop
1a0007b2:	370c      	adds	r7, #12
1a0007b4:	46bd      	mov	sp, r7
1a0007b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ba:	4770      	bx	lr

1a0007bc <ledOnOff_react_main_region_led0>:
1a0007bc:	b580      	push	{r7, lr}
1a0007be:	b082      	sub	sp, #8
1a0007c0:	af00      	add	r7, sp, #0
1a0007c2:	6078      	str	r0, [r7, #4]
1a0007c4:	6878      	ldr	r0, [r7, #4]
1a0007c6:	f7ff fed2 	bl	1a00056e <ledOnOff_check_main_region_led0_tr0_tr0>
1a0007ca:	4603      	mov	r3, r0
1a0007cc:	2b00      	cmp	r3, #0
1a0007ce:	d002      	beq.n	1a0007d6 <ledOnOff_react_main_region_led0+0x1a>
1a0007d0:	6878      	ldr	r0, [r7, #4]
1a0007d2:	f7ff fefc 	bl	1a0005ce <ledOnOff_effect_main_region_led0_tr0>
1a0007d6:	bf00      	nop
1a0007d8:	3708      	adds	r7, #8
1a0007da:	46bd      	mov	sp, r7
1a0007dc:	bd80      	pop	{r7, pc}

1a0007de <ledOnOff_react_main_region_led3>:
1a0007de:	b580      	push	{r7, lr}
1a0007e0:	b082      	sub	sp, #8
1a0007e2:	af00      	add	r7, sp, #0
1a0007e4:	6078      	str	r0, [r7, #4]
1a0007e6:	6878      	ldr	r0, [r7, #4]
1a0007e8:	f7ff fecd 	bl	1a000586 <ledOnOff_check_main_region_led3_tr0_tr0>
1a0007ec:	4603      	mov	r3, r0
1a0007ee:	2b00      	cmp	r3, #0
1a0007f0:	d002      	beq.n	1a0007f8 <ledOnOff_react_main_region_led3+0x1a>
1a0007f2:	6878      	ldr	r0, [r7, #4]
1a0007f4:	f7ff fef9 	bl	1a0005ea <ledOnOff_effect_main_region_led3_tr0>
1a0007f8:	bf00      	nop
1a0007fa:	3708      	adds	r7, #8
1a0007fc:	46bd      	mov	sp, r7
1a0007fe:	bd80      	pop	{r7, pc}

1a000800 <ledOnOff_react_main_region_led1>:
1a000800:	b580      	push	{r7, lr}
1a000802:	b082      	sub	sp, #8
1a000804:	af00      	add	r7, sp, #0
1a000806:	6078      	str	r0, [r7, #4]
1a000808:	6878      	ldr	r0, [r7, #4]
1a00080a:	f7ff fec8 	bl	1a00059e <ledOnOff_check_main_region_led1_tr0_tr0>
1a00080e:	4603      	mov	r3, r0
1a000810:	2b00      	cmp	r3, #0
1a000812:	d002      	beq.n	1a00081a <ledOnOff_react_main_region_led1+0x1a>
1a000814:	6878      	ldr	r0, [r7, #4]
1a000816:	f7ff fef6 	bl	1a000606 <ledOnOff_effect_main_region_led1_tr0>
1a00081a:	bf00      	nop
1a00081c:	3708      	adds	r7, #8
1a00081e:	46bd      	mov	sp, r7
1a000820:	bd80      	pop	{r7, pc}

1a000822 <ledOnOff_react_main_region_led2>:
1a000822:	b580      	push	{r7, lr}
1a000824:	b082      	sub	sp, #8
1a000826:	af00      	add	r7, sp, #0
1a000828:	6078      	str	r0, [r7, #4]
1a00082a:	6878      	ldr	r0, [r7, #4]
1a00082c:	f7ff fec3 	bl	1a0005b6 <ledOnOff_check_main_region_led2_tr0_tr0>
1a000830:	4603      	mov	r3, r0
1a000832:	2b00      	cmp	r3, #0
1a000834:	d002      	beq.n	1a00083c <ledOnOff_react_main_region_led2+0x1a>
1a000836:	6878      	ldr	r0, [r7, #4]
1a000838:	f7ff fef3 	bl	1a000622 <ledOnOff_effect_main_region_led2_tr0>
1a00083c:	bf00      	nop
1a00083e:	3708      	adds	r7, #8
1a000840:	46bd      	mov	sp, r7
1a000842:	bd80      	pop	{r7, pc}

1a000844 <ledOnOff_react_main_region__entry_Default>:
1a000844:	b580      	push	{r7, lr}
1a000846:	b082      	sub	sp, #8
1a000848:	af00      	add	r7, sp, #0
1a00084a:	6078      	str	r0, [r7, #4]
1a00084c:	6878      	ldr	r0, [r7, #4]
1a00084e:	f7ff ff26 	bl	1a00069e <ledOnOff_enseq_main_region_led0_default>
1a000852:	bf00      	nop
1a000854:	3708      	adds	r7, #8
1a000856:	46bd      	mov	sp, r7
1a000858:	bd80      	pop	{r7, pc}

1a00085a <main>:
1a00085a:	b580      	push	{r7, lr}
1a00085c:	b084      	sub	sp, #16
1a00085e:	af00      	add	r7, sp, #0
1a000860:	f000 fa18 	bl	1a000c94 <sysInit>
1a000864:	1d3b      	adds	r3, r7, #4
1a000866:	4618      	mov	r0, r3
1a000868:	f7ff fdf4 	bl	1a000454 <ledOnOff_init>
1a00086c:	1d3b      	adds	r3, r7, #4
1a00086e:	4618      	mov	r0, r3
1a000870:	f7ff fe0f 	bl	1a000492 <ledOnOff_enter>
1a000874:	bf30      	wfi
1a000876:	f000 fbd3 	bl	1a001020 <getKeyPressed>
1a00087a:	4603      	mov	r3, r0
1a00087c:	2b00      	cmp	r3, #0
1a00087e:	d005      	beq.n	1a00088c <main+0x32>
1a000880:	1d3b      	adds	r3, r7, #4
1a000882:	4618      	mov	r0, r3
1a000884:	f7ff fe66 	bl	1a000554 <ledOnOffIface_raise_keyPress>
1a000888:	f000 fbd6 	bl	1a001038 <rstKeyPressed>
1a00088c:	1d3b      	adds	r3, r7, #4
1a00088e:	4618      	mov	r0, r3
1a000890:	f7ff fe22 	bl	1a0004d8 <ledOnOff_runCycle>
1a000894:	e7ee      	b.n	1a000874 <main+0x1a>
1a000896:	Address 0x000000001a000896 is out of bounds.


1a000898 <NVIC_EnableIRQ>:
1a000898:	b480      	push	{r7}
1a00089a:	b083      	sub	sp, #12
1a00089c:	af00      	add	r7, sp, #0
1a00089e:	4603      	mov	r3, r0
1a0008a0:	71fb      	strb	r3, [r7, #7]
1a0008a2:	79fb      	ldrb	r3, [r7, #7]
1a0008a4:	f003 031f 	and.w	r3, r3, #31
1a0008a8:	2201      	movs	r2, #1
1a0008aa:	fa02 f103 	lsl.w	r1, r2, r3
1a0008ae:	4a06      	ldr	r2, [pc, #24]	; (1a0008c8 <NVIC_EnableIRQ+0x30>)
1a0008b0:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0008b4:	095b      	lsrs	r3, r3, #5
1a0008b6:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0008ba:	bf00      	nop
1a0008bc:	370c      	adds	r7, #12
1a0008be:	46bd      	mov	sp, r7
1a0008c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008c4:	4770      	bx	lr
1a0008c6:	bf00      	nop
1a0008c8:	e000e100 	.word	0xe000e100

1a0008cc <NVIC_ClearPendingIRQ>:
1a0008cc:	b480      	push	{r7}
1a0008ce:	b083      	sub	sp, #12
1a0008d0:	af00      	add	r7, sp, #0
1a0008d2:	4603      	mov	r3, r0
1a0008d4:	71fb      	strb	r3, [r7, #7]
1a0008d6:	79fb      	ldrb	r3, [r7, #7]
1a0008d8:	f003 031f 	and.w	r3, r3, #31
1a0008dc:	2201      	movs	r2, #1
1a0008de:	fa02 f103 	lsl.w	r1, r2, r3
1a0008e2:	4a06      	ldr	r2, [pc, #24]	; (1a0008fc <NVIC_ClearPendingIRQ+0x30>)
1a0008e4:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0008e8:	095b      	lsrs	r3, r3, #5
1a0008ea:	3360      	adds	r3, #96	; 0x60
1a0008ec:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0008f0:	bf00      	nop
1a0008f2:	370c      	adds	r7, #12
1a0008f4:	46bd      	mov	sp, r7
1a0008f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008fa:	4770      	bx	lr
1a0008fc:	e000e100 	.word	0xe000e100

1a000900 <NVIC_SetPriority>:
1a000900:	b480      	push	{r7}
1a000902:	b083      	sub	sp, #12
1a000904:	af00      	add	r7, sp, #0
1a000906:	4603      	mov	r3, r0
1a000908:	6039      	str	r1, [r7, #0]
1a00090a:	71fb      	strb	r3, [r7, #7]
1a00090c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000910:	2b00      	cmp	r3, #0
1a000912:	da0b      	bge.n	1a00092c <NVIC_SetPriority+0x2c>
1a000914:	683b      	ldr	r3, [r7, #0]
1a000916:	b2da      	uxtb	r2, r3
1a000918:	490c      	ldr	r1, [pc, #48]	; (1a00094c <NVIC_SetPriority+0x4c>)
1a00091a:	79fb      	ldrb	r3, [r7, #7]
1a00091c:	f003 030f 	and.w	r3, r3, #15
1a000920:	3b04      	subs	r3, #4
1a000922:	0152      	lsls	r2, r2, #5
1a000924:	b2d2      	uxtb	r2, r2
1a000926:	440b      	add	r3, r1
1a000928:	761a      	strb	r2, [r3, #24]
1a00092a:	e009      	b.n	1a000940 <NVIC_SetPriority+0x40>
1a00092c:	683b      	ldr	r3, [r7, #0]
1a00092e:	b2da      	uxtb	r2, r3
1a000930:	4907      	ldr	r1, [pc, #28]	; (1a000950 <NVIC_SetPriority+0x50>)
1a000932:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000936:	0152      	lsls	r2, r2, #5
1a000938:	b2d2      	uxtb	r2, r2
1a00093a:	440b      	add	r3, r1
1a00093c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a000940:	bf00      	nop
1a000942:	370c      	adds	r7, #12
1a000944:	46bd      	mov	sp, r7
1a000946:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00094a:	4770      	bx	lr
1a00094c:	e000ed00 	.word	0xe000ed00
1a000950:	e000e100 	.word	0xe000e100

1a000954 <SysTick_Config>:
1a000954:	b580      	push	{r7, lr}
1a000956:	b082      	sub	sp, #8
1a000958:	af00      	add	r7, sp, #0
1a00095a:	6078      	str	r0, [r7, #4]
1a00095c:	687b      	ldr	r3, [r7, #4]
1a00095e:	3b01      	subs	r3, #1
1a000960:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a000964:	d301      	bcc.n	1a00096a <SysTick_Config+0x16>
1a000966:	2301      	movs	r3, #1
1a000968:	e00f      	b.n	1a00098a <SysTick_Config+0x36>
1a00096a:	4a0a      	ldr	r2, [pc, #40]	; (1a000994 <SysTick_Config+0x40>)
1a00096c:	687b      	ldr	r3, [r7, #4]
1a00096e:	3b01      	subs	r3, #1
1a000970:	6053      	str	r3, [r2, #4]
1a000972:	2107      	movs	r1, #7
1a000974:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000978:	f7ff ffc2 	bl	1a000900 <NVIC_SetPriority>
1a00097c:	4b05      	ldr	r3, [pc, #20]	; (1a000994 <SysTick_Config+0x40>)
1a00097e:	2200      	movs	r2, #0
1a000980:	609a      	str	r2, [r3, #8]
1a000982:	4b04      	ldr	r3, [pc, #16]	; (1a000994 <SysTick_Config+0x40>)
1a000984:	2207      	movs	r2, #7
1a000986:	601a      	str	r2, [r3, #0]
1a000988:	2300      	movs	r3, #0
1a00098a:	4618      	mov	r0, r3
1a00098c:	3708      	adds	r7, #8
1a00098e:	46bd      	mov	sp, r7
1a000990:	bd80      	pop	{r7, pc}
1a000992:	bf00      	nop
1a000994:	e000e010 	.word	0xe000e010

1a000998 <Chip_SCU_PinMuxSet>:
1a000998:	b480      	push	{r7}
1a00099a:	b083      	sub	sp, #12
1a00099c:	af00      	add	r7, sp, #0
1a00099e:	4603      	mov	r3, r0
1a0009a0:	71fb      	strb	r3, [r7, #7]
1a0009a2:	460b      	mov	r3, r1
1a0009a4:	71bb      	strb	r3, [r7, #6]
1a0009a6:	4613      	mov	r3, r2
1a0009a8:	80bb      	strh	r3, [r7, #4]
1a0009aa:	4807      	ldr	r0, [pc, #28]	; (1a0009c8 <Chip_SCU_PinMuxSet+0x30>)
1a0009ac:	79f9      	ldrb	r1, [r7, #7]
1a0009ae:	79bb      	ldrb	r3, [r7, #6]
1a0009b0:	88ba      	ldrh	r2, [r7, #4]
1a0009b2:	0149      	lsls	r1, r1, #5
1a0009b4:	440b      	add	r3, r1
1a0009b6:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a0009ba:	bf00      	nop
1a0009bc:	370c      	adds	r7, #12
1a0009be:	46bd      	mov	sp, r7
1a0009c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009c4:	4770      	bx	lr
1a0009c6:	bf00      	nop
1a0009c8:	40086000 	.word	0x40086000

1a0009cc <Chip_SCU_GPIOIntPinSel>:
1a0009cc:	b480      	push	{r7}
1a0009ce:	b085      	sub	sp, #20
1a0009d0:	af00      	add	r7, sp, #0
1a0009d2:	4603      	mov	r3, r0
1a0009d4:	71fb      	strb	r3, [r7, #7]
1a0009d6:	460b      	mov	r3, r1
1a0009d8:	71bb      	strb	r3, [r7, #6]
1a0009da:	4613      	mov	r3, r2
1a0009dc:	717b      	strb	r3, [r7, #5]
1a0009de:	79fb      	ldrb	r3, [r7, #7]
1a0009e0:	00db      	lsls	r3, r3, #3
1a0009e2:	f003 0318 	and.w	r3, r3, #24
1a0009e6:	60fb      	str	r3, [r7, #12]
1a0009e8:	79bb      	ldrb	r3, [r7, #6]
1a0009ea:	015b      	lsls	r3, r3, #5
1a0009ec:	b2da      	uxtb	r2, r3
1a0009ee:	797b      	ldrb	r3, [r7, #5]
1a0009f0:	f003 031f 	and.w	r3, r3, #31
1a0009f4:	431a      	orrs	r2, r3
1a0009f6:	68fb      	ldr	r3, [r7, #12]
1a0009f8:	fa02 f303 	lsl.w	r3, r2, r3
1a0009fc:	60bb      	str	r3, [r7, #8]
1a0009fe:	4a0f      	ldr	r2, [pc, #60]	; (1a000a3c <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a00:	79fb      	ldrb	r3, [r7, #7]
1a000a02:	089b      	lsrs	r3, r3, #2
1a000a04:	b2db      	uxtb	r3, r3
1a000a06:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000a0a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000a0e:	21ff      	movs	r1, #255	; 0xff
1a000a10:	68fa      	ldr	r2, [r7, #12]
1a000a12:	fa01 f202 	lsl.w	r2, r1, r2
1a000a16:	43d2      	mvns	r2, r2
1a000a18:	401a      	ands	r2, r3
1a000a1a:	4908      	ldr	r1, [pc, #32]	; (1a000a3c <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a1c:	79fb      	ldrb	r3, [r7, #7]
1a000a1e:	089b      	lsrs	r3, r3, #2
1a000a20:	b2db      	uxtb	r3, r3
1a000a22:	4618      	mov	r0, r3
1a000a24:	68bb      	ldr	r3, [r7, #8]
1a000a26:	431a      	orrs	r2, r3
1a000a28:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000a2c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000a30:	bf00      	nop
1a000a32:	3714      	adds	r7, #20
1a000a34:	46bd      	mov	sp, r7
1a000a36:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a3a:	4770      	bx	lr
1a000a3c:	40086000 	.word	0x40086000

1a000a40 <Chip_GPIO_SetPinDIROutput>:
1a000a40:	b480      	push	{r7}
1a000a42:	b083      	sub	sp, #12
1a000a44:	af00      	add	r7, sp, #0
1a000a46:	6078      	str	r0, [r7, #4]
1a000a48:	460b      	mov	r3, r1
1a000a4a:	70fb      	strb	r3, [r7, #3]
1a000a4c:	4613      	mov	r3, r2
1a000a4e:	70bb      	strb	r3, [r7, #2]
1a000a50:	78fa      	ldrb	r2, [r7, #3]
1a000a52:	687b      	ldr	r3, [r7, #4]
1a000a54:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000a58:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000a5c:	78bb      	ldrb	r3, [r7, #2]
1a000a5e:	2201      	movs	r2, #1
1a000a60:	fa02 f303 	lsl.w	r3, r2, r3
1a000a64:	78fa      	ldrb	r2, [r7, #3]
1a000a66:	4319      	orrs	r1, r3
1a000a68:	687b      	ldr	r3, [r7, #4]
1a000a6a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000a6e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000a72:	bf00      	nop
1a000a74:	370c      	adds	r7, #12
1a000a76:	46bd      	mov	sp, r7
1a000a78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a7c:	4770      	bx	lr

1a000a7e <Chip_GPIO_SetPinDIRInput>:
1a000a7e:	b480      	push	{r7}
1a000a80:	b083      	sub	sp, #12
1a000a82:	af00      	add	r7, sp, #0
1a000a84:	6078      	str	r0, [r7, #4]
1a000a86:	460b      	mov	r3, r1
1a000a88:	70fb      	strb	r3, [r7, #3]
1a000a8a:	4613      	mov	r3, r2
1a000a8c:	70bb      	strb	r3, [r7, #2]
1a000a8e:	78fa      	ldrb	r2, [r7, #3]
1a000a90:	687b      	ldr	r3, [r7, #4]
1a000a92:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000a96:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000a9a:	78bb      	ldrb	r3, [r7, #2]
1a000a9c:	2201      	movs	r2, #1
1a000a9e:	fa02 f303 	lsl.w	r3, r2, r3
1a000aa2:	43db      	mvns	r3, r3
1a000aa4:	78fa      	ldrb	r2, [r7, #3]
1a000aa6:	4019      	ands	r1, r3
1a000aa8:	687b      	ldr	r3, [r7, #4]
1a000aaa:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000aae:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000ab2:	bf00      	nop
1a000ab4:	370c      	adds	r7, #12
1a000ab6:	46bd      	mov	sp, r7
1a000ab8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000abc:	4770      	bx	lr

1a000abe <Chip_GPIO_SetPinOutHigh>:
1a000abe:	b480      	push	{r7}
1a000ac0:	b083      	sub	sp, #12
1a000ac2:	af00      	add	r7, sp, #0
1a000ac4:	6078      	str	r0, [r7, #4]
1a000ac6:	460b      	mov	r3, r1
1a000ac8:	70fb      	strb	r3, [r7, #3]
1a000aca:	4613      	mov	r3, r2
1a000acc:	70bb      	strb	r3, [r7, #2]
1a000ace:	78bb      	ldrb	r3, [r7, #2]
1a000ad0:	2201      	movs	r2, #1
1a000ad2:	fa02 f303 	lsl.w	r3, r2, r3
1a000ad6:	78fa      	ldrb	r2, [r7, #3]
1a000ad8:	4619      	mov	r1, r3
1a000ada:	687b      	ldr	r3, [r7, #4]
1a000adc:	f502 6208 	add.w	r2, r2, #2176	; 0x880
1a000ae0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000ae4:	bf00      	nop
1a000ae6:	370c      	adds	r7, #12
1a000ae8:	46bd      	mov	sp, r7
1a000aea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aee:	4770      	bx	lr

1a000af0 <Chip_GPIO_SetPinOutLow>:
1a000af0:	b480      	push	{r7}
1a000af2:	b083      	sub	sp, #12
1a000af4:	af00      	add	r7, sp, #0
1a000af6:	6078      	str	r0, [r7, #4]
1a000af8:	460b      	mov	r3, r1
1a000afa:	70fb      	strb	r3, [r7, #3]
1a000afc:	4613      	mov	r3, r2
1a000afe:	70bb      	strb	r3, [r7, #2]
1a000b00:	78bb      	ldrb	r3, [r7, #2]
1a000b02:	2201      	movs	r2, #1
1a000b04:	fa02 f303 	lsl.w	r3, r2, r3
1a000b08:	78fa      	ldrb	r2, [r7, #3]
1a000b0a:	4619      	mov	r1, r3
1a000b0c:	687b      	ldr	r3, [r7, #4]
1a000b0e:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000b12:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000b16:	bf00      	nop
1a000b18:	370c      	adds	r7, #12
1a000b1a:	46bd      	mov	sp, r7
1a000b1c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b20:	4770      	bx	lr

1a000b22 <Chip_PININT_SetPinModeEdge>:
1a000b22:	b480      	push	{r7}
1a000b24:	b083      	sub	sp, #12
1a000b26:	af00      	add	r7, sp, #0
1a000b28:	6078      	str	r0, [r7, #4]
1a000b2a:	6039      	str	r1, [r7, #0]
1a000b2c:	687b      	ldr	r3, [r7, #4]
1a000b2e:	681a      	ldr	r2, [r3, #0]
1a000b30:	683b      	ldr	r3, [r7, #0]
1a000b32:	43db      	mvns	r3, r3
1a000b34:	401a      	ands	r2, r3
1a000b36:	687b      	ldr	r3, [r7, #4]
1a000b38:	601a      	str	r2, [r3, #0]
1a000b3a:	bf00      	nop
1a000b3c:	370c      	adds	r7, #12
1a000b3e:	46bd      	mov	sp, r7
1a000b40:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b44:	4770      	bx	lr

1a000b46 <Chip_PININT_EnableIntLow>:
1a000b46:	b480      	push	{r7}
1a000b48:	b083      	sub	sp, #12
1a000b4a:	af00      	add	r7, sp, #0
1a000b4c:	6078      	str	r0, [r7, #4]
1a000b4e:	6039      	str	r1, [r7, #0]
1a000b50:	687b      	ldr	r3, [r7, #4]
1a000b52:	683a      	ldr	r2, [r7, #0]
1a000b54:	615a      	str	r2, [r3, #20]
1a000b56:	bf00      	nop
1a000b58:	370c      	adds	r7, #12
1a000b5a:	46bd      	mov	sp, r7
1a000b5c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b60:	4770      	bx	lr

1a000b62 <Chip_PININT_ClearIntStatus>:
1a000b62:	b480      	push	{r7}
1a000b64:	b083      	sub	sp, #12
1a000b66:	af00      	add	r7, sp, #0
1a000b68:	6078      	str	r0, [r7, #4]
1a000b6a:	6039      	str	r1, [r7, #0]
1a000b6c:	687b      	ldr	r3, [r7, #4]
1a000b6e:	683a      	ldr	r2, [r7, #0]
1a000b70:	625a      	str	r2, [r3, #36]	; 0x24
1a000b72:	bf00      	nop
1a000b74:	370c      	adds	r7, #12
1a000b76:	46bd      	mov	sp, r7
1a000b78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b7c:	4770      	bx	lr

1a000b7e <Chip_UART_TXEnable>:
1a000b7e:	b480      	push	{r7}
1a000b80:	b083      	sub	sp, #12
1a000b82:	af00      	add	r7, sp, #0
1a000b84:	6078      	str	r0, [r7, #4]
1a000b86:	687b      	ldr	r3, [r7, #4]
1a000b88:	2201      	movs	r2, #1
1a000b8a:	65da      	str	r2, [r3, #92]	; 0x5c
1a000b8c:	bf00      	nop
1a000b8e:	370c      	adds	r7, #12
1a000b90:	46bd      	mov	sp, r7
1a000b92:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b96:	4770      	bx	lr

1a000b98 <Chip_UART_IntEnable>:
1a000b98:	b480      	push	{r7}
1a000b9a:	b083      	sub	sp, #12
1a000b9c:	af00      	add	r7, sp, #0
1a000b9e:	6078      	str	r0, [r7, #4]
1a000ba0:	6039      	str	r1, [r7, #0]
1a000ba2:	687b      	ldr	r3, [r7, #4]
1a000ba4:	685a      	ldr	r2, [r3, #4]
1a000ba6:	683b      	ldr	r3, [r7, #0]
1a000ba8:	431a      	orrs	r2, r3
1a000baa:	687b      	ldr	r3, [r7, #4]
1a000bac:	605a      	str	r2, [r3, #4]
1a000bae:	bf00      	nop
1a000bb0:	370c      	adds	r7, #12
1a000bb2:	46bd      	mov	sp, r7
1a000bb4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bb8:	4770      	bx	lr

1a000bba <Chip_UART_SetupFIFOS>:
1a000bba:	b480      	push	{r7}
1a000bbc:	b083      	sub	sp, #12
1a000bbe:	af00      	add	r7, sp, #0
1a000bc0:	6078      	str	r0, [r7, #4]
1a000bc2:	6039      	str	r1, [r7, #0]
1a000bc4:	687b      	ldr	r3, [r7, #4]
1a000bc6:	683a      	ldr	r2, [r7, #0]
1a000bc8:	609a      	str	r2, [r3, #8]
1a000bca:	bf00      	nop
1a000bcc:	370c      	adds	r7, #12
1a000bce:	46bd      	mov	sp, r7
1a000bd0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bd4:	4770      	bx	lr

1a000bd6 <Chip_UART_ConfigData>:
1a000bd6:	b480      	push	{r7}
1a000bd8:	b083      	sub	sp, #12
1a000bda:	af00      	add	r7, sp, #0
1a000bdc:	6078      	str	r0, [r7, #4]
1a000bde:	6039      	str	r1, [r7, #0]
1a000be0:	687b      	ldr	r3, [r7, #4]
1a000be2:	683a      	ldr	r2, [r7, #0]
1a000be4:	60da      	str	r2, [r3, #12]
1a000be6:	bf00      	nop
1a000be8:	370c      	adds	r7, #12
1a000bea:	46bd      	mov	sp, r7
1a000bec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bf0:	4770      	bx	lr

1a000bf2 <ledOnOffIface_setLedFromMask>:
1a000bf2:	b580      	push	{r7, lr}
1a000bf4:	b082      	sub	sp, #8
1a000bf6:	af00      	add	r7, sp, #0
1a000bf8:	6078      	str	r0, [r7, #4]
1a000bfa:	6039      	str	r1, [r7, #0]
1a000bfc:	683b      	ldr	r3, [r7, #0]
1a000bfe:	f003 0308 	and.w	r3, r3, #8
1a000c02:	2b00      	cmp	r3, #0
1a000c04:	d003      	beq.n	1a000c0e <ledOnOffIface_setLedFromMask+0x1c>
1a000c06:	2001      	movs	r0, #1
1a000c08:	f000 f976 	bl	1a000ef8 <ledOn>
1a000c0c:	e002      	b.n	1a000c14 <ledOnOffIface_setLedFromMask+0x22>
1a000c0e:	2001      	movs	r0, #1
1a000c10:	f000 f996 	bl	1a000f40 <ledOff>
1a000c14:	683b      	ldr	r3, [r7, #0]
1a000c16:	f003 0310 	and.w	r3, r3, #16
1a000c1a:	2b00      	cmp	r3, #0
1a000c1c:	d003      	beq.n	1a000c26 <ledOnOffIface_setLedFromMask+0x34>
1a000c1e:	2002      	movs	r0, #2
1a000c20:	f000 f96a 	bl	1a000ef8 <ledOn>
1a000c24:	e002      	b.n	1a000c2c <ledOnOffIface_setLedFromMask+0x3a>
1a000c26:	2002      	movs	r0, #2
1a000c28:	f000 f98a 	bl	1a000f40 <ledOff>
1a000c2c:	683b      	ldr	r3, [r7, #0]
1a000c2e:	f003 0320 	and.w	r3, r3, #32
1a000c32:	2b00      	cmp	r3, #0
1a000c34:	d003      	beq.n	1a000c3e <ledOnOffIface_setLedFromMask+0x4c>
1a000c36:	2003      	movs	r0, #3
1a000c38:	f000 f95e 	bl	1a000ef8 <ledOn>
1a000c3c:	e002      	b.n	1a000c44 <ledOnOffIface_setLedFromMask+0x52>
1a000c3e:	2003      	movs	r0, #3
1a000c40:	f000 f97e 	bl	1a000f40 <ledOff>
1a000c44:	683b      	ldr	r3, [r7, #0]
1a000c46:	f003 0301 	and.w	r3, r3, #1
1a000c4a:	2b00      	cmp	r3, #0
1a000c4c:	d003      	beq.n	1a000c56 <ledOnOffIface_setLedFromMask+0x64>
1a000c4e:	2004      	movs	r0, #4
1a000c50:	f000 f952 	bl	1a000ef8 <ledOn>
1a000c54:	e002      	b.n	1a000c5c <ledOnOffIface_setLedFromMask+0x6a>
1a000c56:	2004      	movs	r0, #4
1a000c58:	f000 f972 	bl	1a000f40 <ledOff>
1a000c5c:	683b      	ldr	r3, [r7, #0]
1a000c5e:	f003 0302 	and.w	r3, r3, #2
1a000c62:	2b00      	cmp	r3, #0
1a000c64:	d003      	beq.n	1a000c6e <ledOnOffIface_setLedFromMask+0x7c>
1a000c66:	2005      	movs	r0, #5
1a000c68:	f000 f946 	bl	1a000ef8 <ledOn>
1a000c6c:	e002      	b.n	1a000c74 <ledOnOffIface_setLedFromMask+0x82>
1a000c6e:	2005      	movs	r0, #5
1a000c70:	f000 f966 	bl	1a000f40 <ledOff>
1a000c74:	683b      	ldr	r3, [r7, #0]
1a000c76:	f003 0304 	and.w	r3, r3, #4
1a000c7a:	2b00      	cmp	r3, #0
1a000c7c:	d003      	beq.n	1a000c86 <ledOnOffIface_setLedFromMask+0x94>
1a000c7e:	2000      	movs	r0, #0
1a000c80:	f000 f93a 	bl	1a000ef8 <ledOn>
1a000c84:	e002      	b.n	1a000c8c <ledOnOffIface_setLedFromMask+0x9a>
1a000c86:	2000      	movs	r0, #0
1a000c88:	f000 f95a 	bl	1a000f40 <ledOff>
1a000c8c:	bf00      	nop
1a000c8e:	3708      	adds	r7, #8
1a000c90:	46bd      	mov	sp, r7
1a000c92:	bd80      	pop	{r7, pc}

1a000c94 <sysInit>:
1a000c94:	b590      	push	{r4, r7, lr}
1a000c96:	b083      	sub	sp, #12
1a000c98:	af00      	add	r7, sp, #0
1a000c9a:	f000 fafd 	bl	1a001298 <Chip_SetupXtalClocking>
1a000c9e:	f001 f94d 	bl	1a001f3c <SystemCoreClockUpdate>
1a000ca2:	f000 fc2d 	bl	1a001500 <StopWatch_Init>
1a000ca6:	f000 f9d3 	bl	1a001050 <fpuInit>
1a000caa:	488c      	ldr	r0, [pc, #560]	; (1a000edc <sysInit+0x248>)
1a000cac:	f001 f952 	bl	1a001f54 <Chip_GPIO_Init>
1a000cb0:	2300      	movs	r3, #0
1a000cb2:	607b      	str	r3, [r7, #4]
1a000cb4:	e04e      	b.n	1a000d54 <sysInit+0xc0>
1a000cb6:	498a      	ldr	r1, [pc, #552]	; (1a000ee0 <sysInit+0x24c>)
1a000cb8:	687a      	ldr	r2, [r7, #4]
1a000cba:	4613      	mov	r3, r2
1a000cbc:	005b      	lsls	r3, r3, #1
1a000cbe:	4413      	add	r3, r2
1a000cc0:	005b      	lsls	r3, r3, #1
1a000cc2:	440b      	add	r3, r1
1a000cc4:	7818      	ldrb	r0, [r3, #0]
1a000cc6:	4986      	ldr	r1, [pc, #536]	; (1a000ee0 <sysInit+0x24c>)
1a000cc8:	687a      	ldr	r2, [r7, #4]
1a000cca:	4613      	mov	r3, r2
1a000ccc:	005b      	lsls	r3, r3, #1
1a000cce:	4413      	add	r3, r2
1a000cd0:	005b      	lsls	r3, r3, #1
1a000cd2:	440b      	add	r3, r1
1a000cd4:	3301      	adds	r3, #1
1a000cd6:	781c      	ldrb	r4, [r3, #0]
1a000cd8:	4981      	ldr	r1, [pc, #516]	; (1a000ee0 <sysInit+0x24c>)
1a000cda:	687a      	ldr	r2, [r7, #4]
1a000cdc:	4613      	mov	r3, r2
1a000cde:	005b      	lsls	r3, r3, #1
1a000ce0:	4413      	add	r3, r2
1a000ce2:	005b      	lsls	r3, r3, #1
1a000ce4:	440b      	add	r3, r1
1a000ce6:	3304      	adds	r3, #4
1a000ce8:	881b      	ldrh	r3, [r3, #0]
1a000cea:	461a      	mov	r2, r3
1a000cec:	4621      	mov	r1, r4
1a000cee:	f7ff fe53 	bl	1a000998 <Chip_SCU_PinMuxSet>
1a000cf2:	497b      	ldr	r1, [pc, #492]	; (1a000ee0 <sysInit+0x24c>)
1a000cf4:	687a      	ldr	r2, [r7, #4]
1a000cf6:	4613      	mov	r3, r2
1a000cf8:	005b      	lsls	r3, r3, #1
1a000cfa:	4413      	add	r3, r2
1a000cfc:	005b      	lsls	r3, r3, #1
1a000cfe:	440b      	add	r3, r1
1a000d00:	3302      	adds	r3, #2
1a000d02:	7818      	ldrb	r0, [r3, #0]
1a000d04:	4976      	ldr	r1, [pc, #472]	; (1a000ee0 <sysInit+0x24c>)
1a000d06:	687a      	ldr	r2, [r7, #4]
1a000d08:	4613      	mov	r3, r2
1a000d0a:	005b      	lsls	r3, r3, #1
1a000d0c:	4413      	add	r3, r2
1a000d0e:	005b      	lsls	r3, r3, #1
1a000d10:	440b      	add	r3, r1
1a000d12:	3303      	adds	r3, #3
1a000d14:	781b      	ldrb	r3, [r3, #0]
1a000d16:	461a      	mov	r2, r3
1a000d18:	4601      	mov	r1, r0
1a000d1a:	4870      	ldr	r0, [pc, #448]	; (1a000edc <sysInit+0x248>)
1a000d1c:	f7ff fe90 	bl	1a000a40 <Chip_GPIO_SetPinDIROutput>
1a000d20:	496f      	ldr	r1, [pc, #444]	; (1a000ee0 <sysInit+0x24c>)
1a000d22:	687a      	ldr	r2, [r7, #4]
1a000d24:	4613      	mov	r3, r2
1a000d26:	005b      	lsls	r3, r3, #1
1a000d28:	4413      	add	r3, r2
1a000d2a:	005b      	lsls	r3, r3, #1
1a000d2c:	440b      	add	r3, r1
1a000d2e:	3302      	adds	r3, #2
1a000d30:	7818      	ldrb	r0, [r3, #0]
1a000d32:	496b      	ldr	r1, [pc, #428]	; (1a000ee0 <sysInit+0x24c>)
1a000d34:	687a      	ldr	r2, [r7, #4]
1a000d36:	4613      	mov	r3, r2
1a000d38:	005b      	lsls	r3, r3, #1
1a000d3a:	4413      	add	r3, r2
1a000d3c:	005b      	lsls	r3, r3, #1
1a000d3e:	440b      	add	r3, r1
1a000d40:	3303      	adds	r3, #3
1a000d42:	781b      	ldrb	r3, [r3, #0]
1a000d44:	461a      	mov	r2, r3
1a000d46:	4601      	mov	r1, r0
1a000d48:	4864      	ldr	r0, [pc, #400]	; (1a000edc <sysInit+0x248>)
1a000d4a:	f7ff fed1 	bl	1a000af0 <Chip_GPIO_SetPinOutLow>
1a000d4e:	687b      	ldr	r3, [r7, #4]
1a000d50:	3301      	adds	r3, #1
1a000d52:	607b      	str	r3, [r7, #4]
1a000d54:	687b      	ldr	r3, [r7, #4]
1a000d56:	2b05      	cmp	r3, #5
1a000d58:	d9ad      	bls.n	1a000cb6 <sysInit+0x22>
1a000d5a:	2300      	movs	r3, #0
1a000d5c:	607b      	str	r3, [r7, #4]
1a000d5e:	e037      	b.n	1a000dd0 <sysInit+0x13c>
1a000d60:	4960      	ldr	r1, [pc, #384]	; (1a000ee4 <sysInit+0x250>)
1a000d62:	687a      	ldr	r2, [r7, #4]
1a000d64:	4613      	mov	r3, r2
1a000d66:	005b      	lsls	r3, r3, #1
1a000d68:	4413      	add	r3, r2
1a000d6a:	005b      	lsls	r3, r3, #1
1a000d6c:	440b      	add	r3, r1
1a000d6e:	7818      	ldrb	r0, [r3, #0]
1a000d70:	495c      	ldr	r1, [pc, #368]	; (1a000ee4 <sysInit+0x250>)
1a000d72:	687a      	ldr	r2, [r7, #4]
1a000d74:	4613      	mov	r3, r2
1a000d76:	005b      	lsls	r3, r3, #1
1a000d78:	4413      	add	r3, r2
1a000d7a:	005b      	lsls	r3, r3, #1
1a000d7c:	440b      	add	r3, r1
1a000d7e:	3301      	adds	r3, #1
1a000d80:	781c      	ldrb	r4, [r3, #0]
1a000d82:	4958      	ldr	r1, [pc, #352]	; (1a000ee4 <sysInit+0x250>)
1a000d84:	687a      	ldr	r2, [r7, #4]
1a000d86:	4613      	mov	r3, r2
1a000d88:	005b      	lsls	r3, r3, #1
1a000d8a:	4413      	add	r3, r2
1a000d8c:	005b      	lsls	r3, r3, #1
1a000d8e:	440b      	add	r3, r1
1a000d90:	3304      	adds	r3, #4
1a000d92:	881b      	ldrh	r3, [r3, #0]
1a000d94:	461a      	mov	r2, r3
1a000d96:	4621      	mov	r1, r4
1a000d98:	f7ff fdfe 	bl	1a000998 <Chip_SCU_PinMuxSet>
1a000d9c:	4951      	ldr	r1, [pc, #324]	; (1a000ee4 <sysInit+0x250>)
1a000d9e:	687a      	ldr	r2, [r7, #4]
1a000da0:	4613      	mov	r3, r2
1a000da2:	005b      	lsls	r3, r3, #1
1a000da4:	4413      	add	r3, r2
1a000da6:	005b      	lsls	r3, r3, #1
1a000da8:	440b      	add	r3, r1
1a000daa:	3302      	adds	r3, #2
1a000dac:	7818      	ldrb	r0, [r3, #0]
1a000dae:	494d      	ldr	r1, [pc, #308]	; (1a000ee4 <sysInit+0x250>)
1a000db0:	687a      	ldr	r2, [r7, #4]
1a000db2:	4613      	mov	r3, r2
1a000db4:	005b      	lsls	r3, r3, #1
1a000db6:	4413      	add	r3, r2
1a000db8:	005b      	lsls	r3, r3, #1
1a000dba:	440b      	add	r3, r1
1a000dbc:	3303      	adds	r3, #3
1a000dbe:	781b      	ldrb	r3, [r3, #0]
1a000dc0:	461a      	mov	r2, r3
1a000dc2:	4601      	mov	r1, r0
1a000dc4:	4845      	ldr	r0, [pc, #276]	; (1a000edc <sysInit+0x248>)
1a000dc6:	f7ff fe5a 	bl	1a000a7e <Chip_GPIO_SetPinDIRInput>
1a000dca:	687b      	ldr	r3, [r7, #4]
1a000dcc:	3301      	adds	r3, #1
1a000dce:	607b      	str	r3, [r7, #4]
1a000dd0:	687b      	ldr	r3, [r7, #4]
1a000dd2:	2b03      	cmp	r3, #3
1a000dd4:	d9c4      	bls.n	1a000d60 <sysInit+0xcc>
1a000dd6:	221e      	movs	r2, #30
1a000dd8:	2101      	movs	r1, #1
1a000dda:	2007      	movs	r0, #7
1a000ddc:	f7ff fddc 	bl	1a000998 <Chip_SCU_PinMuxSet>
1a000de0:	22d6      	movs	r2, #214	; 0xd6
1a000de2:	2102      	movs	r1, #2
1a000de4:	2007      	movs	r0, #7
1a000de6:	f7ff fdd7 	bl	1a000998 <Chip_SCU_PinMuxSet>
1a000dea:	483f      	ldr	r0, [pc, #252]	; (1a000ee8 <sysInit+0x254>)
1a000dec:	f000 faee 	bl	1a0013cc <Chip_UART_Init>
1a000df0:	2103      	movs	r1, #3
1a000df2:	483d      	ldr	r0, [pc, #244]	; (1a000ee8 <sysInit+0x254>)
1a000df4:	f7ff feef 	bl	1a000bd6 <Chip_UART_ConfigData>
1a000df8:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000dfc:	483a      	ldr	r0, [pc, #232]	; (1a000ee8 <sysInit+0x254>)
1a000dfe:	f000 fb29 	bl	1a001454 <Chip_UART_SetBaud>
1a000e02:	21c7      	movs	r1, #199	; 0xc7
1a000e04:	4838      	ldr	r0, [pc, #224]	; (1a000ee8 <sysInit+0x254>)
1a000e06:	f7ff fed8 	bl	1a000bba <Chip_UART_SetupFIFOS>
1a000e0a:	2101      	movs	r1, #1
1a000e0c:	4836      	ldr	r0, [pc, #216]	; (1a000ee8 <sysInit+0x254>)
1a000e0e:	f7ff fec3 	bl	1a000b98 <Chip_UART_IntEnable>
1a000e12:	2300      	movs	r3, #0
1a000e14:	607b      	str	r3, [r7, #4]
1a000e16:	e032      	b.n	1a000e7e <sysInit+0x1ea>
1a000e18:	687b      	ldr	r3, [r7, #4]
1a000e1a:	b2d8      	uxtb	r0, r3
1a000e1c:	4931      	ldr	r1, [pc, #196]	; (1a000ee4 <sysInit+0x250>)
1a000e1e:	687a      	ldr	r2, [r7, #4]
1a000e20:	4613      	mov	r3, r2
1a000e22:	005b      	lsls	r3, r3, #1
1a000e24:	4413      	add	r3, r2
1a000e26:	005b      	lsls	r3, r3, #1
1a000e28:	440b      	add	r3, r1
1a000e2a:	3302      	adds	r3, #2
1a000e2c:	781c      	ldrb	r4, [r3, #0]
1a000e2e:	492d      	ldr	r1, [pc, #180]	; (1a000ee4 <sysInit+0x250>)
1a000e30:	687a      	ldr	r2, [r7, #4]
1a000e32:	4613      	mov	r3, r2
1a000e34:	005b      	lsls	r3, r3, #1
1a000e36:	4413      	add	r3, r2
1a000e38:	005b      	lsls	r3, r3, #1
1a000e3a:	440b      	add	r3, r1
1a000e3c:	3303      	adds	r3, #3
1a000e3e:	781b      	ldrb	r3, [r3, #0]
1a000e40:	461a      	mov	r2, r3
1a000e42:	4621      	mov	r1, r4
1a000e44:	f7ff fdc2 	bl	1a0009cc <Chip_SCU_GPIOIntPinSel>
1a000e48:	2201      	movs	r2, #1
1a000e4a:	687b      	ldr	r3, [r7, #4]
1a000e4c:	fa02 f303 	lsl.w	r3, r2, r3
1a000e50:	4619      	mov	r1, r3
1a000e52:	4826      	ldr	r0, [pc, #152]	; (1a000eec <sysInit+0x258>)
1a000e54:	f7ff fe85 	bl	1a000b62 <Chip_PININT_ClearIntStatus>
1a000e58:	2201      	movs	r2, #1
1a000e5a:	687b      	ldr	r3, [r7, #4]
1a000e5c:	fa02 f303 	lsl.w	r3, r2, r3
1a000e60:	4619      	mov	r1, r3
1a000e62:	4822      	ldr	r0, [pc, #136]	; (1a000eec <sysInit+0x258>)
1a000e64:	f7ff fe5d 	bl	1a000b22 <Chip_PININT_SetPinModeEdge>
1a000e68:	2201      	movs	r2, #1
1a000e6a:	687b      	ldr	r3, [r7, #4]
1a000e6c:	fa02 f303 	lsl.w	r3, r2, r3
1a000e70:	4619      	mov	r1, r3
1a000e72:	481e      	ldr	r0, [pc, #120]	; (1a000eec <sysInit+0x258>)
1a000e74:	f7ff fe67 	bl	1a000b46 <Chip_PININT_EnableIntLow>
1a000e78:	687b      	ldr	r3, [r7, #4]
1a000e7a:	3301      	adds	r3, #1
1a000e7c:	607b      	str	r3, [r7, #4]
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	2b03      	cmp	r3, #3
1a000e82:	ddc9      	ble.n	1a000e18 <sysInit+0x184>
1a000e84:	2020      	movs	r0, #32
1a000e86:	f7ff fd21 	bl	1a0008cc <NVIC_ClearPendingIRQ>
1a000e8a:	2021      	movs	r0, #33	; 0x21
1a000e8c:	f7ff fd1e 	bl	1a0008cc <NVIC_ClearPendingIRQ>
1a000e90:	2022      	movs	r0, #34	; 0x22
1a000e92:	f7ff fd1b 	bl	1a0008cc <NVIC_ClearPendingIRQ>
1a000e96:	2023      	movs	r0, #35	; 0x23
1a000e98:	f7ff fd18 	bl	1a0008cc <NVIC_ClearPendingIRQ>
1a000e9c:	2020      	movs	r0, #32
1a000e9e:	f7ff fcfb 	bl	1a000898 <NVIC_EnableIRQ>
1a000ea2:	2021      	movs	r0, #33	; 0x21
1a000ea4:	f7ff fcf8 	bl	1a000898 <NVIC_EnableIRQ>
1a000ea8:	2022      	movs	r0, #34	; 0x22
1a000eaa:	f7ff fcf5 	bl	1a000898 <NVIC_EnableIRQ>
1a000eae:	2023      	movs	r0, #35	; 0x23
1a000eb0:	f7ff fcf2 	bl	1a000898 <NVIC_EnableIRQ>
1a000eb4:	201a      	movs	r0, #26
1a000eb6:	f7ff fcef 	bl	1a000898 <NVIC_EnableIRQ>
1a000eba:	480b      	ldr	r0, [pc, #44]	; (1a000ee8 <sysInit+0x254>)
1a000ebc:	f7ff fe5f 	bl	1a000b7e <Chip_UART_TXEnable>
1a000ec0:	4b0b      	ldr	r3, [pc, #44]	; (1a000ef0 <sysInit+0x25c>)
1a000ec2:	681b      	ldr	r3, [r3, #0]
1a000ec4:	4a0b      	ldr	r2, [pc, #44]	; (1a000ef4 <sysInit+0x260>)
1a000ec6:	fba2 2303 	umull	r2, r3, r2, r3
1a000eca:	099b      	lsrs	r3, r3, #6
1a000ecc:	4618      	mov	r0, r3
1a000ece:	f7ff fd41 	bl	1a000954 <SysTick_Config>
1a000ed2:	bf00      	nop
1a000ed4:	370c      	adds	r7, #12
1a000ed6:	46bd      	mov	sp, r7
1a000ed8:	bd90      	pop	{r4, r7, pc}
1a000eda:	bf00      	nop
1a000edc:	400f4000 	.word	0x400f4000
1a000ee0:	1a001fe0 	.word	0x1a001fe0
1a000ee4:	1a002004 	.word	0x1a002004
1a000ee8:	400c1000 	.word	0x400c1000
1a000eec:	40087000 	.word	0x40087000
1a000ef0:	10000018 	.word	0x10000018
1a000ef4:	10624dd3 	.word	0x10624dd3

1a000ef8 <ledOn>:
1a000ef8:	b580      	push	{r7, lr}
1a000efa:	b082      	sub	sp, #8
1a000efc:	af00      	add	r7, sp, #0
1a000efe:	4603      	mov	r3, r0
1a000f00:	71fb      	strb	r3, [r7, #7]
1a000f02:	79fa      	ldrb	r2, [r7, #7]
1a000f04:	490c      	ldr	r1, [pc, #48]	; (1a000f38 <ledOn+0x40>)
1a000f06:	4613      	mov	r3, r2
1a000f08:	005b      	lsls	r3, r3, #1
1a000f0a:	4413      	add	r3, r2
1a000f0c:	005b      	lsls	r3, r3, #1
1a000f0e:	440b      	add	r3, r1
1a000f10:	3302      	adds	r3, #2
1a000f12:	7818      	ldrb	r0, [r3, #0]
1a000f14:	79fa      	ldrb	r2, [r7, #7]
1a000f16:	4908      	ldr	r1, [pc, #32]	; (1a000f38 <ledOn+0x40>)
1a000f18:	4613      	mov	r3, r2
1a000f1a:	005b      	lsls	r3, r3, #1
1a000f1c:	4413      	add	r3, r2
1a000f1e:	005b      	lsls	r3, r3, #1
1a000f20:	440b      	add	r3, r1
1a000f22:	3303      	adds	r3, #3
1a000f24:	781b      	ldrb	r3, [r3, #0]
1a000f26:	461a      	mov	r2, r3
1a000f28:	4601      	mov	r1, r0
1a000f2a:	4804      	ldr	r0, [pc, #16]	; (1a000f3c <ledOn+0x44>)
1a000f2c:	f7ff fdc7 	bl	1a000abe <Chip_GPIO_SetPinOutHigh>
1a000f30:	bf00      	nop
1a000f32:	3708      	adds	r7, #8
1a000f34:	46bd      	mov	sp, r7
1a000f36:	bd80      	pop	{r7, pc}
1a000f38:	1a001fe0 	.word	0x1a001fe0
1a000f3c:	400f4000 	.word	0x400f4000

1a000f40 <ledOff>:
1a000f40:	b580      	push	{r7, lr}
1a000f42:	b082      	sub	sp, #8
1a000f44:	af00      	add	r7, sp, #0
1a000f46:	4603      	mov	r3, r0
1a000f48:	71fb      	strb	r3, [r7, #7]
1a000f4a:	79fa      	ldrb	r2, [r7, #7]
1a000f4c:	490c      	ldr	r1, [pc, #48]	; (1a000f80 <ledOff+0x40>)
1a000f4e:	4613      	mov	r3, r2
1a000f50:	005b      	lsls	r3, r3, #1
1a000f52:	4413      	add	r3, r2
1a000f54:	005b      	lsls	r3, r3, #1
1a000f56:	440b      	add	r3, r1
1a000f58:	3302      	adds	r3, #2
1a000f5a:	7818      	ldrb	r0, [r3, #0]
1a000f5c:	79fa      	ldrb	r2, [r7, #7]
1a000f5e:	4908      	ldr	r1, [pc, #32]	; (1a000f80 <ledOff+0x40>)
1a000f60:	4613      	mov	r3, r2
1a000f62:	005b      	lsls	r3, r3, #1
1a000f64:	4413      	add	r3, r2
1a000f66:	005b      	lsls	r3, r3, #1
1a000f68:	440b      	add	r3, r1
1a000f6a:	3303      	adds	r3, #3
1a000f6c:	781b      	ldrb	r3, [r3, #0]
1a000f6e:	461a      	mov	r2, r3
1a000f70:	4601      	mov	r1, r0
1a000f72:	4804      	ldr	r0, [pc, #16]	; (1a000f84 <ledOff+0x44>)
1a000f74:	f7ff fdbc 	bl	1a000af0 <Chip_GPIO_SetPinOutLow>
1a000f78:	bf00      	nop
1a000f7a:	3708      	adds	r7, #8
1a000f7c:	46bd      	mov	sp, r7
1a000f7e:	bd80      	pop	{r7, pc}
1a000f80:	1a001fe0 	.word	0x1a001fe0
1a000f84:	400f4000 	.word	0x400f4000

1a000f88 <SysTick_Handler>:
1a000f88:	b480      	push	{r7}
1a000f8a:	af00      	add	r7, sp, #0
1a000f8c:	4b03      	ldr	r3, [pc, #12]	; (1a000f9c <SysTick_Handler+0x14>)
1a000f8e:	2201      	movs	r2, #1
1a000f90:	701a      	strb	r2, [r3, #0]
1a000f92:	bf00      	nop
1a000f94:	46bd      	mov	sp, r7
1a000f96:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f9a:	4770      	bx	lr
1a000f9c:	10000001 	.word	0x10000001

1a000fa0 <GPIO0_IRQHandler>:
1a000fa0:	b580      	push	{r7, lr}
1a000fa2:	af00      	add	r7, sp, #0
1a000fa4:	4b04      	ldr	r3, [pc, #16]	; (1a000fb8 <GPIO0_IRQHandler+0x18>)
1a000fa6:	2201      	movs	r2, #1
1a000fa8:	701a      	strb	r2, [r3, #0]
1a000faa:	2101      	movs	r1, #1
1a000fac:	4803      	ldr	r0, [pc, #12]	; (1a000fbc <GPIO0_IRQHandler+0x1c>)
1a000fae:	f7ff fdd8 	bl	1a000b62 <Chip_PININT_ClearIntStatus>
1a000fb2:	bf00      	nop
1a000fb4:	bd80      	pop	{r7, pc}
1a000fb6:	bf00      	nop
1a000fb8:	10000000 	.word	0x10000000
1a000fbc:	40087000 	.word	0x40087000

1a000fc0 <GPIO1_IRQHandler>:
1a000fc0:	b580      	push	{r7, lr}
1a000fc2:	af00      	add	r7, sp, #0
1a000fc4:	4b04      	ldr	r3, [pc, #16]	; (1a000fd8 <GPIO1_IRQHandler+0x18>)
1a000fc6:	2202      	movs	r2, #2
1a000fc8:	701a      	strb	r2, [r3, #0]
1a000fca:	2102      	movs	r1, #2
1a000fcc:	4803      	ldr	r0, [pc, #12]	; (1a000fdc <GPIO1_IRQHandler+0x1c>)
1a000fce:	f7ff fdc8 	bl	1a000b62 <Chip_PININT_ClearIntStatus>
1a000fd2:	bf00      	nop
1a000fd4:	bd80      	pop	{r7, pc}
1a000fd6:	bf00      	nop
1a000fd8:	10000000 	.word	0x10000000
1a000fdc:	40087000 	.word	0x40087000

1a000fe0 <GPIO2_IRQHandler>:
1a000fe0:	b580      	push	{r7, lr}
1a000fe2:	af00      	add	r7, sp, #0
1a000fe4:	4b04      	ldr	r3, [pc, #16]	; (1a000ff8 <GPIO2_IRQHandler+0x18>)
1a000fe6:	2203      	movs	r2, #3
1a000fe8:	701a      	strb	r2, [r3, #0]
1a000fea:	2104      	movs	r1, #4
1a000fec:	4803      	ldr	r0, [pc, #12]	; (1a000ffc <GPIO2_IRQHandler+0x1c>)
1a000fee:	f7ff fdb8 	bl	1a000b62 <Chip_PININT_ClearIntStatus>
1a000ff2:	bf00      	nop
1a000ff4:	bd80      	pop	{r7, pc}
1a000ff6:	bf00      	nop
1a000ff8:	10000000 	.word	0x10000000
1a000ffc:	40087000 	.word	0x40087000

1a001000 <GPIO3_IRQHandler>:
1a001000:	b580      	push	{r7, lr}
1a001002:	af00      	add	r7, sp, #0
1a001004:	4b04      	ldr	r3, [pc, #16]	; (1a001018 <GPIO3_IRQHandler+0x18>)
1a001006:	2204      	movs	r2, #4
1a001008:	701a      	strb	r2, [r3, #0]
1a00100a:	2108      	movs	r1, #8
1a00100c:	4803      	ldr	r0, [pc, #12]	; (1a00101c <GPIO3_IRQHandler+0x1c>)
1a00100e:	f7ff fda8 	bl	1a000b62 <Chip_PININT_ClearIntStatus>
1a001012:	bf00      	nop
1a001014:	bd80      	pop	{r7, pc}
1a001016:	bf00      	nop
1a001018:	10000000 	.word	0x10000000
1a00101c:	40087000 	.word	0x40087000

1a001020 <getKeyPressed>:
1a001020:	b480      	push	{r7}
1a001022:	af00      	add	r7, sp, #0
1a001024:	4b03      	ldr	r3, [pc, #12]	; (1a001034 <getKeyPressed+0x14>)
1a001026:	781b      	ldrb	r3, [r3, #0]
1a001028:	4618      	mov	r0, r3
1a00102a:	46bd      	mov	sp, r7
1a00102c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001030:	4770      	bx	lr
1a001032:	bf00      	nop
1a001034:	10000000 	.word	0x10000000

1a001038 <rstKeyPressed>:
1a001038:	b480      	push	{r7}
1a00103a:	af00      	add	r7, sp, #0
1a00103c:	4b03      	ldr	r3, [pc, #12]	; (1a00104c <rstKeyPressed+0x14>)
1a00103e:	2200      	movs	r2, #0
1a001040:	701a      	strb	r2, [r3, #0]
1a001042:	bf00      	nop
1a001044:	46bd      	mov	sp, r7
1a001046:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00104a:	4770      	bx	lr
1a00104c:	10000000 	.word	0x10000000

1a001050 <fpuInit>:
1a001050:	b480      	push	{r7}
1a001052:	b089      	sub	sp, #36	; 0x24
1a001054:	af00      	add	r7, sp, #0
1a001056:	4b16      	ldr	r3, [pc, #88]	; (1a0010b0 <fpuInit+0x60>)
1a001058:	61fb      	str	r3, [r7, #28]
1a00105a:	4b16      	ldr	r3, [pc, #88]	; (1a0010b4 <fpuInit+0x64>)
1a00105c:	61bb      	str	r3, [r7, #24]
1a00105e:	4b16      	ldr	r3, [pc, #88]	; (1a0010b8 <fpuInit+0x68>)
1a001060:	617b      	str	r3, [r7, #20]
1a001062:	2300      	movs	r3, #0
1a001064:	74fb      	strb	r3, [r7, #19]
1a001066:	69bb      	ldr	r3, [r7, #24]
1a001068:	681b      	ldr	r3, [r3, #0]
1a00106a:	60bb      	str	r3, [r7, #8]
1a00106c:	697b      	ldr	r3, [r7, #20]
1a00106e:	681b      	ldr	r3, [r3, #0]
1a001070:	607b      	str	r3, [r7, #4]
1a001072:	68bb      	ldr	r3, [r7, #8]
1a001074:	4a11      	ldr	r2, [pc, #68]	; (1a0010bc <fpuInit+0x6c>)
1a001076:	4293      	cmp	r3, r2
1a001078:	d105      	bne.n	1a001086 <fpuInit+0x36>
1a00107a:	687b      	ldr	r3, [r7, #4]
1a00107c:	4a10      	ldr	r2, [pc, #64]	; (1a0010c0 <fpuInit+0x70>)
1a00107e:	4293      	cmp	r3, r2
1a001080:	d101      	bne.n	1a001086 <fpuInit+0x36>
1a001082:	2301      	movs	r3, #1
1a001084:	e000      	b.n	1a001088 <fpuInit+0x38>
1a001086:	2300      	movs	r3, #0
1a001088:	74fb      	strb	r3, [r7, #19]
1a00108a:	7cfb      	ldrb	r3, [r7, #19]
1a00108c:	2b00      	cmp	r3, #0
1a00108e:	d009      	beq.n	1a0010a4 <fpuInit+0x54>
1a001090:	69fb      	ldr	r3, [r7, #28]
1a001092:	681b      	ldr	r3, [r3, #0]
1a001094:	60fb      	str	r3, [r7, #12]
1a001096:	68fb      	ldr	r3, [r7, #12]
1a001098:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a00109c:	60fb      	str	r3, [r7, #12]
1a00109e:	68fa      	ldr	r2, [r7, #12]
1a0010a0:	69fb      	ldr	r3, [r7, #28]
1a0010a2:	601a      	str	r2, [r3, #0]
1a0010a4:	bf00      	nop
1a0010a6:	3724      	adds	r7, #36	; 0x24
1a0010a8:	46bd      	mov	sp, r7
1a0010aa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010ae:	4770      	bx	lr
1a0010b0:	e000ed88 	.word	0xe000ed88
1a0010b4:	e000ef40 	.word	0xe000ef40
1a0010b8:	e000ef44 	.word	0xe000ef44
1a0010bc:	10110021 	.word	0x10110021
1a0010c0:	11000011 	.word	0x11000011

1a0010c4 <Chip_Clock_DisableMainPLL>:
1a0010c4:	b480      	push	{r7}
1a0010c6:	af00      	add	r7, sp, #0
1a0010c8:	4b05      	ldr	r3, [pc, #20]	; (1a0010e0 <Chip_Clock_DisableMainPLL+0x1c>)
1a0010ca:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0010cc:	4a04      	ldr	r2, [pc, #16]	; (1a0010e0 <Chip_Clock_DisableMainPLL+0x1c>)
1a0010ce:	f043 0301 	orr.w	r3, r3, #1
1a0010d2:	6453      	str	r3, [r2, #68]	; 0x44
1a0010d4:	bf00      	nop
1a0010d6:	46bd      	mov	sp, r7
1a0010d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010dc:	4770      	bx	lr
1a0010de:	bf00      	nop
1a0010e0:	40050000 	.word	0x40050000

1a0010e4 <Chip_Clock_SetupMainPLL>:
1a0010e4:	b480      	push	{r7}
1a0010e6:	b083      	sub	sp, #12
1a0010e8:	af00      	add	r7, sp, #0
1a0010ea:	6078      	str	r0, [r7, #4]
1a0010ec:	687b      	ldr	r3, [r7, #4]
1a0010ee:	681b      	ldr	r3, [r3, #0]
1a0010f0:	461a      	mov	r2, r3
1a0010f2:	687b      	ldr	r3, [r7, #4]
1a0010f4:	791b      	ldrb	r3, [r3, #4]
1a0010f6:	061b      	lsls	r3, r3, #24
1a0010f8:	4313      	orrs	r3, r2
1a0010fa:	687a      	ldr	r2, [r7, #4]
1a0010fc:	6912      	ldr	r2, [r2, #16]
1a0010fe:	0412      	lsls	r2, r2, #16
1a001100:	4313      	orrs	r3, r2
1a001102:	687a      	ldr	r2, [r7, #4]
1a001104:	6892      	ldr	r2, [r2, #8]
1a001106:	0312      	lsls	r2, r2, #12
1a001108:	4313      	orrs	r3, r2
1a00110a:	687a      	ldr	r2, [r7, #4]
1a00110c:	68d2      	ldr	r2, [r2, #12]
1a00110e:	0212      	lsls	r2, r2, #8
1a001110:	4313      	orrs	r3, r2
1a001112:	4a05      	ldr	r2, [pc, #20]	; (1a001128 <Chip_Clock_SetupMainPLL+0x44>)
1a001114:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001118:	6453      	str	r3, [r2, #68]	; 0x44
1a00111a:	bf00      	nop
1a00111c:	370c      	adds	r7, #12
1a00111e:	46bd      	mov	sp, r7
1a001120:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001124:	4770      	bx	lr
1a001126:	bf00      	nop
1a001128:	40050000 	.word	0x40050000

1a00112c <Chip_Clock_MainPLLLocked>:
1a00112c:	b480      	push	{r7}
1a00112e:	af00      	add	r7, sp, #0
1a001130:	4b06      	ldr	r3, [pc, #24]	; (1a00114c <Chip_Clock_MainPLLLocked+0x20>)
1a001132:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001134:	f003 0301 	and.w	r3, r3, #1
1a001138:	2b00      	cmp	r3, #0
1a00113a:	bf14      	ite	ne
1a00113c:	2301      	movne	r3, #1
1a00113e:	2300      	moveq	r3, #0
1a001140:	b2db      	uxtb	r3, r3
1a001142:	4618      	mov	r0, r3
1a001144:	46bd      	mov	sp, r7
1a001146:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00114a:	4770      	bx	lr
1a00114c:	40050000 	.word	0x40050000

1a001150 <Chip_SetupCoreClock>:
1a001150:	b590      	push	{r4, r7, lr}
1a001152:	b08f      	sub	sp, #60	; 0x3c
1a001154:	af00      	add	r7, sp, #0
1a001156:	4603      	mov	r3, r0
1a001158:	6039      	str	r1, [r7, #0]
1a00115a:	71fb      	strb	r3, [r7, #7]
1a00115c:	4613      	mov	r3, r2
1a00115e:	71bb      	strb	r3, [r7, #6]
1a001160:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a001164:	62bb      	str	r3, [r7, #40]	; 0x28
1a001166:	2300      	movs	r3, #0
1a001168:	633b      	str	r3, [r7, #48]	; 0x30
1a00116a:	2300      	movs	r3, #0
1a00116c:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00116e:	79fb      	ldrb	r3, [r7, #7]
1a001170:	2b06      	cmp	r3, #6
1a001172:	d101      	bne.n	1a001178 <Chip_SetupCoreClock+0x28>
1a001174:	f000 fbca 	bl	1a00190c <Chip_Clock_EnableCrystal>
1a001178:	79f9      	ldrb	r1, [r7, #7]
1a00117a:	2300      	movs	r3, #0
1a00117c:	2201      	movs	r2, #1
1a00117e:	2004      	movs	r0, #4
1a001180:	f000 fdb6 	bl	1a001cf0 <Chip_Clock_SetBaseClock>
1a001184:	f7ff ff9e 	bl	1a0010c4 <Chip_Clock_DisableMainPLL>
1a001188:	79fb      	ldrb	r3, [r7, #7]
1a00118a:	733b      	strb	r3, [r7, #12]
1a00118c:	f107 0308 	add.w	r3, r7, #8
1a001190:	4619      	mov	r1, r3
1a001192:	6838      	ldr	r0, [r7, #0]
1a001194:	f000 fbf2 	bl	1a00197c <Chip_Clock_CalcMainPLLValue>
1a001198:	683b      	ldr	r3, [r7, #0]
1a00119a:	4a3d      	ldr	r2, [pc, #244]	; (1a001290 <Chip_SetupCoreClock+0x140>)
1a00119c:	4293      	cmp	r3, r2
1a00119e:	d916      	bls.n	1a0011ce <Chip_SetupCoreClock+0x7e>
1a0011a0:	68bb      	ldr	r3, [r7, #8]
1a0011a2:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0011a6:	2b00      	cmp	r3, #0
1a0011a8:	d000      	beq.n	1a0011ac <Chip_SetupCoreClock+0x5c>
1a0011aa:	e7fe      	b.n	1a0011aa <Chip_SetupCoreClock+0x5a>
1a0011ac:	68bb      	ldr	r3, [r7, #8]
1a0011ae:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0011b2:	2b00      	cmp	r3, #0
1a0011b4:	d006      	beq.n	1a0011c4 <Chip_SetupCoreClock+0x74>
1a0011b6:	2301      	movs	r3, #1
1a0011b8:	633b      	str	r3, [r7, #48]	; 0x30
1a0011ba:	68bb      	ldr	r3, [r7, #8]
1a0011bc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0011c0:	60bb      	str	r3, [r7, #8]
1a0011c2:	e004      	b.n	1a0011ce <Chip_SetupCoreClock+0x7e>
1a0011c4:	2301      	movs	r3, #1
1a0011c6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0011c8:	697b      	ldr	r3, [r7, #20]
1a0011ca:	3301      	adds	r3, #1
1a0011cc:	617b      	str	r3, [r7, #20]
1a0011ce:	f107 0308 	add.w	r3, r7, #8
1a0011d2:	4618      	mov	r0, r3
1a0011d4:	f7ff ff86 	bl	1a0010e4 <Chip_Clock_SetupMainPLL>
1a0011d8:	bf00      	nop
1a0011da:	f7ff ffa7 	bl	1a00112c <Chip_Clock_MainPLLLocked>
1a0011de:	4603      	mov	r3, r0
1a0011e0:	2b00      	cmp	r3, #0
1a0011e2:	d0fa      	beq.n	1a0011da <Chip_SetupCoreClock+0x8a>
1a0011e4:	2300      	movs	r3, #0
1a0011e6:	2201      	movs	r2, #1
1a0011e8:	2109      	movs	r1, #9
1a0011ea:	2004      	movs	r0, #4
1a0011ec:	f000 fd80 	bl	1a001cf0 <Chip_Clock_SetBaseClock>
1a0011f0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a0011f2:	2b00      	cmp	r3, #0
1a0011f4:	d012      	beq.n	1a00121c <Chip_SetupCoreClock+0xcc>
1a0011f6:	f241 7370 	movw	r3, #6000	; 0x1770
1a0011fa:	62bb      	str	r3, [r7, #40]	; 0x28
1a0011fc:	bf00      	nop
1a0011fe:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001200:	1e5a      	subs	r2, r3, #1
1a001202:	62ba      	str	r2, [r7, #40]	; 0x28
1a001204:	2b00      	cmp	r3, #0
1a001206:	d1fa      	bne.n	1a0011fe <Chip_SetupCoreClock+0xae>
1a001208:	68bb      	ldr	r3, [r7, #8]
1a00120a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00120e:	60bb      	str	r3, [r7, #8]
1a001210:	f107 0308 	add.w	r3, r7, #8
1a001214:	4618      	mov	r0, r3
1a001216:	f7ff ff65 	bl	1a0010e4 <Chip_Clock_SetupMainPLL>
1a00121a:	e013      	b.n	1a001244 <Chip_SetupCoreClock+0xf4>
1a00121c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00121e:	2b00      	cmp	r3, #0
1a001220:	d010      	beq.n	1a001244 <Chip_SetupCoreClock+0xf4>
1a001222:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001226:	62bb      	str	r3, [r7, #40]	; 0x28
1a001228:	bf00      	nop
1a00122a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a00122c:	1e5a      	subs	r2, r3, #1
1a00122e:	62ba      	str	r2, [r7, #40]	; 0x28
1a001230:	2b00      	cmp	r3, #0
1a001232:	d1fa      	bne.n	1a00122a <Chip_SetupCoreClock+0xda>
1a001234:	697b      	ldr	r3, [r7, #20]
1a001236:	3b01      	subs	r3, #1
1a001238:	617b      	str	r3, [r7, #20]
1a00123a:	f107 0308 	add.w	r3, r7, #8
1a00123e:	4618      	mov	r0, r3
1a001240:	f7ff ff50 	bl	1a0010e4 <Chip_Clock_SetupMainPLL>
1a001244:	79bb      	ldrb	r3, [r7, #6]
1a001246:	2b00      	cmp	r3, #0
1a001248:	d01e      	beq.n	1a001288 <Chip_SetupCoreClock+0x138>
1a00124a:	2300      	movs	r3, #0
1a00124c:	637b      	str	r3, [r7, #52]	; 0x34
1a00124e:	e018      	b.n	1a001282 <Chip_SetupCoreClock+0x132>
1a001250:	4a10      	ldr	r2, [pc, #64]	; (1a001294 <Chip_SetupCoreClock+0x144>)
1a001252:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001254:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a001258:	4a0e      	ldr	r2, [pc, #56]	; (1a001294 <Chip_SetupCoreClock+0x144>)
1a00125a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00125c:	009b      	lsls	r3, r3, #2
1a00125e:	4413      	add	r3, r2
1a001260:	7859      	ldrb	r1, [r3, #1]
1a001262:	4a0c      	ldr	r2, [pc, #48]	; (1a001294 <Chip_SetupCoreClock+0x144>)
1a001264:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001266:	009b      	lsls	r3, r3, #2
1a001268:	4413      	add	r3, r2
1a00126a:	789c      	ldrb	r4, [r3, #2]
1a00126c:	4a09      	ldr	r2, [pc, #36]	; (1a001294 <Chip_SetupCoreClock+0x144>)
1a00126e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001270:	009b      	lsls	r3, r3, #2
1a001272:	4413      	add	r3, r2
1a001274:	78db      	ldrb	r3, [r3, #3]
1a001276:	4622      	mov	r2, r4
1a001278:	f000 fd3a 	bl	1a001cf0 <Chip_Clock_SetBaseClock>
1a00127c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00127e:	3301      	adds	r3, #1
1a001280:	637b      	str	r3, [r7, #52]	; 0x34
1a001282:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001284:	2b11      	cmp	r3, #17
1a001286:	d9e3      	bls.n	1a001250 <Chip_SetupCoreClock+0x100>
1a001288:	bf00      	nop
1a00128a:	373c      	adds	r7, #60	; 0x3c
1a00128c:	46bd      	mov	sp, r7
1a00128e:	bd90      	pop	{r4, r7, pc}
1a001290:	068e7780 	.word	0x068e7780
1a001294:	1a00201c 	.word	0x1a00201c

1a001298 <Chip_SetupXtalClocking>:
1a001298:	b580      	push	{r7, lr}
1a00129a:	af00      	add	r7, sp, #0
1a00129c:	2201      	movs	r2, #1
1a00129e:	4903      	ldr	r1, [pc, #12]	; (1a0012ac <Chip_SetupXtalClocking+0x14>)
1a0012a0:	2006      	movs	r0, #6
1a0012a2:	f7ff ff55 	bl	1a001150 <Chip_SetupCoreClock>
1a0012a6:	bf00      	nop
1a0012a8:	bd80      	pop	{r7, pc}
1a0012aa:	bf00      	nop
1a0012ac:	0c28cb00 	.word	0x0c28cb00

1a0012b0 <Chip_UART_TXDisable>:
1a0012b0:	b480      	push	{r7}
1a0012b2:	b083      	sub	sp, #12
1a0012b4:	af00      	add	r7, sp, #0
1a0012b6:	6078      	str	r0, [r7, #4]
1a0012b8:	687b      	ldr	r3, [r7, #4]
1a0012ba:	2200      	movs	r2, #0
1a0012bc:	65da      	str	r2, [r3, #92]	; 0x5c
1a0012be:	bf00      	nop
1a0012c0:	370c      	adds	r7, #12
1a0012c2:	46bd      	mov	sp, r7
1a0012c4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012c8:	4770      	bx	lr

1a0012ca <Chip_UART_SetupFIFOS>:
1a0012ca:	b480      	push	{r7}
1a0012cc:	b083      	sub	sp, #12
1a0012ce:	af00      	add	r7, sp, #0
1a0012d0:	6078      	str	r0, [r7, #4]
1a0012d2:	6039      	str	r1, [r7, #0]
1a0012d4:	687b      	ldr	r3, [r7, #4]
1a0012d6:	683a      	ldr	r2, [r7, #0]
1a0012d8:	609a      	str	r2, [r3, #8]
1a0012da:	bf00      	nop
1a0012dc:	370c      	adds	r7, #12
1a0012de:	46bd      	mov	sp, r7
1a0012e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012e4:	4770      	bx	lr

1a0012e6 <Chip_UART_ConfigData>:
1a0012e6:	b480      	push	{r7}
1a0012e8:	b083      	sub	sp, #12
1a0012ea:	af00      	add	r7, sp, #0
1a0012ec:	6078      	str	r0, [r7, #4]
1a0012ee:	6039      	str	r1, [r7, #0]
1a0012f0:	687b      	ldr	r3, [r7, #4]
1a0012f2:	683a      	ldr	r2, [r7, #0]
1a0012f4:	60da      	str	r2, [r3, #12]
1a0012f6:	bf00      	nop
1a0012f8:	370c      	adds	r7, #12
1a0012fa:	46bd      	mov	sp, r7
1a0012fc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001300:	4770      	bx	lr

1a001302 <Chip_UART_EnableDivisorAccess>:
1a001302:	b480      	push	{r7}
1a001304:	b083      	sub	sp, #12
1a001306:	af00      	add	r7, sp, #0
1a001308:	6078      	str	r0, [r7, #4]
1a00130a:	687b      	ldr	r3, [r7, #4]
1a00130c:	68db      	ldr	r3, [r3, #12]
1a00130e:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a001312:	687b      	ldr	r3, [r7, #4]
1a001314:	60da      	str	r2, [r3, #12]
1a001316:	bf00      	nop
1a001318:	370c      	adds	r7, #12
1a00131a:	46bd      	mov	sp, r7
1a00131c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001320:	4770      	bx	lr

1a001322 <Chip_UART_DisableDivisorAccess>:
1a001322:	b480      	push	{r7}
1a001324:	b083      	sub	sp, #12
1a001326:	af00      	add	r7, sp, #0
1a001328:	6078      	str	r0, [r7, #4]
1a00132a:	687b      	ldr	r3, [r7, #4]
1a00132c:	68db      	ldr	r3, [r3, #12]
1a00132e:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a001332:	687b      	ldr	r3, [r7, #4]
1a001334:	60da      	str	r2, [r3, #12]
1a001336:	bf00      	nop
1a001338:	370c      	adds	r7, #12
1a00133a:	46bd      	mov	sp, r7
1a00133c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001340:	4770      	bx	lr

1a001342 <Chip_UART_SetDivisorLatches>:
1a001342:	b480      	push	{r7}
1a001344:	b083      	sub	sp, #12
1a001346:	af00      	add	r7, sp, #0
1a001348:	6078      	str	r0, [r7, #4]
1a00134a:	460b      	mov	r3, r1
1a00134c:	70fb      	strb	r3, [r7, #3]
1a00134e:	4613      	mov	r3, r2
1a001350:	70bb      	strb	r3, [r7, #2]
1a001352:	78fa      	ldrb	r2, [r7, #3]
1a001354:	687b      	ldr	r3, [r7, #4]
1a001356:	601a      	str	r2, [r3, #0]
1a001358:	78ba      	ldrb	r2, [r7, #2]
1a00135a:	687b      	ldr	r3, [r7, #4]
1a00135c:	605a      	str	r2, [r3, #4]
1a00135e:	bf00      	nop
1a001360:	370c      	adds	r7, #12
1a001362:	46bd      	mov	sp, r7
1a001364:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001368:	4770      	bx	lr
1a00136a:	Address 0x000000001a00136a is out of bounds.


1a00136c <Chip_UART_GetIndex>:
1a00136c:	b480      	push	{r7}
1a00136e:	b085      	sub	sp, #20
1a001370:	af00      	add	r7, sp, #0
1a001372:	6078      	str	r0, [r7, #4]
1a001374:	687b      	ldr	r3, [r7, #4]
1a001376:	60fb      	str	r3, [r7, #12]
1a001378:	68fb      	ldr	r3, [r7, #12]
1a00137a:	4a10      	ldr	r2, [pc, #64]	; (1a0013bc <Chip_UART_GetIndex+0x50>)
1a00137c:	4293      	cmp	r3, r2
1a00137e:	d00f      	beq.n	1a0013a0 <Chip_UART_GetIndex+0x34>
1a001380:	4a0e      	ldr	r2, [pc, #56]	; (1a0013bc <Chip_UART_GetIndex+0x50>)
1a001382:	4293      	cmp	r3, r2
1a001384:	d803      	bhi.n	1a00138e <Chip_UART_GetIndex+0x22>
1a001386:	4a0e      	ldr	r2, [pc, #56]	; (1a0013c0 <Chip_UART_GetIndex+0x54>)
1a001388:	4293      	cmp	r3, r2
1a00138a:	d007      	beq.n	1a00139c <Chip_UART_GetIndex+0x30>
1a00138c:	e00e      	b.n	1a0013ac <Chip_UART_GetIndex+0x40>
1a00138e:	4a0d      	ldr	r2, [pc, #52]	; (1a0013c4 <Chip_UART_GetIndex+0x58>)
1a001390:	4293      	cmp	r3, r2
1a001392:	d007      	beq.n	1a0013a4 <Chip_UART_GetIndex+0x38>
1a001394:	4a0c      	ldr	r2, [pc, #48]	; (1a0013c8 <Chip_UART_GetIndex+0x5c>)
1a001396:	4293      	cmp	r3, r2
1a001398:	d006      	beq.n	1a0013a8 <Chip_UART_GetIndex+0x3c>
1a00139a:	e007      	b.n	1a0013ac <Chip_UART_GetIndex+0x40>
1a00139c:	2300      	movs	r3, #0
1a00139e:	e006      	b.n	1a0013ae <Chip_UART_GetIndex+0x42>
1a0013a0:	2301      	movs	r3, #1
1a0013a2:	e004      	b.n	1a0013ae <Chip_UART_GetIndex+0x42>
1a0013a4:	2302      	movs	r3, #2
1a0013a6:	e002      	b.n	1a0013ae <Chip_UART_GetIndex+0x42>
1a0013a8:	2303      	movs	r3, #3
1a0013aa:	e000      	b.n	1a0013ae <Chip_UART_GetIndex+0x42>
1a0013ac:	2300      	movs	r3, #0
1a0013ae:	4618      	mov	r0, r3
1a0013b0:	3714      	adds	r7, #20
1a0013b2:	46bd      	mov	sp, r7
1a0013b4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013b8:	4770      	bx	lr
1a0013ba:	bf00      	nop
1a0013bc:	40082000 	.word	0x40082000
1a0013c0:	40081000 	.word	0x40081000
1a0013c4:	400c1000 	.word	0x400c1000
1a0013c8:	400c2000 	.word	0x400c2000

1a0013cc <Chip_UART_Init>:
1a0013cc:	b580      	push	{r7, lr}
1a0013ce:	b084      	sub	sp, #16
1a0013d0:	af00      	add	r7, sp, #0
1a0013d2:	6078      	str	r0, [r7, #4]
1a0013d4:	68fb      	ldr	r3, [r7, #12]
1a0013d6:	6878      	ldr	r0, [r7, #4]
1a0013d8:	f7ff ffc8 	bl	1a00136c <Chip_UART_GetIndex>
1a0013dc:	4602      	mov	r2, r0
1a0013de:	4b1b      	ldr	r3, [pc, #108]	; (1a00144c <Chip_UART_Init+0x80>)
1a0013e0:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0013e4:	2301      	movs	r3, #1
1a0013e6:	2201      	movs	r2, #1
1a0013e8:	2101      	movs	r1, #1
1a0013ea:	f000 fcf5 	bl	1a001dd8 <Chip_Clock_EnableOpts>
1a0013ee:	2107      	movs	r1, #7
1a0013f0:	6878      	ldr	r0, [r7, #4]
1a0013f2:	f7ff ff6a 	bl	1a0012ca <Chip_UART_SetupFIFOS>
1a0013f6:	6878      	ldr	r0, [r7, #4]
1a0013f8:	f7ff ff5a 	bl	1a0012b0 <Chip_UART_TXDisable>
1a0013fc:	687b      	ldr	r3, [r7, #4]
1a0013fe:	2200      	movs	r2, #0
1a001400:	605a      	str	r2, [r3, #4]
1a001402:	687b      	ldr	r3, [r7, #4]
1a001404:	2200      	movs	r2, #0
1a001406:	60da      	str	r2, [r3, #12]
1a001408:	687b      	ldr	r3, [r7, #4]
1a00140a:	2200      	movs	r2, #0
1a00140c:	621a      	str	r2, [r3, #32]
1a00140e:	687b      	ldr	r3, [r7, #4]
1a001410:	2200      	movs	r2, #0
1a001412:	64da      	str	r2, [r3, #76]	; 0x4c
1a001414:	687b      	ldr	r3, [r7, #4]
1a001416:	2200      	movs	r2, #0
1a001418:	655a      	str	r2, [r3, #84]	; 0x54
1a00141a:	687b      	ldr	r3, [r7, #4]
1a00141c:	2200      	movs	r2, #0
1a00141e:	651a      	str	r2, [r3, #80]	; 0x50
1a001420:	687b      	ldr	r3, [r7, #4]
1a001422:	4a0b      	ldr	r2, [pc, #44]	; (1a001450 <Chip_UART_Init+0x84>)
1a001424:	4293      	cmp	r3, r2
1a001426:	d105      	bne.n	1a001434 <Chip_UART_Init+0x68>
1a001428:	687b      	ldr	r3, [r7, #4]
1a00142a:	2200      	movs	r2, #0
1a00142c:	611a      	str	r2, [r3, #16]
1a00142e:	687b      	ldr	r3, [r7, #4]
1a001430:	699b      	ldr	r3, [r3, #24]
1a001432:	60fb      	str	r3, [r7, #12]
1a001434:	2103      	movs	r1, #3
1a001436:	6878      	ldr	r0, [r7, #4]
1a001438:	f7ff ff55 	bl	1a0012e6 <Chip_UART_ConfigData>
1a00143c:	687b      	ldr	r3, [r7, #4]
1a00143e:	2210      	movs	r2, #16
1a001440:	629a      	str	r2, [r3, #40]	; 0x28
1a001442:	bf00      	nop
1a001444:	3710      	adds	r7, #16
1a001446:	46bd      	mov	sp, r7
1a001448:	bd80      	pop	{r7, pc}
1a00144a:	bf00      	nop
1a00144c:	1a002064 	.word	0x1a002064
1a001450:	40082000 	.word	0x40082000

1a001454 <Chip_UART_SetBaud>:
1a001454:	b580      	push	{r7, lr}
1a001456:	b086      	sub	sp, #24
1a001458:	af00      	add	r7, sp, #0
1a00145a:	6078      	str	r0, [r7, #4]
1a00145c:	6039      	str	r1, [r7, #0]
1a00145e:	6878      	ldr	r0, [r7, #4]
1a001460:	f7ff ff84 	bl	1a00136c <Chip_UART_GetIndex>
1a001464:	4602      	mov	r2, r0
1a001466:	4b16      	ldr	r3, [pc, #88]	; (1a0014c0 <Chip_UART_SetBaud+0x6c>)
1a001468:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a00146c:	4618      	mov	r0, r3
1a00146e:	f000 fd21 	bl	1a001eb4 <Chip_Clock_GetRate>
1a001472:	6178      	str	r0, [r7, #20]
1a001474:	683b      	ldr	r3, [r7, #0]
1a001476:	011b      	lsls	r3, r3, #4
1a001478:	697a      	ldr	r2, [r7, #20]
1a00147a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00147e:	613b      	str	r3, [r7, #16]
1a001480:	693b      	ldr	r3, [r7, #16]
1a001482:	0a1b      	lsrs	r3, r3, #8
1a001484:	60fb      	str	r3, [r7, #12]
1a001486:	68fb      	ldr	r3, [r7, #12]
1a001488:	021b      	lsls	r3, r3, #8
1a00148a:	693a      	ldr	r2, [r7, #16]
1a00148c:	1ad3      	subs	r3, r2, r3
1a00148e:	60bb      	str	r3, [r7, #8]
1a001490:	6878      	ldr	r0, [r7, #4]
1a001492:	f7ff ff36 	bl	1a001302 <Chip_UART_EnableDivisorAccess>
1a001496:	68bb      	ldr	r3, [r7, #8]
1a001498:	b2db      	uxtb	r3, r3
1a00149a:	68fa      	ldr	r2, [r7, #12]
1a00149c:	b2d2      	uxtb	r2, r2
1a00149e:	4619      	mov	r1, r3
1a0014a0:	6878      	ldr	r0, [r7, #4]
1a0014a2:	f7ff ff4e 	bl	1a001342 <Chip_UART_SetDivisorLatches>
1a0014a6:	6878      	ldr	r0, [r7, #4]
1a0014a8:	f7ff ff3b 	bl	1a001322 <Chip_UART_DisableDivisorAccess>
1a0014ac:	697a      	ldr	r2, [r7, #20]
1a0014ae:	693b      	ldr	r3, [r7, #16]
1a0014b0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014b4:	091b      	lsrs	r3, r3, #4
1a0014b6:	4618      	mov	r0, r3
1a0014b8:	3718      	adds	r7, #24
1a0014ba:	46bd      	mov	sp, r7
1a0014bc:	bd80      	pop	{r7, pc}
1a0014be:	bf00      	nop
1a0014c0:	1a00206c 	.word	0x1a00206c

1a0014c4 <Chip_TIMER_Enable>:
1a0014c4:	b480      	push	{r7}
1a0014c6:	b083      	sub	sp, #12
1a0014c8:	af00      	add	r7, sp, #0
1a0014ca:	6078      	str	r0, [r7, #4]
1a0014cc:	687b      	ldr	r3, [r7, #4]
1a0014ce:	685b      	ldr	r3, [r3, #4]
1a0014d0:	f043 0201 	orr.w	r2, r3, #1
1a0014d4:	687b      	ldr	r3, [r7, #4]
1a0014d6:	605a      	str	r2, [r3, #4]
1a0014d8:	bf00      	nop
1a0014da:	370c      	adds	r7, #12
1a0014dc:	46bd      	mov	sp, r7
1a0014de:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014e2:	4770      	bx	lr

1a0014e4 <Chip_TIMER_PrescaleSet>:
1a0014e4:	b480      	push	{r7}
1a0014e6:	b083      	sub	sp, #12
1a0014e8:	af00      	add	r7, sp, #0
1a0014ea:	6078      	str	r0, [r7, #4]
1a0014ec:	6039      	str	r1, [r7, #0]
1a0014ee:	687b      	ldr	r3, [r7, #4]
1a0014f0:	683a      	ldr	r2, [r7, #0]
1a0014f2:	60da      	str	r2, [r3, #12]
1a0014f4:	bf00      	nop
1a0014f6:	370c      	adds	r7, #12
1a0014f8:	46bd      	mov	sp, r7
1a0014fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014fe:	4770      	bx	lr

1a001500 <StopWatch_Init>:
1a001500:	b580      	push	{r7, lr}
1a001502:	b082      	sub	sp, #8
1a001504:	af00      	add	r7, sp, #0
1a001506:	2308      	movs	r3, #8
1a001508:	607b      	str	r3, [r7, #4]
1a00150a:	4814      	ldr	r0, [pc, #80]	; (1a00155c <StopWatch_Init+0x5c>)
1a00150c:	f000 fd54 	bl	1a001fb8 <Chip_TIMER_Init>
1a001510:	687b      	ldr	r3, [r7, #4]
1a001512:	3b01      	subs	r3, #1
1a001514:	4619      	mov	r1, r3
1a001516:	4811      	ldr	r0, [pc, #68]	; (1a00155c <StopWatch_Init+0x5c>)
1a001518:	f7ff ffe4 	bl	1a0014e4 <Chip_TIMER_PrescaleSet>
1a00151c:	480f      	ldr	r0, [pc, #60]	; (1a00155c <StopWatch_Init+0x5c>)
1a00151e:	f7ff ffd1 	bl	1a0014c4 <Chip_TIMER_Enable>
1a001522:	2084      	movs	r0, #132	; 0x84
1a001524:	f000 fcc6 	bl	1a001eb4 <Chip_Clock_GetRate>
1a001528:	4602      	mov	r2, r0
1a00152a:	687b      	ldr	r3, [r7, #4]
1a00152c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001530:	4a0b      	ldr	r2, [pc, #44]	; (1a001560 <StopWatch_Init+0x60>)
1a001532:	6013      	str	r3, [r2, #0]
1a001534:	4b0a      	ldr	r3, [pc, #40]	; (1a001560 <StopWatch_Init+0x60>)
1a001536:	681b      	ldr	r3, [r3, #0]
1a001538:	4a0a      	ldr	r2, [pc, #40]	; (1a001564 <StopWatch_Init+0x64>)
1a00153a:	fba2 2303 	umull	r2, r3, r2, r3
1a00153e:	099b      	lsrs	r3, r3, #6
1a001540:	4a09      	ldr	r2, [pc, #36]	; (1a001568 <StopWatch_Init+0x68>)
1a001542:	6013      	str	r3, [r2, #0]
1a001544:	4b06      	ldr	r3, [pc, #24]	; (1a001560 <StopWatch_Init+0x60>)
1a001546:	681b      	ldr	r3, [r3, #0]
1a001548:	4a08      	ldr	r2, [pc, #32]	; (1a00156c <StopWatch_Init+0x6c>)
1a00154a:	fba2 2303 	umull	r2, r3, r2, r3
1a00154e:	0c9b      	lsrs	r3, r3, #18
1a001550:	4a07      	ldr	r2, [pc, #28]	; (1a001570 <StopWatch_Init+0x70>)
1a001552:	6013      	str	r3, [r2, #0]
1a001554:	bf00      	nop
1a001556:	3708      	adds	r7, #8
1a001558:	46bd      	mov	sp, r7
1a00155a:	bd80      	pop	{r7, pc}
1a00155c:	40084000 	.word	0x40084000
1a001560:	10000004 	.word	0x10000004
1a001564:	10624dd3 	.word	0x10624dd3
1a001568:	10000008 	.word	0x10000008
1a00156c:	431bde83 	.word	0x431bde83
1a001570:	1000000c 	.word	0x1000000c

1a001574 <ABS>:
1a001574:	b480      	push	{r7}
1a001576:	b083      	sub	sp, #12
1a001578:	af00      	add	r7, sp, #0
1a00157a:	6078      	str	r0, [r7, #4]
1a00157c:	687b      	ldr	r3, [r7, #4]
1a00157e:	2b00      	cmp	r3, #0
1a001580:	da02      	bge.n	1a001588 <ABS+0x14>
1a001582:	687b      	ldr	r3, [r7, #4]
1a001584:	425b      	negs	r3, r3
1a001586:	e000      	b.n	1a00158a <ABS+0x16>
1a001588:	687b      	ldr	r3, [r7, #4]
1a00158a:	4618      	mov	r0, r3
1a00158c:	370c      	adds	r7, #12
1a00158e:	46bd      	mov	sp, r7
1a001590:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001594:	4770      	bx	lr
1a001596:	Address 0x000000001a001596 is out of bounds.


1a001598 <pll_calc_divs>:
1a001598:	b580      	push	{r7, lr}
1a00159a:	b088      	sub	sp, #32
1a00159c:	af00      	add	r7, sp, #0
1a00159e:	6078      	str	r0, [r7, #4]
1a0015a0:	6039      	str	r1, [r7, #0]
1a0015a2:	687b      	ldr	r3, [r7, #4]
1a0015a4:	61fb      	str	r3, [r7, #28]
1a0015a6:	683b      	ldr	r3, [r7, #0]
1a0015a8:	681b      	ldr	r3, [r3, #0]
1a0015aa:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0015ae:	2b00      	cmp	r3, #0
1a0015b0:	d005      	beq.n	1a0015be <pll_calc_divs+0x26>
1a0015b2:	683b      	ldr	r3, [r7, #0]
1a0015b4:	681b      	ldr	r3, [r3, #0]
1a0015b6:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0015ba:	683b      	ldr	r3, [r7, #0]
1a0015bc:	601a      	str	r2, [r3, #0]
1a0015be:	2301      	movs	r3, #1
1a0015c0:	61bb      	str	r3, [r7, #24]
1a0015c2:	e06f      	b.n	1a0016a4 <pll_calc_divs+0x10c>
1a0015c4:	2300      	movs	r3, #0
1a0015c6:	613b      	str	r3, [r7, #16]
1a0015c8:	e066      	b.n	1a001698 <pll_calc_divs+0x100>
1a0015ca:	2301      	movs	r3, #1
1a0015cc:	617b      	str	r3, [r7, #20]
1a0015ce:	e05a      	b.n	1a001686 <pll_calc_divs+0xee>
1a0015d0:	683b      	ldr	r3, [r7, #0]
1a0015d2:	681b      	ldr	r3, [r3, #0]
1a0015d4:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0015d8:	2b00      	cmp	r3, #0
1a0015da:	d00e      	beq.n	1a0015fa <pll_calc_divs+0x62>
1a0015dc:	693b      	ldr	r3, [r7, #16]
1a0015de:	3301      	adds	r3, #1
1a0015e0:	697a      	ldr	r2, [r7, #20]
1a0015e2:	fa02 f303 	lsl.w	r3, r2, r3
1a0015e6:	461a      	mov	r2, r3
1a0015e8:	683b      	ldr	r3, [r7, #0]
1a0015ea:	695b      	ldr	r3, [r3, #20]
1a0015ec:	fb03 f202 	mul.w	r2, r3, r2
1a0015f0:	69bb      	ldr	r3, [r7, #24]
1a0015f2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0015f6:	60fb      	str	r3, [r7, #12]
1a0015f8:	e008      	b.n	1a00160c <pll_calc_divs+0x74>
1a0015fa:	683b      	ldr	r3, [r7, #0]
1a0015fc:	695b      	ldr	r3, [r3, #20]
1a0015fe:	697a      	ldr	r2, [r7, #20]
1a001600:	fb02 f203 	mul.w	r2, r2, r3
1a001604:	69bb      	ldr	r3, [r7, #24]
1a001606:	fbb2 f3f3 	udiv	r3, r2, r3
1a00160a:	60fb      	str	r3, [r7, #12]
1a00160c:	68fb      	ldr	r3, [r7, #12]
1a00160e:	4a29      	ldr	r2, [pc, #164]	; (1a0016b4 <pll_calc_divs+0x11c>)
1a001610:	4293      	cmp	r3, r2
1a001612:	d934      	bls.n	1a00167e <pll_calc_divs+0xe6>
1a001614:	68fb      	ldr	r3, [r7, #12]
1a001616:	4a28      	ldr	r2, [pc, #160]	; (1a0016b8 <pll_calc_divs+0x120>)
1a001618:	4293      	cmp	r3, r2
1a00161a:	d839      	bhi.n	1a001690 <pll_calc_divs+0xf8>
1a00161c:	683b      	ldr	r3, [r7, #0]
1a00161e:	681b      	ldr	r3, [r3, #0]
1a001620:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001624:	2b00      	cmp	r3, #0
1a001626:	d002      	beq.n	1a00162e <pll_calc_divs+0x96>
1a001628:	68fb      	ldr	r3, [r7, #12]
1a00162a:	60bb      	str	r3, [r7, #8]
1a00162c:	e005      	b.n	1a00163a <pll_calc_divs+0xa2>
1a00162e:	693b      	ldr	r3, [r7, #16]
1a001630:	3301      	adds	r3, #1
1a001632:	68fa      	ldr	r2, [r7, #12]
1a001634:	fa22 f303 	lsr.w	r3, r2, r3
1a001638:	60bb      	str	r3, [r7, #8]
1a00163a:	687a      	ldr	r2, [r7, #4]
1a00163c:	68bb      	ldr	r3, [r7, #8]
1a00163e:	1ad3      	subs	r3, r2, r3
1a001640:	4618      	mov	r0, r3
1a001642:	f7ff ff97 	bl	1a001574 <ABS>
1a001646:	4602      	mov	r2, r0
1a001648:	69fb      	ldr	r3, [r7, #28]
1a00164a:	4293      	cmp	r3, r2
1a00164c:	d918      	bls.n	1a001680 <pll_calc_divs+0xe8>
1a00164e:	683b      	ldr	r3, [r7, #0]
1a001650:	69ba      	ldr	r2, [r7, #24]
1a001652:	609a      	str	r2, [r3, #8]
1a001654:	693b      	ldr	r3, [r7, #16]
1a001656:	1c5a      	adds	r2, r3, #1
1a001658:	683b      	ldr	r3, [r7, #0]
1a00165a:	60da      	str	r2, [r3, #12]
1a00165c:	683b      	ldr	r3, [r7, #0]
1a00165e:	697a      	ldr	r2, [r7, #20]
1a001660:	611a      	str	r2, [r3, #16]
1a001662:	683b      	ldr	r3, [r7, #0]
1a001664:	68ba      	ldr	r2, [r7, #8]
1a001666:	619a      	str	r2, [r3, #24]
1a001668:	683b      	ldr	r3, [r7, #0]
1a00166a:	68fa      	ldr	r2, [r7, #12]
1a00166c:	61da      	str	r2, [r3, #28]
1a00166e:	687a      	ldr	r2, [r7, #4]
1a001670:	68bb      	ldr	r3, [r7, #8]
1a001672:	1ad3      	subs	r3, r2, r3
1a001674:	4618      	mov	r0, r3
1a001676:	f7ff ff7d 	bl	1a001574 <ABS>
1a00167a:	61f8      	str	r0, [r7, #28]
1a00167c:	e000      	b.n	1a001680 <pll_calc_divs+0xe8>
1a00167e:	bf00      	nop
1a001680:	697b      	ldr	r3, [r7, #20]
1a001682:	3301      	adds	r3, #1
1a001684:	617b      	str	r3, [r7, #20]
1a001686:	697b      	ldr	r3, [r7, #20]
1a001688:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a00168c:	dda0      	ble.n	1a0015d0 <pll_calc_divs+0x38>
1a00168e:	e000      	b.n	1a001692 <pll_calc_divs+0xfa>
1a001690:	bf00      	nop
1a001692:	693b      	ldr	r3, [r7, #16]
1a001694:	3301      	adds	r3, #1
1a001696:	613b      	str	r3, [r7, #16]
1a001698:	693b      	ldr	r3, [r7, #16]
1a00169a:	2b03      	cmp	r3, #3
1a00169c:	dd95      	ble.n	1a0015ca <pll_calc_divs+0x32>
1a00169e:	69bb      	ldr	r3, [r7, #24]
1a0016a0:	3301      	adds	r3, #1
1a0016a2:	61bb      	str	r3, [r7, #24]
1a0016a4:	69bb      	ldr	r3, [r7, #24]
1a0016a6:	2b04      	cmp	r3, #4
1a0016a8:	dd8c      	ble.n	1a0015c4 <pll_calc_divs+0x2c>
1a0016aa:	bf00      	nop
1a0016ac:	3720      	adds	r7, #32
1a0016ae:	46bd      	mov	sp, r7
1a0016b0:	bd80      	pop	{r7, pc}
1a0016b2:	bf00      	nop
1a0016b4:	094c5eff 	.word	0x094c5eff
1a0016b8:	1312d000 	.word	0x1312d000

1a0016bc <pll_get_frac>:
1a0016bc:	b5b0      	push	{r4, r5, r7, lr}
1a0016be:	b09e      	sub	sp, #120	; 0x78
1a0016c0:	af00      	add	r7, sp, #0
1a0016c2:	6078      	str	r0, [r7, #4]
1a0016c4:	6039      	str	r1, [r7, #0]
1a0016c6:	f107 030c 	add.w	r3, r7, #12
1a0016ca:	2260      	movs	r2, #96	; 0x60
1a0016cc:	2100      	movs	r1, #0
1a0016ce:	4618      	mov	r0, r3
1a0016d0:	f7fe fe16 	bl	1a000300 <memset>
1a0016d4:	68fb      	ldr	r3, [r7, #12]
1a0016d6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0016da:	60fb      	str	r3, [r7, #12]
1a0016dc:	683b      	ldr	r3, [r7, #0]
1a0016de:	695b      	ldr	r3, [r3, #20]
1a0016e0:	623b      	str	r3, [r7, #32]
1a0016e2:	683b      	ldr	r3, [r7, #0]
1a0016e4:	791b      	ldrb	r3, [r3, #4]
1a0016e6:	743b      	strb	r3, [r7, #16]
1a0016e8:	f107 030c 	add.w	r3, r7, #12
1a0016ec:	4619      	mov	r1, r3
1a0016ee:	6878      	ldr	r0, [r7, #4]
1a0016f0:	f7ff ff52 	bl	1a001598 <pll_calc_divs>
1a0016f4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0016f6:	687a      	ldr	r2, [r7, #4]
1a0016f8:	429a      	cmp	r2, r3
1a0016fa:	d10a      	bne.n	1a001712 <pll_get_frac+0x56>
1a0016fc:	683b      	ldr	r3, [r7, #0]
1a0016fe:	461d      	mov	r5, r3
1a001700:	f107 040c 	add.w	r4, r7, #12
1a001704:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001706:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001708:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00170c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001710:	e08e      	b.n	1a001830 <pll_get_frac+0x174>
1a001712:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001714:	687a      	ldr	r2, [r7, #4]
1a001716:	1ad3      	subs	r3, r2, r3
1a001718:	4618      	mov	r0, r3
1a00171a:	f7ff ff2b 	bl	1a001574 <ABS>
1a00171e:	4603      	mov	r3, r0
1a001720:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001722:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001724:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001728:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00172a:	683b      	ldr	r3, [r7, #0]
1a00172c:	695b      	ldr	r3, [r3, #20]
1a00172e:	663b      	str	r3, [r7, #96]	; 0x60
1a001730:	683b      	ldr	r3, [r7, #0]
1a001732:	791b      	ldrb	r3, [r3, #4]
1a001734:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001738:	f107 030c 	add.w	r3, r7, #12
1a00173c:	3340      	adds	r3, #64	; 0x40
1a00173e:	4619      	mov	r1, r3
1a001740:	6878      	ldr	r0, [r7, #4]
1a001742:	f7ff ff29 	bl	1a001598 <pll_calc_divs>
1a001746:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001748:	687a      	ldr	r2, [r7, #4]
1a00174a:	429a      	cmp	r2, r3
1a00174c:	d10a      	bne.n	1a001764 <pll_get_frac+0xa8>
1a00174e:	683b      	ldr	r3, [r7, #0]
1a001750:	461d      	mov	r5, r3
1a001752:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001756:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001758:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00175a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00175e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001762:	e065      	b.n	1a001830 <pll_get_frac+0x174>
1a001764:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001766:	687a      	ldr	r2, [r7, #4]
1a001768:	1ad3      	subs	r3, r2, r3
1a00176a:	4618      	mov	r0, r3
1a00176c:	f7ff ff02 	bl	1a001574 <ABS>
1a001770:	4603      	mov	r3, r0
1a001772:	677b      	str	r3, [r7, #116]	; 0x74
1a001774:	687b      	ldr	r3, [r7, #4]
1a001776:	4a30      	ldr	r2, [pc, #192]	; (1a001838 <pll_get_frac+0x17c>)
1a001778:	4293      	cmp	r3, r2
1a00177a:	d81a      	bhi.n	1a0017b2 <pll_get_frac+0xf6>
1a00177c:	2340      	movs	r3, #64	; 0x40
1a00177e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001780:	683b      	ldr	r3, [r7, #0]
1a001782:	695b      	ldr	r3, [r3, #20]
1a001784:	643b      	str	r3, [r7, #64]	; 0x40
1a001786:	f107 030c 	add.w	r3, r7, #12
1a00178a:	3320      	adds	r3, #32
1a00178c:	4619      	mov	r1, r3
1a00178e:	6878      	ldr	r0, [r7, #4]
1a001790:	f7ff ff02 	bl	1a001598 <pll_calc_divs>
1a001794:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001796:	687a      	ldr	r2, [r7, #4]
1a001798:	429a      	cmp	r2, r3
1a00179a:	d10a      	bne.n	1a0017b2 <pll_get_frac+0xf6>
1a00179c:	683b      	ldr	r3, [r7, #0]
1a00179e:	461d      	mov	r5, r3
1a0017a0:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0017a4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0017a6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0017a8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0017ac:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0017b0:	e03e      	b.n	1a001830 <pll_get_frac+0x174>
1a0017b2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0017b4:	687a      	ldr	r2, [r7, #4]
1a0017b6:	1ad3      	subs	r3, r2, r3
1a0017b8:	4618      	mov	r0, r3
1a0017ba:	f7ff fedb 	bl	1a001574 <ABS>
1a0017be:	4603      	mov	r3, r0
1a0017c0:	673b      	str	r3, [r7, #112]	; 0x70
1a0017c2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0017c4:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0017c6:	429a      	cmp	r2, r3
1a0017c8:	dc19      	bgt.n	1a0017fe <pll_get_frac+0x142>
1a0017ca:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0017cc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0017ce:	429a      	cmp	r2, r3
1a0017d0:	dc0a      	bgt.n	1a0017e8 <pll_get_frac+0x12c>
1a0017d2:	683b      	ldr	r3, [r7, #0]
1a0017d4:	461d      	mov	r5, r3
1a0017d6:	f107 040c 	add.w	r4, r7, #12
1a0017da:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0017dc:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0017de:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0017e2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0017e6:	e023      	b.n	1a001830 <pll_get_frac+0x174>
1a0017e8:	683b      	ldr	r3, [r7, #0]
1a0017ea:	461d      	mov	r5, r3
1a0017ec:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0017f0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0017f2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0017f4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0017f8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0017fc:	e018      	b.n	1a001830 <pll_get_frac+0x174>
1a0017fe:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001800:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001802:	429a      	cmp	r2, r3
1a001804:	dc0a      	bgt.n	1a00181c <pll_get_frac+0x160>
1a001806:	683b      	ldr	r3, [r7, #0]
1a001808:	461d      	mov	r5, r3
1a00180a:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00180e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001810:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001812:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001816:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00181a:	e009      	b.n	1a001830 <pll_get_frac+0x174>
1a00181c:	683b      	ldr	r3, [r7, #0]
1a00181e:	461d      	mov	r5, r3
1a001820:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001824:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001826:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001828:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00182c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001830:	3778      	adds	r7, #120	; 0x78
1a001832:	46bd      	mov	sp, r7
1a001834:	bdb0      	pop	{r4, r5, r7, pc}
1a001836:	bf00      	nop
1a001838:	068e7780 	.word	0x068e7780

1a00183c <Chip_Clock_GetDivRate>:
1a00183c:	b580      	push	{r7, lr}
1a00183e:	b084      	sub	sp, #16
1a001840:	af00      	add	r7, sp, #0
1a001842:	4603      	mov	r3, r0
1a001844:	460a      	mov	r2, r1
1a001846:	71fb      	strb	r3, [r7, #7]
1a001848:	4613      	mov	r3, r2
1a00184a:	71bb      	strb	r3, [r7, #6]
1a00184c:	79bb      	ldrb	r3, [r7, #6]
1a00184e:	4618      	mov	r0, r3
1a001850:	f000 f960 	bl	1a001b14 <Chip_Clock_GetDividerSource>
1a001854:	4603      	mov	r3, r0
1a001856:	73fb      	strb	r3, [r7, #15]
1a001858:	79bb      	ldrb	r3, [r7, #6]
1a00185a:	4618      	mov	r0, r3
1a00185c:	f000 f97a 	bl	1a001b54 <Chip_Clock_GetDividerDivisor>
1a001860:	60b8      	str	r0, [r7, #8]
1a001862:	7bfb      	ldrb	r3, [r7, #15]
1a001864:	4618      	mov	r0, r3
1a001866:	f000 f991 	bl	1a001b8c <Chip_Clock_GetClockInputHz>
1a00186a:	4602      	mov	r2, r0
1a00186c:	68bb      	ldr	r3, [r7, #8]
1a00186e:	3301      	adds	r3, #1
1a001870:	fbb2 f3f3 	udiv	r3, r2, r3
1a001874:	4618      	mov	r0, r3
1a001876:	3710      	adds	r7, #16
1a001878:	46bd      	mov	sp, r7
1a00187a:	bd80      	pop	{r7, pc}

1a00187c <Chip_Clock_FindBaseClock>:
1a00187c:	b480      	push	{r7}
1a00187e:	b085      	sub	sp, #20
1a001880:	af00      	add	r7, sp, #0
1a001882:	4603      	mov	r3, r0
1a001884:	80fb      	strh	r3, [r7, #6]
1a001886:	231c      	movs	r3, #28
1a001888:	73fb      	strb	r3, [r7, #15]
1a00188a:	2300      	movs	r3, #0
1a00188c:	60bb      	str	r3, [r7, #8]
1a00188e:	e024      	b.n	1a0018da <Chip_Clock_FindBaseClock+0x5e>
1a001890:	491d      	ldr	r1, [pc, #116]	; (1a001908 <Chip_Clock_FindBaseClock+0x8c>)
1a001892:	68ba      	ldr	r2, [r7, #8]
1a001894:	4613      	mov	r3, r2
1a001896:	005b      	lsls	r3, r3, #1
1a001898:	4413      	add	r3, r2
1a00189a:	005b      	lsls	r3, r3, #1
1a00189c:	440b      	add	r3, r1
1a00189e:	881b      	ldrh	r3, [r3, #0]
1a0018a0:	88fa      	ldrh	r2, [r7, #6]
1a0018a2:	429a      	cmp	r2, r3
1a0018a4:	d316      	bcc.n	1a0018d4 <Chip_Clock_FindBaseClock+0x58>
1a0018a6:	4918      	ldr	r1, [pc, #96]	; (1a001908 <Chip_Clock_FindBaseClock+0x8c>)
1a0018a8:	68ba      	ldr	r2, [r7, #8]
1a0018aa:	4613      	mov	r3, r2
1a0018ac:	005b      	lsls	r3, r3, #1
1a0018ae:	4413      	add	r3, r2
1a0018b0:	005b      	lsls	r3, r3, #1
1a0018b2:	440b      	add	r3, r1
1a0018b4:	3302      	adds	r3, #2
1a0018b6:	881b      	ldrh	r3, [r3, #0]
1a0018b8:	88fa      	ldrh	r2, [r7, #6]
1a0018ba:	429a      	cmp	r2, r3
1a0018bc:	d80a      	bhi.n	1a0018d4 <Chip_Clock_FindBaseClock+0x58>
1a0018be:	4912      	ldr	r1, [pc, #72]	; (1a001908 <Chip_Clock_FindBaseClock+0x8c>)
1a0018c0:	68ba      	ldr	r2, [r7, #8]
1a0018c2:	4613      	mov	r3, r2
1a0018c4:	005b      	lsls	r3, r3, #1
1a0018c6:	4413      	add	r3, r2
1a0018c8:	005b      	lsls	r3, r3, #1
1a0018ca:	440b      	add	r3, r1
1a0018cc:	3304      	adds	r3, #4
1a0018ce:	781b      	ldrb	r3, [r3, #0]
1a0018d0:	73fb      	strb	r3, [r7, #15]
1a0018d2:	e002      	b.n	1a0018da <Chip_Clock_FindBaseClock+0x5e>
1a0018d4:	68bb      	ldr	r3, [r7, #8]
1a0018d6:	3301      	adds	r3, #1
1a0018d8:	60bb      	str	r3, [r7, #8]
1a0018da:	7bfb      	ldrb	r3, [r7, #15]
1a0018dc:	2b1c      	cmp	r3, #28
1a0018de:	d10b      	bne.n	1a0018f8 <Chip_Clock_FindBaseClock+0x7c>
1a0018e0:	4909      	ldr	r1, [pc, #36]	; (1a001908 <Chip_Clock_FindBaseClock+0x8c>)
1a0018e2:	68ba      	ldr	r2, [r7, #8]
1a0018e4:	4613      	mov	r3, r2
1a0018e6:	005b      	lsls	r3, r3, #1
1a0018e8:	4413      	add	r3, r2
1a0018ea:	005b      	lsls	r3, r3, #1
1a0018ec:	440b      	add	r3, r1
1a0018ee:	3304      	adds	r3, #4
1a0018f0:	781b      	ldrb	r3, [r3, #0]
1a0018f2:	7bfa      	ldrb	r2, [r7, #15]
1a0018f4:	429a      	cmp	r2, r3
1a0018f6:	d1cb      	bne.n	1a001890 <Chip_Clock_FindBaseClock+0x14>
1a0018f8:	7bfb      	ldrb	r3, [r7, #15]
1a0018fa:	4618      	mov	r0, r3
1a0018fc:	3714      	adds	r7, #20
1a0018fe:	46bd      	mov	sp, r7
1a001900:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001904:	4770      	bx	lr
1a001906:	bf00      	nop
1a001908:	1a002074 	.word	0x1a002074

1a00190c <Chip_Clock_EnableCrystal>:
1a00190c:	b480      	push	{r7}
1a00190e:	b083      	sub	sp, #12
1a001910:	af00      	add	r7, sp, #0
1a001912:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001916:	603b      	str	r3, [r7, #0]
1a001918:	4b15      	ldr	r3, [pc, #84]	; (1a001970 <Chip_Clock_EnableCrystal+0x64>)
1a00191a:	699b      	ldr	r3, [r3, #24]
1a00191c:	607b      	str	r3, [r7, #4]
1a00191e:	687b      	ldr	r3, [r7, #4]
1a001920:	f023 0302 	bic.w	r3, r3, #2
1a001924:	607b      	str	r3, [r7, #4]
1a001926:	4b12      	ldr	r3, [pc, #72]	; (1a001970 <Chip_Clock_EnableCrystal+0x64>)
1a001928:	699b      	ldr	r3, [r3, #24]
1a00192a:	687a      	ldr	r2, [r7, #4]
1a00192c:	429a      	cmp	r2, r3
1a00192e:	d002      	beq.n	1a001936 <Chip_Clock_EnableCrystal+0x2a>
1a001930:	4a0f      	ldr	r2, [pc, #60]	; (1a001970 <Chip_Clock_EnableCrystal+0x64>)
1a001932:	687b      	ldr	r3, [r7, #4]
1a001934:	6193      	str	r3, [r2, #24]
1a001936:	687b      	ldr	r3, [r7, #4]
1a001938:	f023 0301 	bic.w	r3, r3, #1
1a00193c:	607b      	str	r3, [r7, #4]
1a00193e:	4b0d      	ldr	r3, [pc, #52]	; (1a001974 <Chip_Clock_EnableCrystal+0x68>)
1a001940:	681b      	ldr	r3, [r3, #0]
1a001942:	4a0d      	ldr	r2, [pc, #52]	; (1a001978 <Chip_Clock_EnableCrystal+0x6c>)
1a001944:	4293      	cmp	r3, r2
1a001946:	d903      	bls.n	1a001950 <Chip_Clock_EnableCrystal+0x44>
1a001948:	687b      	ldr	r3, [r7, #4]
1a00194a:	f043 0304 	orr.w	r3, r3, #4
1a00194e:	607b      	str	r3, [r7, #4]
1a001950:	4a07      	ldr	r2, [pc, #28]	; (1a001970 <Chip_Clock_EnableCrystal+0x64>)
1a001952:	687b      	ldr	r3, [r7, #4]
1a001954:	6193      	str	r3, [r2, #24]
1a001956:	bf00      	nop
1a001958:	683b      	ldr	r3, [r7, #0]
1a00195a:	1e5a      	subs	r2, r3, #1
1a00195c:	603a      	str	r2, [r7, #0]
1a00195e:	2b00      	cmp	r3, #0
1a001960:	d1fa      	bne.n	1a001958 <Chip_Clock_EnableCrystal+0x4c>
1a001962:	bf00      	nop
1a001964:	370c      	adds	r7, #12
1a001966:	46bd      	mov	sp, r7
1a001968:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00196c:	4770      	bx	lr
1a00196e:	bf00      	nop
1a001970:	40050000 	.word	0x40050000
1a001974:	1a001fdc 	.word	0x1a001fdc
1a001978:	01312cff 	.word	0x01312cff

1a00197c <Chip_Clock_CalcMainPLLValue>:
1a00197c:	b580      	push	{r7, lr}
1a00197e:	b082      	sub	sp, #8
1a001980:	af00      	add	r7, sp, #0
1a001982:	6078      	str	r0, [r7, #4]
1a001984:	6039      	str	r1, [r7, #0]
1a001986:	683b      	ldr	r3, [r7, #0]
1a001988:	791b      	ldrb	r3, [r3, #4]
1a00198a:	4618      	mov	r0, r3
1a00198c:	f000 f8fe 	bl	1a001b8c <Chip_Clock_GetClockInputHz>
1a001990:	4602      	mov	r2, r0
1a001992:	683b      	ldr	r3, [r7, #0]
1a001994:	615a      	str	r2, [r3, #20]
1a001996:	687b      	ldr	r3, [r7, #4]
1a001998:	4a2b      	ldr	r2, [pc, #172]	; (1a001a48 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00199a:	4293      	cmp	r3, r2
1a00199c:	d807      	bhi.n	1a0019ae <Chip_Clock_CalcMainPLLValue+0x32>
1a00199e:	687b      	ldr	r3, [r7, #4]
1a0019a0:	4a2a      	ldr	r2, [pc, #168]	; (1a001a4c <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0019a2:	4293      	cmp	r3, r2
1a0019a4:	d903      	bls.n	1a0019ae <Chip_Clock_CalcMainPLLValue+0x32>
1a0019a6:	683b      	ldr	r3, [r7, #0]
1a0019a8:	695b      	ldr	r3, [r3, #20]
1a0019aa:	2b00      	cmp	r3, #0
1a0019ac:	d102      	bne.n	1a0019b4 <Chip_Clock_CalcMainPLLValue+0x38>
1a0019ae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0019b2:	e044      	b.n	1a001a3e <Chip_Clock_CalcMainPLLValue+0xc2>
1a0019b4:	683b      	ldr	r3, [r7, #0]
1a0019b6:	2280      	movs	r2, #128	; 0x80
1a0019b8:	601a      	str	r2, [r3, #0]
1a0019ba:	683b      	ldr	r3, [r7, #0]
1a0019bc:	2200      	movs	r2, #0
1a0019be:	609a      	str	r2, [r3, #8]
1a0019c0:	683b      	ldr	r3, [r7, #0]
1a0019c2:	2200      	movs	r2, #0
1a0019c4:	60da      	str	r2, [r3, #12]
1a0019c6:	683b      	ldr	r3, [r7, #0]
1a0019c8:	695b      	ldr	r3, [r3, #20]
1a0019ca:	687a      	ldr	r2, [r7, #4]
1a0019cc:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019d0:	461a      	mov	r2, r3
1a0019d2:	683b      	ldr	r3, [r7, #0]
1a0019d4:	611a      	str	r2, [r3, #16]
1a0019d6:	687b      	ldr	r3, [r7, #4]
1a0019d8:	4a1d      	ldr	r2, [pc, #116]	; (1a001a50 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0019da:	4293      	cmp	r3, r2
1a0019dc:	d909      	bls.n	1a0019f2 <Chip_Clock_CalcMainPLLValue+0x76>
1a0019de:	683b      	ldr	r3, [r7, #0]
1a0019e0:	691b      	ldr	r3, [r3, #16]
1a0019e2:	461a      	mov	r2, r3
1a0019e4:	683b      	ldr	r3, [r7, #0]
1a0019e6:	695b      	ldr	r3, [r3, #20]
1a0019e8:	fb03 f302 	mul.w	r3, r3, r2
1a0019ec:	687a      	ldr	r2, [r7, #4]
1a0019ee:	429a      	cmp	r2, r3
1a0019f0:	d00f      	beq.n	1a001a12 <Chip_Clock_CalcMainPLLValue+0x96>
1a0019f2:	6839      	ldr	r1, [r7, #0]
1a0019f4:	6878      	ldr	r0, [r7, #4]
1a0019f6:	f7ff fe61 	bl	1a0016bc <pll_get_frac>
1a0019fa:	683b      	ldr	r3, [r7, #0]
1a0019fc:	689b      	ldr	r3, [r3, #8]
1a0019fe:	2b00      	cmp	r3, #0
1a001a00:	d102      	bne.n	1a001a08 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001a02:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a06:	e01a      	b.n	1a001a3e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a08:	683b      	ldr	r3, [r7, #0]
1a001a0a:	689b      	ldr	r3, [r3, #8]
1a001a0c:	1e5a      	subs	r2, r3, #1
1a001a0e:	683b      	ldr	r3, [r7, #0]
1a001a10:	609a      	str	r2, [r3, #8]
1a001a12:	683b      	ldr	r3, [r7, #0]
1a001a14:	691b      	ldr	r3, [r3, #16]
1a001a16:	2b00      	cmp	r3, #0
1a001a18:	d102      	bne.n	1a001a20 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001a1a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a1e:	e00e      	b.n	1a001a3e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a20:	683b      	ldr	r3, [r7, #0]
1a001a22:	68db      	ldr	r3, [r3, #12]
1a001a24:	2b00      	cmp	r3, #0
1a001a26:	d004      	beq.n	1a001a32 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001a28:	683b      	ldr	r3, [r7, #0]
1a001a2a:	68db      	ldr	r3, [r3, #12]
1a001a2c:	1e5a      	subs	r2, r3, #1
1a001a2e:	683b      	ldr	r3, [r7, #0]
1a001a30:	60da      	str	r2, [r3, #12]
1a001a32:	683b      	ldr	r3, [r7, #0]
1a001a34:	691b      	ldr	r3, [r3, #16]
1a001a36:	1e5a      	subs	r2, r3, #1
1a001a38:	683b      	ldr	r3, [r7, #0]
1a001a3a:	611a      	str	r2, [r3, #16]
1a001a3c:	2300      	movs	r3, #0
1a001a3e:	4618      	mov	r0, r3
1a001a40:	3708      	adds	r7, #8
1a001a42:	46bd      	mov	sp, r7
1a001a44:	bd80      	pop	{r7, pc}
1a001a46:	bf00      	nop
1a001a48:	0c28cb00 	.word	0x0c28cb00
1a001a4c:	0094c5ef 	.word	0x0094c5ef
1a001a50:	094c5eff 	.word	0x094c5eff

1a001a54 <Chip_Clock_GetMainPLLHz>:
1a001a54:	b580      	push	{r7, lr}
1a001a56:	b08c      	sub	sp, #48	; 0x30
1a001a58:	af00      	add	r7, sp, #0
1a001a5a:	4b2c      	ldr	r3, [pc, #176]	; (1a001b0c <Chip_Clock_GetMainPLLHz+0xb8>)
1a001a5c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001a5e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001a60:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001a62:	0e1b      	lsrs	r3, r3, #24
1a001a64:	b2db      	uxtb	r3, r3
1a001a66:	f003 030f 	and.w	r3, r3, #15
1a001a6a:	b2db      	uxtb	r3, r3
1a001a6c:	4618      	mov	r0, r3
1a001a6e:	f000 f88d 	bl	1a001b8c <Chip_Clock_GetClockInputHz>
1a001a72:	62b8      	str	r0, [r7, #40]	; 0x28
1a001a74:	4b26      	ldr	r3, [pc, #152]	; (1a001b10 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001a76:	681b      	ldr	r3, [r3, #0]
1a001a78:	607b      	str	r3, [r7, #4]
1a001a7a:	4b24      	ldr	r3, [pc, #144]	; (1a001b0c <Chip_Clock_GetMainPLLHz+0xb8>)
1a001a7c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001a7e:	f003 0301 	and.w	r3, r3, #1
1a001a82:	2b00      	cmp	r3, #0
1a001a84:	d101      	bne.n	1a001a8a <Chip_Clock_GetMainPLLHz+0x36>
1a001a86:	2300      	movs	r3, #0
1a001a88:	e03b      	b.n	1a001b02 <Chip_Clock_GetMainPLLHz+0xae>
1a001a8a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001a8c:	0c1b      	lsrs	r3, r3, #16
1a001a8e:	b2db      	uxtb	r3, r3
1a001a90:	627b      	str	r3, [r7, #36]	; 0x24
1a001a92:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001a94:	0b1b      	lsrs	r3, r3, #12
1a001a96:	f003 0303 	and.w	r3, r3, #3
1a001a9a:	623b      	str	r3, [r7, #32]
1a001a9c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001a9e:	0a1b      	lsrs	r3, r3, #8
1a001aa0:	f003 0303 	and.w	r3, r3, #3
1a001aa4:	61fb      	str	r3, [r7, #28]
1a001aa6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001aa8:	09db      	lsrs	r3, r3, #7
1a001aaa:	f003 0301 	and.w	r3, r3, #1
1a001aae:	61bb      	str	r3, [r7, #24]
1a001ab0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001ab2:	099b      	lsrs	r3, r3, #6
1a001ab4:	f003 0301 	and.w	r3, r3, #1
1a001ab8:	617b      	str	r3, [r7, #20]
1a001aba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001abc:	3301      	adds	r3, #1
1a001abe:	613b      	str	r3, [r7, #16]
1a001ac0:	6a3b      	ldr	r3, [r7, #32]
1a001ac2:	3301      	adds	r3, #1
1a001ac4:	60fb      	str	r3, [r7, #12]
1a001ac6:	1d3a      	adds	r2, r7, #4
1a001ac8:	69fb      	ldr	r3, [r7, #28]
1a001aca:	4413      	add	r3, r2
1a001acc:	781b      	ldrb	r3, [r3, #0]
1a001ace:	60bb      	str	r3, [r7, #8]
1a001ad0:	69bb      	ldr	r3, [r7, #24]
1a001ad2:	2b00      	cmp	r3, #0
1a001ad4:	d102      	bne.n	1a001adc <Chip_Clock_GetMainPLLHz+0x88>
1a001ad6:	697b      	ldr	r3, [r7, #20]
1a001ad8:	2b00      	cmp	r3, #0
1a001ada:	d007      	beq.n	1a001aec <Chip_Clock_GetMainPLLHz+0x98>
1a001adc:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001ade:	68fb      	ldr	r3, [r7, #12]
1a001ae0:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ae4:	693a      	ldr	r2, [r7, #16]
1a001ae6:	fb02 f303 	mul.w	r3, r2, r3
1a001aea:	e00a      	b.n	1a001b02 <Chip_Clock_GetMainPLLHz+0xae>
1a001aec:	68bb      	ldr	r3, [r7, #8]
1a001aee:	005b      	lsls	r3, r3, #1
1a001af0:	693a      	ldr	r2, [r7, #16]
1a001af2:	fbb2 f3f3 	udiv	r3, r2, r3
1a001af6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001af8:	68fa      	ldr	r2, [r7, #12]
1a001afa:	fbb1 f2f2 	udiv	r2, r1, r2
1a001afe:	fb02 f303 	mul.w	r3, r2, r3
1a001b02:	4618      	mov	r0, r3
1a001b04:	3730      	adds	r7, #48	; 0x30
1a001b06:	46bd      	mov	sp, r7
1a001b08:	bd80      	pop	{r7, pc}
1a001b0a:	bf00      	nop
1a001b0c:	40050000 	.word	0x40050000
1a001b10:	1a0020e0 	.word	0x1a0020e0

1a001b14 <Chip_Clock_GetDividerSource>:
1a001b14:	b480      	push	{r7}
1a001b16:	b085      	sub	sp, #20
1a001b18:	af00      	add	r7, sp, #0
1a001b1a:	4603      	mov	r3, r0
1a001b1c:	71fb      	strb	r3, [r7, #7]
1a001b1e:	4a0c      	ldr	r2, [pc, #48]	; (1a001b50 <Chip_Clock_GetDividerSource+0x3c>)
1a001b20:	79fb      	ldrb	r3, [r7, #7]
1a001b22:	3312      	adds	r3, #18
1a001b24:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001b28:	60fb      	str	r3, [r7, #12]
1a001b2a:	68fb      	ldr	r3, [r7, #12]
1a001b2c:	f003 0301 	and.w	r3, r3, #1
1a001b30:	2b00      	cmp	r3, #0
1a001b32:	d001      	beq.n	1a001b38 <Chip_Clock_GetDividerSource+0x24>
1a001b34:	2311      	movs	r3, #17
1a001b36:	e005      	b.n	1a001b44 <Chip_Clock_GetDividerSource+0x30>
1a001b38:	68fb      	ldr	r3, [r7, #12]
1a001b3a:	0e1b      	lsrs	r3, r3, #24
1a001b3c:	b2db      	uxtb	r3, r3
1a001b3e:	f003 031f 	and.w	r3, r3, #31
1a001b42:	b2db      	uxtb	r3, r3
1a001b44:	4618      	mov	r0, r3
1a001b46:	3714      	adds	r7, #20
1a001b48:	46bd      	mov	sp, r7
1a001b4a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b4e:	4770      	bx	lr
1a001b50:	40050000 	.word	0x40050000

1a001b54 <Chip_Clock_GetDividerDivisor>:
1a001b54:	b480      	push	{r7}
1a001b56:	b083      	sub	sp, #12
1a001b58:	af00      	add	r7, sp, #0
1a001b5a:	4603      	mov	r3, r0
1a001b5c:	71fb      	strb	r3, [r7, #7]
1a001b5e:	4a09      	ldr	r2, [pc, #36]	; (1a001b84 <Chip_Clock_GetDividerDivisor+0x30>)
1a001b60:	79fb      	ldrb	r3, [r7, #7]
1a001b62:	3312      	adds	r3, #18
1a001b64:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001b68:	089b      	lsrs	r3, r3, #2
1a001b6a:	b2da      	uxtb	r2, r3
1a001b6c:	79fb      	ldrb	r3, [r7, #7]
1a001b6e:	4906      	ldr	r1, [pc, #24]	; (1a001b88 <Chip_Clock_GetDividerDivisor+0x34>)
1a001b70:	5ccb      	ldrb	r3, [r1, r3]
1a001b72:	4013      	ands	r3, r2
1a001b74:	b2db      	uxtb	r3, r3
1a001b76:	4618      	mov	r0, r3
1a001b78:	370c      	adds	r7, #12
1a001b7a:	46bd      	mov	sp, r7
1a001b7c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b80:	4770      	bx	lr
1a001b82:	bf00      	nop
1a001b84:	40050000 	.word	0x40050000
1a001b88:	1a0020e4 	.word	0x1a0020e4

1a001b8c <Chip_Clock_GetClockInputHz>:
1a001b8c:	b580      	push	{r7, lr}
1a001b8e:	b084      	sub	sp, #16
1a001b90:	af00      	add	r7, sp, #0
1a001b92:	4603      	mov	r3, r0
1a001b94:	71fb      	strb	r3, [r7, #7]
1a001b96:	2300      	movs	r3, #0
1a001b98:	60fb      	str	r3, [r7, #12]
1a001b9a:	79fb      	ldrb	r3, [r7, #7]
1a001b9c:	2b11      	cmp	r3, #17
1a001b9e:	d87f      	bhi.n	1a001ca0 <Chip_Clock_GetClockInputHz+0x114>
1a001ba0:	a201      	add	r2, pc, #4	; (adr r2, 1a001ba8 <Chip_Clock_GetClockInputHz+0x1c>)
1a001ba2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001ba6:	bf00      	nop
1a001ba8:	1a001bf1 	.word	0x1a001bf1
1a001bac:	1a001bf9 	.word	0x1a001bf9
1a001bb0:	1a001bff 	.word	0x1a001bff
1a001bb4:	1a001c13 	.word	0x1a001c13
1a001bb8:	1a001c2d 	.word	0x1a001c2d
1a001bbc:	1a001ca1 	.word	0x1a001ca1
1a001bc0:	1a001c35 	.word	0x1a001c35
1a001bc4:	1a001c3d 	.word	0x1a001c3d
1a001bc8:	1a001c45 	.word	0x1a001c45
1a001bcc:	1a001c4d 	.word	0x1a001c4d
1a001bd0:	1a001ca1 	.word	0x1a001ca1
1a001bd4:	1a001ca1 	.word	0x1a001ca1
1a001bd8:	1a001c55 	.word	0x1a001c55
1a001bdc:	1a001c63 	.word	0x1a001c63
1a001be0:	1a001c71 	.word	0x1a001c71
1a001be4:	1a001c7f 	.word	0x1a001c7f
1a001be8:	1a001c8d 	.word	0x1a001c8d
1a001bec:	1a001c9b 	.word	0x1a001c9b
1a001bf0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001bf4:	60fb      	str	r3, [r7, #12]
1a001bf6:	e056      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001bf8:	4b2d      	ldr	r3, [pc, #180]	; (1a001cb0 <Chip_Clock_GetClockInputHz+0x124>)
1a001bfa:	60fb      	str	r3, [r7, #12]
1a001bfc:	e053      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001bfe:	4b2d      	ldr	r3, [pc, #180]	; (1a001cb4 <Chip_Clock_GetClockInputHz+0x128>)
1a001c00:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001c04:	f003 0307 	and.w	r3, r3, #7
1a001c08:	2b04      	cmp	r3, #4
1a001c0a:	d04b      	beq.n	1a001ca4 <Chip_Clock_GetClockInputHz+0x118>
1a001c0c:	4b2a      	ldr	r3, [pc, #168]	; (1a001cb8 <Chip_Clock_GetClockInputHz+0x12c>)
1a001c0e:	60fb      	str	r3, [r7, #12]
1a001c10:	e048      	b.n	1a001ca4 <Chip_Clock_GetClockInputHz+0x118>
1a001c12:	4b28      	ldr	r3, [pc, #160]	; (1a001cb4 <Chip_Clock_GetClockInputHz+0x128>)
1a001c14:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001c18:	f003 0307 	and.w	r3, r3, #7
1a001c1c:	2b04      	cmp	r3, #4
1a001c1e:	d002      	beq.n	1a001c26 <Chip_Clock_GetClockInputHz+0x9a>
1a001c20:	4b25      	ldr	r3, [pc, #148]	; (1a001cb8 <Chip_Clock_GetClockInputHz+0x12c>)
1a001c22:	60fb      	str	r3, [r7, #12]
1a001c24:	e03f      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c26:	4b25      	ldr	r3, [pc, #148]	; (1a001cbc <Chip_Clock_GetClockInputHz+0x130>)
1a001c28:	60fb      	str	r3, [r7, #12]
1a001c2a:	e03c      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c2c:	4b24      	ldr	r3, [pc, #144]	; (1a001cc0 <Chip_Clock_GetClockInputHz+0x134>)
1a001c2e:	681b      	ldr	r3, [r3, #0]
1a001c30:	60fb      	str	r3, [r7, #12]
1a001c32:	e038      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c34:	4b23      	ldr	r3, [pc, #140]	; (1a001cc4 <Chip_Clock_GetClockInputHz+0x138>)
1a001c36:	681b      	ldr	r3, [r3, #0]
1a001c38:	60fb      	str	r3, [r7, #12]
1a001c3a:	e034      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c3c:	4b22      	ldr	r3, [pc, #136]	; (1a001cc8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001c3e:	681b      	ldr	r3, [r3, #0]
1a001c40:	60fb      	str	r3, [r7, #12]
1a001c42:	e030      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c44:	4b20      	ldr	r3, [pc, #128]	; (1a001cc8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001c46:	685b      	ldr	r3, [r3, #4]
1a001c48:	60fb      	str	r3, [r7, #12]
1a001c4a:	e02c      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c4c:	f7ff ff02 	bl	1a001a54 <Chip_Clock_GetMainPLLHz>
1a001c50:	60f8      	str	r0, [r7, #12]
1a001c52:	e028      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c54:	79fb      	ldrb	r3, [r7, #7]
1a001c56:	2100      	movs	r1, #0
1a001c58:	4618      	mov	r0, r3
1a001c5a:	f7ff fdef 	bl	1a00183c <Chip_Clock_GetDivRate>
1a001c5e:	60f8      	str	r0, [r7, #12]
1a001c60:	e021      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c62:	79fb      	ldrb	r3, [r7, #7]
1a001c64:	2101      	movs	r1, #1
1a001c66:	4618      	mov	r0, r3
1a001c68:	f7ff fde8 	bl	1a00183c <Chip_Clock_GetDivRate>
1a001c6c:	60f8      	str	r0, [r7, #12]
1a001c6e:	e01a      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c70:	79fb      	ldrb	r3, [r7, #7]
1a001c72:	2102      	movs	r1, #2
1a001c74:	4618      	mov	r0, r3
1a001c76:	f7ff fde1 	bl	1a00183c <Chip_Clock_GetDivRate>
1a001c7a:	60f8      	str	r0, [r7, #12]
1a001c7c:	e013      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c7e:	79fb      	ldrb	r3, [r7, #7]
1a001c80:	2103      	movs	r1, #3
1a001c82:	4618      	mov	r0, r3
1a001c84:	f7ff fdda 	bl	1a00183c <Chip_Clock_GetDivRate>
1a001c88:	60f8      	str	r0, [r7, #12]
1a001c8a:	e00c      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c8c:	79fb      	ldrb	r3, [r7, #7]
1a001c8e:	2104      	movs	r1, #4
1a001c90:	4618      	mov	r0, r3
1a001c92:	f7ff fdd3 	bl	1a00183c <Chip_Clock_GetDivRate>
1a001c96:	60f8      	str	r0, [r7, #12]
1a001c98:	e005      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001c9a:	2300      	movs	r3, #0
1a001c9c:	60fb      	str	r3, [r7, #12]
1a001c9e:	e002      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001ca0:	bf00      	nop
1a001ca2:	e000      	b.n	1a001ca6 <Chip_Clock_GetClockInputHz+0x11a>
1a001ca4:	bf00      	nop
1a001ca6:	68fb      	ldr	r3, [r7, #12]
1a001ca8:	4618      	mov	r0, r3
1a001caa:	3710      	adds	r7, #16
1a001cac:	46bd      	mov	sp, r7
1a001cae:	bd80      	pop	{r7, pc}
1a001cb0:	00b71b00 	.word	0x00b71b00
1a001cb4:	40043000 	.word	0x40043000
1a001cb8:	017d7840 	.word	0x017d7840
1a001cbc:	02faf080 	.word	0x02faf080
1a001cc0:	1a001fd8 	.word	0x1a001fd8
1a001cc4:	1a001fdc 	.word	0x1a001fdc
1a001cc8:	10000010 	.word	0x10000010

1a001ccc <Chip_Clock_GetBaseClocktHz>:
1a001ccc:	b580      	push	{r7, lr}
1a001cce:	b082      	sub	sp, #8
1a001cd0:	af00      	add	r7, sp, #0
1a001cd2:	4603      	mov	r3, r0
1a001cd4:	71fb      	strb	r3, [r7, #7]
1a001cd6:	79fb      	ldrb	r3, [r7, #7]
1a001cd8:	4618      	mov	r0, r3
1a001cda:	f000 f857 	bl	1a001d8c <Chip_Clock_GetBaseClock>
1a001cde:	4603      	mov	r3, r0
1a001ce0:	4618      	mov	r0, r3
1a001ce2:	f7ff ff53 	bl	1a001b8c <Chip_Clock_GetClockInputHz>
1a001ce6:	4603      	mov	r3, r0
1a001ce8:	4618      	mov	r0, r3
1a001cea:	3708      	adds	r7, #8
1a001cec:	46bd      	mov	sp, r7
1a001cee:	bd80      	pop	{r7, pc}

1a001cf0 <Chip_Clock_SetBaseClock>:
1a001cf0:	b490      	push	{r4, r7}
1a001cf2:	b084      	sub	sp, #16
1a001cf4:	af00      	add	r7, sp, #0
1a001cf6:	4604      	mov	r4, r0
1a001cf8:	4608      	mov	r0, r1
1a001cfa:	4611      	mov	r1, r2
1a001cfc:	461a      	mov	r2, r3
1a001cfe:	4623      	mov	r3, r4
1a001d00:	71fb      	strb	r3, [r7, #7]
1a001d02:	4603      	mov	r3, r0
1a001d04:	71bb      	strb	r3, [r7, #6]
1a001d06:	460b      	mov	r3, r1
1a001d08:	717b      	strb	r3, [r7, #5]
1a001d0a:	4613      	mov	r3, r2
1a001d0c:	713b      	strb	r3, [r7, #4]
1a001d0e:	4a1d      	ldr	r2, [pc, #116]	; (1a001d84 <Chip_Clock_SetBaseClock+0x94>)
1a001d10:	79fb      	ldrb	r3, [r7, #7]
1a001d12:	3316      	adds	r3, #22
1a001d14:	009b      	lsls	r3, r3, #2
1a001d16:	4413      	add	r3, r2
1a001d18:	685b      	ldr	r3, [r3, #4]
1a001d1a:	60fb      	str	r3, [r7, #12]
1a001d1c:	79fb      	ldrb	r3, [r7, #7]
1a001d1e:	2b1b      	cmp	r3, #27
1a001d20:	d822      	bhi.n	1a001d68 <Chip_Clock_SetBaseClock+0x78>
1a001d22:	79bb      	ldrb	r3, [r7, #6]
1a001d24:	2b11      	cmp	r3, #17
1a001d26:	d028      	beq.n	1a001d7a <Chip_Clock_SetBaseClock+0x8a>
1a001d28:	68fa      	ldr	r2, [r7, #12]
1a001d2a:	4b17      	ldr	r3, [pc, #92]	; (1a001d88 <Chip_Clock_SetBaseClock+0x98>)
1a001d2c:	4013      	ands	r3, r2
1a001d2e:	60fb      	str	r3, [r7, #12]
1a001d30:	797b      	ldrb	r3, [r7, #5]
1a001d32:	2b00      	cmp	r3, #0
1a001d34:	d003      	beq.n	1a001d3e <Chip_Clock_SetBaseClock+0x4e>
1a001d36:	68fb      	ldr	r3, [r7, #12]
1a001d38:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001d3c:	60fb      	str	r3, [r7, #12]
1a001d3e:	793b      	ldrb	r3, [r7, #4]
1a001d40:	2b00      	cmp	r3, #0
1a001d42:	d003      	beq.n	1a001d4c <Chip_Clock_SetBaseClock+0x5c>
1a001d44:	68fb      	ldr	r3, [r7, #12]
1a001d46:	f043 0301 	orr.w	r3, r3, #1
1a001d4a:	60fb      	str	r3, [r7, #12]
1a001d4c:	79bb      	ldrb	r3, [r7, #6]
1a001d4e:	061b      	lsls	r3, r3, #24
1a001d50:	461a      	mov	r2, r3
1a001d52:	68fb      	ldr	r3, [r7, #12]
1a001d54:	4313      	orrs	r3, r2
1a001d56:	60fb      	str	r3, [r7, #12]
1a001d58:	4a0a      	ldr	r2, [pc, #40]	; (1a001d84 <Chip_Clock_SetBaseClock+0x94>)
1a001d5a:	79fb      	ldrb	r3, [r7, #7]
1a001d5c:	3316      	adds	r3, #22
1a001d5e:	009b      	lsls	r3, r3, #2
1a001d60:	4413      	add	r3, r2
1a001d62:	68fa      	ldr	r2, [r7, #12]
1a001d64:	605a      	str	r2, [r3, #4]
1a001d66:	e008      	b.n	1a001d7a <Chip_Clock_SetBaseClock+0x8a>
1a001d68:	4906      	ldr	r1, [pc, #24]	; (1a001d84 <Chip_Clock_SetBaseClock+0x94>)
1a001d6a:	79fb      	ldrb	r3, [r7, #7]
1a001d6c:	68fa      	ldr	r2, [r7, #12]
1a001d6e:	f042 0201 	orr.w	r2, r2, #1
1a001d72:	3316      	adds	r3, #22
1a001d74:	009b      	lsls	r3, r3, #2
1a001d76:	440b      	add	r3, r1
1a001d78:	605a      	str	r2, [r3, #4]
1a001d7a:	bf00      	nop
1a001d7c:	3710      	adds	r7, #16
1a001d7e:	46bd      	mov	sp, r7
1a001d80:	bc90      	pop	{r4, r7}
1a001d82:	4770      	bx	lr
1a001d84:	40050000 	.word	0x40050000
1a001d88:	e0fff7fe 	.word	0xe0fff7fe

1a001d8c <Chip_Clock_GetBaseClock>:
1a001d8c:	b480      	push	{r7}
1a001d8e:	b085      	sub	sp, #20
1a001d90:	af00      	add	r7, sp, #0
1a001d92:	4603      	mov	r3, r0
1a001d94:	71fb      	strb	r3, [r7, #7]
1a001d96:	79fb      	ldrb	r3, [r7, #7]
1a001d98:	2b1b      	cmp	r3, #27
1a001d9a:	d901      	bls.n	1a001da0 <Chip_Clock_GetBaseClock+0x14>
1a001d9c:	2311      	movs	r3, #17
1a001d9e:	e013      	b.n	1a001dc8 <Chip_Clock_GetBaseClock+0x3c>
1a001da0:	4a0c      	ldr	r2, [pc, #48]	; (1a001dd4 <Chip_Clock_GetBaseClock+0x48>)
1a001da2:	79fb      	ldrb	r3, [r7, #7]
1a001da4:	3316      	adds	r3, #22
1a001da6:	009b      	lsls	r3, r3, #2
1a001da8:	4413      	add	r3, r2
1a001daa:	685b      	ldr	r3, [r3, #4]
1a001dac:	60fb      	str	r3, [r7, #12]
1a001dae:	68fb      	ldr	r3, [r7, #12]
1a001db0:	f003 0301 	and.w	r3, r3, #1
1a001db4:	2b00      	cmp	r3, #0
1a001db6:	d001      	beq.n	1a001dbc <Chip_Clock_GetBaseClock+0x30>
1a001db8:	2311      	movs	r3, #17
1a001dba:	e005      	b.n	1a001dc8 <Chip_Clock_GetBaseClock+0x3c>
1a001dbc:	68fb      	ldr	r3, [r7, #12]
1a001dbe:	0e1b      	lsrs	r3, r3, #24
1a001dc0:	b2db      	uxtb	r3, r3
1a001dc2:	f003 031f 	and.w	r3, r3, #31
1a001dc6:	b2db      	uxtb	r3, r3
1a001dc8:	4618      	mov	r0, r3
1a001dca:	3714      	adds	r7, #20
1a001dcc:	46bd      	mov	sp, r7
1a001dce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001dd2:	4770      	bx	lr
1a001dd4:	40050000 	.word	0x40050000

1a001dd8 <Chip_Clock_EnableOpts>:
1a001dd8:	b480      	push	{r7}
1a001dda:	b085      	sub	sp, #20
1a001ddc:	af00      	add	r7, sp, #0
1a001dde:	603b      	str	r3, [r7, #0]
1a001de0:	4603      	mov	r3, r0
1a001de2:	80fb      	strh	r3, [r7, #6]
1a001de4:	460b      	mov	r3, r1
1a001de6:	717b      	strb	r3, [r7, #5]
1a001de8:	4613      	mov	r3, r2
1a001dea:	713b      	strb	r3, [r7, #4]
1a001dec:	2301      	movs	r3, #1
1a001dee:	60fb      	str	r3, [r7, #12]
1a001df0:	797b      	ldrb	r3, [r7, #5]
1a001df2:	2b00      	cmp	r3, #0
1a001df4:	d003      	beq.n	1a001dfe <Chip_Clock_EnableOpts+0x26>
1a001df6:	68fb      	ldr	r3, [r7, #12]
1a001df8:	f043 0302 	orr.w	r3, r3, #2
1a001dfc:	60fb      	str	r3, [r7, #12]
1a001dfe:	793b      	ldrb	r3, [r7, #4]
1a001e00:	2b00      	cmp	r3, #0
1a001e02:	d003      	beq.n	1a001e0c <Chip_Clock_EnableOpts+0x34>
1a001e04:	68fb      	ldr	r3, [r7, #12]
1a001e06:	f043 0304 	orr.w	r3, r3, #4
1a001e0a:	60fb      	str	r3, [r7, #12]
1a001e0c:	683b      	ldr	r3, [r7, #0]
1a001e0e:	2b02      	cmp	r3, #2
1a001e10:	d103      	bne.n	1a001e1a <Chip_Clock_EnableOpts+0x42>
1a001e12:	68fb      	ldr	r3, [r7, #12]
1a001e14:	f043 0320 	orr.w	r3, r3, #32
1a001e18:	60fb      	str	r3, [r7, #12]
1a001e1a:	88fb      	ldrh	r3, [r7, #6]
1a001e1c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001e20:	d308      	bcc.n	1a001e34 <Chip_Clock_EnableOpts+0x5c>
1a001e22:	490a      	ldr	r1, [pc, #40]	; (1a001e4c <Chip_Clock_EnableOpts+0x74>)
1a001e24:	88fb      	ldrh	r3, [r7, #6]
1a001e26:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001e2a:	3320      	adds	r3, #32
1a001e2c:	68fa      	ldr	r2, [r7, #12]
1a001e2e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001e32:	e005      	b.n	1a001e40 <Chip_Clock_EnableOpts+0x68>
1a001e34:	4906      	ldr	r1, [pc, #24]	; (1a001e50 <Chip_Clock_EnableOpts+0x78>)
1a001e36:	88fb      	ldrh	r3, [r7, #6]
1a001e38:	3320      	adds	r3, #32
1a001e3a:	68fa      	ldr	r2, [r7, #12]
1a001e3c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001e40:	bf00      	nop
1a001e42:	3714      	adds	r7, #20
1a001e44:	46bd      	mov	sp, r7
1a001e46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e4a:	4770      	bx	lr
1a001e4c:	40052000 	.word	0x40052000
1a001e50:	40051000 	.word	0x40051000

1a001e54 <Chip_Clock_Enable>:
1a001e54:	b480      	push	{r7}
1a001e56:	b083      	sub	sp, #12
1a001e58:	af00      	add	r7, sp, #0
1a001e5a:	4603      	mov	r3, r0
1a001e5c:	80fb      	strh	r3, [r7, #6]
1a001e5e:	88fb      	ldrh	r3, [r7, #6]
1a001e60:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001e64:	d310      	bcc.n	1a001e88 <Chip_Clock_Enable+0x34>
1a001e66:	4a11      	ldr	r2, [pc, #68]	; (1a001eac <Chip_Clock_Enable+0x58>)
1a001e68:	88fb      	ldrh	r3, [r7, #6]
1a001e6a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001e6e:	3320      	adds	r3, #32
1a001e70:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001e74:	490d      	ldr	r1, [pc, #52]	; (1a001eac <Chip_Clock_Enable+0x58>)
1a001e76:	88fb      	ldrh	r3, [r7, #6]
1a001e78:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001e7c:	f042 0201 	orr.w	r2, r2, #1
1a001e80:	3320      	adds	r3, #32
1a001e82:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001e86:	e00b      	b.n	1a001ea0 <Chip_Clock_Enable+0x4c>
1a001e88:	4a09      	ldr	r2, [pc, #36]	; (1a001eb0 <Chip_Clock_Enable+0x5c>)
1a001e8a:	88fb      	ldrh	r3, [r7, #6]
1a001e8c:	3320      	adds	r3, #32
1a001e8e:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001e92:	4907      	ldr	r1, [pc, #28]	; (1a001eb0 <Chip_Clock_Enable+0x5c>)
1a001e94:	88fb      	ldrh	r3, [r7, #6]
1a001e96:	f042 0201 	orr.w	r2, r2, #1
1a001e9a:	3320      	adds	r3, #32
1a001e9c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001ea0:	bf00      	nop
1a001ea2:	370c      	adds	r7, #12
1a001ea4:	46bd      	mov	sp, r7
1a001ea6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eaa:	4770      	bx	lr
1a001eac:	40052000 	.word	0x40052000
1a001eb0:	40051000 	.word	0x40051000

1a001eb4 <Chip_Clock_GetRate>:
1a001eb4:	b580      	push	{r7, lr}
1a001eb6:	b086      	sub	sp, #24
1a001eb8:	af00      	add	r7, sp, #0
1a001eba:	4603      	mov	r3, r0
1a001ebc:	80fb      	strh	r3, [r7, #6]
1a001ebe:	88fb      	ldrh	r3, [r7, #6]
1a001ec0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001ec4:	d308      	bcc.n	1a001ed8 <Chip_Clock_GetRate+0x24>
1a001ec6:	4a1b      	ldr	r2, [pc, #108]	; (1a001f34 <Chip_Clock_GetRate+0x80>)
1a001ec8:	88fb      	ldrh	r3, [r7, #6]
1a001eca:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001ece:	3320      	adds	r3, #32
1a001ed0:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001ed4:	617b      	str	r3, [r7, #20]
1a001ed6:	e005      	b.n	1a001ee4 <Chip_Clock_GetRate+0x30>
1a001ed8:	4a17      	ldr	r2, [pc, #92]	; (1a001f38 <Chip_Clock_GetRate+0x84>)
1a001eda:	88fb      	ldrh	r3, [r7, #6]
1a001edc:	3320      	adds	r3, #32
1a001ede:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001ee2:	617b      	str	r3, [r7, #20]
1a001ee4:	697b      	ldr	r3, [r7, #20]
1a001ee6:	f003 0301 	and.w	r3, r3, #1
1a001eea:	2b00      	cmp	r3, #0
1a001eec:	d01b      	beq.n	1a001f26 <Chip_Clock_GetRate+0x72>
1a001eee:	88fb      	ldrh	r3, [r7, #6]
1a001ef0:	4618      	mov	r0, r3
1a001ef2:	f7ff fcc3 	bl	1a00187c <Chip_Clock_FindBaseClock>
1a001ef6:	4603      	mov	r3, r0
1a001ef8:	72fb      	strb	r3, [r7, #11]
1a001efa:	7afb      	ldrb	r3, [r7, #11]
1a001efc:	4618      	mov	r0, r3
1a001efe:	f7ff fee5 	bl	1a001ccc <Chip_Clock_GetBaseClocktHz>
1a001f02:	60f8      	str	r0, [r7, #12]
1a001f04:	697b      	ldr	r3, [r7, #20]
1a001f06:	095b      	lsrs	r3, r3, #5
1a001f08:	f003 0307 	and.w	r3, r3, #7
1a001f0c:	2b00      	cmp	r3, #0
1a001f0e:	d102      	bne.n	1a001f16 <Chip_Clock_GetRate+0x62>
1a001f10:	2301      	movs	r3, #1
1a001f12:	613b      	str	r3, [r7, #16]
1a001f14:	e001      	b.n	1a001f1a <Chip_Clock_GetRate+0x66>
1a001f16:	2302      	movs	r3, #2
1a001f18:	613b      	str	r3, [r7, #16]
1a001f1a:	68fa      	ldr	r2, [r7, #12]
1a001f1c:	693b      	ldr	r3, [r7, #16]
1a001f1e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001f22:	60fb      	str	r3, [r7, #12]
1a001f24:	e001      	b.n	1a001f2a <Chip_Clock_GetRate+0x76>
1a001f26:	2300      	movs	r3, #0
1a001f28:	60fb      	str	r3, [r7, #12]
1a001f2a:	68fb      	ldr	r3, [r7, #12]
1a001f2c:	4618      	mov	r0, r3
1a001f2e:	3718      	adds	r7, #24
1a001f30:	46bd      	mov	sp, r7
1a001f32:	bd80      	pop	{r7, pc}
1a001f34:	40052000 	.word	0x40052000
1a001f38:	40051000 	.word	0x40051000

1a001f3c <SystemCoreClockUpdate>:
1a001f3c:	b580      	push	{r7, lr}
1a001f3e:	af00      	add	r7, sp, #0
1a001f40:	2069      	movs	r0, #105	; 0x69
1a001f42:	f7ff ffb7 	bl	1a001eb4 <Chip_Clock_GetRate>
1a001f46:	4602      	mov	r2, r0
1a001f48:	4b01      	ldr	r3, [pc, #4]	; (1a001f50 <SystemCoreClockUpdate+0x14>)
1a001f4a:	601a      	str	r2, [r3, #0]
1a001f4c:	bf00      	nop
1a001f4e:	bd80      	pop	{r7, pc}
1a001f50:	10000018 	.word	0x10000018

1a001f54 <Chip_GPIO_Init>:
1a001f54:	b480      	push	{r7}
1a001f56:	b083      	sub	sp, #12
1a001f58:	af00      	add	r7, sp, #0
1a001f5a:	6078      	str	r0, [r7, #4]
1a001f5c:	bf00      	nop
1a001f5e:	370c      	adds	r7, #12
1a001f60:	46bd      	mov	sp, r7
1a001f62:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f66:	4770      	bx	lr

1a001f68 <Chip_TIMER_GetClockIndex>:
1a001f68:	b480      	push	{r7}
1a001f6a:	b085      	sub	sp, #20
1a001f6c:	af00      	add	r7, sp, #0
1a001f6e:	6078      	str	r0, [r7, #4]
1a001f70:	687b      	ldr	r3, [r7, #4]
1a001f72:	4a0e      	ldr	r2, [pc, #56]	; (1a001fac <Chip_TIMER_GetClockIndex+0x44>)
1a001f74:	4293      	cmp	r3, r2
1a001f76:	d102      	bne.n	1a001f7e <Chip_TIMER_GetClockIndex+0x16>
1a001f78:	23a4      	movs	r3, #164	; 0xa4
1a001f7a:	81fb      	strh	r3, [r7, #14]
1a001f7c:	e00f      	b.n	1a001f9e <Chip_TIMER_GetClockIndex+0x36>
1a001f7e:	687b      	ldr	r3, [r7, #4]
1a001f80:	4a0b      	ldr	r2, [pc, #44]	; (1a001fb0 <Chip_TIMER_GetClockIndex+0x48>)
1a001f82:	4293      	cmp	r3, r2
1a001f84:	d102      	bne.n	1a001f8c <Chip_TIMER_GetClockIndex+0x24>
1a001f86:	23a3      	movs	r3, #163	; 0xa3
1a001f88:	81fb      	strh	r3, [r7, #14]
1a001f8a:	e008      	b.n	1a001f9e <Chip_TIMER_GetClockIndex+0x36>
1a001f8c:	687b      	ldr	r3, [r7, #4]
1a001f8e:	4a09      	ldr	r2, [pc, #36]	; (1a001fb4 <Chip_TIMER_GetClockIndex+0x4c>)
1a001f90:	4293      	cmp	r3, r2
1a001f92:	d102      	bne.n	1a001f9a <Chip_TIMER_GetClockIndex+0x32>
1a001f94:	2385      	movs	r3, #133	; 0x85
1a001f96:	81fb      	strh	r3, [r7, #14]
1a001f98:	e001      	b.n	1a001f9e <Chip_TIMER_GetClockIndex+0x36>
1a001f9a:	2384      	movs	r3, #132	; 0x84
1a001f9c:	81fb      	strh	r3, [r7, #14]
1a001f9e:	89fb      	ldrh	r3, [r7, #14]
1a001fa0:	4618      	mov	r0, r3
1a001fa2:	3714      	adds	r7, #20
1a001fa4:	46bd      	mov	sp, r7
1a001fa6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001faa:	4770      	bx	lr
1a001fac:	400c4000 	.word	0x400c4000
1a001fb0:	400c3000 	.word	0x400c3000
1a001fb4:	40085000 	.word	0x40085000

1a001fb8 <Chip_TIMER_Init>:
1a001fb8:	b580      	push	{r7, lr}
1a001fba:	b082      	sub	sp, #8
1a001fbc:	af00      	add	r7, sp, #0
1a001fbe:	6078      	str	r0, [r7, #4]
1a001fc0:	6878      	ldr	r0, [r7, #4]
1a001fc2:	f7ff ffd1 	bl	1a001f68 <Chip_TIMER_GetClockIndex>
1a001fc6:	4603      	mov	r3, r0
1a001fc8:	4618      	mov	r0, r3
1a001fca:	f7ff ff43 	bl	1a001e54 <Chip_Clock_Enable>
1a001fce:	bf00      	nop
1a001fd0:	3708      	adds	r7, #8
1a001fd2:	46bd      	mov	sp, r7
1a001fd4:	bd80      	pop	{r7, pc}
1a001fd6:	Address 0x000000001a001fd6 is out of bounds.


1a001fd8 <ExtRateIn>:
1a001fd8:	0000 0000                                   ....

1a001fdc <OscRateIn>:
1a001fdc:	1b00 00b7                                   ....

1a001fe0 <leds>:
1a001fe0:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a001ff0:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a002000:	0105 0014                                   ....

1a002004 <keys>:
1a002004:	0001 0400 0050 0101 0800 0050 0201 0900     ....P.....P.....
1a002014:	0050 0601 0901 0050                         P.....P.

1a00201c <InitClkStates>:
1a00201c:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a00202c:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a00203c:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a00204c:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a00205c:	111a 0001 111b 0001                         ........

1a002064 <UART_PClock>:
1a002064:	0081 0082 00a1 00a2                         ........

1a00206c <UART_BClock>:
1a00206c:	01c2 01a2 0182 0162                         ......b.

1a002074 <periph_to_base>:
1a002074:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a002084:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a002094:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0020a4:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a0020b4:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a0020c4:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a0020d4:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a0020e4:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a0020ec <_init>:
1a0020ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0020ee:	bf00      	nop

Disassembly of section .fini:

1a0020f0 <_fini>:
1a0020f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0020f2:	bf00      	nop
