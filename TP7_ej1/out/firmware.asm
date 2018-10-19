
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	f1 13 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 19 14 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a 9d 13 00 1a b9 13 00 1a     ................
1a0000cc:	db 01 00 1a d5 13 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a003e84 	.word	0x1a003e84
1a000118:	10000000 	.word	0x10000000
1a00011c:	000005cc 	.word	0x000005cc

1a000120 <__bss_section_table_>:
1a000120:	100005cc 	.word	0x100005cc
1a000124:	00000590 	.word	0x00000590

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
1a000430:	f001 f808 	bl	1a001444 <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <hist_erase_older>:
1a000454:	b480      	push	{r7}
1a000456:	b085      	sub	sp, #20
1a000458:	af00      	add	r7, sp, #0
1a00045a:	6078      	str	r0, [r7, #4]
1a00045c:	687b      	ldr	r3, [r7, #4]
1a00045e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000460:	687a      	ldr	r2, [r7, #4]
1a000462:	6c12      	ldr	r2, [r2, #64]	; 0x40
1a000464:	6879      	ldr	r1, [r7, #4]
1a000466:	5c8a      	ldrb	r2, [r1, r2]
1a000468:	4413      	add	r3, r2
1a00046a:	3301      	adds	r3, #1
1a00046c:	60fb      	str	r3, [r7, #12]
1a00046e:	68fb      	ldr	r3, [r7, #12]
1a000470:	2b3f      	cmp	r3, #63	; 0x3f
1a000472:	dd02      	ble.n	1a00047a <hist_erase_older+0x26>
1a000474:	68fb      	ldr	r3, [r7, #12]
1a000476:	3b40      	subs	r3, #64	; 0x40
1a000478:	60fb      	str	r3, [r7, #12]
1a00047a:	687b      	ldr	r3, [r7, #4]
1a00047c:	68fa      	ldr	r2, [r7, #12]
1a00047e:	641a      	str	r2, [r3, #64]	; 0x40
1a000480:	bf00      	nop
1a000482:	3714      	adds	r7, #20
1a000484:	46bd      	mov	sp, r7
1a000486:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00048a:	4770      	bx	lr

1a00048c <hist_is_space_for_new>:
1a00048c:	b480      	push	{r7}
1a00048e:	b083      	sub	sp, #12
1a000490:	af00      	add	r7, sp, #0
1a000492:	6078      	str	r0, [r7, #4]
1a000494:	6039      	str	r1, [r7, #0]
1a000496:	687b      	ldr	r3, [r7, #4]
1a000498:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00049a:	687a      	ldr	r2, [r7, #4]
1a00049c:	5cd3      	ldrb	r3, [r2, r3]
1a00049e:	2b00      	cmp	r3, #0
1a0004a0:	d101      	bne.n	1a0004a6 <hist_is_space_for_new+0x1a>
1a0004a2:	2301      	movs	r3, #1
1a0004a4:	e01e      	b.n	1a0004e4 <hist_is_space_for_new+0x58>
1a0004a6:	687b      	ldr	r3, [r7, #4]
1a0004a8:	6c5a      	ldr	r2, [r3, #68]	; 0x44
1a0004aa:	687b      	ldr	r3, [r7, #4]
1a0004ac:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0004ae:	429a      	cmp	r2, r3
1a0004b0:	db0c      	blt.n	1a0004cc <hist_is_space_for_new+0x40>
1a0004b2:	687b      	ldr	r3, [r7, #4]
1a0004b4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0004b6:	f1c3 0240 	rsb	r2, r3, #64	; 0x40
1a0004ba:	687b      	ldr	r3, [r7, #4]
1a0004bc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0004be:	4413      	add	r3, r2
1a0004c0:	3b01      	subs	r3, #1
1a0004c2:	683a      	ldr	r2, [r7, #0]
1a0004c4:	429a      	cmp	r2, r3
1a0004c6:	da0c      	bge.n	1a0004e2 <hist_is_space_for_new+0x56>
1a0004c8:	2301      	movs	r3, #1
1a0004ca:	e00b      	b.n	1a0004e4 <hist_is_space_for_new+0x58>
1a0004cc:	687b      	ldr	r3, [r7, #4]
1a0004ce:	6c1a      	ldr	r2, [r3, #64]	; 0x40
1a0004d0:	687b      	ldr	r3, [r7, #4]
1a0004d2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0004d4:	1ad3      	subs	r3, r2, r3
1a0004d6:	3b01      	subs	r3, #1
1a0004d8:	683a      	ldr	r2, [r7, #0]
1a0004da:	429a      	cmp	r2, r3
1a0004dc:	da01      	bge.n	1a0004e2 <hist_is_space_for_new+0x56>
1a0004de:	2301      	movs	r3, #1
1a0004e0:	e000      	b.n	1a0004e4 <hist_is_space_for_new+0x58>
1a0004e2:	2300      	movs	r3, #0
1a0004e4:	4618      	mov	r0, r3
1a0004e6:	370c      	adds	r7, #12
1a0004e8:	46bd      	mov	sp, r7
1a0004ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004ee:	4770      	bx	lr

1a0004f0 <hist_save_line>:
1a0004f0:	b580      	push	{r7, lr}
1a0004f2:	b086      	sub	sp, #24
1a0004f4:	af00      	add	r7, sp, #0
1a0004f6:	60f8      	str	r0, [r7, #12]
1a0004f8:	60b9      	str	r1, [r7, #8]
1a0004fa:	607a      	str	r2, [r7, #4]
1a0004fc:	687b      	ldr	r3, [r7, #4]
1a0004fe:	2b3e      	cmp	r3, #62	; 0x3e
1a000500:	dc61      	bgt.n	1a0005c6 <hist_save_line+0xd6>
1a000502:	e002      	b.n	1a00050a <hist_save_line+0x1a>
1a000504:	68f8      	ldr	r0, [r7, #12]
1a000506:	f7ff ffa5 	bl	1a000454 <hist_erase_older>
1a00050a:	6879      	ldr	r1, [r7, #4]
1a00050c:	68f8      	ldr	r0, [r7, #12]
1a00050e:	f7ff ffbd 	bl	1a00048c <hist_is_space_for_new>
1a000512:	4603      	mov	r3, r0
1a000514:	2b00      	cmp	r3, #0
1a000516:	d0f5      	beq.n	1a000504 <hist_save_line+0x14>
1a000518:	68fb      	ldr	r3, [r7, #12]
1a00051a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00051c:	68fa      	ldr	r2, [r7, #12]
1a00051e:	5cd3      	ldrb	r3, [r2, r3]
1a000520:	2b00      	cmp	r3, #0
1a000522:	d105      	bne.n	1a000530 <hist_save_line+0x40>
1a000524:	68fb      	ldr	r3, [r7, #12]
1a000526:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000528:	687a      	ldr	r2, [r7, #4]
1a00052a:	b2d1      	uxtb	r1, r2
1a00052c:	68fa      	ldr	r2, [r7, #12]
1a00052e:	54d1      	strb	r1, [r2, r3]
1a000530:	68fb      	ldr	r3, [r7, #12]
1a000532:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000534:	f1c3 033f 	rsb	r3, r3, #63	; 0x3f
1a000538:	687a      	ldr	r2, [r7, #4]
1a00053a:	429a      	cmp	r2, r3
1a00053c:	da0a      	bge.n	1a000554 <hist_save_line+0x64>
1a00053e:	68fa      	ldr	r2, [r7, #12]
1a000540:	68fb      	ldr	r3, [r7, #12]
1a000542:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000544:	3301      	adds	r3, #1
1a000546:	4413      	add	r3, r2
1a000548:	687a      	ldr	r2, [r7, #4]
1a00054a:	68b9      	ldr	r1, [r7, #8]
1a00054c:	4618      	mov	r0, r3
1a00054e:	f002 fe71 	bl	1a003234 <memcpy>
1a000552:	e018      	b.n	1a000586 <hist_save_line+0x96>
1a000554:	68fb      	ldr	r3, [r7, #12]
1a000556:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000558:	f1c3 033f 	rsb	r3, r3, #63	; 0x3f
1a00055c:	617b      	str	r3, [r7, #20]
1a00055e:	68fa      	ldr	r2, [r7, #12]
1a000560:	68fb      	ldr	r3, [r7, #12]
1a000562:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000564:	3301      	adds	r3, #1
1a000566:	4413      	add	r3, r2
1a000568:	697a      	ldr	r2, [r7, #20]
1a00056a:	68b9      	ldr	r1, [r7, #8]
1a00056c:	4618      	mov	r0, r3
1a00056e:	f002 fe61 	bl	1a003234 <memcpy>
1a000572:	68f8      	ldr	r0, [r7, #12]
1a000574:	697b      	ldr	r3, [r7, #20]
1a000576:	68ba      	ldr	r2, [r7, #8]
1a000578:	18d1      	adds	r1, r2, r3
1a00057a:	687a      	ldr	r2, [r7, #4]
1a00057c:	697b      	ldr	r3, [r7, #20]
1a00057e:	1ad3      	subs	r3, r2, r3
1a000580:	461a      	mov	r2, r3
1a000582:	f002 fe57 	bl	1a003234 <memcpy>
1a000586:	68fb      	ldr	r3, [r7, #12]
1a000588:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00058a:	687a      	ldr	r2, [r7, #4]
1a00058c:	b2d1      	uxtb	r1, r2
1a00058e:	68fa      	ldr	r2, [r7, #12]
1a000590:	54d1      	strb	r1, [r2, r3]
1a000592:	68fb      	ldr	r3, [r7, #12]
1a000594:	6c5a      	ldr	r2, [r3, #68]	; 0x44
1a000596:	687b      	ldr	r3, [r7, #4]
1a000598:	4413      	add	r3, r2
1a00059a:	1c5a      	adds	r2, r3, #1
1a00059c:	68fb      	ldr	r3, [r7, #12]
1a00059e:	645a      	str	r2, [r3, #68]	; 0x44
1a0005a0:	68fb      	ldr	r3, [r7, #12]
1a0005a2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0005a4:	2b3f      	cmp	r3, #63	; 0x3f
1a0005a6:	dd05      	ble.n	1a0005b4 <hist_save_line+0xc4>
1a0005a8:	68fb      	ldr	r3, [r7, #12]
1a0005aa:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0005ac:	f1a3 0240 	sub.w	r2, r3, #64	; 0x40
1a0005b0:	68fb      	ldr	r3, [r7, #12]
1a0005b2:	645a      	str	r2, [r3, #68]	; 0x44
1a0005b4:	68fb      	ldr	r3, [r7, #12]
1a0005b6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0005b8:	68fa      	ldr	r2, [r7, #12]
1a0005ba:	2100      	movs	r1, #0
1a0005bc:	54d1      	strb	r1, [r2, r3]
1a0005be:	68fb      	ldr	r3, [r7, #12]
1a0005c0:	2200      	movs	r2, #0
1a0005c2:	649a      	str	r2, [r3, #72]	; 0x48
1a0005c4:	e000      	b.n	1a0005c8 <hist_save_line+0xd8>
1a0005c6:	bf00      	nop
1a0005c8:	3718      	adds	r7, #24
1a0005ca:	46bd      	mov	sp, r7
1a0005cc:	bd80      	pop	{r7, pc}

1a0005ce <hist_restore_line>:
1a0005ce:	b580      	push	{r7, lr}
1a0005d0:	b08c      	sub	sp, #48	; 0x30
1a0005d2:	af00      	add	r7, sp, #0
1a0005d4:	60f8      	str	r0, [r7, #12]
1a0005d6:	60b9      	str	r1, [r7, #8]
1a0005d8:	607a      	str	r2, [r7, #4]
1a0005da:	2300      	movs	r3, #0
1a0005dc:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0005de:	68fb      	ldr	r3, [r7, #12]
1a0005e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0005e2:	62bb      	str	r3, [r7, #40]	; 0x28
1a0005e4:	e010      	b.n	1a000608 <hist_restore_line+0x3a>
1a0005e6:	68fa      	ldr	r2, [r7, #12]
1a0005e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0005ea:	4413      	add	r3, r2
1a0005ec:	781b      	ldrb	r3, [r3, #0]
1a0005ee:	3301      	adds	r3, #1
1a0005f0:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0005f2:	4413      	add	r3, r2
1a0005f4:	62bb      	str	r3, [r7, #40]	; 0x28
1a0005f6:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0005f8:	2b3f      	cmp	r3, #63	; 0x3f
1a0005fa:	dd02      	ble.n	1a000602 <hist_restore_line+0x34>
1a0005fc:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0005fe:	3b40      	subs	r3, #64	; 0x40
1a000600:	62bb      	str	r3, [r7, #40]	; 0x28
1a000602:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000604:	3301      	adds	r3, #1
1a000606:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000608:	68fa      	ldr	r2, [r7, #12]
1a00060a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a00060c:	4413      	add	r3, r2
1a00060e:	781b      	ldrb	r3, [r3, #0]
1a000610:	2b00      	cmp	r3, #0
1a000612:	d1e8      	bne.n	1a0005e6 <hist_restore_line+0x18>
1a000614:	687b      	ldr	r3, [r7, #4]
1a000616:	2b00      	cmp	r3, #0
1a000618:	d176      	bne.n	1a000708 <hist_restore_line+0x13a>
1a00061a:	68fb      	ldr	r3, [r7, #12]
1a00061c:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a00061e:	6afa      	ldr	r2, [r7, #44]	; 0x2c
1a000620:	429a      	cmp	r2, r3
1a000622:	f2c0 80d6 	blt.w	1a0007d2 <hist_restore_line+0x204>
1a000626:	68fb      	ldr	r3, [r7, #12]
1a000628:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00062a:	627b      	str	r3, [r7, #36]	; 0x24
1a00062c:	2300      	movs	r3, #0
1a00062e:	623b      	str	r3, [r7, #32]
1a000630:	e010      	b.n	1a000654 <hist_restore_line+0x86>
1a000632:	68fa      	ldr	r2, [r7, #12]
1a000634:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000636:	4413      	add	r3, r2
1a000638:	781b      	ldrb	r3, [r3, #0]
1a00063a:	3301      	adds	r3, #1
1a00063c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
1a00063e:	4413      	add	r3, r2
1a000640:	627b      	str	r3, [r7, #36]	; 0x24
1a000642:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000644:	2b3f      	cmp	r3, #63	; 0x3f
1a000646:	dd02      	ble.n	1a00064e <hist_restore_line+0x80>
1a000648:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00064a:	3b40      	subs	r3, #64	; 0x40
1a00064c:	627b      	str	r3, [r7, #36]	; 0x24
1a00064e:	6a3b      	ldr	r3, [r7, #32]
1a000650:	3301      	adds	r3, #1
1a000652:	623b      	str	r3, [r7, #32]
1a000654:	68fa      	ldr	r2, [r7, #12]
1a000656:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000658:	4413      	add	r3, r2
1a00065a:	781b      	ldrb	r3, [r3, #0]
1a00065c:	2b00      	cmp	r3, #0
1a00065e:	d007      	beq.n	1a000670 <hist_restore_line+0xa2>
1a000660:	6afa      	ldr	r2, [r7, #44]	; 0x2c
1a000662:	6a3b      	ldr	r3, [r7, #32]
1a000664:	1ad3      	subs	r3, r2, r3
1a000666:	1e5a      	subs	r2, r3, #1
1a000668:	68fb      	ldr	r3, [r7, #12]
1a00066a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a00066c:	429a      	cmp	r2, r3
1a00066e:	d1e0      	bne.n	1a000632 <hist_restore_line+0x64>
1a000670:	68fa      	ldr	r2, [r7, #12]
1a000672:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000674:	4413      	add	r3, r2
1a000676:	781b      	ldrb	r3, [r3, #0]
1a000678:	2b00      	cmp	r3, #0
1a00067a:	f000 80aa 	beq.w	1a0007d2 <hist_restore_line+0x204>
1a00067e:	68fb      	ldr	r3, [r7, #12]
1a000680:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a000682:	1c5a      	adds	r2, r3, #1
1a000684:	68fb      	ldr	r3, [r7, #12]
1a000686:	649a      	str	r2, [r3, #72]	; 0x48
1a000688:	68fa      	ldr	r2, [r7, #12]
1a00068a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00068c:	4413      	add	r3, r2
1a00068e:	781b      	ldrb	r3, [r3, #0]
1a000690:	461a      	mov	r2, r3
1a000692:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000694:	4413      	add	r3, r2
1a000696:	2b3f      	cmp	r3, #63	; 0x3f
1a000698:	dc11      	bgt.n	1a0006be <hist_restore_line+0xf0>
1a00069a:	2265      	movs	r2, #101	; 0x65
1a00069c:	2100      	movs	r1, #0
1a00069e:	68b8      	ldr	r0, [r7, #8]
1a0006a0:	f7ff fe2e 	bl	1a000300 <memset>
1a0006a4:	68fa      	ldr	r2, [r7, #12]
1a0006a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0006a8:	3301      	adds	r3, #1
1a0006aa:	18d1      	adds	r1, r2, r3
1a0006ac:	68fa      	ldr	r2, [r7, #12]
1a0006ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0006b0:	4413      	add	r3, r2
1a0006b2:	781b      	ldrb	r3, [r3, #0]
1a0006b4:	461a      	mov	r2, r3
1a0006b6:	68b8      	ldr	r0, [r7, #8]
1a0006b8:	f002 fdbc 	bl	1a003234 <memcpy>
1a0006bc:	e01f      	b.n	1a0006fe <hist_restore_line+0x130>
1a0006be:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0006c0:	f1c3 033f 	rsb	r3, r3, #63	; 0x3f
1a0006c4:	613b      	str	r3, [r7, #16]
1a0006c6:	2265      	movs	r2, #101	; 0x65
1a0006c8:	2100      	movs	r1, #0
1a0006ca:	68b8      	ldr	r0, [r7, #8]
1a0006cc:	f7ff fe18 	bl	1a000300 <memset>
1a0006d0:	68fa      	ldr	r2, [r7, #12]
1a0006d2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0006d4:	3301      	adds	r3, #1
1a0006d6:	4413      	add	r3, r2
1a0006d8:	693a      	ldr	r2, [r7, #16]
1a0006da:	4619      	mov	r1, r3
1a0006dc:	68b8      	ldr	r0, [r7, #8]
1a0006de:	f002 fda9 	bl	1a003234 <memcpy>
1a0006e2:	693b      	ldr	r3, [r7, #16]
1a0006e4:	68ba      	ldr	r2, [r7, #8]
1a0006e6:	18d0      	adds	r0, r2, r3
1a0006e8:	68f9      	ldr	r1, [r7, #12]
1a0006ea:	68fa      	ldr	r2, [r7, #12]
1a0006ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0006ee:	4413      	add	r3, r2
1a0006f0:	781b      	ldrb	r3, [r3, #0]
1a0006f2:	461a      	mov	r2, r3
1a0006f4:	693b      	ldr	r3, [r7, #16]
1a0006f6:	1ad3      	subs	r3, r2, r3
1a0006f8:	461a      	mov	r2, r3
1a0006fa:	f002 fd9b 	bl	1a003234 <memcpy>
1a0006fe:	68fa      	ldr	r2, [r7, #12]
1a000700:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a000702:	4413      	add	r3, r2
1a000704:	781b      	ldrb	r3, [r3, #0]
1a000706:	e066      	b.n	1a0007d6 <hist_restore_line+0x208>
1a000708:	68fb      	ldr	r3, [r7, #12]
1a00070a:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a00070c:	2b00      	cmp	r3, #0
1a00070e:	dd5e      	ble.n	1a0007ce <hist_restore_line+0x200>
1a000710:	68fb      	ldr	r3, [r7, #12]
1a000712:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a000714:	1e5a      	subs	r2, r3, #1
1a000716:	68fb      	ldr	r3, [r7, #12]
1a000718:	649a      	str	r2, [r3, #72]	; 0x48
1a00071a:	68fb      	ldr	r3, [r7, #12]
1a00071c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00071e:	61fb      	str	r3, [r7, #28]
1a000720:	2300      	movs	r3, #0
1a000722:	61bb      	str	r3, [r7, #24]
1a000724:	e010      	b.n	1a000748 <hist_restore_line+0x17a>
1a000726:	68fa      	ldr	r2, [r7, #12]
1a000728:	69fb      	ldr	r3, [r7, #28]
1a00072a:	4413      	add	r3, r2
1a00072c:	781b      	ldrb	r3, [r3, #0]
1a00072e:	3301      	adds	r3, #1
1a000730:	69fa      	ldr	r2, [r7, #28]
1a000732:	4413      	add	r3, r2
1a000734:	61fb      	str	r3, [r7, #28]
1a000736:	69fb      	ldr	r3, [r7, #28]
1a000738:	2b3f      	cmp	r3, #63	; 0x3f
1a00073a:	dd02      	ble.n	1a000742 <hist_restore_line+0x174>
1a00073c:	69fb      	ldr	r3, [r7, #28]
1a00073e:	3b40      	subs	r3, #64	; 0x40
1a000740:	61fb      	str	r3, [r7, #28]
1a000742:	69bb      	ldr	r3, [r7, #24]
1a000744:	3301      	adds	r3, #1
1a000746:	61bb      	str	r3, [r7, #24]
1a000748:	68fa      	ldr	r2, [r7, #12]
1a00074a:	69fb      	ldr	r3, [r7, #28]
1a00074c:	4413      	add	r3, r2
1a00074e:	781b      	ldrb	r3, [r3, #0]
1a000750:	2b00      	cmp	r3, #0
1a000752:	d006      	beq.n	1a000762 <hist_restore_line+0x194>
1a000754:	6afa      	ldr	r2, [r7, #44]	; 0x2c
1a000756:	69bb      	ldr	r3, [r7, #24]
1a000758:	1ad2      	subs	r2, r2, r3
1a00075a:	68fb      	ldr	r3, [r7, #12]
1a00075c:	6c9b      	ldr	r3, [r3, #72]	; 0x48
1a00075e:	429a      	cmp	r2, r3
1a000760:	d1e1      	bne.n	1a000726 <hist_restore_line+0x158>
1a000762:	68fa      	ldr	r2, [r7, #12]
1a000764:	69fb      	ldr	r3, [r7, #28]
1a000766:	4413      	add	r3, r2
1a000768:	781b      	ldrb	r3, [r3, #0]
1a00076a:	461a      	mov	r2, r3
1a00076c:	69fb      	ldr	r3, [r7, #28]
1a00076e:	4413      	add	r3, r2
1a000770:	2b3f      	cmp	r3, #63	; 0x3f
1a000772:	dc0c      	bgt.n	1a00078e <hist_restore_line+0x1c0>
1a000774:	68fa      	ldr	r2, [r7, #12]
1a000776:	69fb      	ldr	r3, [r7, #28]
1a000778:	3301      	adds	r3, #1
1a00077a:	18d1      	adds	r1, r2, r3
1a00077c:	68fa      	ldr	r2, [r7, #12]
1a00077e:	69fb      	ldr	r3, [r7, #28]
1a000780:	4413      	add	r3, r2
1a000782:	781b      	ldrb	r3, [r3, #0]
1a000784:	461a      	mov	r2, r3
1a000786:	68b8      	ldr	r0, [r7, #8]
1a000788:	f002 fd54 	bl	1a003234 <memcpy>
1a00078c:	e01a      	b.n	1a0007c4 <hist_restore_line+0x1f6>
1a00078e:	69fb      	ldr	r3, [r7, #28]
1a000790:	f1c3 033f 	rsb	r3, r3, #63	; 0x3f
1a000794:	617b      	str	r3, [r7, #20]
1a000796:	68fa      	ldr	r2, [r7, #12]
1a000798:	69fb      	ldr	r3, [r7, #28]
1a00079a:	3301      	adds	r3, #1
1a00079c:	4413      	add	r3, r2
1a00079e:	697a      	ldr	r2, [r7, #20]
1a0007a0:	4619      	mov	r1, r3
1a0007a2:	68b8      	ldr	r0, [r7, #8]
1a0007a4:	f002 fd46 	bl	1a003234 <memcpy>
1a0007a8:	697b      	ldr	r3, [r7, #20]
1a0007aa:	68ba      	ldr	r2, [r7, #8]
1a0007ac:	18d0      	adds	r0, r2, r3
1a0007ae:	68f9      	ldr	r1, [r7, #12]
1a0007b0:	68fa      	ldr	r2, [r7, #12]
1a0007b2:	69fb      	ldr	r3, [r7, #28]
1a0007b4:	4413      	add	r3, r2
1a0007b6:	781b      	ldrb	r3, [r3, #0]
1a0007b8:	461a      	mov	r2, r3
1a0007ba:	697b      	ldr	r3, [r7, #20]
1a0007bc:	1ad3      	subs	r3, r2, r3
1a0007be:	461a      	mov	r2, r3
1a0007c0:	f002 fd38 	bl	1a003234 <memcpy>
1a0007c4:	68fa      	ldr	r2, [r7, #12]
1a0007c6:	69fb      	ldr	r3, [r7, #28]
1a0007c8:	4413      	add	r3, r2
1a0007ca:	781b      	ldrb	r3, [r3, #0]
1a0007cc:	e003      	b.n	1a0007d6 <hist_restore_line+0x208>
1a0007ce:	2300      	movs	r3, #0
1a0007d0:	e001      	b.n	1a0007d6 <hist_restore_line+0x208>
1a0007d2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0007d6:	4618      	mov	r0, r3
1a0007d8:	3730      	adds	r7, #48	; 0x30
1a0007da:	46bd      	mov	sp, r7
1a0007dc:	bd80      	pop	{r7, pc}

1a0007de <split>:
1a0007de:	b480      	push	{r7}
1a0007e0:	b087      	sub	sp, #28
1a0007e2:	af00      	add	r7, sp, #0
1a0007e4:	60f8      	str	r0, [r7, #12]
1a0007e6:	60b9      	str	r1, [r7, #8]
1a0007e8:	607a      	str	r2, [r7, #4]
1a0007ea:	2300      	movs	r3, #0
1a0007ec:	617b      	str	r3, [r7, #20]
1a0007ee:	2300      	movs	r3, #0
1a0007f0:	613b      	str	r3, [r7, #16]
1a0007f2:	e002      	b.n	1a0007fa <split+0x1c>
1a0007f4:	693b      	ldr	r3, [r7, #16]
1a0007f6:	3301      	adds	r3, #1
1a0007f8:	613b      	str	r3, [r7, #16]
1a0007fa:	68fa      	ldr	r2, [r7, #12]
1a0007fc:	693b      	ldr	r3, [r7, #16]
1a0007fe:	4413      	add	r3, r2
1a000800:	3354      	adds	r3, #84	; 0x54
1a000802:	781b      	ldrb	r3, [r3, #0]
1a000804:	2b00      	cmp	r3, #0
1a000806:	d103      	bne.n	1a000810 <split+0x32>
1a000808:	693a      	ldr	r2, [r7, #16]
1a00080a:	68bb      	ldr	r3, [r7, #8]
1a00080c:	429a      	cmp	r2, r3
1a00080e:	dbf1      	blt.n	1a0007f4 <split+0x16>
1a000810:	693a      	ldr	r2, [r7, #16]
1a000812:	68bb      	ldr	r3, [r7, #8]
1a000814:	429a      	cmp	r2, r3
1a000816:	db01      	blt.n	1a00081c <split+0x3e>
1a000818:	697b      	ldr	r3, [r7, #20]
1a00081a:	e024      	b.n	1a000866 <split+0x88>
1a00081c:	68fb      	ldr	r3, [r7, #12]
1a00081e:	f103 0154 	add.w	r1, r3, #84	; 0x54
1a000822:	693a      	ldr	r2, [r7, #16]
1a000824:	697b      	ldr	r3, [r7, #20]
1a000826:	1c58      	adds	r0, r3, #1
1a000828:	6178      	str	r0, [r7, #20]
1a00082a:	009b      	lsls	r3, r3, #2
1a00082c:	6878      	ldr	r0, [r7, #4]
1a00082e:	4403      	add	r3, r0
1a000830:	440a      	add	r2, r1
1a000832:	601a      	str	r2, [r3, #0]
1a000834:	697b      	ldr	r3, [r7, #20]
1a000836:	2b07      	cmp	r3, #7
1a000838:	dd05      	ble.n	1a000846 <split+0x68>
1a00083a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00083e:	e012      	b.n	1a000866 <split+0x88>
1a000840:	693b      	ldr	r3, [r7, #16]
1a000842:	3301      	adds	r3, #1
1a000844:	613b      	str	r3, [r7, #16]
1a000846:	68fa      	ldr	r2, [r7, #12]
1a000848:	693b      	ldr	r3, [r7, #16]
1a00084a:	4413      	add	r3, r2
1a00084c:	3354      	adds	r3, #84	; 0x54
1a00084e:	781b      	ldrb	r3, [r3, #0]
1a000850:	2b00      	cmp	r3, #0
1a000852:	d003      	beq.n	1a00085c <split+0x7e>
1a000854:	693a      	ldr	r2, [r7, #16]
1a000856:	68bb      	ldr	r3, [r7, #8]
1a000858:	429a      	cmp	r2, r3
1a00085a:	dbf1      	blt.n	1a000840 <split+0x62>
1a00085c:	693a      	ldr	r2, [r7, #16]
1a00085e:	68bb      	ldr	r3, [r7, #8]
1a000860:	429a      	cmp	r2, r3
1a000862:	dbca      	blt.n	1a0007fa <split+0x1c>
1a000864:	697b      	ldr	r3, [r7, #20]
1a000866:	4618      	mov	r0, r3
1a000868:	371c      	adds	r7, #28
1a00086a:	46bd      	mov	sp, r7
1a00086c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000870:	4770      	bx	lr

1a000872 <print_prompt>:
1a000872:	b580      	push	{r7, lr}
1a000874:	b082      	sub	sp, #8
1a000876:	af00      	add	r7, sp, #0
1a000878:	6078      	str	r0, [r7, #4]
1a00087a:	687b      	ldr	r3, [r7, #4]
1a00087c:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000880:	687a      	ldr	r2, [r7, #4]
1a000882:	6d12      	ldr	r2, [r2, #80]	; 0x50
1a000884:	4610      	mov	r0, r2
1a000886:	4798      	blx	r3
1a000888:	bf00      	nop
1a00088a:	3708      	adds	r7, #8
1a00088c:	46bd      	mov	sp, r7
1a00088e:	bd80      	pop	{r7, pc}

1a000890 <terminal_backspace>:
1a000890:	b580      	push	{r7, lr}
1a000892:	b082      	sub	sp, #8
1a000894:	af00      	add	r7, sp, #0
1a000896:	6078      	str	r0, [r7, #4]
1a000898:	687b      	ldr	r3, [r7, #4]
1a00089a:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a00089e:	4803      	ldr	r0, [pc, #12]	; (1a0008ac <terminal_backspace+0x1c>)
1a0008a0:	4798      	blx	r3
1a0008a2:	bf00      	nop
1a0008a4:	3708      	adds	r7, #8
1a0008a6:	46bd      	mov	sp, r7
1a0008a8:	bd80      	pop	{r7, pc}
1a0008aa:	bf00      	nop
1a0008ac:	1a0039d0 	.word	0x1a0039d0

1a0008b0 <terminal_newline>:
1a0008b0:	b580      	push	{r7, lr}
1a0008b2:	b082      	sub	sp, #8
1a0008b4:	af00      	add	r7, sp, #0
1a0008b6:	6078      	str	r0, [r7, #4]
1a0008b8:	687b      	ldr	r3, [r7, #4]
1a0008ba:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a0008be:	4803      	ldr	r0, [pc, #12]	; (1a0008cc <terminal_newline+0x1c>)
1a0008c0:	4798      	blx	r3
1a0008c2:	bf00      	nop
1a0008c4:	3708      	adds	r7, #8
1a0008c6:	46bd      	mov	sp, r7
1a0008c8:	bd80      	pop	{r7, pc}
1a0008ca:	bf00      	nop
1a0008cc:	1a0039d8 	.word	0x1a0039d8

1a0008d0 <u16bit_to_str>:
1a0008d0:	b480      	push	{r7}
1a0008d2:	b087      	sub	sp, #28
1a0008d4:	af00      	add	r7, sp, #0
1a0008d6:	6078      	str	r0, [r7, #4]
1a0008d8:	6039      	str	r1, [r7, #0]
1a0008da:	f107 0308 	add.w	r3, r7, #8
1a0008de:	2200      	movs	r2, #0
1a0008e0:	601a      	str	r2, [r3, #0]
1a0008e2:	809a      	strh	r2, [r3, #4]
1a0008e4:	2300      	movs	r3, #0
1a0008e6:	617b      	str	r3, [r7, #20]
1a0008e8:	687b      	ldr	r3, [r7, #4]
1a0008ea:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
1a0008ee:	d235      	bcs.n	1a00095c <u16bit_to_str+0x8c>
1a0008f0:	e01a      	b.n	1a000928 <u16bit_to_str+0x58>
1a0008f2:	6879      	ldr	r1, [r7, #4]
1a0008f4:	4b1e      	ldr	r3, [pc, #120]	; (1a000970 <u16bit_to_str+0xa0>)
1a0008f6:	fba3 2301 	umull	r2, r3, r3, r1
1a0008fa:	08da      	lsrs	r2, r3, #3
1a0008fc:	4613      	mov	r3, r2
1a0008fe:	009b      	lsls	r3, r3, #2
1a000900:	4413      	add	r3, r2
1a000902:	005b      	lsls	r3, r3, #1
1a000904:	1aca      	subs	r2, r1, r3
1a000906:	b2d2      	uxtb	r2, r2
1a000908:	697b      	ldr	r3, [r7, #20]
1a00090a:	1c59      	adds	r1, r3, #1
1a00090c:	6179      	str	r1, [r7, #20]
1a00090e:	3230      	adds	r2, #48	; 0x30
1a000910:	b2d2      	uxtb	r2, r2
1a000912:	f107 0118 	add.w	r1, r7, #24
1a000916:	440b      	add	r3, r1
1a000918:	f803 2c10 	strb.w	r2, [r3, #-16]
1a00091c:	687b      	ldr	r3, [r7, #4]
1a00091e:	4a14      	ldr	r2, [pc, #80]	; (1a000970 <u16bit_to_str+0xa0>)
1a000920:	fba2 2303 	umull	r2, r3, r2, r3
1a000924:	08db      	lsrs	r3, r3, #3
1a000926:	607b      	str	r3, [r7, #4]
1a000928:	687b      	ldr	r3, [r7, #4]
1a00092a:	2b00      	cmp	r3, #0
1a00092c:	d1e1      	bne.n	1a0008f2 <u16bit_to_str+0x22>
1a00092e:	2300      	movs	r3, #0
1a000930:	613b      	str	r3, [r7, #16]
1a000932:	e00f      	b.n	1a000954 <u16bit_to_str+0x84>
1a000934:	697a      	ldr	r2, [r7, #20]
1a000936:	693b      	ldr	r3, [r7, #16]
1a000938:	1ad3      	subs	r3, r2, r3
1a00093a:	1e5a      	subs	r2, r3, #1
1a00093c:	683b      	ldr	r3, [r7, #0]
1a00093e:	1c59      	adds	r1, r3, #1
1a000940:	6039      	str	r1, [r7, #0]
1a000942:	f107 0118 	add.w	r1, r7, #24
1a000946:	440a      	add	r2, r1
1a000948:	f812 2c10 	ldrb.w	r2, [r2, #-16]
1a00094c:	701a      	strb	r2, [r3, #0]
1a00094e:	693b      	ldr	r3, [r7, #16]
1a000950:	3301      	adds	r3, #1
1a000952:	613b      	str	r3, [r7, #16]
1a000954:	693a      	ldr	r2, [r7, #16]
1a000956:	697b      	ldr	r3, [r7, #20]
1a000958:	429a      	cmp	r2, r3
1a00095a:	dbeb      	blt.n	1a000934 <u16bit_to_str+0x64>
1a00095c:	683b      	ldr	r3, [r7, #0]
1a00095e:	2200      	movs	r2, #0
1a000960:	701a      	strb	r2, [r3, #0]
1a000962:	683b      	ldr	r3, [r7, #0]
1a000964:	4618      	mov	r0, r3
1a000966:	371c      	adds	r7, #28
1a000968:	46bd      	mov	sp, r7
1a00096a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00096e:	4770      	bx	lr
1a000970:	cccccccd 	.word	0xcccccccd

1a000974 <terminal_move_cursor>:
1a000974:	b580      	push	{r7, lr}
1a000976:	b088      	sub	sp, #32
1a000978:	af00      	add	r7, sp, #0
1a00097a:	6078      	str	r0, [r7, #4]
1a00097c:	6039      	str	r1, [r7, #0]
1a00097e:	f107 030c 	add.w	r3, r7, #12
1a000982:	2200      	movs	r2, #0
1a000984:	601a      	str	r2, [r3, #0]
1a000986:	605a      	str	r2, [r3, #4]
1a000988:	609a      	str	r2, [r3, #8]
1a00098a:	60da      	str	r2, [r3, #12]
1a00098c:	f107 030c 	add.w	r3, r7, #12
1a000990:	4a1c      	ldr	r2, [pc, #112]	; (1a000a04 <terminal_move_cursor+0x90>)
1a000992:	6812      	ldr	r2, [r2, #0]
1a000994:	4611      	mov	r1, r2
1a000996:	8019      	strh	r1, [r3, #0]
1a000998:	3302      	adds	r3, #2
1a00099a:	0c12      	lsrs	r2, r2, #16
1a00099c:	701a      	strb	r2, [r3, #0]
1a00099e:	683b      	ldr	r3, [r7, #0]
1a0009a0:	2b00      	cmp	r3, #0
1a0009a2:	dd0f      	ble.n	1a0009c4 <terminal_move_cursor+0x50>
1a0009a4:	683a      	ldr	r2, [r7, #0]
1a0009a6:	f107 030c 	add.w	r3, r7, #12
1a0009aa:	3302      	adds	r3, #2
1a0009ac:	4619      	mov	r1, r3
1a0009ae:	4610      	mov	r0, r2
1a0009b0:	f7ff ff8e 	bl	1a0008d0 <u16bit_to_str>
1a0009b4:	61f8      	str	r0, [r7, #28]
1a0009b6:	69fb      	ldr	r3, [r7, #28]
1a0009b8:	4913      	ldr	r1, [pc, #76]	; (1a000a08 <terminal_move_cursor+0x94>)
1a0009ba:	461a      	mov	r2, r3
1a0009bc:	460b      	mov	r3, r1
1a0009be:	881b      	ldrh	r3, [r3, #0]
1a0009c0:	8013      	strh	r3, [r2, #0]
1a0009c2:	e013      	b.n	1a0009ec <terminal_move_cursor+0x78>
1a0009c4:	683b      	ldr	r3, [r7, #0]
1a0009c6:	2b00      	cmp	r3, #0
1a0009c8:	da18      	bge.n	1a0009fc <terminal_move_cursor+0x88>
1a0009ca:	683b      	ldr	r3, [r7, #0]
1a0009cc:	425b      	negs	r3, r3
1a0009ce:	461a      	mov	r2, r3
1a0009d0:	f107 030c 	add.w	r3, r7, #12
1a0009d4:	3302      	adds	r3, #2
1a0009d6:	4619      	mov	r1, r3
1a0009d8:	4610      	mov	r0, r2
1a0009da:	f7ff ff79 	bl	1a0008d0 <u16bit_to_str>
1a0009de:	61f8      	str	r0, [r7, #28]
1a0009e0:	69fb      	ldr	r3, [r7, #28]
1a0009e2:	490a      	ldr	r1, [pc, #40]	; (1a000a0c <terminal_move_cursor+0x98>)
1a0009e4:	461a      	mov	r2, r3
1a0009e6:	460b      	mov	r3, r1
1a0009e8:	881b      	ldrh	r3, [r3, #0]
1a0009ea:	8013      	strh	r3, [r2, #0]
1a0009ec:	687b      	ldr	r3, [r7, #4]
1a0009ee:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a0009f2:	f107 020c 	add.w	r2, r7, #12
1a0009f6:	4610      	mov	r0, r2
1a0009f8:	4798      	blx	r3
1a0009fa:	e000      	b.n	1a0009fe <terminal_move_cursor+0x8a>
1a0009fc:	bf00      	nop
1a0009fe:	3720      	adds	r7, #32
1a000a00:	46bd      	mov	sp, r7
1a000a02:	bd80      	pop	{r7, pc}
1a000a04:	1a0039dc 	.word	0x1a0039dc
1a000a08:	1a0039e0 	.word	0x1a0039e0
1a000a0c:	1a0039e4 	.word	0x1a0039e4

1a000a10 <terminal_reset_cursor>:
1a000a10:	b580      	push	{r7, lr}
1a000a12:	b088      	sub	sp, #32
1a000a14:	af00      	add	r7, sp, #0
1a000a16:	6078      	str	r0, [r7, #4]
1a000a18:	f107 030c 	add.w	r3, r7, #12
1a000a1c:	4a15      	ldr	r2, [pc, #84]	; (1a000a74 <terminal_reset_cursor+0x64>)
1a000a1e:	6812      	ldr	r2, [r2, #0]
1a000a20:	4611      	mov	r1, r2
1a000a22:	8019      	strh	r1, [r3, #0]
1a000a24:	3302      	adds	r3, #2
1a000a26:	0c12      	lsrs	r2, r2, #16
1a000a28:	701a      	strb	r2, [r3, #0]
1a000a2a:	f107 030c 	add.w	r3, r7, #12
1a000a2e:	3302      	adds	r3, #2
1a000a30:	4619      	mov	r1, r3
1a000a32:	2071      	movs	r0, #113	; 0x71
1a000a34:	f7ff ff4c 	bl	1a0008d0 <u16bit_to_str>
1a000a38:	61f8      	str	r0, [r7, #28]
1a000a3a:	69fb      	ldr	r3, [r7, #28]
1a000a3c:	4a0e      	ldr	r2, [pc, #56]	; (1a000a78 <terminal_reset_cursor+0x68>)
1a000a3e:	6810      	ldr	r0, [r2, #0]
1a000a40:	6018      	str	r0, [r3, #0]
1a000a42:	69fb      	ldr	r3, [r7, #28]
1a000a44:	3303      	adds	r3, #3
1a000a46:	61fb      	str	r3, [r7, #28]
1a000a48:	69f9      	ldr	r1, [r7, #28]
1a000a4a:	200a      	movs	r0, #10
1a000a4c:	f7ff ff40 	bl	1a0008d0 <u16bit_to_str>
1a000a50:	61f8      	str	r0, [r7, #28]
1a000a52:	69fb      	ldr	r3, [r7, #28]
1a000a54:	4909      	ldr	r1, [pc, #36]	; (1a000a7c <terminal_reset_cursor+0x6c>)
1a000a56:	461a      	mov	r2, r3
1a000a58:	460b      	mov	r3, r1
1a000a5a:	881b      	ldrh	r3, [r3, #0]
1a000a5c:	8013      	strh	r3, [r2, #0]
1a000a5e:	687b      	ldr	r3, [r7, #4]
1a000a60:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000a64:	f107 020c 	add.w	r2, r7, #12
1a000a68:	4610      	mov	r0, r2
1a000a6a:	4798      	blx	r3
1a000a6c:	bf00      	nop
1a000a6e:	3720      	adds	r7, #32
1a000a70:	46bd      	mov	sp, r7
1a000a72:	bd80      	pop	{r7, pc}
1a000a74:	1a0039dc 	.word	0x1a0039dc
1a000a78:	1a0039e8 	.word	0x1a0039e8
1a000a7c:	1a0039e0 	.word	0x1a0039e0

1a000a80 <terminal_print_line>:
1a000a80:	b580      	push	{r7, lr}
1a000a82:	b086      	sub	sp, #24
1a000a84:	af00      	add	r7, sp, #0
1a000a86:	60f8      	str	r0, [r7, #12]
1a000a88:	60b9      	str	r1, [r7, #8]
1a000a8a:	607a      	str	r2, [r7, #4]
1a000a8c:	68fb      	ldr	r3, [r7, #12]
1a000a8e:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000a92:	4817      	ldr	r0, [pc, #92]	; (1a000af0 <terminal_print_line+0x70>)
1a000a94:	4798      	blx	r3
1a000a96:	2300      	movs	r3, #0
1a000a98:	743b      	strb	r3, [r7, #16]
1a000a9a:	2300      	movs	r3, #0
1a000a9c:	747b      	strb	r3, [r7, #17]
1a000a9e:	68bb      	ldr	r3, [r7, #8]
1a000aa0:	617b      	str	r3, [r7, #20]
1a000aa2:	e014      	b.n	1a000ace <terminal_print_line+0x4e>
1a000aa4:	68fa      	ldr	r2, [r7, #12]
1a000aa6:	697b      	ldr	r3, [r7, #20]
1a000aa8:	4413      	add	r3, r2
1a000aaa:	3354      	adds	r3, #84	; 0x54
1a000aac:	781b      	ldrb	r3, [r3, #0]
1a000aae:	743b      	strb	r3, [r7, #16]
1a000ab0:	7c3b      	ldrb	r3, [r7, #16]
1a000ab2:	2b00      	cmp	r3, #0
1a000ab4:	d101      	bne.n	1a000aba <terminal_print_line+0x3a>
1a000ab6:	2320      	movs	r3, #32
1a000ab8:	743b      	strb	r3, [r7, #16]
1a000aba:	68fb      	ldr	r3, [r7, #12]
1a000abc:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000ac0:	f107 0210 	add.w	r2, r7, #16
1a000ac4:	4610      	mov	r0, r2
1a000ac6:	4798      	blx	r3
1a000ac8:	697b      	ldr	r3, [r7, #20]
1a000aca:	3301      	adds	r3, #1
1a000acc:	617b      	str	r3, [r7, #20]
1a000ace:	68fb      	ldr	r3, [r7, #12]
1a000ad0:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000ad4:	697a      	ldr	r2, [r7, #20]
1a000ad6:	429a      	cmp	r2, r3
1a000ad8:	dbe4      	blt.n	1a000aa4 <terminal_print_line+0x24>
1a000ada:	68f8      	ldr	r0, [r7, #12]
1a000adc:	f7ff ff98 	bl	1a000a10 <terminal_reset_cursor>
1a000ae0:	6879      	ldr	r1, [r7, #4]
1a000ae2:	68f8      	ldr	r0, [r7, #12]
1a000ae4:	f7ff ff46 	bl	1a000974 <terminal_move_cursor>
1a000ae8:	bf00      	nop
1a000aea:	3718      	adds	r7, #24
1a000aec:	46bd      	mov	sp, r7
1a000aee:	bd80      	pop	{r7, pc}
1a000af0:	1a0039ec 	.word	0x1a0039ec

1a000af4 <microrl_init>:
1a000af4:	b580      	push	{r7, lr}
1a000af6:	b082      	sub	sp, #8
1a000af8:	af00      	add	r7, sp, #0
1a000afa:	6078      	str	r0, [r7, #4]
1a000afc:	6039      	str	r1, [r7, #0]
1a000afe:	687b      	ldr	r3, [r7, #4]
1a000b00:	3354      	adds	r3, #84	; 0x54
1a000b02:	2265      	movs	r2, #101	; 0x65
1a000b04:	2100      	movs	r1, #0
1a000b06:	4618      	mov	r0, r3
1a000b08:	f7ff fbfa 	bl	1a000300 <memset>
1a000b0c:	687b      	ldr	r3, [r7, #4]
1a000b0e:	3304      	adds	r3, #4
1a000b10:	2240      	movs	r2, #64	; 0x40
1a000b12:	2100      	movs	r1, #0
1a000b14:	4618      	mov	r0, r3
1a000b16:	f7ff fbf3 	bl	1a000300 <memset>
1a000b1a:	687b      	ldr	r3, [r7, #4]
1a000b1c:	2200      	movs	r2, #0
1a000b1e:	645a      	str	r2, [r3, #68]	; 0x44
1a000b20:	687b      	ldr	r3, [r7, #4]
1a000b22:	2200      	movs	r2, #0
1a000b24:	649a      	str	r2, [r3, #72]	; 0x48
1a000b26:	687b      	ldr	r3, [r7, #4]
1a000b28:	2200      	movs	r2, #0
1a000b2a:	64da      	str	r2, [r3, #76]	; 0x4c
1a000b2c:	687b      	ldr	r3, [r7, #4]
1a000b2e:	2200      	movs	r2, #0
1a000b30:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a000b34:	687b      	ldr	r3, [r7, #4]
1a000b36:	2200      	movs	r2, #0
1a000b38:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000b3c:	687b      	ldr	r3, [r7, #4]
1a000b3e:	2200      	movs	r2, #0
1a000b40:	f8c3 20c4 	str.w	r2, [r3, #196]	; 0xc4
1a000b44:	687b      	ldr	r3, [r7, #4]
1a000b46:	2200      	movs	r2, #0
1a000b48:	f8c3 20c8 	str.w	r2, [r3, #200]	; 0xc8
1a000b4c:	687b      	ldr	r3, [r7, #4]
1a000b4e:	2200      	movs	r2, #0
1a000b50:	f8c3 20d0 	str.w	r2, [r3, #208]	; 0xd0
1a000b54:	4b07      	ldr	r3, [pc, #28]	; (1a000b74 <microrl_init+0x80>)
1a000b56:	681a      	ldr	r2, [r3, #0]
1a000b58:	687b      	ldr	r3, [r7, #4]
1a000b5a:	651a      	str	r2, [r3, #80]	; 0x50
1a000b5c:	687b      	ldr	r3, [r7, #4]
1a000b5e:	683a      	ldr	r2, [r7, #0]
1a000b60:	f8c3 20cc 	str.w	r2, [r3, #204]	; 0xcc
1a000b64:	6878      	ldr	r0, [r7, #4]
1a000b66:	f7ff fe84 	bl	1a000872 <print_prompt>
1a000b6a:	bf00      	nop
1a000b6c:	3708      	adds	r7, #8
1a000b6e:	46bd      	mov	sp, r7
1a000b70:	bd80      	pop	{r7, pc}
1a000b72:	bf00      	nop
1a000b74:	10000430 	.word	0x10000430

1a000b78 <microrl_set_execute_callback>:
1a000b78:	b480      	push	{r7}
1a000b7a:	b083      	sub	sp, #12
1a000b7c:	af00      	add	r7, sp, #0
1a000b7e:	6078      	str	r0, [r7, #4]
1a000b80:	6039      	str	r1, [r7, #0]
1a000b82:	687b      	ldr	r3, [r7, #4]
1a000b84:	683a      	ldr	r2, [r7, #0]
1a000b86:	f8c3 20c4 	str.w	r2, [r3, #196]	; 0xc4
1a000b8a:	bf00      	nop
1a000b8c:	370c      	adds	r7, #12
1a000b8e:	46bd      	mov	sp, r7
1a000b90:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b94:	4770      	bx	lr

1a000b96 <microrl_set_sigint_callback>:
1a000b96:	b480      	push	{r7}
1a000b98:	b083      	sub	sp, #12
1a000b9a:	af00      	add	r7, sp, #0
1a000b9c:	6078      	str	r0, [r7, #4]
1a000b9e:	6039      	str	r1, [r7, #0]
1a000ba0:	687b      	ldr	r3, [r7, #4]
1a000ba2:	683a      	ldr	r2, [r7, #0]
1a000ba4:	f8c3 20d0 	str.w	r2, [r3, #208]	; 0xd0
1a000ba8:	bf00      	nop
1a000baa:	370c      	adds	r7, #12
1a000bac:	46bd      	mov	sp, r7
1a000bae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bb2:	4770      	bx	lr

1a000bb4 <hist_search>:
1a000bb4:	b580      	push	{r7, lr}
1a000bb6:	b084      	sub	sp, #16
1a000bb8:	af00      	add	r7, sp, #0
1a000bba:	6078      	str	r0, [r7, #4]
1a000bbc:	6039      	str	r1, [r7, #0]
1a000bbe:	687b      	ldr	r3, [r7, #4]
1a000bc0:	1d18      	adds	r0, r3, #4
1a000bc2:	687b      	ldr	r3, [r7, #4]
1a000bc4:	3354      	adds	r3, #84	; 0x54
1a000bc6:	683a      	ldr	r2, [r7, #0]
1a000bc8:	4619      	mov	r1, r3
1a000bca:	f7ff fd00 	bl	1a0005ce <hist_restore_line>
1a000bce:	60f8      	str	r0, [r7, #12]
1a000bd0:	68fb      	ldr	r3, [r7, #12]
1a000bd2:	2b00      	cmp	r3, #0
1a000bd4:	db1a      	blt.n	1a000c0c <hist_search+0x58>
1a000bd6:	687a      	ldr	r2, [r7, #4]
1a000bd8:	68fb      	ldr	r3, [r7, #12]
1a000bda:	4413      	add	r3, r2
1a000bdc:	3354      	adds	r3, #84	; 0x54
1a000bde:	2200      	movs	r2, #0
1a000be0:	701a      	strb	r2, [r3, #0]
1a000be2:	687b      	ldr	r3, [r7, #4]
1a000be4:	68fa      	ldr	r2, [r7, #12]
1a000be6:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a000bea:	687b      	ldr	r3, [r7, #4]
1a000bec:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000bf0:	687b      	ldr	r3, [r7, #4]
1a000bf2:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000bf6:	6878      	ldr	r0, [r7, #4]
1a000bf8:	f7ff ff0a 	bl	1a000a10 <terminal_reset_cursor>
1a000bfc:	687b      	ldr	r3, [r7, #4]
1a000bfe:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000c02:	461a      	mov	r2, r3
1a000c04:	2100      	movs	r1, #0
1a000c06:	6878      	ldr	r0, [r7, #4]
1a000c08:	f7ff ff3a 	bl	1a000a80 <terminal_print_line>
1a000c0c:	bf00      	nop
1a000c0e:	3710      	adds	r7, #16
1a000c10:	46bd      	mov	sp, r7
1a000c12:	bd80      	pop	{r7, pc}

1a000c14 <escape_process>:
1a000c14:	b580      	push	{r7, lr}
1a000c16:	b082      	sub	sp, #8
1a000c18:	af00      	add	r7, sp, #0
1a000c1a:	6078      	str	r0, [r7, #4]
1a000c1c:	460b      	mov	r3, r1
1a000c1e:	70fb      	strb	r3, [r7, #3]
1a000c20:	78fb      	ldrb	r3, [r7, #3]
1a000c22:	2b5b      	cmp	r3, #91	; 0x5b
1a000c24:	d104      	bne.n	1a000c30 <escape_process+0x1c>
1a000c26:	687b      	ldr	r3, [r7, #4]
1a000c28:	2201      	movs	r2, #1
1a000c2a:	701a      	strb	r2, [r3, #0]
1a000c2c:	2300      	movs	r3, #0
1a000c2e:	e07b      	b.n	1a000d28 <escape_process+0x114>
1a000c30:	687b      	ldr	r3, [r7, #4]
1a000c32:	781b      	ldrb	r3, [r3, #0]
1a000c34:	2b01      	cmp	r3, #1
1a000c36:	d14f      	bne.n	1a000cd8 <escape_process+0xc4>
1a000c38:	78fb      	ldrb	r3, [r7, #3]
1a000c3a:	2b41      	cmp	r3, #65	; 0x41
1a000c3c:	d105      	bne.n	1a000c4a <escape_process+0x36>
1a000c3e:	2100      	movs	r1, #0
1a000c40:	6878      	ldr	r0, [r7, #4]
1a000c42:	f7ff ffb7 	bl	1a000bb4 <hist_search>
1a000c46:	2301      	movs	r3, #1
1a000c48:	e06e      	b.n	1a000d28 <escape_process+0x114>
1a000c4a:	78fb      	ldrb	r3, [r7, #3]
1a000c4c:	2b42      	cmp	r3, #66	; 0x42
1a000c4e:	d105      	bne.n	1a000c5c <escape_process+0x48>
1a000c50:	2101      	movs	r1, #1
1a000c52:	6878      	ldr	r0, [r7, #4]
1a000c54:	f7ff ffae 	bl	1a000bb4 <hist_search>
1a000c58:	2301      	movs	r3, #1
1a000c5a:	e065      	b.n	1a000d28 <escape_process+0x114>
1a000c5c:	78fb      	ldrb	r3, [r7, #3]
1a000c5e:	2b43      	cmp	r3, #67	; 0x43
1a000c60:	d114      	bne.n	1a000c8c <escape_process+0x78>
1a000c62:	687b      	ldr	r3, [r7, #4]
1a000c64:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a000c68:	687b      	ldr	r3, [r7, #4]
1a000c6a:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000c6e:	429a      	cmp	r2, r3
1a000c70:	da0a      	bge.n	1a000c88 <escape_process+0x74>
1a000c72:	2101      	movs	r1, #1
1a000c74:	6878      	ldr	r0, [r7, #4]
1a000c76:	f7ff fe7d 	bl	1a000974 <terminal_move_cursor>
1a000c7a:	687b      	ldr	r3, [r7, #4]
1a000c7c:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000c80:	1c5a      	adds	r2, r3, #1
1a000c82:	687b      	ldr	r3, [r7, #4]
1a000c84:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000c88:	2301      	movs	r3, #1
1a000c8a:	e04d      	b.n	1a000d28 <escape_process+0x114>
1a000c8c:	78fb      	ldrb	r3, [r7, #3]
1a000c8e:	2b44      	cmp	r3, #68	; 0x44
1a000c90:	d112      	bne.n	1a000cb8 <escape_process+0xa4>
1a000c92:	687b      	ldr	r3, [r7, #4]
1a000c94:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000c98:	2b00      	cmp	r3, #0
1a000c9a:	dd0b      	ble.n	1a000cb4 <escape_process+0xa0>
1a000c9c:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
1a000ca0:	6878      	ldr	r0, [r7, #4]
1a000ca2:	f7ff fe67 	bl	1a000974 <terminal_move_cursor>
1a000ca6:	687b      	ldr	r3, [r7, #4]
1a000ca8:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000cac:	1e5a      	subs	r2, r3, #1
1a000cae:	687b      	ldr	r3, [r7, #4]
1a000cb0:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000cb4:	2301      	movs	r3, #1
1a000cb6:	e037      	b.n	1a000d28 <escape_process+0x114>
1a000cb8:	78fb      	ldrb	r3, [r7, #3]
1a000cba:	2b37      	cmp	r3, #55	; 0x37
1a000cbc:	d104      	bne.n	1a000cc8 <escape_process+0xb4>
1a000cbe:	687b      	ldr	r3, [r7, #4]
1a000cc0:	2202      	movs	r2, #2
1a000cc2:	701a      	strb	r2, [r3, #0]
1a000cc4:	2300      	movs	r3, #0
1a000cc6:	e02f      	b.n	1a000d28 <escape_process+0x114>
1a000cc8:	78fb      	ldrb	r3, [r7, #3]
1a000cca:	2b38      	cmp	r3, #56	; 0x38
1a000ccc:	d12b      	bne.n	1a000d26 <escape_process+0x112>
1a000cce:	687b      	ldr	r3, [r7, #4]
1a000cd0:	2203      	movs	r2, #3
1a000cd2:	701a      	strb	r2, [r3, #0]
1a000cd4:	2300      	movs	r3, #0
1a000cd6:	e027      	b.n	1a000d28 <escape_process+0x114>
1a000cd8:	78fb      	ldrb	r3, [r7, #3]
1a000cda:	2b7e      	cmp	r3, #126	; 0x7e
1a000cdc:	d123      	bne.n	1a000d26 <escape_process+0x112>
1a000cde:	687b      	ldr	r3, [r7, #4]
1a000ce0:	781b      	ldrb	r3, [r3, #0]
1a000ce2:	2b02      	cmp	r3, #2
1a000ce4:	d108      	bne.n	1a000cf8 <escape_process+0xe4>
1a000ce6:	6878      	ldr	r0, [r7, #4]
1a000ce8:	f7ff fe92 	bl	1a000a10 <terminal_reset_cursor>
1a000cec:	687b      	ldr	r3, [r7, #4]
1a000cee:	2200      	movs	r2, #0
1a000cf0:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000cf4:	2301      	movs	r3, #1
1a000cf6:	e017      	b.n	1a000d28 <escape_process+0x114>
1a000cf8:	687b      	ldr	r3, [r7, #4]
1a000cfa:	781b      	ldrb	r3, [r3, #0]
1a000cfc:	2b03      	cmp	r3, #3
1a000cfe:	d112      	bne.n	1a000d26 <escape_process+0x112>
1a000d00:	687b      	ldr	r3, [r7, #4]
1a000d02:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000d06:	687b      	ldr	r3, [r7, #4]
1a000d08:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000d0c:	1ad3      	subs	r3, r2, r3
1a000d0e:	4619      	mov	r1, r3
1a000d10:	6878      	ldr	r0, [r7, #4]
1a000d12:	f7ff fe2f 	bl	1a000974 <terminal_move_cursor>
1a000d16:	687b      	ldr	r3, [r7, #4]
1a000d18:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000d1c:	687b      	ldr	r3, [r7, #4]
1a000d1e:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000d22:	2301      	movs	r3, #1
1a000d24:	e000      	b.n	1a000d28 <escape_process+0x114>
1a000d26:	2301      	movs	r3, #1
1a000d28:	4618      	mov	r0, r3
1a000d2a:	3708      	adds	r7, #8
1a000d2c:	46bd      	mov	sp, r7
1a000d2e:	bd80      	pop	{r7, pc}

1a000d30 <microrl_insert_text>:
1a000d30:	b580      	push	{r7, lr}
1a000d32:	b086      	sub	sp, #24
1a000d34:	af00      	add	r7, sp, #0
1a000d36:	60f8      	str	r0, [r7, #12]
1a000d38:	60b9      	str	r1, [r7, #8]
1a000d3a:	607a      	str	r2, [r7, #4]
1a000d3c:	68fb      	ldr	r3, [r7, #12]
1a000d3e:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000d42:	687b      	ldr	r3, [r7, #4]
1a000d44:	4413      	add	r3, r2
1a000d46:	2b64      	cmp	r3, #100	; 0x64
1a000d48:	dc60      	bgt.n	1a000e0c <microrl_insert_text+0xdc>
1a000d4a:	68fb      	ldr	r3, [r7, #12]
1a000d4c:	f103 0254 	add.w	r2, r3, #84	; 0x54
1a000d50:	68fb      	ldr	r3, [r7, #12]
1a000d52:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000d56:	4619      	mov	r1, r3
1a000d58:	687b      	ldr	r3, [r7, #4]
1a000d5a:	440b      	add	r3, r1
1a000d5c:	18d0      	adds	r0, r2, r3
1a000d5e:	68fb      	ldr	r3, [r7, #12]
1a000d60:	3354      	adds	r3, #84	; 0x54
1a000d62:	68fa      	ldr	r2, [r7, #12]
1a000d64:	f8d2 20c0 	ldr.w	r2, [r2, #192]	; 0xc0
1a000d68:	1899      	adds	r1, r3, r2
1a000d6a:	68fb      	ldr	r3, [r7, #12]
1a000d6c:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000d70:	68fb      	ldr	r3, [r7, #12]
1a000d72:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000d76:	1ad3      	subs	r3, r2, r3
1a000d78:	461a      	mov	r2, r3
1a000d7a:	f002 faf5 	bl	1a003368 <memmove>
1a000d7e:	2300      	movs	r3, #0
1a000d80:	617b      	str	r3, [r7, #20]
1a000d82:	e025      	b.n	1a000dd0 <microrl_insert_text+0xa0>
1a000d84:	697b      	ldr	r3, [r7, #20]
1a000d86:	68ba      	ldr	r2, [r7, #8]
1a000d88:	441a      	add	r2, r3
1a000d8a:	68fb      	ldr	r3, [r7, #12]
1a000d8c:	f8d3 10c0 	ldr.w	r1, [r3, #192]	; 0xc0
1a000d90:	697b      	ldr	r3, [r7, #20]
1a000d92:	440b      	add	r3, r1
1a000d94:	7811      	ldrb	r1, [r2, #0]
1a000d96:	68fa      	ldr	r2, [r7, #12]
1a000d98:	4413      	add	r3, r2
1a000d9a:	460a      	mov	r2, r1
1a000d9c:	f883 2054 	strb.w	r2, [r3, #84]	; 0x54
1a000da0:	68fb      	ldr	r3, [r7, #12]
1a000da2:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a000da6:	697b      	ldr	r3, [r7, #20]
1a000da8:	4413      	add	r3, r2
1a000daa:	68fa      	ldr	r2, [r7, #12]
1a000dac:	4413      	add	r3, r2
1a000dae:	f893 3054 	ldrb.w	r3, [r3, #84]	; 0x54
1a000db2:	2b20      	cmp	r3, #32
1a000db4:	d109      	bne.n	1a000dca <microrl_insert_text+0x9a>
1a000db6:	68fb      	ldr	r3, [r7, #12]
1a000db8:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a000dbc:	697b      	ldr	r3, [r7, #20]
1a000dbe:	4413      	add	r3, r2
1a000dc0:	68fa      	ldr	r2, [r7, #12]
1a000dc2:	4413      	add	r3, r2
1a000dc4:	2200      	movs	r2, #0
1a000dc6:	f883 2054 	strb.w	r2, [r3, #84]	; 0x54
1a000dca:	697b      	ldr	r3, [r7, #20]
1a000dcc:	3301      	adds	r3, #1
1a000dce:	617b      	str	r3, [r7, #20]
1a000dd0:	697a      	ldr	r2, [r7, #20]
1a000dd2:	687b      	ldr	r3, [r7, #4]
1a000dd4:	429a      	cmp	r2, r3
1a000dd6:	dbd5      	blt.n	1a000d84 <microrl_insert_text+0x54>
1a000dd8:	68fb      	ldr	r3, [r7, #12]
1a000dda:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a000dde:	687b      	ldr	r3, [r7, #4]
1a000de0:	441a      	add	r2, r3
1a000de2:	68fb      	ldr	r3, [r7, #12]
1a000de4:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000de8:	68fb      	ldr	r3, [r7, #12]
1a000dea:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000dee:	687b      	ldr	r3, [r7, #4]
1a000df0:	441a      	add	r2, r3
1a000df2:	68fb      	ldr	r3, [r7, #12]
1a000df4:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a000df8:	68fb      	ldr	r3, [r7, #12]
1a000dfa:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000dfe:	68fa      	ldr	r2, [r7, #12]
1a000e00:	4413      	add	r3, r2
1a000e02:	2200      	movs	r2, #0
1a000e04:	f883 2054 	strb.w	r2, [r3, #84]	; 0x54
1a000e08:	2301      	movs	r3, #1
1a000e0a:	e000      	b.n	1a000e0e <microrl_insert_text+0xde>
1a000e0c:	2300      	movs	r3, #0
1a000e0e:	4618      	mov	r0, r3
1a000e10:	3718      	adds	r7, #24
1a000e12:	46bd      	mov	sp, r7
1a000e14:	bd80      	pop	{r7, pc}

1a000e16 <microrl_backspace>:
1a000e16:	b580      	push	{r7, lr}
1a000e18:	b082      	sub	sp, #8
1a000e1a:	af00      	add	r7, sp, #0
1a000e1c:	6078      	str	r0, [r7, #4]
1a000e1e:	687b      	ldr	r3, [r7, #4]
1a000e20:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000e24:	2b00      	cmp	r3, #0
1a000e26:	dd31      	ble.n	1a000e8c <microrl_backspace+0x76>
1a000e28:	6878      	ldr	r0, [r7, #4]
1a000e2a:	f7ff fd31 	bl	1a000890 <terminal_backspace>
1a000e2e:	687b      	ldr	r3, [r7, #4]
1a000e30:	f103 0254 	add.w	r2, r3, #84	; 0x54
1a000e34:	687b      	ldr	r3, [r7, #4]
1a000e36:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000e3a:	3b01      	subs	r3, #1
1a000e3c:	18d0      	adds	r0, r2, r3
1a000e3e:	687b      	ldr	r3, [r7, #4]
1a000e40:	3354      	adds	r3, #84	; 0x54
1a000e42:	687a      	ldr	r2, [r7, #4]
1a000e44:	f8d2 20c0 	ldr.w	r2, [r2, #192]	; 0xc0
1a000e48:	1899      	adds	r1, r3, r2
1a000e4a:	687b      	ldr	r3, [r7, #4]
1a000e4c:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a000e50:	687b      	ldr	r3, [r7, #4]
1a000e52:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000e56:	1ad3      	subs	r3, r2, r3
1a000e58:	3301      	adds	r3, #1
1a000e5a:	461a      	mov	r2, r3
1a000e5c:	f002 fa84 	bl	1a003368 <memmove>
1a000e60:	687b      	ldr	r3, [r7, #4]
1a000e62:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a000e66:	1e5a      	subs	r2, r3, #1
1a000e68:	687b      	ldr	r3, [r7, #4]
1a000e6a:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000e6e:	687b      	ldr	r3, [r7, #4]
1a000e70:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000e74:	687a      	ldr	r2, [r7, #4]
1a000e76:	4413      	add	r3, r2
1a000e78:	2200      	movs	r2, #0
1a000e7a:	f883 2054 	strb.w	r2, [r3, #84]	; 0x54
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000e84:	1e5a      	subs	r2, r3, #1
1a000e86:	687b      	ldr	r3, [r7, #4]
1a000e88:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a000e8c:	bf00      	nop
1a000e8e:	3708      	adds	r7, #8
1a000e90:	46bd      	mov	sp, r7
1a000e92:	bd80      	pop	{r7, pc}

1a000e94 <new_line_handler>:
1a000e94:	b580      	push	{r7, lr}
1a000e96:	b08c      	sub	sp, #48	; 0x30
1a000e98:	af00      	add	r7, sp, #0
1a000e9a:	6078      	str	r0, [r7, #4]
1a000e9c:	6878      	ldr	r0, [r7, #4]
1a000e9e:	f7ff fd07 	bl	1a0008b0 <terminal_newline>
1a000ea2:	687b      	ldr	r3, [r7, #4]
1a000ea4:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000ea8:	2b00      	cmp	r3, #0
1a000eaa:	dd0a      	ble.n	1a000ec2 <new_line_handler+0x2e>
1a000eac:	687b      	ldr	r3, [r7, #4]
1a000eae:	1d18      	adds	r0, r3, #4
1a000eb0:	687b      	ldr	r3, [r7, #4]
1a000eb2:	f103 0154 	add.w	r1, r3, #84	; 0x54
1a000eb6:	687b      	ldr	r3, [r7, #4]
1a000eb8:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000ebc:	461a      	mov	r2, r3
1a000ebe:	f7ff fb17 	bl	1a0004f0 <hist_save_line>
1a000ec2:	687b      	ldr	r3, [r7, #4]
1a000ec4:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a000ec8:	f107 020c 	add.w	r2, r7, #12
1a000ecc:	4619      	mov	r1, r3
1a000ece:	6878      	ldr	r0, [r7, #4]
1a000ed0:	f7ff fc85 	bl	1a0007de <split>
1a000ed4:	62f8      	str	r0, [r7, #44]	; 0x2c
1a000ed6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000ed8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
1a000edc:	d109      	bne.n	1a000ef2 <new_line_handler+0x5e>
1a000ede:	687b      	ldr	r3, [r7, #4]
1a000ee0:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000ee4:	4817      	ldr	r0, [pc, #92]	; (1a000f44 <new_line_handler+0xb0>)
1a000ee6:	4798      	blx	r3
1a000ee8:	687b      	ldr	r3, [r7, #4]
1a000eea:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a000eee:	4816      	ldr	r0, [pc, #88]	; (1a000f48 <new_line_handler+0xb4>)
1a000ef0:	4798      	blx	r3
1a000ef2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000ef4:	2b00      	cmp	r3, #0
1a000ef6:	dd0c      	ble.n	1a000f12 <new_line_handler+0x7e>
1a000ef8:	687b      	ldr	r3, [r7, #4]
1a000efa:	f8d3 30c4 	ldr.w	r3, [r3, #196]	; 0xc4
1a000efe:	2b00      	cmp	r3, #0
1a000f00:	d007      	beq.n	1a000f12 <new_line_handler+0x7e>
1a000f02:	687b      	ldr	r3, [r7, #4]
1a000f04:	f8d3 30c4 	ldr.w	r3, [r3, #196]	; 0xc4
1a000f08:	f107 020c 	add.w	r2, r7, #12
1a000f0c:	4611      	mov	r1, r2
1a000f0e:	6af8      	ldr	r0, [r7, #44]	; 0x2c
1a000f10:	4798      	blx	r3
1a000f12:	6878      	ldr	r0, [r7, #4]
1a000f14:	f7ff fcad 	bl	1a000872 <print_prompt>
1a000f18:	687b      	ldr	r3, [r7, #4]
1a000f1a:	2200      	movs	r2, #0
1a000f1c:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a000f20:	687b      	ldr	r3, [r7, #4]
1a000f22:	2200      	movs	r2, #0
1a000f24:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a000f28:	687b      	ldr	r3, [r7, #4]
1a000f2a:	3354      	adds	r3, #84	; 0x54
1a000f2c:	2265      	movs	r2, #101	; 0x65
1a000f2e:	2100      	movs	r1, #0
1a000f30:	4618      	mov	r0, r3
1a000f32:	f7ff f9e5 	bl	1a000300 <memset>
1a000f36:	687b      	ldr	r3, [r7, #4]
1a000f38:	2200      	movs	r2, #0
1a000f3a:	64da      	str	r2, [r3, #76]	; 0x4c
1a000f3c:	bf00      	nop
1a000f3e:	3730      	adds	r7, #48	; 0x30
1a000f40:	46bd      	mov	sp, r7
1a000f42:	bd80      	pop	{r7, pc}
1a000f44:	1a0039f0 	.word	0x1a0039f0
1a000f48:	1a0039d8 	.word	0x1a0039d8

1a000f4c <microrl_insert_char>:
1a000f4c:	b580      	push	{r7, lr}
1a000f4e:	b082      	sub	sp, #8
1a000f50:	af00      	add	r7, sp, #0
1a000f52:	6078      	str	r0, [r7, #4]
1a000f54:	6039      	str	r1, [r7, #0]
1a000f56:	687b      	ldr	r3, [r7, #4]
1a000f58:	785b      	ldrb	r3, [r3, #1]
1a000f5a:	2b00      	cmp	r3, #0
1a000f5c:	d00d      	beq.n	1a000f7a <microrl_insert_char+0x2e>
1a000f5e:	683b      	ldr	r3, [r7, #0]
1a000f60:	b2db      	uxtb	r3, r3
1a000f62:	4619      	mov	r1, r3
1a000f64:	6878      	ldr	r0, [r7, #4]
1a000f66:	f7ff fe55 	bl	1a000c14 <escape_process>
1a000f6a:	4603      	mov	r3, r0
1a000f6c:	2b00      	cmp	r3, #0
1a000f6e:	f000 81cf 	beq.w	1a001310 <microrl_insert_char+0x3c4>
1a000f72:	687b      	ldr	r3, [r7, #4]
1a000f74:	2200      	movs	r2, #0
1a000f76:	705a      	strb	r2, [r3, #1]
1a000f78:	e1ca      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a000f7a:	683b      	ldr	r3, [r7, #0]
1a000f7c:	3b01      	subs	r3, #1
1a000f7e:	2b7e      	cmp	r3, #126	; 0x7e
1a000f80:	f200 819b 	bhi.w	1a0012ba <microrl_insert_char+0x36e>
1a000f84:	a201      	add	r2, pc, #4	; (adr r2, 1a000f8c <microrl_insert_char+0x40>)
1a000f86:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a000f8a:	bf00      	nop
1a000f8c:	1a0011f7 	.word	0x1a0011f7
1a000f90:	1a00122f 	.word	0x1a00122f
1a000f94:	1a0012a7 	.word	0x1a0012a7
1a000f98:	1a0012bb 	.word	0x1a0012bb
1a000f9c:	1a0011d3 	.word	0x1a0011d3
1a000fa0:	1a001207 	.word	0x1a001207
1a000fa4:	1a0012bb 	.word	0x1a0012bb
1a000fa8:	1a001267 	.word	0x1a001267
1a000fac:	1a0012bb 	.word	0x1a0012bb
1a000fb0:	1a0012fb 	.word	0x1a0012fb
1a000fb4:	1a0011bb 	.word	0x1a0011bb
1a000fb8:	1a0012bb 	.word	0x1a0012bb
1a000fbc:	1a001189 	.word	0x1a001189
1a000fc0:	1a00125d 	.word	0x1a00125d
1a000fc4:	1a0012bb 	.word	0x1a0012bb
1a000fc8:	1a001253 	.word	0x1a001253
1a000fcc:	1a0012bb 	.word	0x1a0012bb
1a000fd0:	1a001283 	.word	0x1a001283
1a000fd4:	1a0012bb 	.word	0x1a0012bb
1a000fd8:	1a0012bb 	.word	0x1a0012bb
1a000fdc:	1a00119f 	.word	0x1a00119f
1a000fe0:	1a0012bb 	.word	0x1a0012bb
1a000fe4:	1a0012bb 	.word	0x1a0012bb
1a000fe8:	1a0012bb 	.word	0x1a0012bb
1a000fec:	1a0012bb 	.word	0x1a0012bb
1a000ff0:	1a0012bb 	.word	0x1a0012bb
1a000ff4:	1a001191 	.word	0x1a001191
1a000ff8:	1a0012bb 	.word	0x1a0012bb
1a000ffc:	1a0012bb 	.word	0x1a0012bb
1a001000:	1a0012bb 	.word	0x1a0012bb
1a001004:	1a0012bb 	.word	0x1a0012bb
1a001008:	1a0012bb 	.word	0x1a0012bb
1a00100c:	1a0012bb 	.word	0x1a0012bb
1a001010:	1a0012bb 	.word	0x1a0012bb
1a001014:	1a0012bb 	.word	0x1a0012bb
1a001018:	1a0012bb 	.word	0x1a0012bb
1a00101c:	1a0012bb 	.word	0x1a0012bb
1a001020:	1a0012bb 	.word	0x1a0012bb
1a001024:	1a0012bb 	.word	0x1a0012bb
1a001028:	1a0012bb 	.word	0x1a0012bb
1a00102c:	1a0012bb 	.word	0x1a0012bb
1a001030:	1a0012bb 	.word	0x1a0012bb
1a001034:	1a0012bb 	.word	0x1a0012bb
1a001038:	1a0012bb 	.word	0x1a0012bb
1a00103c:	1a0012bb 	.word	0x1a0012bb
1a001040:	1a0012bb 	.word	0x1a0012bb
1a001044:	1a0012bb 	.word	0x1a0012bb
1a001048:	1a0012bb 	.word	0x1a0012bb
1a00104c:	1a0012bb 	.word	0x1a0012bb
1a001050:	1a0012bb 	.word	0x1a0012bb
1a001054:	1a0012bb 	.word	0x1a0012bb
1a001058:	1a0012bb 	.word	0x1a0012bb
1a00105c:	1a0012bb 	.word	0x1a0012bb
1a001060:	1a0012bb 	.word	0x1a0012bb
1a001064:	1a0012bb 	.word	0x1a0012bb
1a001068:	1a0012bb 	.word	0x1a0012bb
1a00106c:	1a0012bb 	.word	0x1a0012bb
1a001070:	1a0012bb 	.word	0x1a0012bb
1a001074:	1a0012bb 	.word	0x1a0012bb
1a001078:	1a0012bb 	.word	0x1a0012bb
1a00107c:	1a0012bb 	.word	0x1a0012bb
1a001080:	1a0012bb 	.word	0x1a0012bb
1a001084:	1a0012bb 	.word	0x1a0012bb
1a001088:	1a0012bb 	.word	0x1a0012bb
1a00108c:	1a0012bb 	.word	0x1a0012bb
1a001090:	1a0012bb 	.word	0x1a0012bb
1a001094:	1a0012bb 	.word	0x1a0012bb
1a001098:	1a0012bb 	.word	0x1a0012bb
1a00109c:	1a0012bb 	.word	0x1a0012bb
1a0010a0:	1a0012bb 	.word	0x1a0012bb
1a0010a4:	1a0012bb 	.word	0x1a0012bb
1a0010a8:	1a0012bb 	.word	0x1a0012bb
1a0010ac:	1a0012bb 	.word	0x1a0012bb
1a0010b0:	1a0012bb 	.word	0x1a0012bb
1a0010b4:	1a0012bb 	.word	0x1a0012bb
1a0010b8:	1a0012bb 	.word	0x1a0012bb
1a0010bc:	1a0012bb 	.word	0x1a0012bb
1a0010c0:	1a0012bb 	.word	0x1a0012bb
1a0010c4:	1a0012bb 	.word	0x1a0012bb
1a0010c8:	1a0012bb 	.word	0x1a0012bb
1a0010cc:	1a0012bb 	.word	0x1a0012bb
1a0010d0:	1a0012bb 	.word	0x1a0012bb
1a0010d4:	1a0012bb 	.word	0x1a0012bb
1a0010d8:	1a0012bb 	.word	0x1a0012bb
1a0010dc:	1a0012bb 	.word	0x1a0012bb
1a0010e0:	1a0012bb 	.word	0x1a0012bb
1a0010e4:	1a0012bb 	.word	0x1a0012bb
1a0010e8:	1a0012bb 	.word	0x1a0012bb
1a0010ec:	1a0012bb 	.word	0x1a0012bb
1a0010f0:	1a0012bb 	.word	0x1a0012bb
1a0010f4:	1a0012bb 	.word	0x1a0012bb
1a0010f8:	1a0012bb 	.word	0x1a0012bb
1a0010fc:	1a0012bb 	.word	0x1a0012bb
1a001100:	1a0012bb 	.word	0x1a0012bb
1a001104:	1a0012bb 	.word	0x1a0012bb
1a001108:	1a0012bb 	.word	0x1a0012bb
1a00110c:	1a0012bb 	.word	0x1a0012bb
1a001110:	1a0012bb 	.word	0x1a0012bb
1a001114:	1a0012bb 	.word	0x1a0012bb
1a001118:	1a0012bb 	.word	0x1a0012bb
1a00111c:	1a0012bb 	.word	0x1a0012bb
1a001120:	1a0012bb 	.word	0x1a0012bb
1a001124:	1a0012bb 	.word	0x1a0012bb
1a001128:	1a0012bb 	.word	0x1a0012bb
1a00112c:	1a0012bb 	.word	0x1a0012bb
1a001130:	1a0012bb 	.word	0x1a0012bb
1a001134:	1a0012bb 	.word	0x1a0012bb
1a001138:	1a0012bb 	.word	0x1a0012bb
1a00113c:	1a0012bb 	.word	0x1a0012bb
1a001140:	1a0012bb 	.word	0x1a0012bb
1a001144:	1a0012bb 	.word	0x1a0012bb
1a001148:	1a0012bb 	.word	0x1a0012bb
1a00114c:	1a0012bb 	.word	0x1a0012bb
1a001150:	1a0012bb 	.word	0x1a0012bb
1a001154:	1a0012bb 	.word	0x1a0012bb
1a001158:	1a0012bb 	.word	0x1a0012bb
1a00115c:	1a0012bb 	.word	0x1a0012bb
1a001160:	1a0012bb 	.word	0x1a0012bb
1a001164:	1a0012bb 	.word	0x1a0012bb
1a001168:	1a0012bb 	.word	0x1a0012bb
1a00116c:	1a0012bb 	.word	0x1a0012bb
1a001170:	1a0012bb 	.word	0x1a0012bb
1a001174:	1a0012bb 	.word	0x1a0012bb
1a001178:	1a0012bb 	.word	0x1a0012bb
1a00117c:	1a0012bb 	.word	0x1a0012bb
1a001180:	1a0012bb 	.word	0x1a0012bb
1a001184:	1a001267 	.word	0x1a001267
1a001188:	6878      	ldr	r0, [r7, #4]
1a00118a:	f7ff fe83 	bl	1a000e94 <new_line_handler>
1a00118e:	e0bf      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001190:	687b      	ldr	r3, [r7, #4]
1a001192:	2201      	movs	r2, #1
1a001194:	705a      	strb	r2, [r3, #1]
1a001196:	e0bb      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001198:	6878      	ldr	r0, [r7, #4]
1a00119a:	f7ff fe3c 	bl	1a000e16 <microrl_backspace>
1a00119e:	687b      	ldr	r3, [r7, #4]
1a0011a0:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a0011a4:	2b00      	cmp	r3, #0
1a0011a6:	dcf7      	bgt.n	1a001198 <microrl_insert_char+0x24c>
1a0011a8:	687b      	ldr	r3, [r7, #4]
1a0011aa:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a0011ae:	461a      	mov	r2, r3
1a0011b0:	2100      	movs	r1, #0
1a0011b2:	6878      	ldr	r0, [r7, #4]
1a0011b4:	f7ff fc64 	bl	1a000a80 <terminal_print_line>
1a0011b8:	e0aa      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a0011ba:	687b      	ldr	r3, [r7, #4]
1a0011bc:	f8d3 30cc 	ldr.w	r3, [r3, #204]	; 0xcc
1a0011c0:	4855      	ldr	r0, [pc, #340]	; (1a001318 <microrl_insert_char+0x3cc>)
1a0011c2:	4798      	blx	r3
1a0011c4:	687b      	ldr	r3, [r7, #4]
1a0011c6:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a0011ca:	687b      	ldr	r3, [r7, #4]
1a0011cc:	f8c3 20bc 	str.w	r2, [r3, #188]	; 0xbc
1a0011d0:	e09e      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a0011d2:	687b      	ldr	r3, [r7, #4]
1a0011d4:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a0011d8:	687b      	ldr	r3, [r7, #4]
1a0011da:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a0011de:	1ad3      	subs	r3, r2, r3
1a0011e0:	4619      	mov	r1, r3
1a0011e2:	6878      	ldr	r0, [r7, #4]
1a0011e4:	f7ff fbc6 	bl	1a000974 <terminal_move_cursor>
1a0011e8:	687b      	ldr	r3, [r7, #4]
1a0011ea:	f8d3 20bc 	ldr.w	r2, [r3, #188]	; 0xbc
1a0011ee:	687b      	ldr	r3, [r7, #4]
1a0011f0:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a0011f4:	e08c      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a0011f6:	6878      	ldr	r0, [r7, #4]
1a0011f8:	f7ff fc0a 	bl	1a000a10 <terminal_reset_cursor>
1a0011fc:	687b      	ldr	r3, [r7, #4]
1a0011fe:	2200      	movs	r2, #0
1a001200:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a001204:	e084      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001206:	687b      	ldr	r3, [r7, #4]
1a001208:	f8d3 20c0 	ldr.w	r2, [r3, #192]	; 0xc0
1a00120c:	687b      	ldr	r3, [r7, #4]
1a00120e:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a001212:	429a      	cmp	r2, r3
1a001214:	da73      	bge.n	1a0012fe <microrl_insert_char+0x3b2>
1a001216:	2101      	movs	r1, #1
1a001218:	6878      	ldr	r0, [r7, #4]
1a00121a:	f7ff fbab 	bl	1a000974 <terminal_move_cursor>
1a00121e:	687b      	ldr	r3, [r7, #4]
1a001220:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a001224:	1c5a      	adds	r2, r3, #1
1a001226:	687b      	ldr	r3, [r7, #4]
1a001228:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a00122c:	e067      	b.n	1a0012fe <microrl_insert_char+0x3b2>
1a00122e:	687b      	ldr	r3, [r7, #4]
1a001230:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a001234:	2b00      	cmp	r3, #0
1a001236:	d064      	beq.n	1a001302 <microrl_insert_char+0x3b6>
1a001238:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
1a00123c:	6878      	ldr	r0, [r7, #4]
1a00123e:	f7ff fb99 	bl	1a000974 <terminal_move_cursor>
1a001242:	687b      	ldr	r3, [r7, #4]
1a001244:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a001248:	1e5a      	subs	r2, r3, #1
1a00124a:	687b      	ldr	r3, [r7, #4]
1a00124c:	f8c3 20c0 	str.w	r2, [r3, #192]	; 0xc0
1a001250:	e057      	b.n	1a001302 <microrl_insert_char+0x3b6>
1a001252:	2100      	movs	r1, #0
1a001254:	6878      	ldr	r0, [r7, #4]
1a001256:	f7ff fcad 	bl	1a000bb4 <hist_search>
1a00125a:	e059      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a00125c:	2101      	movs	r1, #1
1a00125e:	6878      	ldr	r0, [r7, #4]
1a001260:	f7ff fca8 	bl	1a000bb4 <hist_search>
1a001264:	e054      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001266:	6878      	ldr	r0, [r7, #4]
1a001268:	f7ff fdd5 	bl	1a000e16 <microrl_backspace>
1a00126c:	687b      	ldr	r3, [r7, #4]
1a00126e:	f8d3 10c0 	ldr.w	r1, [r3, #192]	; 0xc0
1a001272:	687b      	ldr	r3, [r7, #4]
1a001274:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a001278:	461a      	mov	r2, r3
1a00127a:	6878      	ldr	r0, [r7, #4]
1a00127c:	f7ff fc00 	bl	1a000a80 <terminal_print_line>
1a001280:	e046      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001282:	6878      	ldr	r0, [r7, #4]
1a001284:	f7ff fb14 	bl	1a0008b0 <terminal_newline>
1a001288:	6878      	ldr	r0, [r7, #4]
1a00128a:	f7ff faf2 	bl	1a000872 <print_prompt>
1a00128e:	6878      	ldr	r0, [r7, #4]
1a001290:	f7ff fbbe 	bl	1a000a10 <terminal_reset_cursor>
1a001294:	687b      	ldr	r3, [r7, #4]
1a001296:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a00129a:	461a      	mov	r2, r3
1a00129c:	2100      	movs	r1, #0
1a00129e:	6878      	ldr	r0, [r7, #4]
1a0012a0:	f7ff fbee 	bl	1a000a80 <terminal_print_line>
1a0012a4:	e034      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a0012a6:	687b      	ldr	r3, [r7, #4]
1a0012a8:	f8d3 30d0 	ldr.w	r3, [r3, #208]	; 0xd0
1a0012ac:	2b00      	cmp	r3, #0
1a0012ae:	d02a      	beq.n	1a001306 <microrl_insert_char+0x3ba>
1a0012b0:	687b      	ldr	r3, [r7, #4]
1a0012b2:	f8d3 30d0 	ldr.w	r3, [r3, #208]	; 0xd0
1a0012b6:	4798      	blx	r3
1a0012b8:	e025      	b.n	1a001306 <microrl_insert_char+0x3ba>
1a0012ba:	683b      	ldr	r3, [r7, #0]
1a0012bc:	2b20      	cmp	r3, #32
1a0012be:	d104      	bne.n	1a0012ca <microrl_insert_char+0x37e>
1a0012c0:	687b      	ldr	r3, [r7, #4]
1a0012c2:	f8d3 30bc 	ldr.w	r3, [r3, #188]	; 0xbc
1a0012c6:	2b00      	cmp	r3, #0
1a0012c8:	d01f      	beq.n	1a00130a <microrl_insert_char+0x3be>
1a0012ca:	683b      	ldr	r3, [r7, #0]
1a0012cc:	2b1f      	cmp	r3, #31
1a0012ce:	dd1c      	ble.n	1a00130a <microrl_insert_char+0x3be>
1a0012d0:	463b      	mov	r3, r7
1a0012d2:	2201      	movs	r2, #1
1a0012d4:	4619      	mov	r1, r3
1a0012d6:	6878      	ldr	r0, [r7, #4]
1a0012d8:	f7ff fd2a 	bl	1a000d30 <microrl_insert_text>
1a0012dc:	4603      	mov	r3, r0
1a0012de:	2b00      	cmp	r3, #0
1a0012e0:	d015      	beq.n	1a00130e <microrl_insert_char+0x3c2>
1a0012e2:	687b      	ldr	r3, [r7, #4]
1a0012e4:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a0012e8:	1e59      	subs	r1, r3, #1
1a0012ea:	687b      	ldr	r3, [r7, #4]
1a0012ec:	f8d3 30c0 	ldr.w	r3, [r3, #192]	; 0xc0
1a0012f0:	461a      	mov	r2, r3
1a0012f2:	6878      	ldr	r0, [r7, #4]
1a0012f4:	f7ff fbc4 	bl	1a000a80 <terminal_print_line>
1a0012f8:	e009      	b.n	1a00130e <microrl_insert_char+0x3c2>
1a0012fa:	bf00      	nop
1a0012fc:	e008      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a0012fe:	bf00      	nop
1a001300:	e006      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001302:	bf00      	nop
1a001304:	e004      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a001306:	bf00      	nop
1a001308:	e002      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a00130a:	bf00      	nop
1a00130c:	e000      	b.n	1a001310 <microrl_insert_char+0x3c4>
1a00130e:	bf00      	nop
1a001310:	bf00      	nop
1a001312:	3708      	adds	r7, #8
1a001314:	46bd      	mov	sp, r7
1a001316:	bd80      	pop	{r7, pc}
1a001318:	1a0039ec 	.word	0x1a0039ec

1a00131c <Chip_PININT_ClearIntStatus>:
1a00131c:	b480      	push	{r7}
1a00131e:	b083      	sub	sp, #12
1a001320:	af00      	add	r7, sp, #0
1a001322:	6078      	str	r0, [r7, #4]
1a001324:	6039      	str	r1, [r7, #0]
1a001326:	687b      	ldr	r3, [r7, #4]
1a001328:	683a      	ldr	r2, [r7, #0]
1a00132a:	625a      	str	r2, [r3, #36]	; 0x24
1a00132c:	bf00      	nop
1a00132e:	370c      	adds	r7, #12
1a001330:	46bd      	mov	sp, r7
1a001332:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001336:	4770      	bx	lr

1a001338 <Chip_UART_ReadByte>:
1a001338:	b480      	push	{r7}
1a00133a:	b083      	sub	sp, #12
1a00133c:	af00      	add	r7, sp, #0
1a00133e:	6078      	str	r0, [r7, #4]
1a001340:	687b      	ldr	r3, [r7, #4]
1a001342:	681b      	ldr	r3, [r3, #0]
1a001344:	b2db      	uxtb	r3, r3
1a001346:	4618      	mov	r0, r3
1a001348:	370c      	adds	r7, #12
1a00134a:	46bd      	mov	sp, r7
1a00134c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001350:	4770      	bx	lr

1a001352 <StopWatch_Elapsed>:
1a001352:	b580      	push	{r7, lr}
1a001354:	b082      	sub	sp, #8
1a001356:	af00      	add	r7, sp, #0
1a001358:	6078      	str	r0, [r7, #4]
1a00135a:	f001 f9fb 	bl	1a002754 <StopWatch_Start>
1a00135e:	4602      	mov	r2, r0
1a001360:	687b      	ldr	r3, [r7, #4]
1a001362:	1ad3      	subs	r3, r2, r3
1a001364:	4618      	mov	r0, r3
1a001366:	3708      	adds	r7, #8
1a001368:	46bd      	mov	sp, r7
1a00136a:	bd80      	pop	{r7, pc}

1a00136c <StopWatch_DelayMs>:
1a00136c:	b580      	push	{r7, lr}
1a00136e:	b084      	sub	sp, #16
1a001370:	af00      	add	r7, sp, #0
1a001372:	6078      	str	r0, [r7, #4]
1a001374:	6878      	ldr	r0, [r7, #4]
1a001376:	f001 f9f7 	bl	1a002768 <StopWatch_MsToTicks>
1a00137a:	60f8      	str	r0, [r7, #12]
1a00137c:	f001 f9ea 	bl	1a002754 <StopWatch_Start>
1a001380:	60b8      	str	r0, [r7, #8]
1a001382:	bf00      	nop
1a001384:	68b8      	ldr	r0, [r7, #8]
1a001386:	f7ff ffe4 	bl	1a001352 <StopWatch_Elapsed>
1a00138a:	4602      	mov	r2, r0
1a00138c:	68fb      	ldr	r3, [r7, #12]
1a00138e:	4293      	cmp	r3, r2
1a001390:	d8f8      	bhi.n	1a001384 <StopWatch_DelayMs+0x18>
1a001392:	bf00      	nop
1a001394:	3710      	adds	r7, #16
1a001396:	46bd      	mov	sp, r7
1a001398:	bd80      	pop	{r7, pc}
1a00139a:	Address 0x000000001a00139a is out of bounds.


1a00139c <GPIO1_IRQHandler>:
1a00139c:	b580      	push	{r7, lr}
1a00139e:	af00      	add	r7, sp, #0
1a0013a0:	2102      	movs	r1, #2
1a0013a2:	4804      	ldr	r0, [pc, #16]	; (1a0013b4 <GPIO1_IRQHandler+0x18>)
1a0013a4:	f7ff ffba 	bl	1a00131c <Chip_PININT_ClearIntStatus>
1a0013a8:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0013ac:	f7ff ffde 	bl	1a00136c <StopWatch_DelayMs>
1a0013b0:	bf00      	nop
1a0013b2:	bd80      	pop	{r7, pc}
1a0013b4:	40087000 	.word	0x40087000

1a0013b8 <GPIO2_IRQHandler>:
1a0013b8:	b580      	push	{r7, lr}
1a0013ba:	af00      	add	r7, sp, #0
1a0013bc:	2104      	movs	r1, #4
1a0013be:	4804      	ldr	r0, [pc, #16]	; (1a0013d0 <GPIO2_IRQHandler+0x18>)
1a0013c0:	f7ff ffac 	bl	1a00131c <Chip_PININT_ClearIntStatus>
1a0013c4:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0013c8:	f7ff ffd0 	bl	1a00136c <StopWatch_DelayMs>
1a0013cc:	bf00      	nop
1a0013ce:	bd80      	pop	{r7, pc}
1a0013d0:	40087000 	.word	0x40087000

1a0013d4 <GPIO4_IRQHandler>:
1a0013d4:	b580      	push	{r7, lr}
1a0013d6:	af00      	add	r7, sp, #0
1a0013d8:	2110      	movs	r1, #16
1a0013da:	4804      	ldr	r0, [pc, #16]	; (1a0013ec <GPIO4_IRQHandler+0x18>)
1a0013dc:	f7ff ff9e 	bl	1a00131c <Chip_PININT_ClearIntStatus>
1a0013e0:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0013e4:	f7ff ffc2 	bl	1a00136c <StopWatch_DelayMs>
1a0013e8:	bf00      	nop
1a0013ea:	bd80      	pop	{r7, pc}
1a0013ec:	40087000 	.word	0x40087000

1a0013f0 <SysTick_Handler>:
1a0013f0:	b580      	push	{r7, lr}
1a0013f2:	af00      	add	r7, sp, #0
1a0013f4:	4b05      	ldr	r3, [pc, #20]	; (1a00140c <SysTick_Handler+0x1c>)
1a0013f6:	7818      	ldrb	r0, [r3, #0]
1a0013f8:	4b05      	ldr	r3, [pc, #20]	; (1a001410 <SysTick_Handler+0x20>)
1a0013fa:	7819      	ldrb	r1, [r3, #0]
1a0013fc:	4b05      	ldr	r3, [pc, #20]	; (1a001414 <SysTick_Handler+0x24>)
1a0013fe:	881b      	ldrh	r3, [r3, #0]
1a001400:	461a      	mov	r2, r3
1a001402:	f000 fc2b 	bl	1a001c5c <secuencia>
1a001406:	bf00      	nop
1a001408:	bd80      	pop	{r7, pc}
1a00140a:	bf00      	nop
1a00140c:	10000b50 	.word	0x10000b50
1a001410:	10000b51 	.word	0x10000b51
1a001414:	10000b52 	.word	0x10000b52

1a001418 <UART2_IRQHandler>:
1a001418:	b580      	push	{r7, lr}
1a00141a:	b082      	sub	sp, #8
1a00141c:	af00      	add	r7, sp, #0
1a00141e:	4807      	ldr	r0, [pc, #28]	; (1a00143c <UART2_IRQHandler+0x24>)
1a001420:	f7ff ff8a 	bl	1a001338 <Chip_UART_ReadByte>
1a001424:	4603      	mov	r3, r0
1a001426:	71fb      	strb	r3, [r7, #7]
1a001428:	79fb      	ldrb	r3, [r7, #7]
1a00142a:	4619      	mov	r1, r3
1a00142c:	4804      	ldr	r0, [pc, #16]	; (1a001440 <UART2_IRQHandler+0x28>)
1a00142e:	f7ff fd8d 	bl	1a000f4c <microrl_insert_char>
1a001432:	bf00      	nop
1a001434:	3708      	adds	r7, #8
1a001436:	46bd      	mov	sp, r7
1a001438:	bd80      	pop	{r7, pc}
1a00143a:	bf00      	nop
1a00143c:	400c1000 	.word	0x400c1000
1a001440:	100005ec 	.word	0x100005ec

1a001444 <main>:
1a001444:	b580      	push	{r7, lr}
1a001446:	af00      	add	r7, sp, #0
1a001448:	f000 f9f5 	bl	1a001836 <inicializar_sistema>
1a00144c:	f000 fa00 	bl	1a001850 <inicializar_leds>
1a001450:	f000 fa62 	bl	1a001918 <inicializar_teclado>
1a001454:	4b0a      	ldr	r3, [pc, #40]	; (1a001480 <main+0x3c>)
1a001456:	2201      	movs	r2, #1
1a001458:	701a      	strb	r2, [r3, #0]
1a00145a:	f000 fae9 	bl	1a001a30 <init_interrupciones>
1a00145e:	f000 faa5 	bl	1a0019ac <inicializar_USART>
1a001462:	4908      	ldr	r1, [pc, #32]	; (1a001484 <main+0x40>)
1a001464:	4808      	ldr	r0, [pc, #32]	; (1a001488 <main+0x44>)
1a001466:	f7ff fb45 	bl	1a000af4 <microrl_init>
1a00146a:	4908      	ldr	r1, [pc, #32]	; (1a00148c <main+0x48>)
1a00146c:	4806      	ldr	r0, [pc, #24]	; (1a001488 <main+0x44>)
1a00146e:	f7ff fb83 	bl	1a000b78 <microrl_set_execute_callback>
1a001472:	4907      	ldr	r1, [pc, #28]	; (1a001490 <main+0x4c>)
1a001474:	4804      	ldr	r0, [pc, #16]	; (1a001488 <main+0x44>)
1a001476:	f7ff fb8e 	bl	1a000b96 <microrl_set_sigint_callback>
1a00147a:	bf30      	wfi
1a00147c:	e7fd      	b.n	1a00147a <main+0x36>
1a00147e:	bf00      	nop
1a001480:	10000b54 	.word	0x10000b54
1a001484:	1a001ac9 	.word	0x1a001ac9
1a001488:	100005ec 	.word	0x100005ec
1a00148c:	1a001b2d 	.word	0x1a001b2d
1a001490:	1a001be5 	.word	0x1a001be5

1a001494 <NVIC_EnableIRQ>:
1a001494:	b480      	push	{r7}
1a001496:	b083      	sub	sp, #12
1a001498:	af00      	add	r7, sp, #0
1a00149a:	4603      	mov	r3, r0
1a00149c:	71fb      	strb	r3, [r7, #7]
1a00149e:	79fb      	ldrb	r3, [r7, #7]
1a0014a0:	f003 031f 	and.w	r3, r3, #31
1a0014a4:	2201      	movs	r2, #1
1a0014a6:	fa02 f103 	lsl.w	r1, r2, r3
1a0014aa:	4a06      	ldr	r2, [pc, #24]	; (1a0014c4 <NVIC_EnableIRQ+0x30>)
1a0014ac:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0014b0:	095b      	lsrs	r3, r3, #5
1a0014b2:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0014b6:	bf00      	nop
1a0014b8:	370c      	adds	r7, #12
1a0014ba:	46bd      	mov	sp, r7
1a0014bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014c0:	4770      	bx	lr
1a0014c2:	bf00      	nop
1a0014c4:	e000e100 	.word	0xe000e100

1a0014c8 <NVIC_ClearPendingIRQ>:
1a0014c8:	b480      	push	{r7}
1a0014ca:	b083      	sub	sp, #12
1a0014cc:	af00      	add	r7, sp, #0
1a0014ce:	4603      	mov	r3, r0
1a0014d0:	71fb      	strb	r3, [r7, #7]
1a0014d2:	79fb      	ldrb	r3, [r7, #7]
1a0014d4:	f003 031f 	and.w	r3, r3, #31
1a0014d8:	2201      	movs	r2, #1
1a0014da:	fa02 f103 	lsl.w	r1, r2, r3
1a0014de:	4a06      	ldr	r2, [pc, #24]	; (1a0014f8 <NVIC_ClearPendingIRQ+0x30>)
1a0014e0:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0014e4:	095b      	lsrs	r3, r3, #5
1a0014e6:	3360      	adds	r3, #96	; 0x60
1a0014e8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0014ec:	bf00      	nop
1a0014ee:	370c      	adds	r7, #12
1a0014f0:	46bd      	mov	sp, r7
1a0014f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014f6:	4770      	bx	lr
1a0014f8:	e000e100 	.word	0xe000e100

1a0014fc <NVIC_SetPriority>:
1a0014fc:	b480      	push	{r7}
1a0014fe:	b083      	sub	sp, #12
1a001500:	af00      	add	r7, sp, #0
1a001502:	4603      	mov	r3, r0
1a001504:	6039      	str	r1, [r7, #0]
1a001506:	71fb      	strb	r3, [r7, #7]
1a001508:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00150c:	2b00      	cmp	r3, #0
1a00150e:	da0b      	bge.n	1a001528 <NVIC_SetPriority+0x2c>
1a001510:	683b      	ldr	r3, [r7, #0]
1a001512:	b2da      	uxtb	r2, r3
1a001514:	490c      	ldr	r1, [pc, #48]	; (1a001548 <NVIC_SetPriority+0x4c>)
1a001516:	79fb      	ldrb	r3, [r7, #7]
1a001518:	f003 030f 	and.w	r3, r3, #15
1a00151c:	3b04      	subs	r3, #4
1a00151e:	0152      	lsls	r2, r2, #5
1a001520:	b2d2      	uxtb	r2, r2
1a001522:	440b      	add	r3, r1
1a001524:	761a      	strb	r2, [r3, #24]
1a001526:	e009      	b.n	1a00153c <NVIC_SetPriority+0x40>
1a001528:	683b      	ldr	r3, [r7, #0]
1a00152a:	b2da      	uxtb	r2, r3
1a00152c:	4907      	ldr	r1, [pc, #28]	; (1a00154c <NVIC_SetPriority+0x50>)
1a00152e:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a001532:	0152      	lsls	r2, r2, #5
1a001534:	b2d2      	uxtb	r2, r2
1a001536:	440b      	add	r3, r1
1a001538:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a00153c:	bf00      	nop
1a00153e:	370c      	adds	r7, #12
1a001540:	46bd      	mov	sp, r7
1a001542:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001546:	4770      	bx	lr
1a001548:	e000ed00 	.word	0xe000ed00
1a00154c:	e000e100 	.word	0xe000e100

1a001550 <SysTick_Config>:
1a001550:	b580      	push	{r7, lr}
1a001552:	b082      	sub	sp, #8
1a001554:	af00      	add	r7, sp, #0
1a001556:	6078      	str	r0, [r7, #4]
1a001558:	687b      	ldr	r3, [r7, #4]
1a00155a:	3b01      	subs	r3, #1
1a00155c:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a001560:	d301      	bcc.n	1a001566 <SysTick_Config+0x16>
1a001562:	2301      	movs	r3, #1
1a001564:	e00f      	b.n	1a001586 <SysTick_Config+0x36>
1a001566:	4a0a      	ldr	r2, [pc, #40]	; (1a001590 <SysTick_Config+0x40>)
1a001568:	687b      	ldr	r3, [r7, #4]
1a00156a:	3b01      	subs	r3, #1
1a00156c:	6053      	str	r3, [r2, #4]
1a00156e:	2107      	movs	r1, #7
1a001570:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a001574:	f7ff ffc2 	bl	1a0014fc <NVIC_SetPriority>
1a001578:	4b05      	ldr	r3, [pc, #20]	; (1a001590 <SysTick_Config+0x40>)
1a00157a:	2200      	movs	r2, #0
1a00157c:	609a      	str	r2, [r3, #8]
1a00157e:	4b04      	ldr	r3, [pc, #16]	; (1a001590 <SysTick_Config+0x40>)
1a001580:	2207      	movs	r2, #7
1a001582:	601a      	str	r2, [r3, #0]
1a001584:	2300      	movs	r3, #0
1a001586:	4618      	mov	r0, r3
1a001588:	3708      	adds	r7, #8
1a00158a:	46bd      	mov	sp, r7
1a00158c:	bd80      	pop	{r7, pc}
1a00158e:	bf00      	nop
1a001590:	e000e010 	.word	0xe000e010

1a001594 <Chip_SCU_PinMuxSet>:
1a001594:	b480      	push	{r7}
1a001596:	b083      	sub	sp, #12
1a001598:	af00      	add	r7, sp, #0
1a00159a:	4603      	mov	r3, r0
1a00159c:	71fb      	strb	r3, [r7, #7]
1a00159e:	460b      	mov	r3, r1
1a0015a0:	71bb      	strb	r3, [r7, #6]
1a0015a2:	4613      	mov	r3, r2
1a0015a4:	80bb      	strh	r3, [r7, #4]
1a0015a6:	4807      	ldr	r0, [pc, #28]	; (1a0015c4 <Chip_SCU_PinMuxSet+0x30>)
1a0015a8:	79f9      	ldrb	r1, [r7, #7]
1a0015aa:	79bb      	ldrb	r3, [r7, #6]
1a0015ac:	88ba      	ldrh	r2, [r7, #4]
1a0015ae:	0149      	lsls	r1, r1, #5
1a0015b0:	440b      	add	r3, r1
1a0015b2:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a0015b6:	bf00      	nop
1a0015b8:	370c      	adds	r7, #12
1a0015ba:	46bd      	mov	sp, r7
1a0015bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015c0:	4770      	bx	lr
1a0015c2:	bf00      	nop
1a0015c4:	40086000 	.word	0x40086000

1a0015c8 <Chip_SCU_PinMux>:
1a0015c8:	b590      	push	{r4, r7, lr}
1a0015ca:	b083      	sub	sp, #12
1a0015cc:	af00      	add	r7, sp, #0
1a0015ce:	4604      	mov	r4, r0
1a0015d0:	4608      	mov	r0, r1
1a0015d2:	4611      	mov	r1, r2
1a0015d4:	461a      	mov	r2, r3
1a0015d6:	4623      	mov	r3, r4
1a0015d8:	71fb      	strb	r3, [r7, #7]
1a0015da:	4603      	mov	r3, r0
1a0015dc:	71bb      	strb	r3, [r7, #6]
1a0015de:	460b      	mov	r3, r1
1a0015e0:	80bb      	strh	r3, [r7, #4]
1a0015e2:	4613      	mov	r3, r2
1a0015e4:	70fb      	strb	r3, [r7, #3]
1a0015e6:	78fb      	ldrb	r3, [r7, #3]
1a0015e8:	b29a      	uxth	r2, r3
1a0015ea:	88bb      	ldrh	r3, [r7, #4]
1a0015ec:	4313      	orrs	r3, r2
1a0015ee:	b29a      	uxth	r2, r3
1a0015f0:	79b9      	ldrb	r1, [r7, #6]
1a0015f2:	79fb      	ldrb	r3, [r7, #7]
1a0015f4:	4618      	mov	r0, r3
1a0015f6:	f7ff ffcd 	bl	1a001594 <Chip_SCU_PinMuxSet>
1a0015fa:	bf00      	nop
1a0015fc:	370c      	adds	r7, #12
1a0015fe:	46bd      	mov	sp, r7
1a001600:	bd90      	pop	{r4, r7, pc}
1a001602:	Address 0x000000001a001602 is out of bounds.


1a001604 <Chip_SCU_GPIOIntPinSel>:
1a001604:	b480      	push	{r7}
1a001606:	b085      	sub	sp, #20
1a001608:	af00      	add	r7, sp, #0
1a00160a:	4603      	mov	r3, r0
1a00160c:	71fb      	strb	r3, [r7, #7]
1a00160e:	460b      	mov	r3, r1
1a001610:	71bb      	strb	r3, [r7, #6]
1a001612:	4613      	mov	r3, r2
1a001614:	717b      	strb	r3, [r7, #5]
1a001616:	79fb      	ldrb	r3, [r7, #7]
1a001618:	00db      	lsls	r3, r3, #3
1a00161a:	f003 0318 	and.w	r3, r3, #24
1a00161e:	60fb      	str	r3, [r7, #12]
1a001620:	79bb      	ldrb	r3, [r7, #6]
1a001622:	015b      	lsls	r3, r3, #5
1a001624:	b2da      	uxtb	r2, r3
1a001626:	797b      	ldrb	r3, [r7, #5]
1a001628:	f003 031f 	and.w	r3, r3, #31
1a00162c:	431a      	orrs	r2, r3
1a00162e:	68fb      	ldr	r3, [r7, #12]
1a001630:	fa02 f303 	lsl.w	r3, r2, r3
1a001634:	60bb      	str	r3, [r7, #8]
1a001636:	4a0f      	ldr	r2, [pc, #60]	; (1a001674 <Chip_SCU_GPIOIntPinSel+0x70>)
1a001638:	79fb      	ldrb	r3, [r7, #7]
1a00163a:	089b      	lsrs	r3, r3, #2
1a00163c:	b2db      	uxtb	r3, r3
1a00163e:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a001642:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001646:	21ff      	movs	r1, #255	; 0xff
1a001648:	68fa      	ldr	r2, [r7, #12]
1a00164a:	fa01 f202 	lsl.w	r2, r1, r2
1a00164e:	43d2      	mvns	r2, r2
1a001650:	401a      	ands	r2, r3
1a001652:	4908      	ldr	r1, [pc, #32]	; (1a001674 <Chip_SCU_GPIOIntPinSel+0x70>)
1a001654:	79fb      	ldrb	r3, [r7, #7]
1a001656:	089b      	lsrs	r3, r3, #2
1a001658:	b2db      	uxtb	r3, r3
1a00165a:	4618      	mov	r0, r3
1a00165c:	68bb      	ldr	r3, [r7, #8]
1a00165e:	431a      	orrs	r2, r3
1a001660:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a001664:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a001668:	bf00      	nop
1a00166a:	3714      	adds	r7, #20
1a00166c:	46bd      	mov	sp, r7
1a00166e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001672:	4770      	bx	lr
1a001674:	40086000 	.word	0x40086000

1a001678 <Chip_RGU_TriggerReset>:
1a001678:	b480      	push	{r7}
1a00167a:	b083      	sub	sp, #12
1a00167c:	af00      	add	r7, sp, #0
1a00167e:	4603      	mov	r3, r0
1a001680:	71fb      	strb	r3, [r7, #7]
1a001682:	79fb      	ldrb	r3, [r7, #7]
1a001684:	f003 031f 	and.w	r3, r3, #31
1a001688:	2201      	movs	r2, #1
1a00168a:	fa02 f103 	lsl.w	r1, r2, r3
1a00168e:	4a06      	ldr	r2, [pc, #24]	; (1a0016a8 <Chip_RGU_TriggerReset+0x30>)
1a001690:	79fb      	ldrb	r3, [r7, #7]
1a001692:	095b      	lsrs	r3, r3, #5
1a001694:	b2db      	uxtb	r3, r3
1a001696:	3340      	adds	r3, #64	; 0x40
1a001698:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00169c:	bf00      	nop
1a00169e:	370c      	adds	r7, #12
1a0016a0:	46bd      	mov	sp, r7
1a0016a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016a6:	4770      	bx	lr
1a0016a8:	40053000 	.word	0x40053000

1a0016ac <Chip_GPIO_SetPinDIROutput>:
1a0016ac:	b480      	push	{r7}
1a0016ae:	b083      	sub	sp, #12
1a0016b0:	af00      	add	r7, sp, #0
1a0016b2:	6078      	str	r0, [r7, #4]
1a0016b4:	460b      	mov	r3, r1
1a0016b6:	70fb      	strb	r3, [r7, #3]
1a0016b8:	4613      	mov	r3, r2
1a0016ba:	70bb      	strb	r3, [r7, #2]
1a0016bc:	78fa      	ldrb	r2, [r7, #3]
1a0016be:	687b      	ldr	r3, [r7, #4]
1a0016c0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0016c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0016c8:	78bb      	ldrb	r3, [r7, #2]
1a0016ca:	2201      	movs	r2, #1
1a0016cc:	fa02 f303 	lsl.w	r3, r2, r3
1a0016d0:	78fa      	ldrb	r2, [r7, #3]
1a0016d2:	4319      	orrs	r1, r3
1a0016d4:	687b      	ldr	r3, [r7, #4]
1a0016d6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0016da:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0016de:	bf00      	nop
1a0016e0:	370c      	adds	r7, #12
1a0016e2:	46bd      	mov	sp, r7
1a0016e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016e8:	4770      	bx	lr

1a0016ea <Chip_GPIO_SetPinDIRInput>:
1a0016ea:	b480      	push	{r7}
1a0016ec:	b083      	sub	sp, #12
1a0016ee:	af00      	add	r7, sp, #0
1a0016f0:	6078      	str	r0, [r7, #4]
1a0016f2:	460b      	mov	r3, r1
1a0016f4:	70fb      	strb	r3, [r7, #3]
1a0016f6:	4613      	mov	r3, r2
1a0016f8:	70bb      	strb	r3, [r7, #2]
1a0016fa:	78fa      	ldrb	r2, [r7, #3]
1a0016fc:	687b      	ldr	r3, [r7, #4]
1a0016fe:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001702:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a001706:	78bb      	ldrb	r3, [r7, #2]
1a001708:	2201      	movs	r2, #1
1a00170a:	fa02 f303 	lsl.w	r3, r2, r3
1a00170e:	43db      	mvns	r3, r3
1a001710:	78fa      	ldrb	r2, [r7, #3]
1a001712:	4019      	ands	r1, r3
1a001714:	687b      	ldr	r3, [r7, #4]
1a001716:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00171a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00171e:	bf00      	nop
1a001720:	370c      	adds	r7, #12
1a001722:	46bd      	mov	sp, r7
1a001724:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001728:	4770      	bx	lr

1a00172a <Chip_GPIO_SetPortOutLow>:
1a00172a:	b480      	push	{r7}
1a00172c:	b085      	sub	sp, #20
1a00172e:	af00      	add	r7, sp, #0
1a001730:	60f8      	str	r0, [r7, #12]
1a001732:	460b      	mov	r3, r1
1a001734:	607a      	str	r2, [r7, #4]
1a001736:	72fb      	strb	r3, [r7, #11]
1a001738:	7afa      	ldrb	r2, [r7, #11]
1a00173a:	68fb      	ldr	r3, [r7, #12]
1a00173c:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a001740:	6879      	ldr	r1, [r7, #4]
1a001742:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001746:	bf00      	nop
1a001748:	3714      	adds	r7, #20
1a00174a:	46bd      	mov	sp, r7
1a00174c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001750:	4770      	bx	lr

1a001752 <Chip_PININT_Init>:
1a001752:	b480      	push	{r7}
1a001754:	b083      	sub	sp, #12
1a001756:	af00      	add	r7, sp, #0
1a001758:	6078      	str	r0, [r7, #4]
1a00175a:	bf00      	nop
1a00175c:	370c      	adds	r7, #12
1a00175e:	46bd      	mov	sp, r7
1a001760:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001764:	4770      	bx	lr

1a001766 <Chip_PININT_SetPinModeEdge>:
1a001766:	b480      	push	{r7}
1a001768:	b083      	sub	sp, #12
1a00176a:	af00      	add	r7, sp, #0
1a00176c:	6078      	str	r0, [r7, #4]
1a00176e:	6039      	str	r1, [r7, #0]
1a001770:	687b      	ldr	r3, [r7, #4]
1a001772:	681a      	ldr	r2, [r3, #0]
1a001774:	683b      	ldr	r3, [r7, #0]
1a001776:	43db      	mvns	r3, r3
1a001778:	401a      	ands	r2, r3
1a00177a:	687b      	ldr	r3, [r7, #4]
1a00177c:	601a      	str	r2, [r3, #0]
1a00177e:	bf00      	nop
1a001780:	370c      	adds	r7, #12
1a001782:	46bd      	mov	sp, r7
1a001784:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001788:	4770      	bx	lr

1a00178a <Chip_PININT_EnableIntLow>:
1a00178a:	b480      	push	{r7}
1a00178c:	b083      	sub	sp, #12
1a00178e:	af00      	add	r7, sp, #0
1a001790:	6078      	str	r0, [r7, #4]
1a001792:	6039      	str	r1, [r7, #0]
1a001794:	687b      	ldr	r3, [r7, #4]
1a001796:	683a      	ldr	r2, [r7, #0]
1a001798:	615a      	str	r2, [r3, #20]
1a00179a:	bf00      	nop
1a00179c:	370c      	adds	r7, #12
1a00179e:	46bd      	mov	sp, r7
1a0017a0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017a4:	4770      	bx	lr

1a0017a6 <Chip_PININT_ClearIntStatus>:
1a0017a6:	b480      	push	{r7}
1a0017a8:	b083      	sub	sp, #12
1a0017aa:	af00      	add	r7, sp, #0
1a0017ac:	6078      	str	r0, [r7, #4]
1a0017ae:	6039      	str	r1, [r7, #0]
1a0017b0:	687b      	ldr	r3, [r7, #4]
1a0017b2:	683a      	ldr	r2, [r7, #0]
1a0017b4:	625a      	str	r2, [r3, #36]	; 0x24
1a0017b6:	bf00      	nop
1a0017b8:	370c      	adds	r7, #12
1a0017ba:	46bd      	mov	sp, r7
1a0017bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017c0:	4770      	bx	lr

1a0017c2 <Chip_UART_TXEnable>:
1a0017c2:	b480      	push	{r7}
1a0017c4:	b083      	sub	sp, #12
1a0017c6:	af00      	add	r7, sp, #0
1a0017c8:	6078      	str	r0, [r7, #4]
1a0017ca:	687b      	ldr	r3, [r7, #4]
1a0017cc:	2201      	movs	r2, #1
1a0017ce:	65da      	str	r2, [r3, #92]	; 0x5c
1a0017d0:	bf00      	nop
1a0017d2:	370c      	adds	r7, #12
1a0017d4:	46bd      	mov	sp, r7
1a0017d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017da:	4770      	bx	lr

1a0017dc <Chip_UART_IntEnable>:
1a0017dc:	b480      	push	{r7}
1a0017de:	b083      	sub	sp, #12
1a0017e0:	af00      	add	r7, sp, #0
1a0017e2:	6078      	str	r0, [r7, #4]
1a0017e4:	6039      	str	r1, [r7, #0]
1a0017e6:	687b      	ldr	r3, [r7, #4]
1a0017e8:	685a      	ldr	r2, [r3, #4]
1a0017ea:	683b      	ldr	r3, [r7, #0]
1a0017ec:	431a      	orrs	r2, r3
1a0017ee:	687b      	ldr	r3, [r7, #4]
1a0017f0:	605a      	str	r2, [r3, #4]
1a0017f2:	bf00      	nop
1a0017f4:	370c      	adds	r7, #12
1a0017f6:	46bd      	mov	sp, r7
1a0017f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017fc:	4770      	bx	lr

1a0017fe <Chip_UART_SetupFIFOS>:
1a0017fe:	b480      	push	{r7}
1a001800:	b083      	sub	sp, #12
1a001802:	af00      	add	r7, sp, #0
1a001804:	6078      	str	r0, [r7, #4]
1a001806:	6039      	str	r1, [r7, #0]
1a001808:	687b      	ldr	r3, [r7, #4]
1a00180a:	683a      	ldr	r2, [r7, #0]
1a00180c:	609a      	str	r2, [r3, #8]
1a00180e:	bf00      	nop
1a001810:	370c      	adds	r7, #12
1a001812:	46bd      	mov	sp, r7
1a001814:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001818:	4770      	bx	lr

1a00181a <Chip_UART_ConfigData>:
1a00181a:	b480      	push	{r7}
1a00181c:	b083      	sub	sp, #12
1a00181e:	af00      	add	r7, sp, #0
1a001820:	6078      	str	r0, [r7, #4]
1a001822:	6039      	str	r1, [r7, #0]
1a001824:	687b      	ldr	r3, [r7, #4]
1a001826:	683a      	ldr	r2, [r7, #0]
1a001828:	60da      	str	r2, [r3, #12]
1a00182a:	bf00      	nop
1a00182c:	370c      	adds	r7, #12
1a00182e:	46bd      	mov	sp, r7
1a001830:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001834:	4770      	bx	lr

1a001836 <inicializar_sistema>:
1a001836:	b580      	push	{r7, lr}
1a001838:	af00      	add	r7, sp, #0
1a00183a:	f000 fda9 	bl	1a002390 <Chip_SetupXtalClocking>
1a00183e:	f001 fca7 	bl	1a003190 <SystemCoreClockUpdate>
1a001842:	f000 fc81 	bl	1a002148 <fpuInit>
1a001846:	f000 ff4b 	bl	1a0026e0 <StopWatch_Init>
1a00184a:	bf00      	nop
1a00184c:	bd80      	pop	{r7, pc}
1a00184e:	Address 0x000000001a00184e is out of bounds.


1a001850 <inicializar_leds>:
1a001850:	b590      	push	{r4, r7, lr}
1a001852:	b083      	sub	sp, #12
1a001854:	af00      	add	r7, sp, #0
1a001856:	482e      	ldr	r0, [pc, #184]	; (1a001910 <inicializar_leds+0xc0>)
1a001858:	f001 fca6 	bl	1a0031a8 <Chip_GPIO_Init>
1a00185c:	2300      	movs	r3, #0
1a00185e:	71fb      	strb	r3, [r7, #7]
1a001860:	e04e      	b.n	1a001900 <inicializar_leds+0xb0>
1a001862:	79fa      	ldrb	r2, [r7, #7]
1a001864:	492b      	ldr	r1, [pc, #172]	; (1a001914 <inicializar_leds+0xc4>)
1a001866:	4613      	mov	r3, r2
1a001868:	005b      	lsls	r3, r3, #1
1a00186a:	4413      	add	r3, r2
1a00186c:	005b      	lsls	r3, r3, #1
1a00186e:	440b      	add	r3, r1
1a001870:	7818      	ldrb	r0, [r3, #0]
1a001872:	79fa      	ldrb	r2, [r7, #7]
1a001874:	4927      	ldr	r1, [pc, #156]	; (1a001914 <inicializar_leds+0xc4>)
1a001876:	4613      	mov	r3, r2
1a001878:	005b      	lsls	r3, r3, #1
1a00187a:	4413      	add	r3, r2
1a00187c:	005b      	lsls	r3, r3, #1
1a00187e:	440b      	add	r3, r1
1a001880:	3301      	adds	r3, #1
1a001882:	781c      	ldrb	r4, [r3, #0]
1a001884:	79fa      	ldrb	r2, [r7, #7]
1a001886:	4923      	ldr	r1, [pc, #140]	; (1a001914 <inicializar_leds+0xc4>)
1a001888:	4613      	mov	r3, r2
1a00188a:	005b      	lsls	r3, r3, #1
1a00188c:	4413      	add	r3, r2
1a00188e:	005b      	lsls	r3, r3, #1
1a001890:	440b      	add	r3, r1
1a001892:	3304      	adds	r3, #4
1a001894:	881b      	ldrh	r3, [r3, #0]
1a001896:	461a      	mov	r2, r3
1a001898:	4621      	mov	r1, r4
1a00189a:	f7ff fe7b 	bl	1a001594 <Chip_SCU_PinMuxSet>
1a00189e:	79fa      	ldrb	r2, [r7, #7]
1a0018a0:	491c      	ldr	r1, [pc, #112]	; (1a001914 <inicializar_leds+0xc4>)
1a0018a2:	4613      	mov	r3, r2
1a0018a4:	005b      	lsls	r3, r3, #1
1a0018a6:	4413      	add	r3, r2
1a0018a8:	005b      	lsls	r3, r3, #1
1a0018aa:	440b      	add	r3, r1
1a0018ac:	3302      	adds	r3, #2
1a0018ae:	7818      	ldrb	r0, [r3, #0]
1a0018b0:	79fa      	ldrb	r2, [r7, #7]
1a0018b2:	4918      	ldr	r1, [pc, #96]	; (1a001914 <inicializar_leds+0xc4>)
1a0018b4:	4613      	mov	r3, r2
1a0018b6:	005b      	lsls	r3, r3, #1
1a0018b8:	4413      	add	r3, r2
1a0018ba:	005b      	lsls	r3, r3, #1
1a0018bc:	440b      	add	r3, r1
1a0018be:	3303      	adds	r3, #3
1a0018c0:	781b      	ldrb	r3, [r3, #0]
1a0018c2:	461a      	mov	r2, r3
1a0018c4:	4601      	mov	r1, r0
1a0018c6:	4812      	ldr	r0, [pc, #72]	; (1a001910 <inicializar_leds+0xc0>)
1a0018c8:	f7ff fef0 	bl	1a0016ac <Chip_GPIO_SetPinDIROutput>
1a0018cc:	79fa      	ldrb	r2, [r7, #7]
1a0018ce:	4911      	ldr	r1, [pc, #68]	; (1a001914 <inicializar_leds+0xc4>)
1a0018d0:	4613      	mov	r3, r2
1a0018d2:	005b      	lsls	r3, r3, #1
1a0018d4:	4413      	add	r3, r2
1a0018d6:	005b      	lsls	r3, r3, #1
1a0018d8:	440b      	add	r3, r1
1a0018da:	3302      	adds	r3, #2
1a0018dc:	7818      	ldrb	r0, [r3, #0]
1a0018de:	79fa      	ldrb	r2, [r7, #7]
1a0018e0:	490c      	ldr	r1, [pc, #48]	; (1a001914 <inicializar_leds+0xc4>)
1a0018e2:	4613      	mov	r3, r2
1a0018e4:	005b      	lsls	r3, r3, #1
1a0018e6:	4413      	add	r3, r2
1a0018e8:	005b      	lsls	r3, r3, #1
1a0018ea:	440b      	add	r3, r1
1a0018ec:	3303      	adds	r3, #3
1a0018ee:	781b      	ldrb	r3, [r3, #0]
1a0018f0:	461a      	mov	r2, r3
1a0018f2:	4601      	mov	r1, r0
1a0018f4:	4806      	ldr	r0, [pc, #24]	; (1a001910 <inicializar_leds+0xc0>)
1a0018f6:	f7ff ff18 	bl	1a00172a <Chip_GPIO_SetPortOutLow>
1a0018fa:	79fb      	ldrb	r3, [r7, #7]
1a0018fc:	3301      	adds	r3, #1
1a0018fe:	71fb      	strb	r3, [r7, #7]
1a001900:	79fb      	ldrb	r3, [r7, #7]
1a001902:	2b05      	cmp	r3, #5
1a001904:	d9ad      	bls.n	1a001862 <inicializar_leds+0x12>
1a001906:	bf00      	nop
1a001908:	370c      	adds	r7, #12
1a00190a:	46bd      	mov	sp, r7
1a00190c:	bd90      	pop	{r4, r7, pc}
1a00190e:	bf00      	nop
1a001910:	400f4000 	.word	0x400f4000
1a001914:	1a003a08 	.word	0x1a003a08

1a001918 <inicializar_teclado>:
1a001918:	b590      	push	{r4, r7, lr}
1a00191a:	b083      	sub	sp, #12
1a00191c:	af00      	add	r7, sp, #0
1a00191e:	2300      	movs	r3, #0
1a001920:	71fb      	strb	r3, [r7, #7]
1a001922:	e037      	b.n	1a001994 <inicializar_teclado+0x7c>
1a001924:	79fa      	ldrb	r2, [r7, #7]
1a001926:	491f      	ldr	r1, [pc, #124]	; (1a0019a4 <inicializar_teclado+0x8c>)
1a001928:	4613      	mov	r3, r2
1a00192a:	005b      	lsls	r3, r3, #1
1a00192c:	4413      	add	r3, r2
1a00192e:	005b      	lsls	r3, r3, #1
1a001930:	440b      	add	r3, r1
1a001932:	7818      	ldrb	r0, [r3, #0]
1a001934:	79fa      	ldrb	r2, [r7, #7]
1a001936:	491b      	ldr	r1, [pc, #108]	; (1a0019a4 <inicializar_teclado+0x8c>)
1a001938:	4613      	mov	r3, r2
1a00193a:	005b      	lsls	r3, r3, #1
1a00193c:	4413      	add	r3, r2
1a00193e:	005b      	lsls	r3, r3, #1
1a001940:	440b      	add	r3, r1
1a001942:	3301      	adds	r3, #1
1a001944:	781c      	ldrb	r4, [r3, #0]
1a001946:	79fa      	ldrb	r2, [r7, #7]
1a001948:	4916      	ldr	r1, [pc, #88]	; (1a0019a4 <inicializar_teclado+0x8c>)
1a00194a:	4613      	mov	r3, r2
1a00194c:	005b      	lsls	r3, r3, #1
1a00194e:	4413      	add	r3, r2
1a001950:	005b      	lsls	r3, r3, #1
1a001952:	440b      	add	r3, r1
1a001954:	3304      	adds	r3, #4
1a001956:	881b      	ldrh	r3, [r3, #0]
1a001958:	461a      	mov	r2, r3
1a00195a:	4621      	mov	r1, r4
1a00195c:	f7ff fe1a 	bl	1a001594 <Chip_SCU_PinMuxSet>
1a001960:	79fa      	ldrb	r2, [r7, #7]
1a001962:	4910      	ldr	r1, [pc, #64]	; (1a0019a4 <inicializar_teclado+0x8c>)
1a001964:	4613      	mov	r3, r2
1a001966:	005b      	lsls	r3, r3, #1
1a001968:	4413      	add	r3, r2
1a00196a:	005b      	lsls	r3, r3, #1
1a00196c:	440b      	add	r3, r1
1a00196e:	3302      	adds	r3, #2
1a001970:	7818      	ldrb	r0, [r3, #0]
1a001972:	79fa      	ldrb	r2, [r7, #7]
1a001974:	490b      	ldr	r1, [pc, #44]	; (1a0019a4 <inicializar_teclado+0x8c>)
1a001976:	4613      	mov	r3, r2
1a001978:	005b      	lsls	r3, r3, #1
1a00197a:	4413      	add	r3, r2
1a00197c:	005b      	lsls	r3, r3, #1
1a00197e:	440b      	add	r3, r1
1a001980:	3303      	adds	r3, #3
1a001982:	781b      	ldrb	r3, [r3, #0]
1a001984:	461a      	mov	r2, r3
1a001986:	4601      	mov	r1, r0
1a001988:	4807      	ldr	r0, [pc, #28]	; (1a0019a8 <inicializar_teclado+0x90>)
1a00198a:	f7ff feae 	bl	1a0016ea <Chip_GPIO_SetPinDIRInput>
1a00198e:	79fb      	ldrb	r3, [r7, #7]
1a001990:	3301      	adds	r3, #1
1a001992:	71fb      	strb	r3, [r7, #7]
1a001994:	79fb      	ldrb	r3, [r7, #7]
1a001996:	2b03      	cmp	r3, #3
1a001998:	d9c4      	bls.n	1a001924 <inicializar_teclado+0xc>
1a00199a:	bf00      	nop
1a00199c:	370c      	adds	r7, #12
1a00199e:	46bd      	mov	sp, r7
1a0019a0:	bd90      	pop	{r4, r7, pc}
1a0019a2:	bf00      	nop
1a0019a4:	1a003a2c 	.word	0x1a003a2c
1a0019a8:	400f4000 	.word	0x400f4000

1a0019ac <inicializar_USART>:
1a0019ac:	b580      	push	{r7, lr}
1a0019ae:	af00      	add	r7, sp, #0
1a0019b0:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0019b4:	2201      	movs	r2, #1
1a0019b6:	4919      	ldr	r1, [pc, #100]	; (1a001a1c <inicializar_USART+0x70>)
1a0019b8:	4819      	ldr	r0, [pc, #100]	; (1a001a20 <inicializar_USART+0x74>)
1a0019ba:	f000 fee7 	bl	1a00278c <RingBuffer_Init>
1a0019be:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0019c2:	2201      	movs	r2, #1
1a0019c4:	4917      	ldr	r1, [pc, #92]	; (1a001a24 <inicializar_USART+0x78>)
1a0019c6:	4818      	ldr	r0, [pc, #96]	; (1a001a28 <inicializar_USART+0x7c>)
1a0019c8:	f000 fee0 	bl	1a00278c <RingBuffer_Init>
1a0019cc:	2306      	movs	r3, #6
1a0019ce:	2218      	movs	r2, #24
1a0019d0:	2101      	movs	r1, #1
1a0019d2:	2007      	movs	r0, #7
1a0019d4:	f7ff fdf8 	bl	1a0015c8 <Chip_SCU_PinMux>
1a0019d8:	2306      	movs	r3, #6
1a0019da:	22d0      	movs	r2, #208	; 0xd0
1a0019dc:	2102      	movs	r1, #2
1a0019de:	2007      	movs	r0, #7
1a0019e0:	f7ff fdf2 	bl	1a0015c8 <Chip_SCU_PinMux>
1a0019e4:	4811      	ldr	r0, [pc, #68]	; (1a001a2c <inicializar_USART+0x80>)
1a0019e6:	f000 fd87 	bl	1a0024f8 <Chip_UART_Init>
1a0019ea:	2103      	movs	r1, #3
1a0019ec:	480f      	ldr	r0, [pc, #60]	; (1a001a2c <inicializar_USART+0x80>)
1a0019ee:	f7ff ff14 	bl	1a00181a <Chip_UART_ConfigData>
1a0019f2:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0019f6:	480d      	ldr	r0, [pc, #52]	; (1a001a2c <inicializar_USART+0x80>)
1a0019f8:	f000 fe10 	bl	1a00261c <Chip_UART_SetBaud>
1a0019fc:	21c7      	movs	r1, #199	; 0xc7
1a0019fe:	480b      	ldr	r0, [pc, #44]	; (1a001a2c <inicializar_USART+0x80>)
1a001a00:	f7ff fefd 	bl	1a0017fe <Chip_UART_SetupFIFOS>
1a001a04:	2105      	movs	r1, #5
1a001a06:	4809      	ldr	r0, [pc, #36]	; (1a001a2c <inicializar_USART+0x80>)
1a001a08:	f7ff fee8 	bl	1a0017dc <Chip_UART_IntEnable>
1a001a0c:	201a      	movs	r0, #26
1a001a0e:	f7ff fd41 	bl	1a001494 <NVIC_EnableIRQ>
1a001a12:	4806      	ldr	r0, [pc, #24]	; (1a001a2c <inicializar_USART+0x80>)
1a001a14:	f7ff fed5 	bl	1a0017c2 <Chip_UART_TXEnable>
1a001a18:	bf00      	nop
1a001a1a:	bd80      	pop	{r7, pc}
1a001a1c:	100008ec 	.word	0x100008ec
1a001a20:	100008d4 	.word	0x100008d4
1a001a24:	100006d4 	.word	0x100006d4
1a001a28:	100006c0 	.word	0x100006c0
1a001a2c:	400c1000 	.word	0x400c1000

1a001a30 <init_interrupciones>:
1a001a30:	b580      	push	{r7, lr}
1a001a32:	af00      	add	r7, sp, #0
1a001a34:	4823      	ldr	r0, [pc, #140]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a36:	f7ff fe8c 	bl	1a001752 <Chip_PININT_Init>
1a001a3a:	2204      	movs	r2, #4
1a001a3c:	2100      	movs	r1, #0
1a001a3e:	2001      	movs	r0, #1
1a001a40:	f7ff fde0 	bl	1a001604 <Chip_SCU_GPIOIntPinSel>
1a001a44:	2208      	movs	r2, #8
1a001a46:	2100      	movs	r1, #0
1a001a48:	2002      	movs	r0, #2
1a001a4a:	f7ff fddb 	bl	1a001604 <Chip_SCU_GPIOIntPinSel>
1a001a4e:	2209      	movs	r2, #9
1a001a50:	2101      	movs	r1, #1
1a001a52:	2004      	movs	r0, #4
1a001a54:	f7ff fdd6 	bl	1a001604 <Chip_SCU_GPIOIntPinSel>
1a001a58:	2102      	movs	r1, #2
1a001a5a:	481a      	ldr	r0, [pc, #104]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a5c:	f7ff fea3 	bl	1a0017a6 <Chip_PININT_ClearIntStatus>
1a001a60:	2104      	movs	r1, #4
1a001a62:	4818      	ldr	r0, [pc, #96]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a64:	f7ff fe9f 	bl	1a0017a6 <Chip_PININT_ClearIntStatus>
1a001a68:	2110      	movs	r1, #16
1a001a6a:	4816      	ldr	r0, [pc, #88]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a6c:	f7ff fe9b 	bl	1a0017a6 <Chip_PININT_ClearIntStatus>
1a001a70:	2102      	movs	r1, #2
1a001a72:	4814      	ldr	r0, [pc, #80]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a74:	f7ff fe77 	bl	1a001766 <Chip_PININT_SetPinModeEdge>
1a001a78:	2104      	movs	r1, #4
1a001a7a:	4812      	ldr	r0, [pc, #72]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a7c:	f7ff fe73 	bl	1a001766 <Chip_PININT_SetPinModeEdge>
1a001a80:	2110      	movs	r1, #16
1a001a82:	4810      	ldr	r0, [pc, #64]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a84:	f7ff fe6f 	bl	1a001766 <Chip_PININT_SetPinModeEdge>
1a001a88:	2102      	movs	r1, #2
1a001a8a:	480e      	ldr	r0, [pc, #56]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a8c:	f7ff fe7d 	bl	1a00178a <Chip_PININT_EnableIntLow>
1a001a90:	2104      	movs	r1, #4
1a001a92:	480c      	ldr	r0, [pc, #48]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a94:	f7ff fe79 	bl	1a00178a <Chip_PININT_EnableIntLow>
1a001a98:	2110      	movs	r1, #16
1a001a9a:	480a      	ldr	r0, [pc, #40]	; (1a001ac4 <init_interrupciones+0x94>)
1a001a9c:	f7ff fe75 	bl	1a00178a <Chip_PININT_EnableIntLow>
1a001aa0:	2021      	movs	r0, #33	; 0x21
1a001aa2:	f7ff fd11 	bl	1a0014c8 <NVIC_ClearPendingIRQ>
1a001aa6:	2022      	movs	r0, #34	; 0x22
1a001aa8:	f7ff fd0e 	bl	1a0014c8 <NVIC_ClearPendingIRQ>
1a001aac:	2024      	movs	r0, #36	; 0x24
1a001aae:	f7ff fd0b 	bl	1a0014c8 <NVIC_ClearPendingIRQ>
1a001ab2:	2022      	movs	r0, #34	; 0x22
1a001ab4:	f7ff fcee 	bl	1a001494 <NVIC_EnableIRQ>
1a001ab8:	2024      	movs	r0, #36	; 0x24
1a001aba:	f7ff fceb 	bl	1a001494 <NVIC_EnableIRQ>
1a001abe:	bf00      	nop
1a001ac0:	bd80      	pop	{r7, pc}
1a001ac2:	bf00      	nop
1a001ac4:	40087000 	.word	0x40087000

1a001ac8 <print>:
1a001ac8:	b580      	push	{r7, lr}
1a001aca:	b082      	sub	sp, #8
1a001acc:	af00      	add	r7, sp, #0
1a001ace:	6078      	str	r0, [r7, #4]
1a001ad0:	6878      	ldr	r0, [r7, #4]
1a001ad2:	f001 fe35 	bl	1a003740 <strlen>
1a001ad6:	4603      	mov	r3, r0
1a001ad8:	461a      	mov	r2, r3
1a001ada:	6879      	ldr	r1, [r7, #4]
1a001adc:	4803      	ldr	r0, [pc, #12]	; (1a001aec <print+0x24>)
1a001ade:	f000 fd77 	bl	1a0025d0 <Chip_UART_SendBlocking>
1a001ae2:	bf00      	nop
1a001ae4:	3708      	adds	r7, #8
1a001ae6:	46bd      	mov	sp, r7
1a001ae8:	bd80      	pop	{r7, pc}
1a001aea:	bf00      	nop
1a001aec:	400c1000 	.word	0x400c1000

1a001af0 <configurar_SysTick>:
1a001af0:	b580      	push	{r7, lr}
1a001af2:	af00      	add	r7, sp, #0
1a001af4:	4b05      	ldr	r3, [pc, #20]	; (1a001b0c <configurar_SysTick+0x1c>)
1a001af6:	681b      	ldr	r3, [r3, #0]
1a001af8:	4a05      	ldr	r2, [pc, #20]	; (1a001b10 <configurar_SysTick+0x20>)
1a001afa:	fba2 2303 	umull	r2, r3, r2, r3
1a001afe:	099b      	lsrs	r3, r3, #6
1a001b00:	4618      	mov	r0, r3
1a001b02:	f7ff fd25 	bl	1a001550 <SysTick_Config>
1a001b06:	bf00      	nop
1a001b08:	bd80      	pop	{r7, pc}
1a001b0a:	bf00      	nop
1a001b0c:	10000b58 	.word	0x10000b58
1a001b10:	10624dd3 	.word	0x10624dd3

1a001b14 <disable_SysTick>:
1a001b14:	b480      	push	{r7}
1a001b16:	af00      	add	r7, sp, #0
1a001b18:	4b03      	ldr	r3, [pc, #12]	; (1a001b28 <disable_SysTick+0x14>)
1a001b1a:	2205      	movs	r2, #5
1a001b1c:	601a      	str	r2, [r3, #0]
1a001b1e:	bf00      	nop
1a001b20:	46bd      	mov	sp, r7
1a001b22:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b26:	4770      	bx	lr
1a001b28:	e000e010 	.word	0xe000e010

1a001b2c <cmdExecute>:
1a001b2c:	b580      	push	{r7, lr}
1a001b2e:	b086      	sub	sp, #24
1a001b30:	af00      	add	r7, sp, #0
1a001b32:	6078      	str	r0, [r7, #4]
1a001b34:	6039      	str	r1, [r7, #0]
1a001b36:	f000 fae7 	bl	1a002108 <getMenuItems>
1a001b3a:	6138      	str	r0, [r7, #16]
1a001b3c:	f000 faee 	bl	1a00211c <getMenuItemsCount>
1a001b40:	4603      	mov	r3, r0
1a001b42:	73fb      	strb	r3, [r7, #15]
1a001b44:	4823      	ldr	r0, [pc, #140]	; (1a001bd4 <cmdExecute+0xa8>)
1a001b46:	f7ff ffbf 	bl	1a001ac8 <print>
1a001b4a:	2300      	movs	r3, #0
1a001b4c:	75fb      	strb	r3, [r7, #23]
1a001b4e:	e032      	b.n	1a001bb6 <cmdExecute+0x8a>
1a001b50:	683b      	ldr	r3, [r7, #0]
1a001b52:	6818      	ldr	r0, [r3, #0]
1a001b54:	7dfb      	ldrb	r3, [r7, #23]
1a001b56:	00db      	lsls	r3, r3, #3
1a001b58:	693a      	ldr	r2, [r7, #16]
1a001b5a:	4413      	add	r3, r2
1a001b5c:	681b      	ldr	r3, [r3, #0]
1a001b5e:	4619      	mov	r1, r3
1a001b60:	f001 fc72 	bl	1a003448 <strcmp>
1a001b64:	60b8      	str	r0, [r7, #8]
1a001b66:	68bb      	ldr	r3, [r7, #8]
1a001b68:	2b00      	cmp	r3, #0
1a001b6a:	d110      	bne.n	1a001b8e <cmdExecute+0x62>
1a001b6c:	7dfb      	ldrb	r3, [r7, #23]
1a001b6e:	00db      	lsls	r3, r3, #3
1a001b70:	693a      	ldr	r2, [r7, #16]
1a001b72:	4413      	add	r3, r2
1a001b74:	685b      	ldr	r3, [r3, #4]
1a001b76:	6839      	ldr	r1, [r7, #0]
1a001b78:	6878      	ldr	r0, [r7, #4]
1a001b7a:	4798      	blx	r3
1a001b7c:	4b16      	ldr	r3, [pc, #88]	; (1a001bd8 <cmdExecute+0xac>)
1a001b7e:	2201      	movs	r2, #1
1a001b80:	601a      	str	r2, [r3, #0]
1a001b82:	683b      	ldr	r3, [r7, #0]
1a001b84:	681b      	ldr	r3, [r3, #0]
1a001b86:	4618      	mov	r0, r3
1a001b88:	f7ff ff9e 	bl	1a001ac8 <print>
1a001b8c:	e00a      	b.n	1a001ba4 <cmdExecute+0x78>
1a001b8e:	7dfa      	ldrb	r2, [r7, #23]
1a001b90:	7bfb      	ldrb	r3, [r7, #15]
1a001b92:	3b01      	subs	r3, #1
1a001b94:	429a      	cmp	r2, r3
1a001b96:	db05      	blt.n	1a001ba4 <cmdExecute+0x78>
1a001b98:	4810      	ldr	r0, [pc, #64]	; (1a001bdc <cmdExecute+0xb0>)
1a001b9a:	f7ff ff95 	bl	1a001ac8 <print>
1a001b9e:	4b0e      	ldr	r3, [pc, #56]	; (1a001bd8 <cmdExecute+0xac>)
1a001ba0:	2201      	movs	r2, #1
1a001ba2:	601a      	str	r2, [r3, #0]
1a001ba4:	7dfb      	ldrb	r3, [r7, #23]
1a001ba6:	3301      	adds	r3, #1
1a001ba8:	75fb      	strb	r3, [r7, #23]
1a001baa:	7dfa      	ldrb	r2, [r7, #23]
1a001bac:	7bfb      	ldrb	r3, [r7, #15]
1a001bae:	429a      	cmp	r2, r3
1a001bb0:	d301      	bcc.n	1a001bb6 <cmdExecute+0x8a>
1a001bb2:	2300      	movs	r3, #0
1a001bb4:	75fb      	strb	r3, [r7, #23]
1a001bb6:	4b08      	ldr	r3, [pc, #32]	; (1a001bd8 <cmdExecute+0xac>)
1a001bb8:	681b      	ldr	r3, [r3, #0]
1a001bba:	2b00      	cmp	r3, #0
1a001bbc:	d0c8      	beq.n	1a001b50 <cmdExecute+0x24>
1a001bbe:	4b06      	ldr	r3, [pc, #24]	; (1a001bd8 <cmdExecute+0xac>)
1a001bc0:	2200      	movs	r2, #0
1a001bc2:	601a      	str	r2, [r3, #0]
1a001bc4:	4806      	ldr	r0, [pc, #24]	; (1a001be0 <cmdExecute+0xb4>)
1a001bc6:	f7ff ff7f 	bl	1a001ac8 <print>
1a001bca:	bf00      	nop
1a001bcc:	3718      	adds	r7, #24
1a001bce:	46bd      	mov	sp, r7
1a001bd0:	bd80      	pop	{r7, pc}
1a001bd2:	bf00      	nop
1a001bd4:	1a003a48 	.word	0x1a003a48
1a001bd8:	100005cc 	.word	0x100005cc
1a001bdc:	1a003a50 	.word	0x1a003a50
1a001be0:	1a003a6c 	.word	0x1a003a6c

1a001be4 <sigint>:
1a001be4:	b580      	push	{r7, lr}
1a001be6:	af00      	add	r7, sp, #0
1a001be8:	2000      	movs	r0, #0
1a001bea:	f7ff fd45 	bl	1a001678 <Chip_RGU_TriggerReset>
1a001bee:	bf00      	nop
1a001bf0:	bd80      	pop	{r7, pc}

1a001bf2 <Chip_GPIO_SetPinState>:
1a001bf2:	b480      	push	{r7}
1a001bf4:	b083      	sub	sp, #12
1a001bf6:	af00      	add	r7, sp, #0
1a001bf8:	6078      	str	r0, [r7, #4]
1a001bfa:	4608      	mov	r0, r1
1a001bfc:	4611      	mov	r1, r2
1a001bfe:	461a      	mov	r2, r3
1a001c00:	4603      	mov	r3, r0
1a001c02:	70fb      	strb	r3, [r7, #3]
1a001c04:	460b      	mov	r3, r1
1a001c06:	70bb      	strb	r3, [r7, #2]
1a001c08:	4613      	mov	r3, r2
1a001c0a:	707b      	strb	r3, [r7, #1]
1a001c0c:	78fa      	ldrb	r2, [r7, #3]
1a001c0e:	78bb      	ldrb	r3, [r7, #2]
1a001c10:	7878      	ldrb	r0, [r7, #1]
1a001c12:	6879      	ldr	r1, [r7, #4]
1a001c14:	0152      	lsls	r2, r2, #5
1a001c16:	440a      	add	r2, r1
1a001c18:	4413      	add	r3, r2
1a001c1a:	4602      	mov	r2, r0
1a001c1c:	701a      	strb	r2, [r3, #0]
1a001c1e:	bf00      	nop
1a001c20:	370c      	adds	r7, #12
1a001c22:	46bd      	mov	sp, r7
1a001c24:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c28:	4770      	bx	lr

1a001c2a <Chip_GPIO_SetPinOutLow>:
1a001c2a:	b480      	push	{r7}
1a001c2c:	b083      	sub	sp, #12
1a001c2e:	af00      	add	r7, sp, #0
1a001c30:	6078      	str	r0, [r7, #4]
1a001c32:	460b      	mov	r3, r1
1a001c34:	70fb      	strb	r3, [r7, #3]
1a001c36:	4613      	mov	r3, r2
1a001c38:	70bb      	strb	r3, [r7, #2]
1a001c3a:	78bb      	ldrb	r3, [r7, #2]
1a001c3c:	2201      	movs	r2, #1
1a001c3e:	fa02 f303 	lsl.w	r3, r2, r3
1a001c42:	78fa      	ldrb	r2, [r7, #3]
1a001c44:	4619      	mov	r1, r3
1a001c46:	687b      	ldr	r3, [r7, #4]
1a001c48:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a001c4c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001c50:	bf00      	nop
1a001c52:	370c      	adds	r7, #12
1a001c54:	46bd      	mov	sp, r7
1a001c56:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c5a:	4770      	bx	lr

1a001c5c <secuencia>:
1a001c5c:	b580      	push	{r7, lr}
1a001c5e:	b084      	sub	sp, #16
1a001c60:	af00      	add	r7, sp, #0
1a001c62:	4603      	mov	r3, r0
1a001c64:	71fb      	strb	r3, [r7, #7]
1a001c66:	460b      	mov	r3, r1
1a001c68:	71bb      	strb	r3, [r7, #6]
1a001c6a:	4613      	mov	r3, r2
1a001c6c:	80bb      	strh	r3, [r7, #4]
1a001c6e:	4b6a      	ldr	r3, [pc, #424]	; (1a001e18 <secuencia+0x1bc>)
1a001c70:	781b      	ldrb	r3, [r3, #0]
1a001c72:	2b00      	cmp	r3, #0
1a001c74:	d005      	beq.n	1a001c82 <secuencia+0x26>
1a001c76:	4a69      	ldr	r2, [pc, #420]	; (1a001e1c <secuencia+0x1c0>)
1a001c78:	79bb      	ldrb	r3, [r7, #6]
1a001c7a:	7013      	strb	r3, [r2, #0]
1a001c7c:	4b66      	ldr	r3, [pc, #408]	; (1a001e18 <secuencia+0x1bc>)
1a001c7e:	2200      	movs	r2, #0
1a001c80:	701a      	strb	r2, [r3, #0]
1a001c82:	4b67      	ldr	r3, [pc, #412]	; (1a001e20 <secuencia+0x1c4>)
1a001c84:	781b      	ldrb	r3, [r3, #0]
1a001c86:	2b00      	cmp	r3, #0
1a001c88:	d110      	bne.n	1a001cac <secuencia+0x50>
1a001c8a:	79fb      	ldrb	r3, [r7, #7]
1a001c8c:	3b01      	subs	r3, #1
1a001c8e:	4a65      	ldr	r2, [pc, #404]	; (1a001e24 <secuencia+0x1c8>)
1a001c90:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001c94:	4a62      	ldr	r2, [pc, #392]	; (1a001e20 <secuencia+0x1c4>)
1a001c96:	7812      	ldrb	r2, [r2, #0]
1a001c98:	4413      	add	r3, r2
1a001c9a:	781a      	ldrb	r2, [r3, #0]
1a001c9c:	4b62      	ldr	r3, [pc, #392]	; (1a001e28 <secuencia+0x1cc>)
1a001c9e:	701a      	strb	r2, [r3, #0]
1a001ca0:	4b5f      	ldr	r3, [pc, #380]	; (1a001e20 <secuencia+0x1c4>)
1a001ca2:	781b      	ldrb	r3, [r3, #0]
1a001ca4:	3301      	adds	r3, #1
1a001ca6:	b2da      	uxtb	r2, r3
1a001ca8:	4b5d      	ldr	r3, [pc, #372]	; (1a001e20 <secuencia+0x1c4>)
1a001caa:	701a      	strb	r2, [r3, #0]
1a001cac:	79fb      	ldrb	r3, [r7, #7]
1a001cae:	3b01      	subs	r3, #1
1a001cb0:	4a5c      	ldr	r2, [pc, #368]	; (1a001e24 <secuencia+0x1c8>)
1a001cb2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001cb6:	4a5a      	ldr	r2, [pc, #360]	; (1a001e20 <secuencia+0x1c4>)
1a001cb8:	7812      	ldrb	r2, [r2, #0]
1a001cba:	4413      	add	r3, r2
1a001cbc:	781a      	ldrb	r2, [r3, #0]
1a001cbe:	4b5b      	ldr	r3, [pc, #364]	; (1a001e2c <secuencia+0x1d0>)
1a001cc0:	701a      	strb	r2, [r3, #0]
1a001cc2:	4b56      	ldr	r3, [pc, #344]	; (1a001e1c <secuencia+0x1c0>)
1a001cc4:	781b      	ldrb	r3, [r3, #0]
1a001cc6:	2b00      	cmp	r3, #0
1a001cc8:	d07d      	beq.n	1a001dc6 <secuencia+0x16a>
1a001cca:	4b59      	ldr	r3, [pc, #356]	; (1a001e30 <secuencia+0x1d4>)
1a001ccc:	881b      	ldrh	r3, [r3, #0]
1a001cce:	88ba      	ldrh	r2, [r7, #4]
1a001cd0:	429a      	cmp	r2, r3
1a001cd2:	d171      	bne.n	1a001db8 <secuencia+0x15c>
1a001cd4:	4b52      	ldr	r3, [pc, #328]	; (1a001e20 <secuencia+0x1c4>)
1a001cd6:	781a      	ldrb	r2, [r3, #0]
1a001cd8:	4b53      	ldr	r3, [pc, #332]	; (1a001e28 <secuencia+0x1cc>)
1a001cda:	781b      	ldrb	r3, [r3, #0]
1a001cdc:	429a      	cmp	r2, r3
1a001cde:	d858      	bhi.n	1a001d92 <secuencia+0x136>
1a001ce0:	2300      	movs	r3, #0
1a001ce2:	73fb      	strb	r3, [r7, #15]
1a001ce4:	e019      	b.n	1a001d1a <secuencia+0xbe>
1a001ce6:	7bfa      	ldrb	r2, [r7, #15]
1a001ce8:	4952      	ldr	r1, [pc, #328]	; (1a001e34 <secuencia+0x1d8>)
1a001cea:	4613      	mov	r3, r2
1a001cec:	005b      	lsls	r3, r3, #1
1a001cee:	4413      	add	r3, r2
1a001cf0:	005b      	lsls	r3, r3, #1
1a001cf2:	440b      	add	r3, r1
1a001cf4:	3302      	adds	r3, #2
1a001cf6:	7818      	ldrb	r0, [r3, #0]
1a001cf8:	7bfa      	ldrb	r2, [r7, #15]
1a001cfa:	494e      	ldr	r1, [pc, #312]	; (1a001e34 <secuencia+0x1d8>)
1a001cfc:	4613      	mov	r3, r2
1a001cfe:	005b      	lsls	r3, r3, #1
1a001d00:	4413      	add	r3, r2
1a001d02:	005b      	lsls	r3, r3, #1
1a001d04:	440b      	add	r3, r1
1a001d06:	3303      	adds	r3, #3
1a001d08:	781b      	ldrb	r3, [r3, #0]
1a001d0a:	461a      	mov	r2, r3
1a001d0c:	4601      	mov	r1, r0
1a001d0e:	484a      	ldr	r0, [pc, #296]	; (1a001e38 <secuencia+0x1dc>)
1a001d10:	f7ff ff8b 	bl	1a001c2a <Chip_GPIO_SetPinOutLow>
1a001d14:	7bfb      	ldrb	r3, [r7, #15]
1a001d16:	3301      	adds	r3, #1
1a001d18:	73fb      	strb	r3, [r7, #15]
1a001d1a:	7bfb      	ldrb	r3, [r7, #15]
1a001d1c:	2b05      	cmp	r3, #5
1a001d1e:	d9e2      	bls.n	1a001ce6 <secuencia+0x8a>
1a001d20:	4b42      	ldr	r3, [pc, #264]	; (1a001e2c <secuencia+0x1d0>)
1a001d22:	781b      	ldrb	r3, [r3, #0]
1a001d24:	f003 0301 	and.w	r3, r3, #1
1a001d28:	2b00      	cmp	r3, #0
1a001d2a:	d007      	beq.n	1a001d3c <secuencia+0xe0>
1a001d2c:	4b41      	ldr	r3, [pc, #260]	; (1a001e34 <secuencia+0x1d8>)
1a001d2e:	7899      	ldrb	r1, [r3, #2]
1a001d30:	4b40      	ldr	r3, [pc, #256]	; (1a001e34 <secuencia+0x1d8>)
1a001d32:	78da      	ldrb	r2, [r3, #3]
1a001d34:	2301      	movs	r3, #1
1a001d36:	4840      	ldr	r0, [pc, #256]	; (1a001e38 <secuencia+0x1dc>)
1a001d38:	f7ff ff5b 	bl	1a001bf2 <Chip_GPIO_SetPinState>
1a001d3c:	4b3b      	ldr	r3, [pc, #236]	; (1a001e2c <secuencia+0x1d0>)
1a001d3e:	781b      	ldrb	r3, [r3, #0]
1a001d40:	f003 0302 	and.w	r3, r3, #2
1a001d44:	2b00      	cmp	r3, #0
1a001d46:	d007      	beq.n	1a001d58 <secuencia+0xfc>
1a001d48:	4b3a      	ldr	r3, [pc, #232]	; (1a001e34 <secuencia+0x1d8>)
1a001d4a:	7a19      	ldrb	r1, [r3, #8]
1a001d4c:	4b39      	ldr	r3, [pc, #228]	; (1a001e34 <secuencia+0x1d8>)
1a001d4e:	7a5a      	ldrb	r2, [r3, #9]
1a001d50:	2301      	movs	r3, #1
1a001d52:	4839      	ldr	r0, [pc, #228]	; (1a001e38 <secuencia+0x1dc>)
1a001d54:	f7ff ff4d 	bl	1a001bf2 <Chip_GPIO_SetPinState>
1a001d58:	4b34      	ldr	r3, [pc, #208]	; (1a001e2c <secuencia+0x1d0>)
1a001d5a:	781b      	ldrb	r3, [r3, #0]
1a001d5c:	f003 0304 	and.w	r3, r3, #4
1a001d60:	2b00      	cmp	r3, #0
1a001d62:	d007      	beq.n	1a001d74 <secuencia+0x118>
1a001d64:	4b33      	ldr	r3, [pc, #204]	; (1a001e34 <secuencia+0x1d8>)
1a001d66:	7b99      	ldrb	r1, [r3, #14]
1a001d68:	4b32      	ldr	r3, [pc, #200]	; (1a001e34 <secuencia+0x1d8>)
1a001d6a:	7bda      	ldrb	r2, [r3, #15]
1a001d6c:	2301      	movs	r3, #1
1a001d6e:	4832      	ldr	r0, [pc, #200]	; (1a001e38 <secuencia+0x1dc>)
1a001d70:	f7ff ff3f 	bl	1a001bf2 <Chip_GPIO_SetPinState>
1a001d74:	4b2d      	ldr	r3, [pc, #180]	; (1a001e2c <secuencia+0x1d0>)
1a001d76:	781b      	ldrb	r3, [r3, #0]
1a001d78:	f003 0308 	and.w	r3, r3, #8
1a001d7c:	2b00      	cmp	r3, #0
1a001d7e:	d011      	beq.n	1a001da4 <secuencia+0x148>
1a001d80:	4b2c      	ldr	r3, [pc, #176]	; (1a001e34 <secuencia+0x1d8>)
1a001d82:	7d19      	ldrb	r1, [r3, #20]
1a001d84:	4b2b      	ldr	r3, [pc, #172]	; (1a001e34 <secuencia+0x1d8>)
1a001d86:	7d5a      	ldrb	r2, [r3, #21]
1a001d88:	2301      	movs	r3, #1
1a001d8a:	482b      	ldr	r0, [pc, #172]	; (1a001e38 <secuencia+0x1dc>)
1a001d8c:	f7ff ff31 	bl	1a001bf2 <Chip_GPIO_SetPinState>
1a001d90:	e008      	b.n	1a001da4 <secuencia+0x148>
1a001d92:	4b23      	ldr	r3, [pc, #140]	; (1a001e20 <secuencia+0x1c4>)
1a001d94:	2200      	movs	r2, #0
1a001d96:	701a      	strb	r2, [r3, #0]
1a001d98:	4b20      	ldr	r3, [pc, #128]	; (1a001e1c <secuencia+0x1c0>)
1a001d9a:	781b      	ldrb	r3, [r3, #0]
1a001d9c:	3b01      	subs	r3, #1
1a001d9e:	b2da      	uxtb	r2, r3
1a001da0:	4b1e      	ldr	r3, [pc, #120]	; (1a001e1c <secuencia+0x1c0>)
1a001da2:	701a      	strb	r2, [r3, #0]
1a001da4:	4b1e      	ldr	r3, [pc, #120]	; (1a001e20 <secuencia+0x1c4>)
1a001da6:	781b      	ldrb	r3, [r3, #0]
1a001da8:	3301      	adds	r3, #1
1a001daa:	b2da      	uxtb	r2, r3
1a001dac:	4b1c      	ldr	r3, [pc, #112]	; (1a001e20 <secuencia+0x1c4>)
1a001dae:	701a      	strb	r2, [r3, #0]
1a001db0:	4b1f      	ldr	r3, [pc, #124]	; (1a001e30 <secuencia+0x1d4>)
1a001db2:	2200      	movs	r2, #0
1a001db4:	801a      	strh	r2, [r3, #0]
1a001db6:	e02b      	b.n	1a001e10 <secuencia+0x1b4>
1a001db8:	4b1d      	ldr	r3, [pc, #116]	; (1a001e30 <secuencia+0x1d4>)
1a001dba:	881b      	ldrh	r3, [r3, #0]
1a001dbc:	3301      	adds	r3, #1
1a001dbe:	b29a      	uxth	r2, r3
1a001dc0:	4b1b      	ldr	r3, [pc, #108]	; (1a001e30 <secuencia+0x1d4>)
1a001dc2:	801a      	strh	r2, [r3, #0]
1a001dc4:	e024      	b.n	1a001e10 <secuencia+0x1b4>
1a001dc6:	2300      	movs	r3, #0
1a001dc8:	73bb      	strb	r3, [r7, #14]
1a001dca:	e019      	b.n	1a001e00 <secuencia+0x1a4>
1a001dcc:	7bba      	ldrb	r2, [r7, #14]
1a001dce:	4919      	ldr	r1, [pc, #100]	; (1a001e34 <secuencia+0x1d8>)
1a001dd0:	4613      	mov	r3, r2
1a001dd2:	005b      	lsls	r3, r3, #1
1a001dd4:	4413      	add	r3, r2
1a001dd6:	005b      	lsls	r3, r3, #1
1a001dd8:	440b      	add	r3, r1
1a001dda:	3302      	adds	r3, #2
1a001ddc:	7818      	ldrb	r0, [r3, #0]
1a001dde:	7bba      	ldrb	r2, [r7, #14]
1a001de0:	4914      	ldr	r1, [pc, #80]	; (1a001e34 <secuencia+0x1d8>)
1a001de2:	4613      	mov	r3, r2
1a001de4:	005b      	lsls	r3, r3, #1
1a001de6:	4413      	add	r3, r2
1a001de8:	005b      	lsls	r3, r3, #1
1a001dea:	440b      	add	r3, r1
1a001dec:	3303      	adds	r3, #3
1a001dee:	781b      	ldrb	r3, [r3, #0]
1a001df0:	461a      	mov	r2, r3
1a001df2:	4601      	mov	r1, r0
1a001df4:	4810      	ldr	r0, [pc, #64]	; (1a001e38 <secuencia+0x1dc>)
1a001df6:	f7ff ff18 	bl	1a001c2a <Chip_GPIO_SetPinOutLow>
1a001dfa:	7bbb      	ldrb	r3, [r7, #14]
1a001dfc:	3301      	adds	r3, #1
1a001dfe:	73bb      	strb	r3, [r7, #14]
1a001e00:	7bbb      	ldrb	r3, [r7, #14]
1a001e02:	2b05      	cmp	r3, #5
1a001e04:	d9e2      	bls.n	1a001dcc <secuencia+0x170>
1a001e06:	4b06      	ldr	r3, [pc, #24]	; (1a001e20 <secuencia+0x1c4>)
1a001e08:	2200      	movs	r2, #0
1a001e0a:	701a      	strb	r2, [r3, #0]
1a001e0c:	f7ff fe82 	bl	1a001b14 <disable_SysTick>
1a001e10:	bf00      	nop
1a001e12:	3710      	adds	r7, #16
1a001e14:	46bd      	mov	sp, r7
1a001e16:	bd80      	pop	{r7, pc}
1a001e18:	10000b54 	.word	0x10000b54
1a001e1c:	100005d0 	.word	0x100005d0
1a001e20:	100005d1 	.word	0x100005d1
1a001e24:	1a003a84 	.word	0x1a003a84
1a001e28:	100005d2 	.word	0x100005d2
1a001e2c:	100005d3 	.word	0x100005d3
1a001e30:	100005d4 	.word	0x100005d4
1a001e34:	1a003a08 	.word	0x1a003a08
1a001e38:	400f4000 	.word	0x400f4000

1a001e3c <Chip_GPIO_SetPinState>:
1a001e3c:	b480      	push	{r7}
1a001e3e:	b083      	sub	sp, #12
1a001e40:	af00      	add	r7, sp, #0
1a001e42:	6078      	str	r0, [r7, #4]
1a001e44:	4608      	mov	r0, r1
1a001e46:	4611      	mov	r1, r2
1a001e48:	461a      	mov	r2, r3
1a001e4a:	4603      	mov	r3, r0
1a001e4c:	70fb      	strb	r3, [r7, #3]
1a001e4e:	460b      	mov	r3, r1
1a001e50:	70bb      	strb	r3, [r7, #2]
1a001e52:	4613      	mov	r3, r2
1a001e54:	707b      	strb	r3, [r7, #1]
1a001e56:	78fa      	ldrb	r2, [r7, #3]
1a001e58:	78bb      	ldrb	r3, [r7, #2]
1a001e5a:	7878      	ldrb	r0, [r7, #1]
1a001e5c:	6879      	ldr	r1, [r7, #4]
1a001e5e:	0152      	lsls	r2, r2, #5
1a001e60:	440a      	add	r2, r1
1a001e62:	4413      	add	r3, r2
1a001e64:	4602      	mov	r2, r0
1a001e66:	701a      	strb	r2, [r3, #0]
1a001e68:	bf00      	nop
1a001e6a:	370c      	adds	r7, #12
1a001e6c:	46bd      	mov	sp, r7
1a001e6e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e72:	4770      	bx	lr

1a001e74 <Chip_GPIO_SetPinOutLow>:
1a001e74:	b480      	push	{r7}
1a001e76:	b083      	sub	sp, #12
1a001e78:	af00      	add	r7, sp, #0
1a001e7a:	6078      	str	r0, [r7, #4]
1a001e7c:	460b      	mov	r3, r1
1a001e7e:	70fb      	strb	r3, [r7, #3]
1a001e80:	4613      	mov	r3, r2
1a001e82:	70bb      	strb	r3, [r7, #2]
1a001e84:	78bb      	ldrb	r3, [r7, #2]
1a001e86:	2201      	movs	r2, #1
1a001e88:	fa02 f303 	lsl.w	r3, r2, r3
1a001e8c:	78fa      	ldrb	r2, [r7, #3]
1a001e8e:	4619      	mov	r1, r3
1a001e90:	687b      	ldr	r3, [r7, #4]
1a001e92:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a001e96:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001e9a:	bf00      	nop
1a001e9c:	370c      	adds	r7, #12
1a001e9e:	46bd      	mov	sp, r7
1a001ea0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ea4:	4770      	bx	lr
1a001ea6:	Address 0x000000001a001ea6 is out of bounds.


1a001ea8 <help>:
1a001ea8:	b580      	push	{r7, lr}
1a001eaa:	b084      	sub	sp, #16
1a001eac:	af00      	add	r7, sp, #0
1a001eae:	6078      	str	r0, [r7, #4]
1a001eb0:	6039      	str	r1, [r7, #0]
1a001eb2:	480d      	ldr	r0, [pc, #52]	; (1a001ee8 <help+0x40>)
1a001eb4:	f7ff fe08 	bl	1a001ac8 <print>
1a001eb8:	2300      	movs	r3, #0
1a001eba:	73fb      	strb	r3, [r7, #15]
1a001ebc:	e009      	b.n	1a001ed2 <help+0x2a>
1a001ebe:	7bfb      	ldrb	r3, [r7, #15]
1a001ec0:	4a0a      	ldr	r2, [pc, #40]	; (1a001eec <help+0x44>)
1a001ec2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001ec6:	4618      	mov	r0, r3
1a001ec8:	f7ff fdfe 	bl	1a001ac8 <print>
1a001ecc:	7bfb      	ldrb	r3, [r7, #15]
1a001ece:	3301      	adds	r3, #1
1a001ed0:	73fb      	strb	r3, [r7, #15]
1a001ed2:	7bfb      	ldrb	r3, [r7, #15]
1a001ed4:	2b2b      	cmp	r3, #43	; 0x2b
1a001ed6:	d9f2      	bls.n	1a001ebe <help+0x16>
1a001ed8:	4803      	ldr	r0, [pc, #12]	; (1a001ee8 <help+0x40>)
1a001eda:	f7ff fdf5 	bl	1a001ac8 <print>
1a001ede:	bf00      	nop
1a001ee0:	3710      	adds	r7, #16
1a001ee2:	46bd      	mov	sp, r7
1a001ee4:	bd80      	pop	{r7, pc}
1a001ee6:	bf00      	nop
1a001ee8:	1a003c24 	.word	0x1a003c24
1a001eec:	10000434 	.word	0x10000434

1a001ef0 <sec1>:
1a001ef0:	b580      	push	{r7, lr}
1a001ef2:	b082      	sub	sp, #8
1a001ef4:	af00      	add	r7, sp, #0
1a001ef6:	6078      	str	r0, [r7, #4]
1a001ef8:	6039      	str	r1, [r7, #0]
1a001efa:	4b10      	ldr	r3, [pc, #64]	; (1a001f3c <sec1+0x4c>)
1a001efc:	2201      	movs	r2, #1
1a001efe:	701a      	strb	r2, [r3, #0]
1a001f00:	683b      	ldr	r3, [r7, #0]
1a001f02:	3304      	adds	r3, #4
1a001f04:	681b      	ldr	r3, [r3, #0]
1a001f06:	4618      	mov	r0, r3
1a001f08:	f001 f990 	bl	1a00322c <atoi>
1a001f0c:	4603      	mov	r3, r0
1a001f0e:	b2da      	uxtb	r2, r3
1a001f10:	4b0b      	ldr	r3, [pc, #44]	; (1a001f40 <sec1+0x50>)
1a001f12:	701a      	strb	r2, [r3, #0]
1a001f14:	683b      	ldr	r3, [r7, #0]
1a001f16:	3308      	adds	r3, #8
1a001f18:	681b      	ldr	r3, [r3, #0]
1a001f1a:	4618      	mov	r0, r3
1a001f1c:	f001 f986 	bl	1a00322c <atoi>
1a001f20:	4603      	mov	r3, r0
1a001f22:	b29a      	uxth	r2, r3
1a001f24:	4b07      	ldr	r3, [pc, #28]	; (1a001f44 <sec1+0x54>)
1a001f26:	801a      	strh	r2, [r3, #0]
1a001f28:	4b07      	ldr	r3, [pc, #28]	; (1a001f48 <sec1+0x58>)
1a001f2a:	2201      	movs	r2, #1
1a001f2c:	701a      	strb	r2, [r3, #0]
1a001f2e:	f7ff fddf 	bl	1a001af0 <configurar_SysTick>
1a001f32:	bf00      	nop
1a001f34:	3708      	adds	r7, #8
1a001f36:	46bd      	mov	sp, r7
1a001f38:	bd80      	pop	{r7, pc}
1a001f3a:	bf00      	nop
1a001f3c:	10000b50 	.word	0x10000b50
1a001f40:	10000b51 	.word	0x10000b51
1a001f44:	10000b52 	.word	0x10000b52
1a001f48:	10000b54 	.word	0x10000b54

1a001f4c <sec2>:
1a001f4c:	b580      	push	{r7, lr}
1a001f4e:	b082      	sub	sp, #8
1a001f50:	af00      	add	r7, sp, #0
1a001f52:	6078      	str	r0, [r7, #4]
1a001f54:	6039      	str	r1, [r7, #0]
1a001f56:	4b10      	ldr	r3, [pc, #64]	; (1a001f98 <sec2+0x4c>)
1a001f58:	2202      	movs	r2, #2
1a001f5a:	701a      	strb	r2, [r3, #0]
1a001f5c:	683b      	ldr	r3, [r7, #0]
1a001f5e:	3304      	adds	r3, #4
1a001f60:	681b      	ldr	r3, [r3, #0]
1a001f62:	4618      	mov	r0, r3
1a001f64:	f001 f962 	bl	1a00322c <atoi>
1a001f68:	4603      	mov	r3, r0
1a001f6a:	b2da      	uxtb	r2, r3
1a001f6c:	4b0b      	ldr	r3, [pc, #44]	; (1a001f9c <sec2+0x50>)
1a001f6e:	701a      	strb	r2, [r3, #0]
1a001f70:	683b      	ldr	r3, [r7, #0]
1a001f72:	3308      	adds	r3, #8
1a001f74:	681b      	ldr	r3, [r3, #0]
1a001f76:	4618      	mov	r0, r3
1a001f78:	f001 f958 	bl	1a00322c <atoi>
1a001f7c:	4603      	mov	r3, r0
1a001f7e:	b29a      	uxth	r2, r3
1a001f80:	4b07      	ldr	r3, [pc, #28]	; (1a001fa0 <sec2+0x54>)
1a001f82:	801a      	strh	r2, [r3, #0]
1a001f84:	4b07      	ldr	r3, [pc, #28]	; (1a001fa4 <sec2+0x58>)
1a001f86:	2201      	movs	r2, #1
1a001f88:	701a      	strb	r2, [r3, #0]
1a001f8a:	f7ff fdb1 	bl	1a001af0 <configurar_SysTick>
1a001f8e:	bf00      	nop
1a001f90:	3708      	adds	r7, #8
1a001f92:	46bd      	mov	sp, r7
1a001f94:	bd80      	pop	{r7, pc}
1a001f96:	bf00      	nop
1a001f98:	10000b50 	.word	0x10000b50
1a001f9c:	10000b51 	.word	0x10000b51
1a001fa0:	10000b52 	.word	0x10000b52
1a001fa4:	10000b54 	.word	0x10000b54

1a001fa8 <led1On>:
1a001fa8:	b580      	push	{r7, lr}
1a001faa:	b082      	sub	sp, #8
1a001fac:	af00      	add	r7, sp, #0
1a001fae:	6078      	str	r0, [r7, #4]
1a001fb0:	6039      	str	r1, [r7, #0]
1a001fb2:	4b06      	ldr	r3, [pc, #24]	; (1a001fcc <led1On+0x24>)
1a001fb4:	7899      	ldrb	r1, [r3, #2]
1a001fb6:	4b05      	ldr	r3, [pc, #20]	; (1a001fcc <led1On+0x24>)
1a001fb8:	78da      	ldrb	r2, [r3, #3]
1a001fba:	2301      	movs	r3, #1
1a001fbc:	4804      	ldr	r0, [pc, #16]	; (1a001fd0 <led1On+0x28>)
1a001fbe:	f7ff ff3d 	bl	1a001e3c <Chip_GPIO_SetPinState>
1a001fc2:	bf00      	nop
1a001fc4:	3708      	adds	r7, #8
1a001fc6:	46bd      	mov	sp, r7
1a001fc8:	bd80      	pop	{r7, pc}
1a001fca:	bf00      	nop
1a001fcc:	1a003a08 	.word	0x1a003a08
1a001fd0:	400f4000 	.word	0x400f4000

1a001fd4 <led2On>:
1a001fd4:	b580      	push	{r7, lr}
1a001fd6:	b082      	sub	sp, #8
1a001fd8:	af00      	add	r7, sp, #0
1a001fda:	6078      	str	r0, [r7, #4]
1a001fdc:	6039      	str	r1, [r7, #0]
1a001fde:	4b06      	ldr	r3, [pc, #24]	; (1a001ff8 <led2On+0x24>)
1a001fe0:	7a19      	ldrb	r1, [r3, #8]
1a001fe2:	4b05      	ldr	r3, [pc, #20]	; (1a001ff8 <led2On+0x24>)
1a001fe4:	7a5a      	ldrb	r2, [r3, #9]
1a001fe6:	2301      	movs	r3, #1
1a001fe8:	4804      	ldr	r0, [pc, #16]	; (1a001ffc <led2On+0x28>)
1a001fea:	f7ff ff27 	bl	1a001e3c <Chip_GPIO_SetPinState>
1a001fee:	bf00      	nop
1a001ff0:	3708      	adds	r7, #8
1a001ff2:	46bd      	mov	sp, r7
1a001ff4:	bd80      	pop	{r7, pc}
1a001ff6:	bf00      	nop
1a001ff8:	1a003a08 	.word	0x1a003a08
1a001ffc:	400f4000 	.word	0x400f4000

1a002000 <led3On>:
1a002000:	b580      	push	{r7, lr}
1a002002:	b082      	sub	sp, #8
1a002004:	af00      	add	r7, sp, #0
1a002006:	6078      	str	r0, [r7, #4]
1a002008:	6039      	str	r1, [r7, #0]
1a00200a:	4b06      	ldr	r3, [pc, #24]	; (1a002024 <led3On+0x24>)
1a00200c:	7b99      	ldrb	r1, [r3, #14]
1a00200e:	4b05      	ldr	r3, [pc, #20]	; (1a002024 <led3On+0x24>)
1a002010:	7bda      	ldrb	r2, [r3, #15]
1a002012:	2301      	movs	r3, #1
1a002014:	4804      	ldr	r0, [pc, #16]	; (1a002028 <led3On+0x28>)
1a002016:	f7ff ff11 	bl	1a001e3c <Chip_GPIO_SetPinState>
1a00201a:	bf00      	nop
1a00201c:	3708      	adds	r7, #8
1a00201e:	46bd      	mov	sp, r7
1a002020:	bd80      	pop	{r7, pc}
1a002022:	bf00      	nop
1a002024:	1a003a08 	.word	0x1a003a08
1a002028:	400f4000 	.word	0x400f4000

1a00202c <led4On>:
1a00202c:	b580      	push	{r7, lr}
1a00202e:	b082      	sub	sp, #8
1a002030:	af00      	add	r7, sp, #0
1a002032:	6078      	str	r0, [r7, #4]
1a002034:	6039      	str	r1, [r7, #0]
1a002036:	4b06      	ldr	r3, [pc, #24]	; (1a002050 <led4On+0x24>)
1a002038:	7d19      	ldrb	r1, [r3, #20]
1a00203a:	4b05      	ldr	r3, [pc, #20]	; (1a002050 <led4On+0x24>)
1a00203c:	7d5a      	ldrb	r2, [r3, #21]
1a00203e:	2301      	movs	r3, #1
1a002040:	4804      	ldr	r0, [pc, #16]	; (1a002054 <led4On+0x28>)
1a002042:	f7ff fefb 	bl	1a001e3c <Chip_GPIO_SetPinState>
1a002046:	bf00      	nop
1a002048:	3708      	adds	r7, #8
1a00204a:	46bd      	mov	sp, r7
1a00204c:	bd80      	pop	{r7, pc}
1a00204e:	bf00      	nop
1a002050:	1a003a08 	.word	0x1a003a08
1a002054:	400f4000 	.word	0x400f4000

1a002058 <led1Off>:
1a002058:	b580      	push	{r7, lr}
1a00205a:	b082      	sub	sp, #8
1a00205c:	af00      	add	r7, sp, #0
1a00205e:	6078      	str	r0, [r7, #4]
1a002060:	6039      	str	r1, [r7, #0]
1a002062:	4b06      	ldr	r3, [pc, #24]	; (1a00207c <led1Off+0x24>)
1a002064:	7899      	ldrb	r1, [r3, #2]
1a002066:	4b05      	ldr	r3, [pc, #20]	; (1a00207c <led1Off+0x24>)
1a002068:	78db      	ldrb	r3, [r3, #3]
1a00206a:	461a      	mov	r2, r3
1a00206c:	4804      	ldr	r0, [pc, #16]	; (1a002080 <led1Off+0x28>)
1a00206e:	f7ff ff01 	bl	1a001e74 <Chip_GPIO_SetPinOutLow>
1a002072:	bf00      	nop
1a002074:	3708      	adds	r7, #8
1a002076:	46bd      	mov	sp, r7
1a002078:	bd80      	pop	{r7, pc}
1a00207a:	bf00      	nop
1a00207c:	1a003a08 	.word	0x1a003a08
1a002080:	400f4000 	.word	0x400f4000

1a002084 <led2Off>:
1a002084:	b580      	push	{r7, lr}
1a002086:	b082      	sub	sp, #8
1a002088:	af00      	add	r7, sp, #0
1a00208a:	6078      	str	r0, [r7, #4]
1a00208c:	6039      	str	r1, [r7, #0]
1a00208e:	4b06      	ldr	r3, [pc, #24]	; (1a0020a8 <led2Off+0x24>)
1a002090:	7a19      	ldrb	r1, [r3, #8]
1a002092:	4b05      	ldr	r3, [pc, #20]	; (1a0020a8 <led2Off+0x24>)
1a002094:	7a5b      	ldrb	r3, [r3, #9]
1a002096:	461a      	mov	r2, r3
1a002098:	4804      	ldr	r0, [pc, #16]	; (1a0020ac <led2Off+0x28>)
1a00209a:	f7ff feeb 	bl	1a001e74 <Chip_GPIO_SetPinOutLow>
1a00209e:	bf00      	nop
1a0020a0:	3708      	adds	r7, #8
1a0020a2:	46bd      	mov	sp, r7
1a0020a4:	bd80      	pop	{r7, pc}
1a0020a6:	bf00      	nop
1a0020a8:	1a003a08 	.word	0x1a003a08
1a0020ac:	400f4000 	.word	0x400f4000

1a0020b0 <led3Off>:
1a0020b0:	b580      	push	{r7, lr}
1a0020b2:	b082      	sub	sp, #8
1a0020b4:	af00      	add	r7, sp, #0
1a0020b6:	6078      	str	r0, [r7, #4]
1a0020b8:	6039      	str	r1, [r7, #0]
1a0020ba:	4b06      	ldr	r3, [pc, #24]	; (1a0020d4 <led3Off+0x24>)
1a0020bc:	7b99      	ldrb	r1, [r3, #14]
1a0020be:	4b05      	ldr	r3, [pc, #20]	; (1a0020d4 <led3Off+0x24>)
1a0020c0:	7bdb      	ldrb	r3, [r3, #15]
1a0020c2:	461a      	mov	r2, r3
1a0020c4:	4804      	ldr	r0, [pc, #16]	; (1a0020d8 <led3Off+0x28>)
1a0020c6:	f7ff fed5 	bl	1a001e74 <Chip_GPIO_SetPinOutLow>
1a0020ca:	bf00      	nop
1a0020cc:	3708      	adds	r7, #8
1a0020ce:	46bd      	mov	sp, r7
1a0020d0:	bd80      	pop	{r7, pc}
1a0020d2:	bf00      	nop
1a0020d4:	1a003a08 	.word	0x1a003a08
1a0020d8:	400f4000 	.word	0x400f4000

1a0020dc <led4Off>:
1a0020dc:	b580      	push	{r7, lr}
1a0020de:	b082      	sub	sp, #8
1a0020e0:	af00      	add	r7, sp, #0
1a0020e2:	6078      	str	r0, [r7, #4]
1a0020e4:	6039      	str	r1, [r7, #0]
1a0020e6:	4b06      	ldr	r3, [pc, #24]	; (1a002100 <led4Off+0x24>)
1a0020e8:	7d19      	ldrb	r1, [r3, #20]
1a0020ea:	4b05      	ldr	r3, [pc, #20]	; (1a002100 <led4Off+0x24>)
1a0020ec:	7d5b      	ldrb	r3, [r3, #21]
1a0020ee:	461a      	mov	r2, r3
1a0020f0:	4804      	ldr	r0, [pc, #16]	; (1a002104 <led4Off+0x28>)
1a0020f2:	f7ff febf 	bl	1a001e74 <Chip_GPIO_SetPinOutLow>
1a0020f6:	bf00      	nop
1a0020f8:	3708      	adds	r7, #8
1a0020fa:	46bd      	mov	sp, r7
1a0020fc:	bd80      	pop	{r7, pc}
1a0020fe:	bf00      	nop
1a002100:	1a003a08 	.word	0x1a003a08
1a002104:	400f4000 	.word	0x400f4000

1a002108 <getMenuItems>:
1a002108:	b480      	push	{r7}
1a00210a:	af00      	add	r7, sp, #0
1a00210c:	4b02      	ldr	r3, [pc, #8]	; (1a002118 <getMenuItems+0x10>)
1a00210e:	4618      	mov	r0, r3
1a002110:	46bd      	mov	sp, r7
1a002112:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002116:	4770      	bx	lr
1a002118:	1a003c34 	.word	0x1a003c34

1a00211c <getMenuItemsCount>:
1a00211c:	b480      	push	{r7}
1a00211e:	af00      	add	r7, sp, #0
1a002120:	230c      	movs	r3, #12
1a002122:	4618      	mov	r0, r3
1a002124:	46bd      	mov	sp, r7
1a002126:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00212a:	4770      	bx	lr

1a00212c <cls>:
1a00212c:	b580      	push	{r7, lr}
1a00212e:	b082      	sub	sp, #8
1a002130:	af00      	add	r7, sp, #0
1a002132:	6078      	str	r0, [r7, #4]
1a002134:	6039      	str	r1, [r7, #0]
1a002136:	4803      	ldr	r0, [pc, #12]	; (1a002144 <cls+0x18>)
1a002138:	f7ff fcc6 	bl	1a001ac8 <print>
1a00213c:	bf00      	nop
1a00213e:	3708      	adds	r7, #8
1a002140:	46bd      	mov	sp, r7
1a002142:	bd80      	pop	{r7, pc}
1a002144:	1a003c28 	.word	0x1a003c28

1a002148 <fpuInit>:
1a002148:	b480      	push	{r7}
1a00214a:	b089      	sub	sp, #36	; 0x24
1a00214c:	af00      	add	r7, sp, #0
1a00214e:	4b16      	ldr	r3, [pc, #88]	; (1a0021a8 <fpuInit+0x60>)
1a002150:	61fb      	str	r3, [r7, #28]
1a002152:	4b16      	ldr	r3, [pc, #88]	; (1a0021ac <fpuInit+0x64>)
1a002154:	61bb      	str	r3, [r7, #24]
1a002156:	4b16      	ldr	r3, [pc, #88]	; (1a0021b0 <fpuInit+0x68>)
1a002158:	617b      	str	r3, [r7, #20]
1a00215a:	2300      	movs	r3, #0
1a00215c:	74fb      	strb	r3, [r7, #19]
1a00215e:	69bb      	ldr	r3, [r7, #24]
1a002160:	681b      	ldr	r3, [r3, #0]
1a002162:	60bb      	str	r3, [r7, #8]
1a002164:	697b      	ldr	r3, [r7, #20]
1a002166:	681b      	ldr	r3, [r3, #0]
1a002168:	607b      	str	r3, [r7, #4]
1a00216a:	68bb      	ldr	r3, [r7, #8]
1a00216c:	4a11      	ldr	r2, [pc, #68]	; (1a0021b4 <fpuInit+0x6c>)
1a00216e:	4293      	cmp	r3, r2
1a002170:	d105      	bne.n	1a00217e <fpuInit+0x36>
1a002172:	687b      	ldr	r3, [r7, #4]
1a002174:	4a10      	ldr	r2, [pc, #64]	; (1a0021b8 <fpuInit+0x70>)
1a002176:	4293      	cmp	r3, r2
1a002178:	d101      	bne.n	1a00217e <fpuInit+0x36>
1a00217a:	2301      	movs	r3, #1
1a00217c:	e000      	b.n	1a002180 <fpuInit+0x38>
1a00217e:	2300      	movs	r3, #0
1a002180:	74fb      	strb	r3, [r7, #19]
1a002182:	7cfb      	ldrb	r3, [r7, #19]
1a002184:	2b00      	cmp	r3, #0
1a002186:	d009      	beq.n	1a00219c <fpuInit+0x54>
1a002188:	69fb      	ldr	r3, [r7, #28]
1a00218a:	681b      	ldr	r3, [r3, #0]
1a00218c:	60fb      	str	r3, [r7, #12]
1a00218e:	68fb      	ldr	r3, [r7, #12]
1a002190:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a002194:	60fb      	str	r3, [r7, #12]
1a002196:	68fa      	ldr	r2, [r7, #12]
1a002198:	69fb      	ldr	r3, [r7, #28]
1a00219a:	601a      	str	r2, [r3, #0]
1a00219c:	bf00      	nop
1a00219e:	3724      	adds	r7, #36	; 0x24
1a0021a0:	46bd      	mov	sp, r7
1a0021a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021a6:	4770      	bx	lr
1a0021a8:	e000ed88 	.word	0xe000ed88
1a0021ac:	e000ef40 	.word	0xe000ef40
1a0021b0:	e000ef44 	.word	0xe000ef44
1a0021b4:	10110021 	.word	0x10110021
1a0021b8:	11000011 	.word	0x11000011

1a0021bc <Chip_Clock_DisableMainPLL>:
1a0021bc:	b480      	push	{r7}
1a0021be:	af00      	add	r7, sp, #0
1a0021c0:	4b05      	ldr	r3, [pc, #20]	; (1a0021d8 <Chip_Clock_DisableMainPLL+0x1c>)
1a0021c2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0021c4:	4a04      	ldr	r2, [pc, #16]	; (1a0021d8 <Chip_Clock_DisableMainPLL+0x1c>)
1a0021c6:	f043 0301 	orr.w	r3, r3, #1
1a0021ca:	6453      	str	r3, [r2, #68]	; 0x44
1a0021cc:	bf00      	nop
1a0021ce:	46bd      	mov	sp, r7
1a0021d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021d4:	4770      	bx	lr
1a0021d6:	bf00      	nop
1a0021d8:	40050000 	.word	0x40050000

1a0021dc <Chip_Clock_SetupMainPLL>:
1a0021dc:	b480      	push	{r7}
1a0021de:	b083      	sub	sp, #12
1a0021e0:	af00      	add	r7, sp, #0
1a0021e2:	6078      	str	r0, [r7, #4]
1a0021e4:	687b      	ldr	r3, [r7, #4]
1a0021e6:	681b      	ldr	r3, [r3, #0]
1a0021e8:	461a      	mov	r2, r3
1a0021ea:	687b      	ldr	r3, [r7, #4]
1a0021ec:	791b      	ldrb	r3, [r3, #4]
1a0021ee:	061b      	lsls	r3, r3, #24
1a0021f0:	4313      	orrs	r3, r2
1a0021f2:	687a      	ldr	r2, [r7, #4]
1a0021f4:	6912      	ldr	r2, [r2, #16]
1a0021f6:	0412      	lsls	r2, r2, #16
1a0021f8:	4313      	orrs	r3, r2
1a0021fa:	687a      	ldr	r2, [r7, #4]
1a0021fc:	6892      	ldr	r2, [r2, #8]
1a0021fe:	0312      	lsls	r2, r2, #12
1a002200:	4313      	orrs	r3, r2
1a002202:	687a      	ldr	r2, [r7, #4]
1a002204:	68d2      	ldr	r2, [r2, #12]
1a002206:	0212      	lsls	r2, r2, #8
1a002208:	4313      	orrs	r3, r2
1a00220a:	4a05      	ldr	r2, [pc, #20]	; (1a002220 <Chip_Clock_SetupMainPLL+0x44>)
1a00220c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002210:	6453      	str	r3, [r2, #68]	; 0x44
1a002212:	bf00      	nop
1a002214:	370c      	adds	r7, #12
1a002216:	46bd      	mov	sp, r7
1a002218:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00221c:	4770      	bx	lr
1a00221e:	bf00      	nop
1a002220:	40050000 	.word	0x40050000

1a002224 <Chip_Clock_MainPLLLocked>:
1a002224:	b480      	push	{r7}
1a002226:	af00      	add	r7, sp, #0
1a002228:	4b06      	ldr	r3, [pc, #24]	; (1a002244 <Chip_Clock_MainPLLLocked+0x20>)
1a00222a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00222c:	f003 0301 	and.w	r3, r3, #1
1a002230:	2b00      	cmp	r3, #0
1a002232:	bf14      	ite	ne
1a002234:	2301      	movne	r3, #1
1a002236:	2300      	moveq	r3, #0
1a002238:	b2db      	uxtb	r3, r3
1a00223a:	4618      	mov	r0, r3
1a00223c:	46bd      	mov	sp, r7
1a00223e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002242:	4770      	bx	lr
1a002244:	40050000 	.word	0x40050000

1a002248 <Chip_SetupCoreClock>:
1a002248:	b590      	push	{r4, r7, lr}
1a00224a:	b08f      	sub	sp, #60	; 0x3c
1a00224c:	af00      	add	r7, sp, #0
1a00224e:	4603      	mov	r3, r0
1a002250:	6039      	str	r1, [r7, #0]
1a002252:	71fb      	strb	r3, [r7, #7]
1a002254:	4613      	mov	r3, r2
1a002256:	71bb      	strb	r3, [r7, #6]
1a002258:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a00225c:	62bb      	str	r3, [r7, #40]	; 0x28
1a00225e:	2300      	movs	r3, #0
1a002260:	633b      	str	r3, [r7, #48]	; 0x30
1a002262:	2300      	movs	r3, #0
1a002264:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002266:	79fb      	ldrb	r3, [r7, #7]
1a002268:	2b06      	cmp	r3, #6
1a00226a:	d101      	bne.n	1a002270 <Chip_SetupCoreClock+0x28>
1a00226c:	f000 fc78 	bl	1a002b60 <Chip_Clock_EnableCrystal>
1a002270:	79f9      	ldrb	r1, [r7, #7]
1a002272:	2300      	movs	r3, #0
1a002274:	2201      	movs	r2, #1
1a002276:	2004      	movs	r0, #4
1a002278:	f000 fe64 	bl	1a002f44 <Chip_Clock_SetBaseClock>
1a00227c:	f7ff ff9e 	bl	1a0021bc <Chip_Clock_DisableMainPLL>
1a002280:	79fb      	ldrb	r3, [r7, #7]
1a002282:	733b      	strb	r3, [r7, #12]
1a002284:	f107 0308 	add.w	r3, r7, #8
1a002288:	4619      	mov	r1, r3
1a00228a:	6838      	ldr	r0, [r7, #0]
1a00228c:	f000 fca0 	bl	1a002bd0 <Chip_Clock_CalcMainPLLValue>
1a002290:	683b      	ldr	r3, [r7, #0]
1a002292:	4a3d      	ldr	r2, [pc, #244]	; (1a002388 <Chip_SetupCoreClock+0x140>)
1a002294:	4293      	cmp	r3, r2
1a002296:	d916      	bls.n	1a0022c6 <Chip_SetupCoreClock+0x7e>
1a002298:	68bb      	ldr	r3, [r7, #8]
1a00229a:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a00229e:	2b00      	cmp	r3, #0
1a0022a0:	d000      	beq.n	1a0022a4 <Chip_SetupCoreClock+0x5c>
1a0022a2:	e7fe      	b.n	1a0022a2 <Chip_SetupCoreClock+0x5a>
1a0022a4:	68bb      	ldr	r3, [r7, #8]
1a0022a6:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0022aa:	2b00      	cmp	r3, #0
1a0022ac:	d006      	beq.n	1a0022bc <Chip_SetupCoreClock+0x74>
1a0022ae:	2301      	movs	r3, #1
1a0022b0:	633b      	str	r3, [r7, #48]	; 0x30
1a0022b2:	68bb      	ldr	r3, [r7, #8]
1a0022b4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0022b8:	60bb      	str	r3, [r7, #8]
1a0022ba:	e004      	b.n	1a0022c6 <Chip_SetupCoreClock+0x7e>
1a0022bc:	2301      	movs	r3, #1
1a0022be:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0022c0:	697b      	ldr	r3, [r7, #20]
1a0022c2:	3301      	adds	r3, #1
1a0022c4:	617b      	str	r3, [r7, #20]
1a0022c6:	f107 0308 	add.w	r3, r7, #8
1a0022ca:	4618      	mov	r0, r3
1a0022cc:	f7ff ff86 	bl	1a0021dc <Chip_Clock_SetupMainPLL>
1a0022d0:	bf00      	nop
1a0022d2:	f7ff ffa7 	bl	1a002224 <Chip_Clock_MainPLLLocked>
1a0022d6:	4603      	mov	r3, r0
1a0022d8:	2b00      	cmp	r3, #0
1a0022da:	d0fa      	beq.n	1a0022d2 <Chip_SetupCoreClock+0x8a>
1a0022dc:	2300      	movs	r3, #0
1a0022de:	2201      	movs	r2, #1
1a0022e0:	2109      	movs	r1, #9
1a0022e2:	2004      	movs	r0, #4
1a0022e4:	f000 fe2e 	bl	1a002f44 <Chip_Clock_SetBaseClock>
1a0022e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a0022ea:	2b00      	cmp	r3, #0
1a0022ec:	d012      	beq.n	1a002314 <Chip_SetupCoreClock+0xcc>
1a0022ee:	f641 3358 	movw	r3, #7000	; 0x1b58
1a0022f2:	62bb      	str	r3, [r7, #40]	; 0x28
1a0022f4:	bf00      	nop
1a0022f6:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0022f8:	1e5a      	subs	r2, r3, #1
1a0022fa:	62ba      	str	r2, [r7, #40]	; 0x28
1a0022fc:	2b00      	cmp	r3, #0
1a0022fe:	d1fa      	bne.n	1a0022f6 <Chip_SetupCoreClock+0xae>
1a002300:	68bb      	ldr	r3, [r7, #8]
1a002302:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a002306:	60bb      	str	r3, [r7, #8]
1a002308:	f107 0308 	add.w	r3, r7, #8
1a00230c:	4618      	mov	r0, r3
1a00230e:	f7ff ff65 	bl	1a0021dc <Chip_Clock_SetupMainPLL>
1a002312:	e013      	b.n	1a00233c <Chip_SetupCoreClock+0xf4>
1a002314:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002316:	2b00      	cmp	r3, #0
1a002318:	d010      	beq.n	1a00233c <Chip_SetupCoreClock+0xf4>
1a00231a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00231e:	62bb      	str	r3, [r7, #40]	; 0x28
1a002320:	bf00      	nop
1a002322:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a002324:	1e5a      	subs	r2, r3, #1
1a002326:	62ba      	str	r2, [r7, #40]	; 0x28
1a002328:	2b00      	cmp	r3, #0
1a00232a:	d1fa      	bne.n	1a002322 <Chip_SetupCoreClock+0xda>
1a00232c:	697b      	ldr	r3, [r7, #20]
1a00232e:	3b01      	subs	r3, #1
1a002330:	617b      	str	r3, [r7, #20]
1a002332:	f107 0308 	add.w	r3, r7, #8
1a002336:	4618      	mov	r0, r3
1a002338:	f7ff ff50 	bl	1a0021dc <Chip_Clock_SetupMainPLL>
1a00233c:	79bb      	ldrb	r3, [r7, #6]
1a00233e:	2b00      	cmp	r3, #0
1a002340:	d01e      	beq.n	1a002380 <Chip_SetupCoreClock+0x138>
1a002342:	2300      	movs	r3, #0
1a002344:	637b      	str	r3, [r7, #52]	; 0x34
1a002346:	e018      	b.n	1a00237a <Chip_SetupCoreClock+0x132>
1a002348:	4a10      	ldr	r2, [pc, #64]	; (1a00238c <Chip_SetupCoreClock+0x144>)
1a00234a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00234c:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a002350:	4a0e      	ldr	r2, [pc, #56]	; (1a00238c <Chip_SetupCoreClock+0x144>)
1a002352:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002354:	009b      	lsls	r3, r3, #2
1a002356:	4413      	add	r3, r2
1a002358:	7859      	ldrb	r1, [r3, #1]
1a00235a:	4a0c      	ldr	r2, [pc, #48]	; (1a00238c <Chip_SetupCoreClock+0x144>)
1a00235c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00235e:	009b      	lsls	r3, r3, #2
1a002360:	4413      	add	r3, r2
1a002362:	789c      	ldrb	r4, [r3, #2]
1a002364:	4a09      	ldr	r2, [pc, #36]	; (1a00238c <Chip_SetupCoreClock+0x144>)
1a002366:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002368:	009b      	lsls	r3, r3, #2
1a00236a:	4413      	add	r3, r2
1a00236c:	78db      	ldrb	r3, [r3, #3]
1a00236e:	4622      	mov	r2, r4
1a002370:	f000 fde8 	bl	1a002f44 <Chip_Clock_SetBaseClock>
1a002374:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002376:	3301      	adds	r3, #1
1a002378:	637b      	str	r3, [r7, #52]	; 0x34
1a00237a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00237c:	2b11      	cmp	r3, #17
1a00237e:	d9e3      	bls.n	1a002348 <Chip_SetupCoreClock+0x100>
1a002380:	bf00      	nop
1a002382:	373c      	adds	r7, #60	; 0x3c
1a002384:	46bd      	mov	sp, r7
1a002386:	bd90      	pop	{r4, r7, pc}
1a002388:	068e7780 	.word	0x068e7780
1a00238c:	1a003c94 	.word	0x1a003c94

1a002390 <Chip_SetupXtalClocking>:
1a002390:	b580      	push	{r7, lr}
1a002392:	af00      	add	r7, sp, #0
1a002394:	2201      	movs	r2, #1
1a002396:	4903      	ldr	r1, [pc, #12]	; (1a0023a4 <Chip_SetupXtalClocking+0x14>)
1a002398:	2006      	movs	r0, #6
1a00239a:	f7ff ff55 	bl	1a002248 <Chip_SetupCoreClock>
1a00239e:	bf00      	nop
1a0023a0:	bd80      	pop	{r7, pc}
1a0023a2:	bf00      	nop
1a0023a4:	0c28cb00 	.word	0x0c28cb00

1a0023a8 <Chip_UART_TXDisable>:
1a0023a8:	b480      	push	{r7}
1a0023aa:	b083      	sub	sp, #12
1a0023ac:	af00      	add	r7, sp, #0
1a0023ae:	6078      	str	r0, [r7, #4]
1a0023b0:	687b      	ldr	r3, [r7, #4]
1a0023b2:	2200      	movs	r2, #0
1a0023b4:	65da      	str	r2, [r3, #92]	; 0x5c
1a0023b6:	bf00      	nop
1a0023b8:	370c      	adds	r7, #12
1a0023ba:	46bd      	mov	sp, r7
1a0023bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0023c0:	4770      	bx	lr

1a0023c2 <Chip_UART_SendByte>:
1a0023c2:	b480      	push	{r7}
1a0023c4:	b083      	sub	sp, #12
1a0023c6:	af00      	add	r7, sp, #0
1a0023c8:	6078      	str	r0, [r7, #4]
1a0023ca:	460b      	mov	r3, r1
1a0023cc:	70fb      	strb	r3, [r7, #3]
1a0023ce:	78fa      	ldrb	r2, [r7, #3]
1a0023d0:	687b      	ldr	r3, [r7, #4]
1a0023d2:	601a      	str	r2, [r3, #0]
1a0023d4:	bf00      	nop
1a0023d6:	370c      	adds	r7, #12
1a0023d8:	46bd      	mov	sp, r7
1a0023da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0023de:	4770      	bx	lr

1a0023e0 <Chip_UART_SetupFIFOS>:
1a0023e0:	b480      	push	{r7}
1a0023e2:	b083      	sub	sp, #12
1a0023e4:	af00      	add	r7, sp, #0
1a0023e6:	6078      	str	r0, [r7, #4]
1a0023e8:	6039      	str	r1, [r7, #0]
1a0023ea:	687b      	ldr	r3, [r7, #4]
1a0023ec:	683a      	ldr	r2, [r7, #0]
1a0023ee:	609a      	str	r2, [r3, #8]
1a0023f0:	bf00      	nop
1a0023f2:	370c      	adds	r7, #12
1a0023f4:	46bd      	mov	sp, r7
1a0023f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0023fa:	4770      	bx	lr

1a0023fc <Chip_UART_ConfigData>:
1a0023fc:	b480      	push	{r7}
1a0023fe:	b083      	sub	sp, #12
1a002400:	af00      	add	r7, sp, #0
1a002402:	6078      	str	r0, [r7, #4]
1a002404:	6039      	str	r1, [r7, #0]
1a002406:	687b      	ldr	r3, [r7, #4]
1a002408:	683a      	ldr	r2, [r7, #0]
1a00240a:	60da      	str	r2, [r3, #12]
1a00240c:	bf00      	nop
1a00240e:	370c      	adds	r7, #12
1a002410:	46bd      	mov	sp, r7
1a002412:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002416:	4770      	bx	lr

1a002418 <Chip_UART_EnableDivisorAccess>:
1a002418:	b480      	push	{r7}
1a00241a:	b083      	sub	sp, #12
1a00241c:	af00      	add	r7, sp, #0
1a00241e:	6078      	str	r0, [r7, #4]
1a002420:	687b      	ldr	r3, [r7, #4]
1a002422:	68db      	ldr	r3, [r3, #12]
1a002424:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a002428:	687b      	ldr	r3, [r7, #4]
1a00242a:	60da      	str	r2, [r3, #12]
1a00242c:	bf00      	nop
1a00242e:	370c      	adds	r7, #12
1a002430:	46bd      	mov	sp, r7
1a002432:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002436:	4770      	bx	lr

1a002438 <Chip_UART_DisableDivisorAccess>:
1a002438:	b480      	push	{r7}
1a00243a:	b083      	sub	sp, #12
1a00243c:	af00      	add	r7, sp, #0
1a00243e:	6078      	str	r0, [r7, #4]
1a002440:	687b      	ldr	r3, [r7, #4]
1a002442:	68db      	ldr	r3, [r3, #12]
1a002444:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a002448:	687b      	ldr	r3, [r7, #4]
1a00244a:	60da      	str	r2, [r3, #12]
1a00244c:	bf00      	nop
1a00244e:	370c      	adds	r7, #12
1a002450:	46bd      	mov	sp, r7
1a002452:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002456:	4770      	bx	lr

1a002458 <Chip_UART_SetDivisorLatches>:
1a002458:	b480      	push	{r7}
1a00245a:	b083      	sub	sp, #12
1a00245c:	af00      	add	r7, sp, #0
1a00245e:	6078      	str	r0, [r7, #4]
1a002460:	460b      	mov	r3, r1
1a002462:	70fb      	strb	r3, [r7, #3]
1a002464:	4613      	mov	r3, r2
1a002466:	70bb      	strb	r3, [r7, #2]
1a002468:	78fa      	ldrb	r2, [r7, #3]
1a00246a:	687b      	ldr	r3, [r7, #4]
1a00246c:	601a      	str	r2, [r3, #0]
1a00246e:	78ba      	ldrb	r2, [r7, #2]
1a002470:	687b      	ldr	r3, [r7, #4]
1a002472:	605a      	str	r2, [r3, #4]
1a002474:	bf00      	nop
1a002476:	370c      	adds	r7, #12
1a002478:	46bd      	mov	sp, r7
1a00247a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00247e:	4770      	bx	lr

1a002480 <Chip_UART_ReadLineStatus>:
1a002480:	b480      	push	{r7}
1a002482:	b083      	sub	sp, #12
1a002484:	af00      	add	r7, sp, #0
1a002486:	6078      	str	r0, [r7, #4]
1a002488:	687b      	ldr	r3, [r7, #4]
1a00248a:	695b      	ldr	r3, [r3, #20]
1a00248c:	4618      	mov	r0, r3
1a00248e:	370c      	adds	r7, #12
1a002490:	46bd      	mov	sp, r7
1a002492:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002496:	4770      	bx	lr

1a002498 <Chip_UART_GetIndex>:
1a002498:	b480      	push	{r7}
1a00249a:	b085      	sub	sp, #20
1a00249c:	af00      	add	r7, sp, #0
1a00249e:	6078      	str	r0, [r7, #4]
1a0024a0:	687b      	ldr	r3, [r7, #4]
1a0024a2:	60fb      	str	r3, [r7, #12]
1a0024a4:	68fb      	ldr	r3, [r7, #12]
1a0024a6:	4a10      	ldr	r2, [pc, #64]	; (1a0024e8 <Chip_UART_GetIndex+0x50>)
1a0024a8:	4293      	cmp	r3, r2
1a0024aa:	d00f      	beq.n	1a0024cc <Chip_UART_GetIndex+0x34>
1a0024ac:	4a0e      	ldr	r2, [pc, #56]	; (1a0024e8 <Chip_UART_GetIndex+0x50>)
1a0024ae:	4293      	cmp	r3, r2
1a0024b0:	d803      	bhi.n	1a0024ba <Chip_UART_GetIndex+0x22>
1a0024b2:	4a0e      	ldr	r2, [pc, #56]	; (1a0024ec <Chip_UART_GetIndex+0x54>)
1a0024b4:	4293      	cmp	r3, r2
1a0024b6:	d007      	beq.n	1a0024c8 <Chip_UART_GetIndex+0x30>
1a0024b8:	e00e      	b.n	1a0024d8 <Chip_UART_GetIndex+0x40>
1a0024ba:	4a0d      	ldr	r2, [pc, #52]	; (1a0024f0 <Chip_UART_GetIndex+0x58>)
1a0024bc:	4293      	cmp	r3, r2
1a0024be:	d007      	beq.n	1a0024d0 <Chip_UART_GetIndex+0x38>
1a0024c0:	4a0c      	ldr	r2, [pc, #48]	; (1a0024f4 <Chip_UART_GetIndex+0x5c>)
1a0024c2:	4293      	cmp	r3, r2
1a0024c4:	d006      	beq.n	1a0024d4 <Chip_UART_GetIndex+0x3c>
1a0024c6:	e007      	b.n	1a0024d8 <Chip_UART_GetIndex+0x40>
1a0024c8:	2300      	movs	r3, #0
1a0024ca:	e006      	b.n	1a0024da <Chip_UART_GetIndex+0x42>
1a0024cc:	2301      	movs	r3, #1
1a0024ce:	e004      	b.n	1a0024da <Chip_UART_GetIndex+0x42>
1a0024d0:	2302      	movs	r3, #2
1a0024d2:	e002      	b.n	1a0024da <Chip_UART_GetIndex+0x42>
1a0024d4:	2303      	movs	r3, #3
1a0024d6:	e000      	b.n	1a0024da <Chip_UART_GetIndex+0x42>
1a0024d8:	2300      	movs	r3, #0
1a0024da:	4618      	mov	r0, r3
1a0024dc:	3714      	adds	r7, #20
1a0024de:	46bd      	mov	sp, r7
1a0024e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024e4:	4770      	bx	lr
1a0024e6:	bf00      	nop
1a0024e8:	40082000 	.word	0x40082000
1a0024ec:	40081000 	.word	0x40081000
1a0024f0:	400c1000 	.word	0x400c1000
1a0024f4:	400c2000 	.word	0x400c2000

1a0024f8 <Chip_UART_Init>:
1a0024f8:	b580      	push	{r7, lr}
1a0024fa:	b084      	sub	sp, #16
1a0024fc:	af00      	add	r7, sp, #0
1a0024fe:	6078      	str	r0, [r7, #4]
1a002500:	68fb      	ldr	r3, [r7, #12]
1a002502:	6878      	ldr	r0, [r7, #4]
1a002504:	f7ff ffc8 	bl	1a002498 <Chip_UART_GetIndex>
1a002508:	4602      	mov	r2, r0
1a00250a:	4b1b      	ldr	r3, [pc, #108]	; (1a002578 <Chip_UART_Init+0x80>)
1a00250c:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a002510:	2301      	movs	r3, #1
1a002512:	2201      	movs	r2, #1
1a002514:	2101      	movs	r1, #1
1a002516:	f000 fd89 	bl	1a00302c <Chip_Clock_EnableOpts>
1a00251a:	2107      	movs	r1, #7
1a00251c:	6878      	ldr	r0, [r7, #4]
1a00251e:	f7ff ff5f 	bl	1a0023e0 <Chip_UART_SetupFIFOS>
1a002522:	6878      	ldr	r0, [r7, #4]
1a002524:	f7ff ff40 	bl	1a0023a8 <Chip_UART_TXDisable>
1a002528:	687b      	ldr	r3, [r7, #4]
1a00252a:	2200      	movs	r2, #0
1a00252c:	605a      	str	r2, [r3, #4]
1a00252e:	687b      	ldr	r3, [r7, #4]
1a002530:	2200      	movs	r2, #0
1a002532:	60da      	str	r2, [r3, #12]
1a002534:	687b      	ldr	r3, [r7, #4]
1a002536:	2200      	movs	r2, #0
1a002538:	621a      	str	r2, [r3, #32]
1a00253a:	687b      	ldr	r3, [r7, #4]
1a00253c:	2200      	movs	r2, #0
1a00253e:	64da      	str	r2, [r3, #76]	; 0x4c
1a002540:	687b      	ldr	r3, [r7, #4]
1a002542:	2200      	movs	r2, #0
1a002544:	655a      	str	r2, [r3, #84]	; 0x54
1a002546:	687b      	ldr	r3, [r7, #4]
1a002548:	2200      	movs	r2, #0
1a00254a:	651a      	str	r2, [r3, #80]	; 0x50
1a00254c:	687b      	ldr	r3, [r7, #4]
1a00254e:	4a0b      	ldr	r2, [pc, #44]	; (1a00257c <Chip_UART_Init+0x84>)
1a002550:	4293      	cmp	r3, r2
1a002552:	d105      	bne.n	1a002560 <Chip_UART_Init+0x68>
1a002554:	687b      	ldr	r3, [r7, #4]
1a002556:	2200      	movs	r2, #0
1a002558:	611a      	str	r2, [r3, #16]
1a00255a:	687b      	ldr	r3, [r7, #4]
1a00255c:	699b      	ldr	r3, [r3, #24]
1a00255e:	60fb      	str	r3, [r7, #12]
1a002560:	2103      	movs	r1, #3
1a002562:	6878      	ldr	r0, [r7, #4]
1a002564:	f7ff ff4a 	bl	1a0023fc <Chip_UART_ConfigData>
1a002568:	687b      	ldr	r3, [r7, #4]
1a00256a:	2210      	movs	r2, #16
1a00256c:	629a      	str	r2, [r3, #40]	; 0x28
1a00256e:	bf00      	nop
1a002570:	3710      	adds	r7, #16
1a002572:	46bd      	mov	sp, r7
1a002574:	bd80      	pop	{r7, pc}
1a002576:	bf00      	nop
1a002578:	1a003cdc 	.word	0x1a003cdc
1a00257c:	40082000 	.word	0x40082000

1a002580 <Chip_UART_Send>:
1a002580:	b580      	push	{r7, lr}
1a002582:	b086      	sub	sp, #24
1a002584:	af00      	add	r7, sp, #0
1a002586:	60f8      	str	r0, [r7, #12]
1a002588:	60b9      	str	r1, [r7, #8]
1a00258a:	607a      	str	r2, [r7, #4]
1a00258c:	2300      	movs	r3, #0
1a00258e:	617b      	str	r3, [r7, #20]
1a002590:	68bb      	ldr	r3, [r7, #8]
1a002592:	613b      	str	r3, [r7, #16]
1a002594:	e00b      	b.n	1a0025ae <Chip_UART_Send+0x2e>
1a002596:	693b      	ldr	r3, [r7, #16]
1a002598:	781b      	ldrb	r3, [r3, #0]
1a00259a:	4619      	mov	r1, r3
1a00259c:	68f8      	ldr	r0, [r7, #12]
1a00259e:	f7ff ff10 	bl	1a0023c2 <Chip_UART_SendByte>
1a0025a2:	693b      	ldr	r3, [r7, #16]
1a0025a4:	3301      	adds	r3, #1
1a0025a6:	613b      	str	r3, [r7, #16]
1a0025a8:	697b      	ldr	r3, [r7, #20]
1a0025aa:	3301      	adds	r3, #1
1a0025ac:	617b      	str	r3, [r7, #20]
1a0025ae:	697a      	ldr	r2, [r7, #20]
1a0025b0:	687b      	ldr	r3, [r7, #4]
1a0025b2:	429a      	cmp	r2, r3
1a0025b4:	da07      	bge.n	1a0025c6 <Chip_UART_Send+0x46>
1a0025b6:	68f8      	ldr	r0, [r7, #12]
1a0025b8:	f7ff ff62 	bl	1a002480 <Chip_UART_ReadLineStatus>
1a0025bc:	4603      	mov	r3, r0
1a0025be:	f003 0320 	and.w	r3, r3, #32
1a0025c2:	2b00      	cmp	r3, #0
1a0025c4:	d1e7      	bne.n	1a002596 <Chip_UART_Send+0x16>
1a0025c6:	697b      	ldr	r3, [r7, #20]
1a0025c8:	4618      	mov	r0, r3
1a0025ca:	3718      	adds	r7, #24
1a0025cc:	46bd      	mov	sp, r7
1a0025ce:	bd80      	pop	{r7, pc}

1a0025d0 <Chip_UART_SendBlocking>:
1a0025d0:	b580      	push	{r7, lr}
1a0025d2:	b088      	sub	sp, #32
1a0025d4:	af00      	add	r7, sp, #0
1a0025d6:	60f8      	str	r0, [r7, #12]
1a0025d8:	60b9      	str	r1, [r7, #8]
1a0025da:	607a      	str	r2, [r7, #4]
1a0025dc:	2300      	movs	r3, #0
1a0025de:	61fb      	str	r3, [r7, #28]
1a0025e0:	68bb      	ldr	r3, [r7, #8]
1a0025e2:	61bb      	str	r3, [r7, #24]
1a0025e4:	e011      	b.n	1a00260a <Chip_UART_SendBlocking+0x3a>
1a0025e6:	687a      	ldr	r2, [r7, #4]
1a0025e8:	69b9      	ldr	r1, [r7, #24]
1a0025ea:	68f8      	ldr	r0, [r7, #12]
1a0025ec:	f7ff ffc8 	bl	1a002580 <Chip_UART_Send>
1a0025f0:	6178      	str	r0, [r7, #20]
1a0025f2:	687a      	ldr	r2, [r7, #4]
1a0025f4:	697b      	ldr	r3, [r7, #20]
1a0025f6:	1ad3      	subs	r3, r2, r3
1a0025f8:	607b      	str	r3, [r7, #4]
1a0025fa:	69fa      	ldr	r2, [r7, #28]
1a0025fc:	697b      	ldr	r3, [r7, #20]
1a0025fe:	4413      	add	r3, r2
1a002600:	61fb      	str	r3, [r7, #28]
1a002602:	697b      	ldr	r3, [r7, #20]
1a002604:	69ba      	ldr	r2, [r7, #24]
1a002606:	4413      	add	r3, r2
1a002608:	61bb      	str	r3, [r7, #24]
1a00260a:	687b      	ldr	r3, [r7, #4]
1a00260c:	2b00      	cmp	r3, #0
1a00260e:	dcea      	bgt.n	1a0025e6 <Chip_UART_SendBlocking+0x16>
1a002610:	69fb      	ldr	r3, [r7, #28]
1a002612:	4618      	mov	r0, r3
1a002614:	3720      	adds	r7, #32
1a002616:	46bd      	mov	sp, r7
1a002618:	bd80      	pop	{r7, pc}
1a00261a:	Address 0x000000001a00261a is out of bounds.


1a00261c <Chip_UART_SetBaud>:
1a00261c:	b580      	push	{r7, lr}
1a00261e:	b086      	sub	sp, #24
1a002620:	af00      	add	r7, sp, #0
1a002622:	6078      	str	r0, [r7, #4]
1a002624:	6039      	str	r1, [r7, #0]
1a002626:	6878      	ldr	r0, [r7, #4]
1a002628:	f7ff ff36 	bl	1a002498 <Chip_UART_GetIndex>
1a00262c:	4602      	mov	r2, r0
1a00262e:	4b16      	ldr	r3, [pc, #88]	; (1a002688 <Chip_UART_SetBaud+0x6c>)
1a002630:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a002634:	4618      	mov	r0, r3
1a002636:	f000 fd67 	bl	1a003108 <Chip_Clock_GetRate>
1a00263a:	6178      	str	r0, [r7, #20]
1a00263c:	683b      	ldr	r3, [r7, #0]
1a00263e:	011b      	lsls	r3, r3, #4
1a002640:	697a      	ldr	r2, [r7, #20]
1a002642:	fbb2 f3f3 	udiv	r3, r2, r3
1a002646:	613b      	str	r3, [r7, #16]
1a002648:	693b      	ldr	r3, [r7, #16]
1a00264a:	0a1b      	lsrs	r3, r3, #8
1a00264c:	60fb      	str	r3, [r7, #12]
1a00264e:	68fb      	ldr	r3, [r7, #12]
1a002650:	021b      	lsls	r3, r3, #8
1a002652:	693a      	ldr	r2, [r7, #16]
1a002654:	1ad3      	subs	r3, r2, r3
1a002656:	60bb      	str	r3, [r7, #8]
1a002658:	6878      	ldr	r0, [r7, #4]
1a00265a:	f7ff fedd 	bl	1a002418 <Chip_UART_EnableDivisorAccess>
1a00265e:	68bb      	ldr	r3, [r7, #8]
1a002660:	b2db      	uxtb	r3, r3
1a002662:	68fa      	ldr	r2, [r7, #12]
1a002664:	b2d2      	uxtb	r2, r2
1a002666:	4619      	mov	r1, r3
1a002668:	6878      	ldr	r0, [r7, #4]
1a00266a:	f7ff fef5 	bl	1a002458 <Chip_UART_SetDivisorLatches>
1a00266e:	6878      	ldr	r0, [r7, #4]
1a002670:	f7ff fee2 	bl	1a002438 <Chip_UART_DisableDivisorAccess>
1a002674:	697a      	ldr	r2, [r7, #20]
1a002676:	693b      	ldr	r3, [r7, #16]
1a002678:	fbb2 f3f3 	udiv	r3, r2, r3
1a00267c:	091b      	lsrs	r3, r3, #4
1a00267e:	4618      	mov	r0, r3
1a002680:	3718      	adds	r7, #24
1a002682:	46bd      	mov	sp, r7
1a002684:	bd80      	pop	{r7, pc}
1a002686:	bf00      	nop
1a002688:	1a003ce4 	.word	0x1a003ce4

1a00268c <Chip_TIMER_Enable>:
1a00268c:	b480      	push	{r7}
1a00268e:	b083      	sub	sp, #12
1a002690:	af00      	add	r7, sp, #0
1a002692:	6078      	str	r0, [r7, #4]
1a002694:	687b      	ldr	r3, [r7, #4]
1a002696:	685b      	ldr	r3, [r3, #4]
1a002698:	f043 0201 	orr.w	r2, r3, #1
1a00269c:	687b      	ldr	r3, [r7, #4]
1a00269e:	605a      	str	r2, [r3, #4]
1a0026a0:	bf00      	nop
1a0026a2:	370c      	adds	r7, #12
1a0026a4:	46bd      	mov	sp, r7
1a0026a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026aa:	4770      	bx	lr

1a0026ac <Chip_TIMER_ReadCount>:
1a0026ac:	b480      	push	{r7}
1a0026ae:	b083      	sub	sp, #12
1a0026b0:	af00      	add	r7, sp, #0
1a0026b2:	6078      	str	r0, [r7, #4]
1a0026b4:	687b      	ldr	r3, [r7, #4]
1a0026b6:	689b      	ldr	r3, [r3, #8]
1a0026b8:	4618      	mov	r0, r3
1a0026ba:	370c      	adds	r7, #12
1a0026bc:	46bd      	mov	sp, r7
1a0026be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026c2:	4770      	bx	lr

1a0026c4 <Chip_TIMER_PrescaleSet>:
1a0026c4:	b480      	push	{r7}
1a0026c6:	b083      	sub	sp, #12
1a0026c8:	af00      	add	r7, sp, #0
1a0026ca:	6078      	str	r0, [r7, #4]
1a0026cc:	6039      	str	r1, [r7, #0]
1a0026ce:	687b      	ldr	r3, [r7, #4]
1a0026d0:	683a      	ldr	r2, [r7, #0]
1a0026d2:	60da      	str	r2, [r3, #12]
1a0026d4:	bf00      	nop
1a0026d6:	370c      	adds	r7, #12
1a0026d8:	46bd      	mov	sp, r7
1a0026da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026de:	4770      	bx	lr

1a0026e0 <StopWatch_Init>:
1a0026e0:	b580      	push	{r7, lr}
1a0026e2:	b082      	sub	sp, #8
1a0026e4:	af00      	add	r7, sp, #0
1a0026e6:	2308      	movs	r3, #8
1a0026e8:	607b      	str	r3, [r7, #4]
1a0026ea:	4814      	ldr	r0, [pc, #80]	; (1a00273c <StopWatch_Init+0x5c>)
1a0026ec:	f000 fd8e 	bl	1a00320c <Chip_TIMER_Init>
1a0026f0:	687b      	ldr	r3, [r7, #4]
1a0026f2:	3b01      	subs	r3, #1
1a0026f4:	4619      	mov	r1, r3
1a0026f6:	4811      	ldr	r0, [pc, #68]	; (1a00273c <StopWatch_Init+0x5c>)
1a0026f8:	f7ff ffe4 	bl	1a0026c4 <Chip_TIMER_PrescaleSet>
1a0026fc:	480f      	ldr	r0, [pc, #60]	; (1a00273c <StopWatch_Init+0x5c>)
1a0026fe:	f7ff ffc5 	bl	1a00268c <Chip_TIMER_Enable>
1a002702:	2084      	movs	r0, #132	; 0x84
1a002704:	f000 fd00 	bl	1a003108 <Chip_Clock_GetRate>
1a002708:	4602      	mov	r2, r0
1a00270a:	687b      	ldr	r3, [r7, #4]
1a00270c:	fbb2 f3f3 	udiv	r3, r2, r3
1a002710:	4a0b      	ldr	r2, [pc, #44]	; (1a002740 <StopWatch_Init+0x60>)
1a002712:	6013      	str	r3, [r2, #0]
1a002714:	4b0a      	ldr	r3, [pc, #40]	; (1a002740 <StopWatch_Init+0x60>)
1a002716:	681b      	ldr	r3, [r3, #0]
1a002718:	4a0a      	ldr	r2, [pc, #40]	; (1a002744 <StopWatch_Init+0x64>)
1a00271a:	fba2 2303 	umull	r2, r3, r2, r3
1a00271e:	099b      	lsrs	r3, r3, #6
1a002720:	4a09      	ldr	r2, [pc, #36]	; (1a002748 <StopWatch_Init+0x68>)
1a002722:	6013      	str	r3, [r2, #0]
1a002724:	4b06      	ldr	r3, [pc, #24]	; (1a002740 <StopWatch_Init+0x60>)
1a002726:	681b      	ldr	r3, [r3, #0]
1a002728:	4a08      	ldr	r2, [pc, #32]	; (1a00274c <StopWatch_Init+0x6c>)
1a00272a:	fba2 2303 	umull	r2, r3, r2, r3
1a00272e:	0c9b      	lsrs	r3, r3, #18
1a002730:	4a07      	ldr	r2, [pc, #28]	; (1a002750 <StopWatch_Init+0x70>)
1a002732:	6013      	str	r3, [r2, #0]
1a002734:	bf00      	nop
1a002736:	3708      	adds	r7, #8
1a002738:	46bd      	mov	sp, r7
1a00273a:	bd80      	pop	{r7, pc}
1a00273c:	40084000 	.word	0x40084000
1a002740:	100005d8 	.word	0x100005d8
1a002744:	10624dd3 	.word	0x10624dd3
1a002748:	100005dc 	.word	0x100005dc
1a00274c:	431bde83 	.word	0x431bde83
1a002750:	100005e0 	.word	0x100005e0

1a002754 <StopWatch_Start>:
1a002754:	b580      	push	{r7, lr}
1a002756:	af00      	add	r7, sp, #0
1a002758:	4802      	ldr	r0, [pc, #8]	; (1a002764 <StopWatch_Start+0x10>)
1a00275a:	f7ff ffa7 	bl	1a0026ac <Chip_TIMER_ReadCount>
1a00275e:	4603      	mov	r3, r0
1a002760:	4618      	mov	r0, r3
1a002762:	bd80      	pop	{r7, pc}
1a002764:	40084000 	.word	0x40084000

1a002768 <StopWatch_MsToTicks>:
1a002768:	b480      	push	{r7}
1a00276a:	b083      	sub	sp, #12
1a00276c:	af00      	add	r7, sp, #0
1a00276e:	6078      	str	r0, [r7, #4]
1a002770:	4b05      	ldr	r3, [pc, #20]	; (1a002788 <StopWatch_MsToTicks+0x20>)
1a002772:	681b      	ldr	r3, [r3, #0]
1a002774:	687a      	ldr	r2, [r7, #4]
1a002776:	fb02 f303 	mul.w	r3, r2, r3
1a00277a:	4618      	mov	r0, r3
1a00277c:	370c      	adds	r7, #12
1a00277e:	46bd      	mov	sp, r7
1a002780:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002784:	4770      	bx	lr
1a002786:	bf00      	nop
1a002788:	100005dc 	.word	0x100005dc

1a00278c <RingBuffer_Init>:
1a00278c:	b480      	push	{r7}
1a00278e:	b085      	sub	sp, #20
1a002790:	af00      	add	r7, sp, #0
1a002792:	60f8      	str	r0, [r7, #12]
1a002794:	60b9      	str	r1, [r7, #8]
1a002796:	607a      	str	r2, [r7, #4]
1a002798:	603b      	str	r3, [r7, #0]
1a00279a:	68fb      	ldr	r3, [r7, #12]
1a00279c:	68ba      	ldr	r2, [r7, #8]
1a00279e:	601a      	str	r2, [r3, #0]
1a0027a0:	68fb      	ldr	r3, [r7, #12]
1a0027a2:	683a      	ldr	r2, [r7, #0]
1a0027a4:	605a      	str	r2, [r3, #4]
1a0027a6:	68fb      	ldr	r3, [r7, #12]
1a0027a8:	687a      	ldr	r2, [r7, #4]
1a0027aa:	609a      	str	r2, [r3, #8]
1a0027ac:	68fb      	ldr	r3, [r7, #12]
1a0027ae:	2200      	movs	r2, #0
1a0027b0:	611a      	str	r2, [r3, #16]
1a0027b2:	68fb      	ldr	r3, [r7, #12]
1a0027b4:	691a      	ldr	r2, [r3, #16]
1a0027b6:	68fb      	ldr	r3, [r7, #12]
1a0027b8:	60da      	str	r2, [r3, #12]
1a0027ba:	2301      	movs	r3, #1
1a0027bc:	4618      	mov	r0, r3
1a0027be:	3714      	adds	r7, #20
1a0027c0:	46bd      	mov	sp, r7
1a0027c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0027c6:	4770      	bx	lr

1a0027c8 <ABS>:
1a0027c8:	b480      	push	{r7}
1a0027ca:	b083      	sub	sp, #12
1a0027cc:	af00      	add	r7, sp, #0
1a0027ce:	6078      	str	r0, [r7, #4]
1a0027d0:	687b      	ldr	r3, [r7, #4]
1a0027d2:	2b00      	cmp	r3, #0
1a0027d4:	da02      	bge.n	1a0027dc <ABS+0x14>
1a0027d6:	687b      	ldr	r3, [r7, #4]
1a0027d8:	425b      	negs	r3, r3
1a0027da:	e000      	b.n	1a0027de <ABS+0x16>
1a0027dc:	687b      	ldr	r3, [r7, #4]
1a0027de:	4618      	mov	r0, r3
1a0027e0:	370c      	adds	r7, #12
1a0027e2:	46bd      	mov	sp, r7
1a0027e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0027e8:	4770      	bx	lr
1a0027ea:	Address 0x000000001a0027ea is out of bounds.


1a0027ec <pll_calc_divs>:
1a0027ec:	b580      	push	{r7, lr}
1a0027ee:	b088      	sub	sp, #32
1a0027f0:	af00      	add	r7, sp, #0
1a0027f2:	6078      	str	r0, [r7, #4]
1a0027f4:	6039      	str	r1, [r7, #0]
1a0027f6:	687b      	ldr	r3, [r7, #4]
1a0027f8:	61fb      	str	r3, [r7, #28]
1a0027fa:	683b      	ldr	r3, [r7, #0]
1a0027fc:	681b      	ldr	r3, [r3, #0]
1a0027fe:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002802:	2b00      	cmp	r3, #0
1a002804:	d005      	beq.n	1a002812 <pll_calc_divs+0x26>
1a002806:	683b      	ldr	r3, [r7, #0]
1a002808:	681b      	ldr	r3, [r3, #0]
1a00280a:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a00280e:	683b      	ldr	r3, [r7, #0]
1a002810:	601a      	str	r2, [r3, #0]
1a002812:	2301      	movs	r3, #1
1a002814:	61bb      	str	r3, [r7, #24]
1a002816:	e06f      	b.n	1a0028f8 <pll_calc_divs+0x10c>
1a002818:	2300      	movs	r3, #0
1a00281a:	613b      	str	r3, [r7, #16]
1a00281c:	e066      	b.n	1a0028ec <pll_calc_divs+0x100>
1a00281e:	2301      	movs	r3, #1
1a002820:	617b      	str	r3, [r7, #20]
1a002822:	e05a      	b.n	1a0028da <pll_calc_divs+0xee>
1a002824:	683b      	ldr	r3, [r7, #0]
1a002826:	681b      	ldr	r3, [r3, #0]
1a002828:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a00282c:	2b00      	cmp	r3, #0
1a00282e:	d00e      	beq.n	1a00284e <pll_calc_divs+0x62>
1a002830:	693b      	ldr	r3, [r7, #16]
1a002832:	3301      	adds	r3, #1
1a002834:	697a      	ldr	r2, [r7, #20]
1a002836:	fa02 f303 	lsl.w	r3, r2, r3
1a00283a:	461a      	mov	r2, r3
1a00283c:	683b      	ldr	r3, [r7, #0]
1a00283e:	695b      	ldr	r3, [r3, #20]
1a002840:	fb03 f202 	mul.w	r2, r3, r2
1a002844:	69bb      	ldr	r3, [r7, #24]
1a002846:	fbb2 f3f3 	udiv	r3, r2, r3
1a00284a:	60fb      	str	r3, [r7, #12]
1a00284c:	e008      	b.n	1a002860 <pll_calc_divs+0x74>
1a00284e:	683b      	ldr	r3, [r7, #0]
1a002850:	695b      	ldr	r3, [r3, #20]
1a002852:	697a      	ldr	r2, [r7, #20]
1a002854:	fb02 f203 	mul.w	r2, r2, r3
1a002858:	69bb      	ldr	r3, [r7, #24]
1a00285a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00285e:	60fb      	str	r3, [r7, #12]
1a002860:	68fb      	ldr	r3, [r7, #12]
1a002862:	4a29      	ldr	r2, [pc, #164]	; (1a002908 <pll_calc_divs+0x11c>)
1a002864:	4293      	cmp	r3, r2
1a002866:	d934      	bls.n	1a0028d2 <pll_calc_divs+0xe6>
1a002868:	68fb      	ldr	r3, [r7, #12]
1a00286a:	4a28      	ldr	r2, [pc, #160]	; (1a00290c <pll_calc_divs+0x120>)
1a00286c:	4293      	cmp	r3, r2
1a00286e:	d839      	bhi.n	1a0028e4 <pll_calc_divs+0xf8>
1a002870:	683b      	ldr	r3, [r7, #0]
1a002872:	681b      	ldr	r3, [r3, #0]
1a002874:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002878:	2b00      	cmp	r3, #0
1a00287a:	d002      	beq.n	1a002882 <pll_calc_divs+0x96>
1a00287c:	68fb      	ldr	r3, [r7, #12]
1a00287e:	60bb      	str	r3, [r7, #8]
1a002880:	e005      	b.n	1a00288e <pll_calc_divs+0xa2>
1a002882:	693b      	ldr	r3, [r7, #16]
1a002884:	3301      	adds	r3, #1
1a002886:	68fa      	ldr	r2, [r7, #12]
1a002888:	fa22 f303 	lsr.w	r3, r2, r3
1a00288c:	60bb      	str	r3, [r7, #8]
1a00288e:	687a      	ldr	r2, [r7, #4]
1a002890:	68bb      	ldr	r3, [r7, #8]
1a002892:	1ad3      	subs	r3, r2, r3
1a002894:	4618      	mov	r0, r3
1a002896:	f7ff ff97 	bl	1a0027c8 <ABS>
1a00289a:	4602      	mov	r2, r0
1a00289c:	69fb      	ldr	r3, [r7, #28]
1a00289e:	4293      	cmp	r3, r2
1a0028a0:	d918      	bls.n	1a0028d4 <pll_calc_divs+0xe8>
1a0028a2:	683b      	ldr	r3, [r7, #0]
1a0028a4:	69ba      	ldr	r2, [r7, #24]
1a0028a6:	609a      	str	r2, [r3, #8]
1a0028a8:	693b      	ldr	r3, [r7, #16]
1a0028aa:	1c5a      	adds	r2, r3, #1
1a0028ac:	683b      	ldr	r3, [r7, #0]
1a0028ae:	60da      	str	r2, [r3, #12]
1a0028b0:	683b      	ldr	r3, [r7, #0]
1a0028b2:	697a      	ldr	r2, [r7, #20]
1a0028b4:	611a      	str	r2, [r3, #16]
1a0028b6:	683b      	ldr	r3, [r7, #0]
1a0028b8:	68ba      	ldr	r2, [r7, #8]
1a0028ba:	619a      	str	r2, [r3, #24]
1a0028bc:	683b      	ldr	r3, [r7, #0]
1a0028be:	68fa      	ldr	r2, [r7, #12]
1a0028c0:	61da      	str	r2, [r3, #28]
1a0028c2:	687a      	ldr	r2, [r7, #4]
1a0028c4:	68bb      	ldr	r3, [r7, #8]
1a0028c6:	1ad3      	subs	r3, r2, r3
1a0028c8:	4618      	mov	r0, r3
1a0028ca:	f7ff ff7d 	bl	1a0027c8 <ABS>
1a0028ce:	61f8      	str	r0, [r7, #28]
1a0028d0:	e000      	b.n	1a0028d4 <pll_calc_divs+0xe8>
1a0028d2:	bf00      	nop
1a0028d4:	697b      	ldr	r3, [r7, #20]
1a0028d6:	3301      	adds	r3, #1
1a0028d8:	617b      	str	r3, [r7, #20]
1a0028da:	697b      	ldr	r3, [r7, #20]
1a0028dc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0028e0:	dda0      	ble.n	1a002824 <pll_calc_divs+0x38>
1a0028e2:	e000      	b.n	1a0028e6 <pll_calc_divs+0xfa>
1a0028e4:	bf00      	nop
1a0028e6:	693b      	ldr	r3, [r7, #16]
1a0028e8:	3301      	adds	r3, #1
1a0028ea:	613b      	str	r3, [r7, #16]
1a0028ec:	693b      	ldr	r3, [r7, #16]
1a0028ee:	2b03      	cmp	r3, #3
1a0028f0:	dd95      	ble.n	1a00281e <pll_calc_divs+0x32>
1a0028f2:	69bb      	ldr	r3, [r7, #24]
1a0028f4:	3301      	adds	r3, #1
1a0028f6:	61bb      	str	r3, [r7, #24]
1a0028f8:	69bb      	ldr	r3, [r7, #24]
1a0028fa:	2b04      	cmp	r3, #4
1a0028fc:	dd8c      	ble.n	1a002818 <pll_calc_divs+0x2c>
1a0028fe:	bf00      	nop
1a002900:	3720      	adds	r7, #32
1a002902:	46bd      	mov	sp, r7
1a002904:	bd80      	pop	{r7, pc}
1a002906:	bf00      	nop
1a002908:	094c5eff 	.word	0x094c5eff
1a00290c:	1312d000 	.word	0x1312d000

1a002910 <pll_get_frac>:
1a002910:	b5b0      	push	{r4, r5, r7, lr}
1a002912:	b09e      	sub	sp, #120	; 0x78
1a002914:	af00      	add	r7, sp, #0
1a002916:	6078      	str	r0, [r7, #4]
1a002918:	6039      	str	r1, [r7, #0]
1a00291a:	f107 030c 	add.w	r3, r7, #12
1a00291e:	2260      	movs	r2, #96	; 0x60
1a002920:	2100      	movs	r1, #0
1a002922:	4618      	mov	r0, r3
1a002924:	f7fd fcec 	bl	1a000300 <memset>
1a002928:	68fb      	ldr	r3, [r7, #12]
1a00292a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00292e:	60fb      	str	r3, [r7, #12]
1a002930:	683b      	ldr	r3, [r7, #0]
1a002932:	695b      	ldr	r3, [r3, #20]
1a002934:	623b      	str	r3, [r7, #32]
1a002936:	683b      	ldr	r3, [r7, #0]
1a002938:	791b      	ldrb	r3, [r3, #4]
1a00293a:	743b      	strb	r3, [r7, #16]
1a00293c:	f107 030c 	add.w	r3, r7, #12
1a002940:	4619      	mov	r1, r3
1a002942:	6878      	ldr	r0, [r7, #4]
1a002944:	f7ff ff52 	bl	1a0027ec <pll_calc_divs>
1a002948:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00294a:	687a      	ldr	r2, [r7, #4]
1a00294c:	429a      	cmp	r2, r3
1a00294e:	d10a      	bne.n	1a002966 <pll_get_frac+0x56>
1a002950:	683b      	ldr	r3, [r7, #0]
1a002952:	461d      	mov	r5, r3
1a002954:	f107 040c 	add.w	r4, r7, #12
1a002958:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00295a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00295c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002960:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002964:	e08e      	b.n	1a002a84 <pll_get_frac+0x174>
1a002966:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002968:	687a      	ldr	r2, [r7, #4]
1a00296a:	1ad3      	subs	r3, r2, r3
1a00296c:	4618      	mov	r0, r3
1a00296e:	f7ff ff2b 	bl	1a0027c8 <ABS>
1a002972:	4603      	mov	r3, r0
1a002974:	66fb      	str	r3, [r7, #108]	; 0x6c
1a002976:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a002978:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a00297c:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00297e:	683b      	ldr	r3, [r7, #0]
1a002980:	695b      	ldr	r3, [r3, #20]
1a002982:	663b      	str	r3, [r7, #96]	; 0x60
1a002984:	683b      	ldr	r3, [r7, #0]
1a002986:	791b      	ldrb	r3, [r3, #4]
1a002988:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a00298c:	f107 030c 	add.w	r3, r7, #12
1a002990:	3340      	adds	r3, #64	; 0x40
1a002992:	4619      	mov	r1, r3
1a002994:	6878      	ldr	r0, [r7, #4]
1a002996:	f7ff ff29 	bl	1a0027ec <pll_calc_divs>
1a00299a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00299c:	687a      	ldr	r2, [r7, #4]
1a00299e:	429a      	cmp	r2, r3
1a0029a0:	d10a      	bne.n	1a0029b8 <pll_get_frac+0xa8>
1a0029a2:	683b      	ldr	r3, [r7, #0]
1a0029a4:	461d      	mov	r5, r3
1a0029a6:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0029aa:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0029ac:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0029ae:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0029b2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0029b6:	e065      	b.n	1a002a84 <pll_get_frac+0x174>
1a0029b8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0029ba:	687a      	ldr	r2, [r7, #4]
1a0029bc:	1ad3      	subs	r3, r2, r3
1a0029be:	4618      	mov	r0, r3
1a0029c0:	f7ff ff02 	bl	1a0027c8 <ABS>
1a0029c4:	4603      	mov	r3, r0
1a0029c6:	677b      	str	r3, [r7, #116]	; 0x74
1a0029c8:	687b      	ldr	r3, [r7, #4]
1a0029ca:	4a30      	ldr	r2, [pc, #192]	; (1a002a8c <pll_get_frac+0x17c>)
1a0029cc:	4293      	cmp	r3, r2
1a0029ce:	d81a      	bhi.n	1a002a06 <pll_get_frac+0xf6>
1a0029d0:	2340      	movs	r3, #64	; 0x40
1a0029d2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0029d4:	683b      	ldr	r3, [r7, #0]
1a0029d6:	695b      	ldr	r3, [r3, #20]
1a0029d8:	643b      	str	r3, [r7, #64]	; 0x40
1a0029da:	f107 030c 	add.w	r3, r7, #12
1a0029de:	3320      	adds	r3, #32
1a0029e0:	4619      	mov	r1, r3
1a0029e2:	6878      	ldr	r0, [r7, #4]
1a0029e4:	f7ff ff02 	bl	1a0027ec <pll_calc_divs>
1a0029e8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0029ea:	687a      	ldr	r2, [r7, #4]
1a0029ec:	429a      	cmp	r2, r3
1a0029ee:	d10a      	bne.n	1a002a06 <pll_get_frac+0xf6>
1a0029f0:	683b      	ldr	r3, [r7, #0]
1a0029f2:	461d      	mov	r5, r3
1a0029f4:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0029f8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0029fa:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0029fc:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a00:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a04:	e03e      	b.n	1a002a84 <pll_get_frac+0x174>
1a002a06:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002a08:	687a      	ldr	r2, [r7, #4]
1a002a0a:	1ad3      	subs	r3, r2, r3
1a002a0c:	4618      	mov	r0, r3
1a002a0e:	f7ff fedb 	bl	1a0027c8 <ABS>
1a002a12:	4603      	mov	r3, r0
1a002a14:	673b      	str	r3, [r7, #112]	; 0x70
1a002a16:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a002a18:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a002a1a:	429a      	cmp	r2, r3
1a002a1c:	dc19      	bgt.n	1a002a52 <pll_get_frac+0x142>
1a002a1e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a002a20:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a002a22:	429a      	cmp	r2, r3
1a002a24:	dc0a      	bgt.n	1a002a3c <pll_get_frac+0x12c>
1a002a26:	683b      	ldr	r3, [r7, #0]
1a002a28:	461d      	mov	r5, r3
1a002a2a:	f107 040c 	add.w	r4, r7, #12
1a002a2e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002a30:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002a32:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a36:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a3a:	e023      	b.n	1a002a84 <pll_get_frac+0x174>
1a002a3c:	683b      	ldr	r3, [r7, #0]
1a002a3e:	461d      	mov	r5, r3
1a002a40:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002a44:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002a46:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002a48:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a4c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a50:	e018      	b.n	1a002a84 <pll_get_frac+0x174>
1a002a52:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a002a54:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a002a56:	429a      	cmp	r2, r3
1a002a58:	dc0a      	bgt.n	1a002a70 <pll_get_frac+0x160>
1a002a5a:	683b      	ldr	r3, [r7, #0]
1a002a5c:	461d      	mov	r5, r3
1a002a5e:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a002a62:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002a64:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002a66:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a6a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a6e:	e009      	b.n	1a002a84 <pll_get_frac+0x174>
1a002a70:	683b      	ldr	r3, [r7, #0]
1a002a72:	461d      	mov	r5, r3
1a002a74:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002a78:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002a7a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002a7c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a80:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a84:	3778      	adds	r7, #120	; 0x78
1a002a86:	46bd      	mov	sp, r7
1a002a88:	bdb0      	pop	{r4, r5, r7, pc}
1a002a8a:	bf00      	nop
1a002a8c:	068e7780 	.word	0x068e7780

1a002a90 <Chip_Clock_GetDivRate>:
1a002a90:	b580      	push	{r7, lr}
1a002a92:	b084      	sub	sp, #16
1a002a94:	af00      	add	r7, sp, #0
1a002a96:	4603      	mov	r3, r0
1a002a98:	460a      	mov	r2, r1
1a002a9a:	71fb      	strb	r3, [r7, #7]
1a002a9c:	4613      	mov	r3, r2
1a002a9e:	71bb      	strb	r3, [r7, #6]
1a002aa0:	79bb      	ldrb	r3, [r7, #6]
1a002aa2:	4618      	mov	r0, r3
1a002aa4:	f000 f960 	bl	1a002d68 <Chip_Clock_GetDividerSource>
1a002aa8:	4603      	mov	r3, r0
1a002aaa:	73fb      	strb	r3, [r7, #15]
1a002aac:	79bb      	ldrb	r3, [r7, #6]
1a002aae:	4618      	mov	r0, r3
1a002ab0:	f000 f97a 	bl	1a002da8 <Chip_Clock_GetDividerDivisor>
1a002ab4:	60b8      	str	r0, [r7, #8]
1a002ab6:	7bfb      	ldrb	r3, [r7, #15]
1a002ab8:	4618      	mov	r0, r3
1a002aba:	f000 f991 	bl	1a002de0 <Chip_Clock_GetClockInputHz>
1a002abe:	4602      	mov	r2, r0
1a002ac0:	68bb      	ldr	r3, [r7, #8]
1a002ac2:	3301      	adds	r3, #1
1a002ac4:	fbb2 f3f3 	udiv	r3, r2, r3
1a002ac8:	4618      	mov	r0, r3
1a002aca:	3710      	adds	r7, #16
1a002acc:	46bd      	mov	sp, r7
1a002ace:	bd80      	pop	{r7, pc}

1a002ad0 <Chip_Clock_FindBaseClock>:
1a002ad0:	b480      	push	{r7}
1a002ad2:	b085      	sub	sp, #20
1a002ad4:	af00      	add	r7, sp, #0
1a002ad6:	4603      	mov	r3, r0
1a002ad8:	80fb      	strh	r3, [r7, #6]
1a002ada:	231c      	movs	r3, #28
1a002adc:	73fb      	strb	r3, [r7, #15]
1a002ade:	2300      	movs	r3, #0
1a002ae0:	60bb      	str	r3, [r7, #8]
1a002ae2:	e024      	b.n	1a002b2e <Chip_Clock_FindBaseClock+0x5e>
1a002ae4:	491d      	ldr	r1, [pc, #116]	; (1a002b5c <Chip_Clock_FindBaseClock+0x8c>)
1a002ae6:	68ba      	ldr	r2, [r7, #8]
1a002ae8:	4613      	mov	r3, r2
1a002aea:	005b      	lsls	r3, r3, #1
1a002aec:	4413      	add	r3, r2
1a002aee:	005b      	lsls	r3, r3, #1
1a002af0:	440b      	add	r3, r1
1a002af2:	881b      	ldrh	r3, [r3, #0]
1a002af4:	88fa      	ldrh	r2, [r7, #6]
1a002af6:	429a      	cmp	r2, r3
1a002af8:	d316      	bcc.n	1a002b28 <Chip_Clock_FindBaseClock+0x58>
1a002afa:	4918      	ldr	r1, [pc, #96]	; (1a002b5c <Chip_Clock_FindBaseClock+0x8c>)
1a002afc:	68ba      	ldr	r2, [r7, #8]
1a002afe:	4613      	mov	r3, r2
1a002b00:	005b      	lsls	r3, r3, #1
1a002b02:	4413      	add	r3, r2
1a002b04:	005b      	lsls	r3, r3, #1
1a002b06:	440b      	add	r3, r1
1a002b08:	3302      	adds	r3, #2
1a002b0a:	881b      	ldrh	r3, [r3, #0]
1a002b0c:	88fa      	ldrh	r2, [r7, #6]
1a002b0e:	429a      	cmp	r2, r3
1a002b10:	d80a      	bhi.n	1a002b28 <Chip_Clock_FindBaseClock+0x58>
1a002b12:	4912      	ldr	r1, [pc, #72]	; (1a002b5c <Chip_Clock_FindBaseClock+0x8c>)
1a002b14:	68ba      	ldr	r2, [r7, #8]
1a002b16:	4613      	mov	r3, r2
1a002b18:	005b      	lsls	r3, r3, #1
1a002b1a:	4413      	add	r3, r2
1a002b1c:	005b      	lsls	r3, r3, #1
1a002b1e:	440b      	add	r3, r1
1a002b20:	3304      	adds	r3, #4
1a002b22:	781b      	ldrb	r3, [r3, #0]
1a002b24:	73fb      	strb	r3, [r7, #15]
1a002b26:	e002      	b.n	1a002b2e <Chip_Clock_FindBaseClock+0x5e>
1a002b28:	68bb      	ldr	r3, [r7, #8]
1a002b2a:	3301      	adds	r3, #1
1a002b2c:	60bb      	str	r3, [r7, #8]
1a002b2e:	7bfb      	ldrb	r3, [r7, #15]
1a002b30:	2b1c      	cmp	r3, #28
1a002b32:	d10b      	bne.n	1a002b4c <Chip_Clock_FindBaseClock+0x7c>
1a002b34:	4909      	ldr	r1, [pc, #36]	; (1a002b5c <Chip_Clock_FindBaseClock+0x8c>)
1a002b36:	68ba      	ldr	r2, [r7, #8]
1a002b38:	4613      	mov	r3, r2
1a002b3a:	005b      	lsls	r3, r3, #1
1a002b3c:	4413      	add	r3, r2
1a002b3e:	005b      	lsls	r3, r3, #1
1a002b40:	440b      	add	r3, r1
1a002b42:	3304      	adds	r3, #4
1a002b44:	781b      	ldrb	r3, [r3, #0]
1a002b46:	7bfa      	ldrb	r2, [r7, #15]
1a002b48:	429a      	cmp	r2, r3
1a002b4a:	d1cb      	bne.n	1a002ae4 <Chip_Clock_FindBaseClock+0x14>
1a002b4c:	7bfb      	ldrb	r3, [r7, #15]
1a002b4e:	4618      	mov	r0, r3
1a002b50:	3714      	adds	r7, #20
1a002b52:	46bd      	mov	sp, r7
1a002b54:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002b58:	4770      	bx	lr
1a002b5a:	bf00      	nop
1a002b5c:	1a003cec 	.word	0x1a003cec

1a002b60 <Chip_Clock_EnableCrystal>:
1a002b60:	b480      	push	{r7}
1a002b62:	b083      	sub	sp, #12
1a002b64:	af00      	add	r7, sp, #0
1a002b66:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a002b6a:	603b      	str	r3, [r7, #0]
1a002b6c:	4b15      	ldr	r3, [pc, #84]	; (1a002bc4 <Chip_Clock_EnableCrystal+0x64>)
1a002b6e:	699b      	ldr	r3, [r3, #24]
1a002b70:	607b      	str	r3, [r7, #4]
1a002b72:	687b      	ldr	r3, [r7, #4]
1a002b74:	f023 0302 	bic.w	r3, r3, #2
1a002b78:	607b      	str	r3, [r7, #4]
1a002b7a:	4b12      	ldr	r3, [pc, #72]	; (1a002bc4 <Chip_Clock_EnableCrystal+0x64>)
1a002b7c:	699b      	ldr	r3, [r3, #24]
1a002b7e:	687a      	ldr	r2, [r7, #4]
1a002b80:	429a      	cmp	r2, r3
1a002b82:	d002      	beq.n	1a002b8a <Chip_Clock_EnableCrystal+0x2a>
1a002b84:	4a0f      	ldr	r2, [pc, #60]	; (1a002bc4 <Chip_Clock_EnableCrystal+0x64>)
1a002b86:	687b      	ldr	r3, [r7, #4]
1a002b88:	6193      	str	r3, [r2, #24]
1a002b8a:	687b      	ldr	r3, [r7, #4]
1a002b8c:	f023 0301 	bic.w	r3, r3, #1
1a002b90:	607b      	str	r3, [r7, #4]
1a002b92:	4b0d      	ldr	r3, [pc, #52]	; (1a002bc8 <Chip_Clock_EnableCrystal+0x68>)
1a002b94:	681b      	ldr	r3, [r3, #0]
1a002b96:	4a0d      	ldr	r2, [pc, #52]	; (1a002bcc <Chip_Clock_EnableCrystal+0x6c>)
1a002b98:	4293      	cmp	r3, r2
1a002b9a:	d903      	bls.n	1a002ba4 <Chip_Clock_EnableCrystal+0x44>
1a002b9c:	687b      	ldr	r3, [r7, #4]
1a002b9e:	f043 0304 	orr.w	r3, r3, #4
1a002ba2:	607b      	str	r3, [r7, #4]
1a002ba4:	4a07      	ldr	r2, [pc, #28]	; (1a002bc4 <Chip_Clock_EnableCrystal+0x64>)
1a002ba6:	687b      	ldr	r3, [r7, #4]
1a002ba8:	6193      	str	r3, [r2, #24]
1a002baa:	bf00      	nop
1a002bac:	683b      	ldr	r3, [r7, #0]
1a002bae:	1e5a      	subs	r2, r3, #1
1a002bb0:	603a      	str	r2, [r7, #0]
1a002bb2:	2b00      	cmp	r3, #0
1a002bb4:	d1fa      	bne.n	1a002bac <Chip_Clock_EnableCrystal+0x4c>
1a002bb6:	bf00      	nop
1a002bb8:	370c      	adds	r7, #12
1a002bba:	46bd      	mov	sp, r7
1a002bbc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002bc0:	4770      	bx	lr
1a002bc2:	bf00      	nop
1a002bc4:	40050000 	.word	0x40050000
1a002bc8:	1a0039c0 	.word	0x1a0039c0
1a002bcc:	01312cff 	.word	0x01312cff

1a002bd0 <Chip_Clock_CalcMainPLLValue>:
1a002bd0:	b580      	push	{r7, lr}
1a002bd2:	b082      	sub	sp, #8
1a002bd4:	af00      	add	r7, sp, #0
1a002bd6:	6078      	str	r0, [r7, #4]
1a002bd8:	6039      	str	r1, [r7, #0]
1a002bda:	683b      	ldr	r3, [r7, #0]
1a002bdc:	791b      	ldrb	r3, [r3, #4]
1a002bde:	4618      	mov	r0, r3
1a002be0:	f000 f8fe 	bl	1a002de0 <Chip_Clock_GetClockInputHz>
1a002be4:	4602      	mov	r2, r0
1a002be6:	683b      	ldr	r3, [r7, #0]
1a002be8:	615a      	str	r2, [r3, #20]
1a002bea:	687b      	ldr	r3, [r7, #4]
1a002bec:	4a2b      	ldr	r2, [pc, #172]	; (1a002c9c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a002bee:	4293      	cmp	r3, r2
1a002bf0:	d807      	bhi.n	1a002c02 <Chip_Clock_CalcMainPLLValue+0x32>
1a002bf2:	687b      	ldr	r3, [r7, #4]
1a002bf4:	4a2a      	ldr	r2, [pc, #168]	; (1a002ca0 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a002bf6:	4293      	cmp	r3, r2
1a002bf8:	d903      	bls.n	1a002c02 <Chip_Clock_CalcMainPLLValue+0x32>
1a002bfa:	683b      	ldr	r3, [r7, #0]
1a002bfc:	695b      	ldr	r3, [r3, #20]
1a002bfe:	2b00      	cmp	r3, #0
1a002c00:	d102      	bne.n	1a002c08 <Chip_Clock_CalcMainPLLValue+0x38>
1a002c02:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002c06:	e044      	b.n	1a002c92 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002c08:	683b      	ldr	r3, [r7, #0]
1a002c0a:	2280      	movs	r2, #128	; 0x80
1a002c0c:	601a      	str	r2, [r3, #0]
1a002c0e:	683b      	ldr	r3, [r7, #0]
1a002c10:	2200      	movs	r2, #0
1a002c12:	609a      	str	r2, [r3, #8]
1a002c14:	683b      	ldr	r3, [r7, #0]
1a002c16:	2200      	movs	r2, #0
1a002c18:	60da      	str	r2, [r3, #12]
1a002c1a:	683b      	ldr	r3, [r7, #0]
1a002c1c:	695b      	ldr	r3, [r3, #20]
1a002c1e:	687a      	ldr	r2, [r7, #4]
1a002c20:	fbb2 f3f3 	udiv	r3, r2, r3
1a002c24:	461a      	mov	r2, r3
1a002c26:	683b      	ldr	r3, [r7, #0]
1a002c28:	611a      	str	r2, [r3, #16]
1a002c2a:	687b      	ldr	r3, [r7, #4]
1a002c2c:	4a1d      	ldr	r2, [pc, #116]	; (1a002ca4 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a002c2e:	4293      	cmp	r3, r2
1a002c30:	d909      	bls.n	1a002c46 <Chip_Clock_CalcMainPLLValue+0x76>
1a002c32:	683b      	ldr	r3, [r7, #0]
1a002c34:	691b      	ldr	r3, [r3, #16]
1a002c36:	461a      	mov	r2, r3
1a002c38:	683b      	ldr	r3, [r7, #0]
1a002c3a:	695b      	ldr	r3, [r3, #20]
1a002c3c:	fb03 f302 	mul.w	r3, r3, r2
1a002c40:	687a      	ldr	r2, [r7, #4]
1a002c42:	429a      	cmp	r2, r3
1a002c44:	d00f      	beq.n	1a002c66 <Chip_Clock_CalcMainPLLValue+0x96>
1a002c46:	6839      	ldr	r1, [r7, #0]
1a002c48:	6878      	ldr	r0, [r7, #4]
1a002c4a:	f7ff fe61 	bl	1a002910 <pll_get_frac>
1a002c4e:	683b      	ldr	r3, [r7, #0]
1a002c50:	689b      	ldr	r3, [r3, #8]
1a002c52:	2b00      	cmp	r3, #0
1a002c54:	d102      	bne.n	1a002c5c <Chip_Clock_CalcMainPLLValue+0x8c>
1a002c56:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002c5a:	e01a      	b.n	1a002c92 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002c5c:	683b      	ldr	r3, [r7, #0]
1a002c5e:	689b      	ldr	r3, [r3, #8]
1a002c60:	1e5a      	subs	r2, r3, #1
1a002c62:	683b      	ldr	r3, [r7, #0]
1a002c64:	609a      	str	r2, [r3, #8]
1a002c66:	683b      	ldr	r3, [r7, #0]
1a002c68:	691b      	ldr	r3, [r3, #16]
1a002c6a:	2b00      	cmp	r3, #0
1a002c6c:	d102      	bne.n	1a002c74 <Chip_Clock_CalcMainPLLValue+0xa4>
1a002c6e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002c72:	e00e      	b.n	1a002c92 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002c74:	683b      	ldr	r3, [r7, #0]
1a002c76:	68db      	ldr	r3, [r3, #12]
1a002c78:	2b00      	cmp	r3, #0
1a002c7a:	d004      	beq.n	1a002c86 <Chip_Clock_CalcMainPLLValue+0xb6>
1a002c7c:	683b      	ldr	r3, [r7, #0]
1a002c7e:	68db      	ldr	r3, [r3, #12]
1a002c80:	1e5a      	subs	r2, r3, #1
1a002c82:	683b      	ldr	r3, [r7, #0]
1a002c84:	60da      	str	r2, [r3, #12]
1a002c86:	683b      	ldr	r3, [r7, #0]
1a002c88:	691b      	ldr	r3, [r3, #16]
1a002c8a:	1e5a      	subs	r2, r3, #1
1a002c8c:	683b      	ldr	r3, [r7, #0]
1a002c8e:	611a      	str	r2, [r3, #16]
1a002c90:	2300      	movs	r3, #0
1a002c92:	4618      	mov	r0, r3
1a002c94:	3708      	adds	r7, #8
1a002c96:	46bd      	mov	sp, r7
1a002c98:	bd80      	pop	{r7, pc}
1a002c9a:	bf00      	nop
1a002c9c:	0c28cb00 	.word	0x0c28cb00
1a002ca0:	0094c5ef 	.word	0x0094c5ef
1a002ca4:	094c5eff 	.word	0x094c5eff

1a002ca8 <Chip_Clock_GetMainPLLHz>:
1a002ca8:	b580      	push	{r7, lr}
1a002caa:	b08c      	sub	sp, #48	; 0x30
1a002cac:	af00      	add	r7, sp, #0
1a002cae:	4b2c      	ldr	r3, [pc, #176]	; (1a002d60 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002cb0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a002cb2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002cb4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002cb6:	0e1b      	lsrs	r3, r3, #24
1a002cb8:	b2db      	uxtb	r3, r3
1a002cba:	f003 030f 	and.w	r3, r3, #15
1a002cbe:	b2db      	uxtb	r3, r3
1a002cc0:	4618      	mov	r0, r3
1a002cc2:	f000 f88d 	bl	1a002de0 <Chip_Clock_GetClockInputHz>
1a002cc6:	62b8      	str	r0, [r7, #40]	; 0x28
1a002cc8:	4b26      	ldr	r3, [pc, #152]	; (1a002d64 <Chip_Clock_GetMainPLLHz+0xbc>)
1a002cca:	681b      	ldr	r3, [r3, #0]
1a002ccc:	607b      	str	r3, [r7, #4]
1a002cce:	4b24      	ldr	r3, [pc, #144]	; (1a002d60 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002cd0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a002cd2:	f003 0301 	and.w	r3, r3, #1
1a002cd6:	2b00      	cmp	r3, #0
1a002cd8:	d101      	bne.n	1a002cde <Chip_Clock_GetMainPLLHz+0x36>
1a002cda:	2300      	movs	r3, #0
1a002cdc:	e03b      	b.n	1a002d56 <Chip_Clock_GetMainPLLHz+0xae>
1a002cde:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002ce0:	0c1b      	lsrs	r3, r3, #16
1a002ce2:	b2db      	uxtb	r3, r3
1a002ce4:	627b      	str	r3, [r7, #36]	; 0x24
1a002ce6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002ce8:	0b1b      	lsrs	r3, r3, #12
1a002cea:	f003 0303 	and.w	r3, r3, #3
1a002cee:	623b      	str	r3, [r7, #32]
1a002cf0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002cf2:	0a1b      	lsrs	r3, r3, #8
1a002cf4:	f003 0303 	and.w	r3, r3, #3
1a002cf8:	61fb      	str	r3, [r7, #28]
1a002cfa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002cfc:	09db      	lsrs	r3, r3, #7
1a002cfe:	f003 0301 	and.w	r3, r3, #1
1a002d02:	61bb      	str	r3, [r7, #24]
1a002d04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002d06:	099b      	lsrs	r3, r3, #6
1a002d08:	f003 0301 	and.w	r3, r3, #1
1a002d0c:	617b      	str	r3, [r7, #20]
1a002d0e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002d10:	3301      	adds	r3, #1
1a002d12:	613b      	str	r3, [r7, #16]
1a002d14:	6a3b      	ldr	r3, [r7, #32]
1a002d16:	3301      	adds	r3, #1
1a002d18:	60fb      	str	r3, [r7, #12]
1a002d1a:	1d3a      	adds	r2, r7, #4
1a002d1c:	69fb      	ldr	r3, [r7, #28]
1a002d1e:	4413      	add	r3, r2
1a002d20:	781b      	ldrb	r3, [r3, #0]
1a002d22:	60bb      	str	r3, [r7, #8]
1a002d24:	69bb      	ldr	r3, [r7, #24]
1a002d26:	2b00      	cmp	r3, #0
1a002d28:	d102      	bne.n	1a002d30 <Chip_Clock_GetMainPLLHz+0x88>
1a002d2a:	697b      	ldr	r3, [r7, #20]
1a002d2c:	2b00      	cmp	r3, #0
1a002d2e:	d007      	beq.n	1a002d40 <Chip_Clock_GetMainPLLHz+0x98>
1a002d30:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a002d32:	68fb      	ldr	r3, [r7, #12]
1a002d34:	fbb2 f3f3 	udiv	r3, r2, r3
1a002d38:	693a      	ldr	r2, [r7, #16]
1a002d3a:	fb02 f303 	mul.w	r3, r2, r3
1a002d3e:	e00a      	b.n	1a002d56 <Chip_Clock_GetMainPLLHz+0xae>
1a002d40:	68bb      	ldr	r3, [r7, #8]
1a002d42:	005b      	lsls	r3, r3, #1
1a002d44:	693a      	ldr	r2, [r7, #16]
1a002d46:	fbb2 f3f3 	udiv	r3, r2, r3
1a002d4a:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a002d4c:	68fa      	ldr	r2, [r7, #12]
1a002d4e:	fbb1 f2f2 	udiv	r2, r1, r2
1a002d52:	fb02 f303 	mul.w	r3, r2, r3
1a002d56:	4618      	mov	r0, r3
1a002d58:	3730      	adds	r7, #48	; 0x30
1a002d5a:	46bd      	mov	sp, r7
1a002d5c:	bd80      	pop	{r7, pc}
1a002d5e:	bf00      	nop
1a002d60:	40050000 	.word	0x40050000
1a002d64:	1a003d58 	.word	0x1a003d58

1a002d68 <Chip_Clock_GetDividerSource>:
1a002d68:	b480      	push	{r7}
1a002d6a:	b085      	sub	sp, #20
1a002d6c:	af00      	add	r7, sp, #0
1a002d6e:	4603      	mov	r3, r0
1a002d70:	71fb      	strb	r3, [r7, #7]
1a002d72:	4a0c      	ldr	r2, [pc, #48]	; (1a002da4 <Chip_Clock_GetDividerSource+0x3c>)
1a002d74:	79fb      	ldrb	r3, [r7, #7]
1a002d76:	3312      	adds	r3, #18
1a002d78:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002d7c:	60fb      	str	r3, [r7, #12]
1a002d7e:	68fb      	ldr	r3, [r7, #12]
1a002d80:	f003 0301 	and.w	r3, r3, #1
1a002d84:	2b00      	cmp	r3, #0
1a002d86:	d001      	beq.n	1a002d8c <Chip_Clock_GetDividerSource+0x24>
1a002d88:	2311      	movs	r3, #17
1a002d8a:	e005      	b.n	1a002d98 <Chip_Clock_GetDividerSource+0x30>
1a002d8c:	68fb      	ldr	r3, [r7, #12]
1a002d8e:	0e1b      	lsrs	r3, r3, #24
1a002d90:	b2db      	uxtb	r3, r3
1a002d92:	f003 031f 	and.w	r3, r3, #31
1a002d96:	b2db      	uxtb	r3, r3
1a002d98:	4618      	mov	r0, r3
1a002d9a:	3714      	adds	r7, #20
1a002d9c:	46bd      	mov	sp, r7
1a002d9e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002da2:	4770      	bx	lr
1a002da4:	40050000 	.word	0x40050000

1a002da8 <Chip_Clock_GetDividerDivisor>:
1a002da8:	b480      	push	{r7}
1a002daa:	b083      	sub	sp, #12
1a002dac:	af00      	add	r7, sp, #0
1a002dae:	4603      	mov	r3, r0
1a002db0:	71fb      	strb	r3, [r7, #7]
1a002db2:	4a09      	ldr	r2, [pc, #36]	; (1a002dd8 <Chip_Clock_GetDividerDivisor+0x30>)
1a002db4:	79fb      	ldrb	r3, [r7, #7]
1a002db6:	3312      	adds	r3, #18
1a002db8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002dbc:	089b      	lsrs	r3, r3, #2
1a002dbe:	b2da      	uxtb	r2, r3
1a002dc0:	79fb      	ldrb	r3, [r7, #7]
1a002dc2:	4906      	ldr	r1, [pc, #24]	; (1a002ddc <Chip_Clock_GetDividerDivisor+0x34>)
1a002dc4:	5ccb      	ldrb	r3, [r1, r3]
1a002dc6:	4013      	ands	r3, r2
1a002dc8:	b2db      	uxtb	r3, r3
1a002dca:	4618      	mov	r0, r3
1a002dcc:	370c      	adds	r7, #12
1a002dce:	46bd      	mov	sp, r7
1a002dd0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002dd4:	4770      	bx	lr
1a002dd6:	bf00      	nop
1a002dd8:	40050000 	.word	0x40050000
1a002ddc:	1a003d5c 	.word	0x1a003d5c

1a002de0 <Chip_Clock_GetClockInputHz>:
1a002de0:	b580      	push	{r7, lr}
1a002de2:	b084      	sub	sp, #16
1a002de4:	af00      	add	r7, sp, #0
1a002de6:	4603      	mov	r3, r0
1a002de8:	71fb      	strb	r3, [r7, #7]
1a002dea:	2300      	movs	r3, #0
1a002dec:	60fb      	str	r3, [r7, #12]
1a002dee:	79fb      	ldrb	r3, [r7, #7]
1a002df0:	2b11      	cmp	r3, #17
1a002df2:	d87f      	bhi.n	1a002ef4 <Chip_Clock_GetClockInputHz+0x114>
1a002df4:	a201      	add	r2, pc, #4	; (adr r2, 1a002dfc <Chip_Clock_GetClockInputHz+0x1c>)
1a002df6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a002dfa:	bf00      	nop
1a002dfc:	1a002e45 	.word	0x1a002e45
1a002e00:	1a002e4d 	.word	0x1a002e4d
1a002e04:	1a002e53 	.word	0x1a002e53
1a002e08:	1a002e67 	.word	0x1a002e67
1a002e0c:	1a002e81 	.word	0x1a002e81
1a002e10:	1a002ef5 	.word	0x1a002ef5
1a002e14:	1a002e89 	.word	0x1a002e89
1a002e18:	1a002e91 	.word	0x1a002e91
1a002e1c:	1a002e99 	.word	0x1a002e99
1a002e20:	1a002ea1 	.word	0x1a002ea1
1a002e24:	1a002ef5 	.word	0x1a002ef5
1a002e28:	1a002ef5 	.word	0x1a002ef5
1a002e2c:	1a002ea9 	.word	0x1a002ea9
1a002e30:	1a002eb7 	.word	0x1a002eb7
1a002e34:	1a002ec5 	.word	0x1a002ec5
1a002e38:	1a002ed3 	.word	0x1a002ed3
1a002e3c:	1a002ee1 	.word	0x1a002ee1
1a002e40:	1a002eef 	.word	0x1a002eef
1a002e44:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a002e48:	60fb      	str	r3, [r7, #12]
1a002e4a:	e056      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e4c:	4b2d      	ldr	r3, [pc, #180]	; (1a002f04 <Chip_Clock_GetClockInputHz+0x124>)
1a002e4e:	60fb      	str	r3, [r7, #12]
1a002e50:	e053      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e52:	4b2d      	ldr	r3, [pc, #180]	; (1a002f08 <Chip_Clock_GetClockInputHz+0x128>)
1a002e54:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002e58:	f003 0307 	and.w	r3, r3, #7
1a002e5c:	2b04      	cmp	r3, #4
1a002e5e:	d04b      	beq.n	1a002ef8 <Chip_Clock_GetClockInputHz+0x118>
1a002e60:	4b2a      	ldr	r3, [pc, #168]	; (1a002f0c <Chip_Clock_GetClockInputHz+0x12c>)
1a002e62:	60fb      	str	r3, [r7, #12]
1a002e64:	e048      	b.n	1a002ef8 <Chip_Clock_GetClockInputHz+0x118>
1a002e66:	4b28      	ldr	r3, [pc, #160]	; (1a002f08 <Chip_Clock_GetClockInputHz+0x128>)
1a002e68:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002e6c:	f003 0307 	and.w	r3, r3, #7
1a002e70:	2b04      	cmp	r3, #4
1a002e72:	d002      	beq.n	1a002e7a <Chip_Clock_GetClockInputHz+0x9a>
1a002e74:	4b25      	ldr	r3, [pc, #148]	; (1a002f0c <Chip_Clock_GetClockInputHz+0x12c>)
1a002e76:	60fb      	str	r3, [r7, #12]
1a002e78:	e03f      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e7a:	4b25      	ldr	r3, [pc, #148]	; (1a002f10 <Chip_Clock_GetClockInputHz+0x130>)
1a002e7c:	60fb      	str	r3, [r7, #12]
1a002e7e:	e03c      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e80:	4b24      	ldr	r3, [pc, #144]	; (1a002f14 <Chip_Clock_GetClockInputHz+0x134>)
1a002e82:	681b      	ldr	r3, [r3, #0]
1a002e84:	60fb      	str	r3, [r7, #12]
1a002e86:	e038      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e88:	4b23      	ldr	r3, [pc, #140]	; (1a002f18 <Chip_Clock_GetClockInputHz+0x138>)
1a002e8a:	681b      	ldr	r3, [r3, #0]
1a002e8c:	60fb      	str	r3, [r7, #12]
1a002e8e:	e034      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e90:	4b22      	ldr	r3, [pc, #136]	; (1a002f1c <Chip_Clock_GetClockInputHz+0x13c>)
1a002e92:	681b      	ldr	r3, [r3, #0]
1a002e94:	60fb      	str	r3, [r7, #12]
1a002e96:	e030      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002e98:	4b20      	ldr	r3, [pc, #128]	; (1a002f1c <Chip_Clock_GetClockInputHz+0x13c>)
1a002e9a:	685b      	ldr	r3, [r3, #4]
1a002e9c:	60fb      	str	r3, [r7, #12]
1a002e9e:	e02c      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ea0:	f7ff ff02 	bl	1a002ca8 <Chip_Clock_GetMainPLLHz>
1a002ea4:	60f8      	str	r0, [r7, #12]
1a002ea6:	e028      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ea8:	79fb      	ldrb	r3, [r7, #7]
1a002eaa:	2100      	movs	r1, #0
1a002eac:	4618      	mov	r0, r3
1a002eae:	f7ff fdef 	bl	1a002a90 <Chip_Clock_GetDivRate>
1a002eb2:	60f8      	str	r0, [r7, #12]
1a002eb4:	e021      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002eb6:	79fb      	ldrb	r3, [r7, #7]
1a002eb8:	2101      	movs	r1, #1
1a002eba:	4618      	mov	r0, r3
1a002ebc:	f7ff fde8 	bl	1a002a90 <Chip_Clock_GetDivRate>
1a002ec0:	60f8      	str	r0, [r7, #12]
1a002ec2:	e01a      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ec4:	79fb      	ldrb	r3, [r7, #7]
1a002ec6:	2102      	movs	r1, #2
1a002ec8:	4618      	mov	r0, r3
1a002eca:	f7ff fde1 	bl	1a002a90 <Chip_Clock_GetDivRate>
1a002ece:	60f8      	str	r0, [r7, #12]
1a002ed0:	e013      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ed2:	79fb      	ldrb	r3, [r7, #7]
1a002ed4:	2103      	movs	r1, #3
1a002ed6:	4618      	mov	r0, r3
1a002ed8:	f7ff fdda 	bl	1a002a90 <Chip_Clock_GetDivRate>
1a002edc:	60f8      	str	r0, [r7, #12]
1a002ede:	e00c      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ee0:	79fb      	ldrb	r3, [r7, #7]
1a002ee2:	2104      	movs	r1, #4
1a002ee4:	4618      	mov	r0, r3
1a002ee6:	f7ff fdd3 	bl	1a002a90 <Chip_Clock_GetDivRate>
1a002eea:	60f8      	str	r0, [r7, #12]
1a002eec:	e005      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002eee:	2300      	movs	r3, #0
1a002ef0:	60fb      	str	r3, [r7, #12]
1a002ef2:	e002      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ef4:	bf00      	nop
1a002ef6:	e000      	b.n	1a002efa <Chip_Clock_GetClockInputHz+0x11a>
1a002ef8:	bf00      	nop
1a002efa:	68fb      	ldr	r3, [r7, #12]
1a002efc:	4618      	mov	r0, r3
1a002efe:	3710      	adds	r7, #16
1a002f00:	46bd      	mov	sp, r7
1a002f02:	bd80      	pop	{r7, pc}
1a002f04:	00b71b00 	.word	0x00b71b00
1a002f08:	40043000 	.word	0x40043000
1a002f0c:	017d7840 	.word	0x017d7840
1a002f10:	02faf080 	.word	0x02faf080
1a002f14:	1a0039bc 	.word	0x1a0039bc
1a002f18:	1a0039c0 	.word	0x1a0039c0
1a002f1c:	100005e4 	.word	0x100005e4

1a002f20 <Chip_Clock_GetBaseClocktHz>:
1a002f20:	b580      	push	{r7, lr}
1a002f22:	b082      	sub	sp, #8
1a002f24:	af00      	add	r7, sp, #0
1a002f26:	4603      	mov	r3, r0
1a002f28:	71fb      	strb	r3, [r7, #7]
1a002f2a:	79fb      	ldrb	r3, [r7, #7]
1a002f2c:	4618      	mov	r0, r3
1a002f2e:	f000 f857 	bl	1a002fe0 <Chip_Clock_GetBaseClock>
1a002f32:	4603      	mov	r3, r0
1a002f34:	4618      	mov	r0, r3
1a002f36:	f7ff ff53 	bl	1a002de0 <Chip_Clock_GetClockInputHz>
1a002f3a:	4603      	mov	r3, r0
1a002f3c:	4618      	mov	r0, r3
1a002f3e:	3708      	adds	r7, #8
1a002f40:	46bd      	mov	sp, r7
1a002f42:	bd80      	pop	{r7, pc}

1a002f44 <Chip_Clock_SetBaseClock>:
1a002f44:	b490      	push	{r4, r7}
1a002f46:	b084      	sub	sp, #16
1a002f48:	af00      	add	r7, sp, #0
1a002f4a:	4604      	mov	r4, r0
1a002f4c:	4608      	mov	r0, r1
1a002f4e:	4611      	mov	r1, r2
1a002f50:	461a      	mov	r2, r3
1a002f52:	4623      	mov	r3, r4
1a002f54:	71fb      	strb	r3, [r7, #7]
1a002f56:	4603      	mov	r3, r0
1a002f58:	71bb      	strb	r3, [r7, #6]
1a002f5a:	460b      	mov	r3, r1
1a002f5c:	717b      	strb	r3, [r7, #5]
1a002f5e:	4613      	mov	r3, r2
1a002f60:	713b      	strb	r3, [r7, #4]
1a002f62:	4a1d      	ldr	r2, [pc, #116]	; (1a002fd8 <Chip_Clock_SetBaseClock+0x94>)
1a002f64:	79fb      	ldrb	r3, [r7, #7]
1a002f66:	3316      	adds	r3, #22
1a002f68:	009b      	lsls	r3, r3, #2
1a002f6a:	4413      	add	r3, r2
1a002f6c:	685b      	ldr	r3, [r3, #4]
1a002f6e:	60fb      	str	r3, [r7, #12]
1a002f70:	79fb      	ldrb	r3, [r7, #7]
1a002f72:	2b1b      	cmp	r3, #27
1a002f74:	d822      	bhi.n	1a002fbc <Chip_Clock_SetBaseClock+0x78>
1a002f76:	79bb      	ldrb	r3, [r7, #6]
1a002f78:	2b11      	cmp	r3, #17
1a002f7a:	d028      	beq.n	1a002fce <Chip_Clock_SetBaseClock+0x8a>
1a002f7c:	68fa      	ldr	r2, [r7, #12]
1a002f7e:	4b17      	ldr	r3, [pc, #92]	; (1a002fdc <Chip_Clock_SetBaseClock+0x98>)
1a002f80:	4013      	ands	r3, r2
1a002f82:	60fb      	str	r3, [r7, #12]
1a002f84:	797b      	ldrb	r3, [r7, #5]
1a002f86:	2b00      	cmp	r3, #0
1a002f88:	d003      	beq.n	1a002f92 <Chip_Clock_SetBaseClock+0x4e>
1a002f8a:	68fb      	ldr	r3, [r7, #12]
1a002f8c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002f90:	60fb      	str	r3, [r7, #12]
1a002f92:	793b      	ldrb	r3, [r7, #4]
1a002f94:	2b00      	cmp	r3, #0
1a002f96:	d003      	beq.n	1a002fa0 <Chip_Clock_SetBaseClock+0x5c>
1a002f98:	68fb      	ldr	r3, [r7, #12]
1a002f9a:	f043 0301 	orr.w	r3, r3, #1
1a002f9e:	60fb      	str	r3, [r7, #12]
1a002fa0:	79bb      	ldrb	r3, [r7, #6]
1a002fa2:	061b      	lsls	r3, r3, #24
1a002fa4:	461a      	mov	r2, r3
1a002fa6:	68fb      	ldr	r3, [r7, #12]
1a002fa8:	4313      	orrs	r3, r2
1a002faa:	60fb      	str	r3, [r7, #12]
1a002fac:	4a0a      	ldr	r2, [pc, #40]	; (1a002fd8 <Chip_Clock_SetBaseClock+0x94>)
1a002fae:	79fb      	ldrb	r3, [r7, #7]
1a002fb0:	3316      	adds	r3, #22
1a002fb2:	009b      	lsls	r3, r3, #2
1a002fb4:	4413      	add	r3, r2
1a002fb6:	68fa      	ldr	r2, [r7, #12]
1a002fb8:	605a      	str	r2, [r3, #4]
1a002fba:	e008      	b.n	1a002fce <Chip_Clock_SetBaseClock+0x8a>
1a002fbc:	4906      	ldr	r1, [pc, #24]	; (1a002fd8 <Chip_Clock_SetBaseClock+0x94>)
1a002fbe:	79fb      	ldrb	r3, [r7, #7]
1a002fc0:	68fa      	ldr	r2, [r7, #12]
1a002fc2:	f042 0201 	orr.w	r2, r2, #1
1a002fc6:	3316      	adds	r3, #22
1a002fc8:	009b      	lsls	r3, r3, #2
1a002fca:	440b      	add	r3, r1
1a002fcc:	605a      	str	r2, [r3, #4]
1a002fce:	bf00      	nop
1a002fd0:	3710      	adds	r7, #16
1a002fd2:	46bd      	mov	sp, r7
1a002fd4:	bc90      	pop	{r4, r7}
1a002fd6:	4770      	bx	lr
1a002fd8:	40050000 	.word	0x40050000
1a002fdc:	e0fff7fe 	.word	0xe0fff7fe

1a002fe0 <Chip_Clock_GetBaseClock>:
1a002fe0:	b480      	push	{r7}
1a002fe2:	b085      	sub	sp, #20
1a002fe4:	af00      	add	r7, sp, #0
1a002fe6:	4603      	mov	r3, r0
1a002fe8:	71fb      	strb	r3, [r7, #7]
1a002fea:	79fb      	ldrb	r3, [r7, #7]
1a002fec:	2b1b      	cmp	r3, #27
1a002fee:	d901      	bls.n	1a002ff4 <Chip_Clock_GetBaseClock+0x14>
1a002ff0:	2311      	movs	r3, #17
1a002ff2:	e013      	b.n	1a00301c <Chip_Clock_GetBaseClock+0x3c>
1a002ff4:	4a0c      	ldr	r2, [pc, #48]	; (1a003028 <Chip_Clock_GetBaseClock+0x48>)
1a002ff6:	79fb      	ldrb	r3, [r7, #7]
1a002ff8:	3316      	adds	r3, #22
1a002ffa:	009b      	lsls	r3, r3, #2
1a002ffc:	4413      	add	r3, r2
1a002ffe:	685b      	ldr	r3, [r3, #4]
1a003000:	60fb      	str	r3, [r7, #12]
1a003002:	68fb      	ldr	r3, [r7, #12]
1a003004:	f003 0301 	and.w	r3, r3, #1
1a003008:	2b00      	cmp	r3, #0
1a00300a:	d001      	beq.n	1a003010 <Chip_Clock_GetBaseClock+0x30>
1a00300c:	2311      	movs	r3, #17
1a00300e:	e005      	b.n	1a00301c <Chip_Clock_GetBaseClock+0x3c>
1a003010:	68fb      	ldr	r3, [r7, #12]
1a003012:	0e1b      	lsrs	r3, r3, #24
1a003014:	b2db      	uxtb	r3, r3
1a003016:	f003 031f 	and.w	r3, r3, #31
1a00301a:	b2db      	uxtb	r3, r3
1a00301c:	4618      	mov	r0, r3
1a00301e:	3714      	adds	r7, #20
1a003020:	46bd      	mov	sp, r7
1a003022:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003026:	4770      	bx	lr
1a003028:	40050000 	.word	0x40050000

1a00302c <Chip_Clock_EnableOpts>:
1a00302c:	b480      	push	{r7}
1a00302e:	b085      	sub	sp, #20
1a003030:	af00      	add	r7, sp, #0
1a003032:	603b      	str	r3, [r7, #0]
1a003034:	4603      	mov	r3, r0
1a003036:	80fb      	strh	r3, [r7, #6]
1a003038:	460b      	mov	r3, r1
1a00303a:	717b      	strb	r3, [r7, #5]
1a00303c:	4613      	mov	r3, r2
1a00303e:	713b      	strb	r3, [r7, #4]
1a003040:	2301      	movs	r3, #1
1a003042:	60fb      	str	r3, [r7, #12]
1a003044:	797b      	ldrb	r3, [r7, #5]
1a003046:	2b00      	cmp	r3, #0
1a003048:	d003      	beq.n	1a003052 <Chip_Clock_EnableOpts+0x26>
1a00304a:	68fb      	ldr	r3, [r7, #12]
1a00304c:	f043 0302 	orr.w	r3, r3, #2
1a003050:	60fb      	str	r3, [r7, #12]
1a003052:	793b      	ldrb	r3, [r7, #4]
1a003054:	2b00      	cmp	r3, #0
1a003056:	d003      	beq.n	1a003060 <Chip_Clock_EnableOpts+0x34>
1a003058:	68fb      	ldr	r3, [r7, #12]
1a00305a:	f043 0304 	orr.w	r3, r3, #4
1a00305e:	60fb      	str	r3, [r7, #12]
1a003060:	683b      	ldr	r3, [r7, #0]
1a003062:	2b02      	cmp	r3, #2
1a003064:	d103      	bne.n	1a00306e <Chip_Clock_EnableOpts+0x42>
1a003066:	68fb      	ldr	r3, [r7, #12]
1a003068:	f043 0320 	orr.w	r3, r3, #32
1a00306c:	60fb      	str	r3, [r7, #12]
1a00306e:	88fb      	ldrh	r3, [r7, #6]
1a003070:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a003074:	d308      	bcc.n	1a003088 <Chip_Clock_EnableOpts+0x5c>
1a003076:	490a      	ldr	r1, [pc, #40]	; (1a0030a0 <Chip_Clock_EnableOpts+0x74>)
1a003078:	88fb      	ldrh	r3, [r7, #6]
1a00307a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00307e:	3320      	adds	r3, #32
1a003080:	68fa      	ldr	r2, [r7, #12]
1a003082:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a003086:	e005      	b.n	1a003094 <Chip_Clock_EnableOpts+0x68>
1a003088:	4906      	ldr	r1, [pc, #24]	; (1a0030a4 <Chip_Clock_EnableOpts+0x78>)
1a00308a:	88fb      	ldrh	r3, [r7, #6]
1a00308c:	3320      	adds	r3, #32
1a00308e:	68fa      	ldr	r2, [r7, #12]
1a003090:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a003094:	bf00      	nop
1a003096:	3714      	adds	r7, #20
1a003098:	46bd      	mov	sp, r7
1a00309a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00309e:	4770      	bx	lr
1a0030a0:	40052000 	.word	0x40052000
1a0030a4:	40051000 	.word	0x40051000

1a0030a8 <Chip_Clock_Enable>:
1a0030a8:	b480      	push	{r7}
1a0030aa:	b083      	sub	sp, #12
1a0030ac:	af00      	add	r7, sp, #0
1a0030ae:	4603      	mov	r3, r0
1a0030b0:	80fb      	strh	r3, [r7, #6]
1a0030b2:	88fb      	ldrh	r3, [r7, #6]
1a0030b4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0030b8:	d310      	bcc.n	1a0030dc <Chip_Clock_Enable+0x34>
1a0030ba:	4a11      	ldr	r2, [pc, #68]	; (1a003100 <Chip_Clock_Enable+0x58>)
1a0030bc:	88fb      	ldrh	r3, [r7, #6]
1a0030be:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0030c2:	3320      	adds	r3, #32
1a0030c4:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0030c8:	490d      	ldr	r1, [pc, #52]	; (1a003100 <Chip_Clock_Enable+0x58>)
1a0030ca:	88fb      	ldrh	r3, [r7, #6]
1a0030cc:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0030d0:	f042 0201 	orr.w	r2, r2, #1
1a0030d4:	3320      	adds	r3, #32
1a0030d6:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0030da:	e00b      	b.n	1a0030f4 <Chip_Clock_Enable+0x4c>
1a0030dc:	4a09      	ldr	r2, [pc, #36]	; (1a003104 <Chip_Clock_Enable+0x5c>)
1a0030de:	88fb      	ldrh	r3, [r7, #6]
1a0030e0:	3320      	adds	r3, #32
1a0030e2:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0030e6:	4907      	ldr	r1, [pc, #28]	; (1a003104 <Chip_Clock_Enable+0x5c>)
1a0030e8:	88fb      	ldrh	r3, [r7, #6]
1a0030ea:	f042 0201 	orr.w	r2, r2, #1
1a0030ee:	3320      	adds	r3, #32
1a0030f0:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0030f4:	bf00      	nop
1a0030f6:	370c      	adds	r7, #12
1a0030f8:	46bd      	mov	sp, r7
1a0030fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0030fe:	4770      	bx	lr
1a003100:	40052000 	.word	0x40052000
1a003104:	40051000 	.word	0x40051000

1a003108 <Chip_Clock_GetRate>:
1a003108:	b580      	push	{r7, lr}
1a00310a:	b086      	sub	sp, #24
1a00310c:	af00      	add	r7, sp, #0
1a00310e:	4603      	mov	r3, r0
1a003110:	80fb      	strh	r3, [r7, #6]
1a003112:	88fb      	ldrh	r3, [r7, #6]
1a003114:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a003118:	d308      	bcc.n	1a00312c <Chip_Clock_GetRate+0x24>
1a00311a:	4a1b      	ldr	r2, [pc, #108]	; (1a003188 <Chip_Clock_GetRate+0x80>)
1a00311c:	88fb      	ldrh	r3, [r7, #6]
1a00311e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a003122:	3320      	adds	r3, #32
1a003124:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a003128:	617b      	str	r3, [r7, #20]
1a00312a:	e005      	b.n	1a003138 <Chip_Clock_GetRate+0x30>
1a00312c:	4a17      	ldr	r2, [pc, #92]	; (1a00318c <Chip_Clock_GetRate+0x84>)
1a00312e:	88fb      	ldrh	r3, [r7, #6]
1a003130:	3320      	adds	r3, #32
1a003132:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a003136:	617b      	str	r3, [r7, #20]
1a003138:	697b      	ldr	r3, [r7, #20]
1a00313a:	f003 0301 	and.w	r3, r3, #1
1a00313e:	2b00      	cmp	r3, #0
1a003140:	d01b      	beq.n	1a00317a <Chip_Clock_GetRate+0x72>
1a003142:	88fb      	ldrh	r3, [r7, #6]
1a003144:	4618      	mov	r0, r3
1a003146:	f7ff fcc3 	bl	1a002ad0 <Chip_Clock_FindBaseClock>
1a00314a:	4603      	mov	r3, r0
1a00314c:	72fb      	strb	r3, [r7, #11]
1a00314e:	7afb      	ldrb	r3, [r7, #11]
1a003150:	4618      	mov	r0, r3
1a003152:	f7ff fee5 	bl	1a002f20 <Chip_Clock_GetBaseClocktHz>
1a003156:	60f8      	str	r0, [r7, #12]
1a003158:	697b      	ldr	r3, [r7, #20]
1a00315a:	095b      	lsrs	r3, r3, #5
1a00315c:	f003 0307 	and.w	r3, r3, #7
1a003160:	2b00      	cmp	r3, #0
1a003162:	d102      	bne.n	1a00316a <Chip_Clock_GetRate+0x62>
1a003164:	2301      	movs	r3, #1
1a003166:	613b      	str	r3, [r7, #16]
1a003168:	e001      	b.n	1a00316e <Chip_Clock_GetRate+0x66>
1a00316a:	2302      	movs	r3, #2
1a00316c:	613b      	str	r3, [r7, #16]
1a00316e:	68fa      	ldr	r2, [r7, #12]
1a003170:	693b      	ldr	r3, [r7, #16]
1a003172:	fbb2 f3f3 	udiv	r3, r2, r3
1a003176:	60fb      	str	r3, [r7, #12]
1a003178:	e001      	b.n	1a00317e <Chip_Clock_GetRate+0x76>
1a00317a:	2300      	movs	r3, #0
1a00317c:	60fb      	str	r3, [r7, #12]
1a00317e:	68fb      	ldr	r3, [r7, #12]
1a003180:	4618      	mov	r0, r3
1a003182:	3718      	adds	r7, #24
1a003184:	46bd      	mov	sp, r7
1a003186:	bd80      	pop	{r7, pc}
1a003188:	40052000 	.word	0x40052000
1a00318c:	40051000 	.word	0x40051000

1a003190 <SystemCoreClockUpdate>:
1a003190:	b580      	push	{r7, lr}
1a003192:	af00      	add	r7, sp, #0
1a003194:	2069      	movs	r0, #105	; 0x69
1a003196:	f7ff ffb7 	bl	1a003108 <Chip_Clock_GetRate>
1a00319a:	4602      	mov	r2, r0
1a00319c:	4b01      	ldr	r3, [pc, #4]	; (1a0031a4 <SystemCoreClockUpdate+0x14>)
1a00319e:	601a      	str	r2, [r3, #0]
1a0031a0:	bf00      	nop
1a0031a2:	bd80      	pop	{r7, pc}
1a0031a4:	10000b58 	.word	0x10000b58

1a0031a8 <Chip_GPIO_Init>:
1a0031a8:	b480      	push	{r7}
1a0031aa:	b083      	sub	sp, #12
1a0031ac:	af00      	add	r7, sp, #0
1a0031ae:	6078      	str	r0, [r7, #4]
1a0031b0:	bf00      	nop
1a0031b2:	370c      	adds	r7, #12
1a0031b4:	46bd      	mov	sp, r7
1a0031b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0031ba:	4770      	bx	lr

1a0031bc <Chip_TIMER_GetClockIndex>:
1a0031bc:	b480      	push	{r7}
1a0031be:	b085      	sub	sp, #20
1a0031c0:	af00      	add	r7, sp, #0
1a0031c2:	6078      	str	r0, [r7, #4]
1a0031c4:	687b      	ldr	r3, [r7, #4]
1a0031c6:	4a0e      	ldr	r2, [pc, #56]	; (1a003200 <Chip_TIMER_GetClockIndex+0x44>)
1a0031c8:	4293      	cmp	r3, r2
1a0031ca:	d102      	bne.n	1a0031d2 <Chip_TIMER_GetClockIndex+0x16>
1a0031cc:	23a4      	movs	r3, #164	; 0xa4
1a0031ce:	81fb      	strh	r3, [r7, #14]
1a0031d0:	e00f      	b.n	1a0031f2 <Chip_TIMER_GetClockIndex+0x36>
1a0031d2:	687b      	ldr	r3, [r7, #4]
1a0031d4:	4a0b      	ldr	r2, [pc, #44]	; (1a003204 <Chip_TIMER_GetClockIndex+0x48>)
1a0031d6:	4293      	cmp	r3, r2
1a0031d8:	d102      	bne.n	1a0031e0 <Chip_TIMER_GetClockIndex+0x24>
1a0031da:	23a3      	movs	r3, #163	; 0xa3
1a0031dc:	81fb      	strh	r3, [r7, #14]
1a0031de:	e008      	b.n	1a0031f2 <Chip_TIMER_GetClockIndex+0x36>
1a0031e0:	687b      	ldr	r3, [r7, #4]
1a0031e2:	4a09      	ldr	r2, [pc, #36]	; (1a003208 <Chip_TIMER_GetClockIndex+0x4c>)
1a0031e4:	4293      	cmp	r3, r2
1a0031e6:	d102      	bne.n	1a0031ee <Chip_TIMER_GetClockIndex+0x32>
1a0031e8:	2385      	movs	r3, #133	; 0x85
1a0031ea:	81fb      	strh	r3, [r7, #14]
1a0031ec:	e001      	b.n	1a0031f2 <Chip_TIMER_GetClockIndex+0x36>
1a0031ee:	2384      	movs	r3, #132	; 0x84
1a0031f0:	81fb      	strh	r3, [r7, #14]
1a0031f2:	89fb      	ldrh	r3, [r7, #14]
1a0031f4:	4618      	mov	r0, r3
1a0031f6:	3714      	adds	r7, #20
1a0031f8:	46bd      	mov	sp, r7
1a0031fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0031fe:	4770      	bx	lr
1a003200:	400c4000 	.word	0x400c4000
1a003204:	400c3000 	.word	0x400c3000
1a003208:	40085000 	.word	0x40085000

1a00320c <Chip_TIMER_Init>:
1a00320c:	b580      	push	{r7, lr}
1a00320e:	b082      	sub	sp, #8
1a003210:	af00      	add	r7, sp, #0
1a003212:	6078      	str	r0, [r7, #4]
1a003214:	6878      	ldr	r0, [r7, #4]
1a003216:	f7ff ffd1 	bl	1a0031bc <Chip_TIMER_GetClockIndex>
1a00321a:	4603      	mov	r3, r0
1a00321c:	4618      	mov	r0, r3
1a00321e:	f7ff ff43 	bl	1a0030a8 <Chip_Clock_Enable>
1a003222:	bf00      	nop
1a003224:	3708      	adds	r7, #8
1a003226:	46bd      	mov	sp, r7
1a003228:	bd80      	pop	{r7, pc}
1a00322a:	Address 0x000000001a00322a is out of bounds.


1a00322c <atoi>:
1a00322c:	220a      	movs	r2, #10
1a00322e:	2100      	movs	r1, #0
1a003230:	f000 bb86 	b.w	1a003940 <strtol>

1a003234 <memcpy>:
1a003234:	4684      	mov	ip, r0
1a003236:	ea41 0300 	orr.w	r3, r1, r0
1a00323a:	f013 0303 	ands.w	r3, r3, #3
1a00323e:	d16d      	bne.n	1a00331c <memcpy+0xe8>
1a003240:	3a40      	subs	r2, #64	; 0x40
1a003242:	d341      	bcc.n	1a0032c8 <memcpy+0x94>
1a003244:	f851 3b04 	ldr.w	r3, [r1], #4
1a003248:	f840 3b04 	str.w	r3, [r0], #4
1a00324c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003250:	f840 3b04 	str.w	r3, [r0], #4
1a003254:	f851 3b04 	ldr.w	r3, [r1], #4
1a003258:	f840 3b04 	str.w	r3, [r0], #4
1a00325c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003260:	f840 3b04 	str.w	r3, [r0], #4
1a003264:	f851 3b04 	ldr.w	r3, [r1], #4
1a003268:	f840 3b04 	str.w	r3, [r0], #4
1a00326c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003270:	f840 3b04 	str.w	r3, [r0], #4
1a003274:	f851 3b04 	ldr.w	r3, [r1], #4
1a003278:	f840 3b04 	str.w	r3, [r0], #4
1a00327c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003280:	f840 3b04 	str.w	r3, [r0], #4
1a003284:	f851 3b04 	ldr.w	r3, [r1], #4
1a003288:	f840 3b04 	str.w	r3, [r0], #4
1a00328c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003290:	f840 3b04 	str.w	r3, [r0], #4
1a003294:	f851 3b04 	ldr.w	r3, [r1], #4
1a003298:	f840 3b04 	str.w	r3, [r0], #4
1a00329c:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032a0:	f840 3b04 	str.w	r3, [r0], #4
1a0032a4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032a8:	f840 3b04 	str.w	r3, [r0], #4
1a0032ac:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032b0:	f840 3b04 	str.w	r3, [r0], #4
1a0032b4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032b8:	f840 3b04 	str.w	r3, [r0], #4
1a0032bc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032c0:	f840 3b04 	str.w	r3, [r0], #4
1a0032c4:	3a40      	subs	r2, #64	; 0x40
1a0032c6:	d2bd      	bcs.n	1a003244 <memcpy+0x10>
1a0032c8:	3230      	adds	r2, #48	; 0x30
1a0032ca:	d311      	bcc.n	1a0032f0 <memcpy+0xbc>
1a0032cc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032d0:	f840 3b04 	str.w	r3, [r0], #4
1a0032d4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032d8:	f840 3b04 	str.w	r3, [r0], #4
1a0032dc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032e0:	f840 3b04 	str.w	r3, [r0], #4
1a0032e4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032e8:	f840 3b04 	str.w	r3, [r0], #4
1a0032ec:	3a10      	subs	r2, #16
1a0032ee:	d2ed      	bcs.n	1a0032cc <memcpy+0x98>
1a0032f0:	320c      	adds	r2, #12
1a0032f2:	d305      	bcc.n	1a003300 <memcpy+0xcc>
1a0032f4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0032f8:	f840 3b04 	str.w	r3, [r0], #4
1a0032fc:	3a04      	subs	r2, #4
1a0032fe:	d2f9      	bcs.n	1a0032f4 <memcpy+0xc0>
1a003300:	3204      	adds	r2, #4
1a003302:	d008      	beq.n	1a003316 <memcpy+0xe2>
1a003304:	07d2      	lsls	r2, r2, #31
1a003306:	bf1c      	itt	ne
1a003308:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a00330c:	f800 3b01 	strbne.w	r3, [r0], #1
1a003310:	d301      	bcc.n	1a003316 <memcpy+0xe2>
1a003312:	880b      	ldrh	r3, [r1, #0]
1a003314:	8003      	strh	r3, [r0, #0]
1a003316:	4660      	mov	r0, ip
1a003318:	4770      	bx	lr
1a00331a:	bf00      	nop
1a00331c:	2a08      	cmp	r2, #8
1a00331e:	d313      	bcc.n	1a003348 <memcpy+0x114>
1a003320:	078b      	lsls	r3, r1, #30
1a003322:	d08d      	beq.n	1a003240 <memcpy+0xc>
1a003324:	f010 0303 	ands.w	r3, r0, #3
1a003328:	d08a      	beq.n	1a003240 <memcpy+0xc>
1a00332a:	f1c3 0304 	rsb	r3, r3, #4
1a00332e:	1ad2      	subs	r2, r2, r3
1a003330:	07db      	lsls	r3, r3, #31
1a003332:	bf1c      	itt	ne
1a003334:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a003338:	f800 3b01 	strbne.w	r3, [r0], #1
1a00333c:	d380      	bcc.n	1a003240 <memcpy+0xc>
1a00333e:	f831 3b02 	ldrh.w	r3, [r1], #2
1a003342:	f820 3b02 	strh.w	r3, [r0], #2
1a003346:	e77b      	b.n	1a003240 <memcpy+0xc>
1a003348:	3a04      	subs	r2, #4
1a00334a:	d3d9      	bcc.n	1a003300 <memcpy+0xcc>
1a00334c:	3a01      	subs	r2, #1
1a00334e:	f811 3b01 	ldrb.w	r3, [r1], #1
1a003352:	f800 3b01 	strb.w	r3, [r0], #1
1a003356:	d2f9      	bcs.n	1a00334c <memcpy+0x118>
1a003358:	780b      	ldrb	r3, [r1, #0]
1a00335a:	7003      	strb	r3, [r0, #0]
1a00335c:	784b      	ldrb	r3, [r1, #1]
1a00335e:	7043      	strb	r3, [r0, #1]
1a003360:	788b      	ldrb	r3, [r1, #2]
1a003362:	7083      	strb	r3, [r0, #2]
1a003364:	4660      	mov	r0, ip
1a003366:	4770      	bx	lr

1a003368 <memmove>:
1a003368:	4288      	cmp	r0, r1
1a00336a:	b4f0      	push	{r4, r5, r6, r7}
1a00336c:	d90d      	bls.n	1a00338a <memmove+0x22>
1a00336e:	188b      	adds	r3, r1, r2
1a003370:	4283      	cmp	r3, r0
1a003372:	d90a      	bls.n	1a00338a <memmove+0x22>
1a003374:	1884      	adds	r4, r0, r2
1a003376:	b132      	cbz	r2, 1a003386 <memmove+0x1e>
1a003378:	4622      	mov	r2, r4
1a00337a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
1a00337e:	f802 4d01 	strb.w	r4, [r2, #-1]!
1a003382:	4299      	cmp	r1, r3
1a003384:	d1f9      	bne.n	1a00337a <memmove+0x12>
1a003386:	bcf0      	pop	{r4, r5, r6, r7}
1a003388:	4770      	bx	lr
1a00338a:	2a0f      	cmp	r2, #15
1a00338c:	d949      	bls.n	1a003422 <memmove+0xba>
1a00338e:	ea40 0301 	orr.w	r3, r0, r1
1a003392:	079b      	lsls	r3, r3, #30
1a003394:	d147      	bne.n	1a003426 <memmove+0xbe>
1a003396:	f1a2 0310 	sub.w	r3, r2, #16
1a00339a:	091b      	lsrs	r3, r3, #4
1a00339c:	f101 0720 	add.w	r7, r1, #32
1a0033a0:	eb07 1703 	add.w	r7, r7, r3, lsl #4
1a0033a4:	f101 0410 	add.w	r4, r1, #16
1a0033a8:	f100 0510 	add.w	r5, r0, #16
1a0033ac:	f854 6c10 	ldr.w	r6, [r4, #-16]
1a0033b0:	f845 6c10 	str.w	r6, [r5, #-16]
1a0033b4:	f854 6c0c 	ldr.w	r6, [r4, #-12]
1a0033b8:	f845 6c0c 	str.w	r6, [r5, #-12]
1a0033bc:	f854 6c08 	ldr.w	r6, [r4, #-8]
1a0033c0:	f845 6c08 	str.w	r6, [r5, #-8]
1a0033c4:	f854 6c04 	ldr.w	r6, [r4, #-4]
1a0033c8:	f845 6c04 	str.w	r6, [r5, #-4]
1a0033cc:	3410      	adds	r4, #16
1a0033ce:	42bc      	cmp	r4, r7
1a0033d0:	f105 0510 	add.w	r5, r5, #16
1a0033d4:	d1ea      	bne.n	1a0033ac <memmove+0x44>
1a0033d6:	3301      	adds	r3, #1
1a0033d8:	f002 050f 	and.w	r5, r2, #15
1a0033dc:	011b      	lsls	r3, r3, #4
1a0033de:	2d03      	cmp	r5, #3
1a0033e0:	4419      	add	r1, r3
1a0033e2:	4403      	add	r3, r0
1a0033e4:	d921      	bls.n	1a00342a <memmove+0xc2>
1a0033e6:	1f1f      	subs	r7, r3, #4
1a0033e8:	460e      	mov	r6, r1
1a0033ea:	462c      	mov	r4, r5
1a0033ec:	3c04      	subs	r4, #4
1a0033ee:	f856 cb04 	ldr.w	ip, [r6], #4
1a0033f2:	f847 cf04 	str.w	ip, [r7, #4]!
1a0033f6:	2c03      	cmp	r4, #3
1a0033f8:	d8f8      	bhi.n	1a0033ec <memmove+0x84>
1a0033fa:	1f2c      	subs	r4, r5, #4
1a0033fc:	f024 0403 	bic.w	r4, r4, #3
1a003400:	3404      	adds	r4, #4
1a003402:	4423      	add	r3, r4
1a003404:	4421      	add	r1, r4
1a003406:	f002 0203 	and.w	r2, r2, #3
1a00340a:	2a00      	cmp	r2, #0
1a00340c:	d0bb      	beq.n	1a003386 <memmove+0x1e>
1a00340e:	3b01      	subs	r3, #1
1a003410:	440a      	add	r2, r1
1a003412:	f811 4b01 	ldrb.w	r4, [r1], #1
1a003416:	f803 4f01 	strb.w	r4, [r3, #1]!
1a00341a:	4291      	cmp	r1, r2
1a00341c:	d1f9      	bne.n	1a003412 <memmove+0xaa>
1a00341e:	bcf0      	pop	{r4, r5, r6, r7}
1a003420:	4770      	bx	lr
1a003422:	4603      	mov	r3, r0
1a003424:	e7f1      	b.n	1a00340a <memmove+0xa2>
1a003426:	4603      	mov	r3, r0
1a003428:	e7f1      	b.n	1a00340e <memmove+0xa6>
1a00342a:	462a      	mov	r2, r5
1a00342c:	e7ed      	b.n	1a00340a <memmove+0xa2>
1a00342e:	bf00      	nop
1a003430:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003434:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003438:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00343c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003440:	eba2 0003 	sub.w	r0, r2, r3
1a003444:	4770      	bx	lr
1a003446:	bf00      	nop

1a003448 <strcmp>:
1a003448:	7802      	ldrb	r2, [r0, #0]
1a00344a:	780b      	ldrb	r3, [r1, #0]
1a00344c:	2a01      	cmp	r2, #1
1a00344e:	bf28      	it	cs
1a003450:	429a      	cmpcs	r2, r3
1a003452:	d1f5      	bne.n	1a003440 <memmove+0xd8>
1a003454:	e96d 4504 	strd	r4, r5, [sp, #-16]!
1a003458:	ea40 0401 	orr.w	r4, r0, r1
1a00345c:	e9cd 6702 	strd	r6, r7, [sp, #8]
1a003460:	f06f 0c00 	mvn.w	ip, #0
1a003464:	ea4f 7244 	mov.w	r2, r4, lsl #29
1a003468:	b312      	cbz	r2, 1a0034b0 <strcmp+0x68>
1a00346a:	ea80 0401 	eor.w	r4, r0, r1
1a00346e:	f014 0f07 	tst.w	r4, #7
1a003472:	d16a      	bne.n	1a00354a <strcmp+0x102>
1a003474:	f000 0407 	and.w	r4, r0, #7
1a003478:	f020 0007 	bic.w	r0, r0, #7
1a00347c:	f004 0503 	and.w	r5, r4, #3
1a003480:	f021 0107 	bic.w	r1, r1, #7
1a003484:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a003488:	e8f0 2304 	ldrd	r2, r3, [r0], #16
1a00348c:	f014 0f04 	tst.w	r4, #4
1a003490:	e8f1 6704 	ldrd	r6, r7, [r1], #16
1a003494:	fa0c f405 	lsl.w	r4, ip, r5
1a003498:	ea62 0204 	orn	r2, r2, r4
1a00349c:	ea66 0604 	orn	r6, r6, r4
1a0034a0:	d00a      	beq.n	1a0034b8 <strcmp+0x70>
1a0034a2:	ea63 0304 	orn	r3, r3, r4
1a0034a6:	4662      	mov	r2, ip
1a0034a8:	ea67 0704 	orn	r7, r7, r4
1a0034ac:	4666      	mov	r6, ip
1a0034ae:	e003      	b.n	1a0034b8 <strcmp+0x70>
1a0034b0:	e8f0 2304 	ldrd	r2, r3, [r0], #16
1a0034b4:	e8f1 6704 	ldrd	r6, r7, [r1], #16
1a0034b8:	fa82 f54c 	uadd8	r5, r2, ip
1a0034bc:	ea82 0406 	eor.w	r4, r2, r6
1a0034c0:	faa4 f48c 	sel	r4, r4, ip
1a0034c4:	bb6c      	cbnz	r4, 1a003522 <strcmp+0xda>
1a0034c6:	fa83 f54c 	uadd8	r5, r3, ip
1a0034ca:	ea83 0507 	eor.w	r5, r3, r7
1a0034ce:	faa5 f58c 	sel	r5, r5, ip
1a0034d2:	b995      	cbnz	r5, 1a0034fa <strcmp+0xb2>
1a0034d4:	e950 2302 	ldrd	r2, r3, [r0, #-8]
1a0034d8:	e951 6702 	ldrd	r6, r7, [r1, #-8]
1a0034dc:	fa82 f54c 	uadd8	r5, r2, ip
1a0034e0:	ea82 0406 	eor.w	r4, r2, r6
1a0034e4:	faa4 f48c 	sel	r4, r4, ip
1a0034e8:	fa83 f54c 	uadd8	r5, r3, ip
1a0034ec:	ea83 0507 	eor.w	r5, r3, r7
1a0034f0:	faa5 f58c 	sel	r5, r5, ip
1a0034f4:	4325      	orrs	r5, r4
1a0034f6:	d0db      	beq.n	1a0034b0 <strcmp+0x68>
1a0034f8:	b99c      	cbnz	r4, 1a003522 <strcmp+0xda>
1a0034fa:	ba2d      	rev	r5, r5
1a0034fc:	fab5 f485 	clz	r4, r5
1a003500:	f024 0407 	bic.w	r4, r4, #7
1a003504:	fa27 f104 	lsr.w	r1, r7, r4
1a003508:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
1a00350c:	fa23 f304 	lsr.w	r3, r3, r4
1a003510:	f003 00ff 	and.w	r0, r3, #255	; 0xff
1a003514:	f001 01ff 	and.w	r1, r1, #255	; 0xff
1a003518:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a00351c:	eba0 0001 	sub.w	r0, r0, r1
1a003520:	4770      	bx	lr
1a003522:	ba24      	rev	r4, r4
1a003524:	fab4 f484 	clz	r4, r4
1a003528:	f024 0407 	bic.w	r4, r4, #7
1a00352c:	fa26 f104 	lsr.w	r1, r6, r4
1a003530:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
1a003534:	fa22 f204 	lsr.w	r2, r2, r4
1a003538:	f002 00ff 	and.w	r0, r2, #255	; 0xff
1a00353c:	f001 01ff 	and.w	r1, r1, #255	; 0xff
1a003540:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a003544:	eba0 0001 	sub.w	r0, r0, r1
1a003548:	4770      	bx	lr
1a00354a:	f014 0f03 	tst.w	r4, #3
1a00354e:	d13c      	bne.n	1a0035ca <strcmp+0x182>
1a003550:	f010 0403 	ands.w	r4, r0, #3
1a003554:	d128      	bne.n	1a0035a8 <strcmp+0x160>
1a003556:	f850 2b08 	ldr.w	r2, [r0], #8
1a00355a:	f851 3b08 	ldr.w	r3, [r1], #8
1a00355e:	fa82 f54c 	uadd8	r5, r2, ip
1a003562:	ea82 0503 	eor.w	r5, r2, r3
1a003566:	faa5 f58c 	sel	r5, r5, ip
1a00356a:	b95d      	cbnz	r5, 1a003584 <strcmp+0x13c>
1a00356c:	f850 2c04 	ldr.w	r2, [r0, #-4]
1a003570:	f851 3c04 	ldr.w	r3, [r1, #-4]
1a003574:	fa82 f54c 	uadd8	r5, r2, ip
1a003578:	ea82 0503 	eor.w	r5, r2, r3
1a00357c:	faa5 f58c 	sel	r5, r5, ip
1a003580:	2d00      	cmp	r5, #0
1a003582:	d0e8      	beq.n	1a003556 <strcmp+0x10e>
1a003584:	ba2d      	rev	r5, r5
1a003586:	fab5 f485 	clz	r4, r5
1a00358a:	f024 0407 	bic.w	r4, r4, #7
1a00358e:	fa23 f104 	lsr.w	r1, r3, r4
1a003592:	fa22 f204 	lsr.w	r2, r2, r4
1a003596:	f002 00ff 	and.w	r0, r2, #255	; 0xff
1a00359a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
1a00359e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a0035a2:	eba0 0001 	sub.w	r0, r0, r1
1a0035a6:	4770      	bx	lr
1a0035a8:	ea4f 04c4 	mov.w	r4, r4, lsl #3
1a0035ac:	f020 0003 	bic.w	r0, r0, #3
1a0035b0:	f850 2b08 	ldr.w	r2, [r0], #8
1a0035b4:	f021 0103 	bic.w	r1, r1, #3
1a0035b8:	f851 3b08 	ldr.w	r3, [r1], #8
1a0035bc:	fa0c f404 	lsl.w	r4, ip, r4
1a0035c0:	ea62 0204 	orn	r2, r2, r4
1a0035c4:	ea63 0304 	orn	r3, r3, r4
1a0035c8:	e7c9      	b.n	1a00355e <strcmp+0x116>
1a0035ca:	f010 0403 	ands.w	r4, r0, #3
1a0035ce:	d01a      	beq.n	1a003606 <strcmp+0x1be>
1a0035d0:	eba1 0104 	sub.w	r1, r1, r4
1a0035d4:	f020 0003 	bic.w	r0, r0, #3
1a0035d8:	07e4      	lsls	r4, r4, #31
1a0035da:	f850 2b04 	ldr.w	r2, [r0], #4
1a0035de:	d006      	beq.n	1a0035ee <strcmp+0x1a6>
1a0035e0:	d20f      	bcs.n	1a003602 <strcmp+0x1ba>
1a0035e2:	788b      	ldrb	r3, [r1, #2]
1a0035e4:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
1a0035e8:	1ae4      	subs	r4, r4, r3
1a0035ea:	d106      	bne.n	1a0035fa <strcmp+0x1b2>
1a0035ec:	b12b      	cbz	r3, 1a0035fa <strcmp+0x1b2>
1a0035ee:	78cb      	ldrb	r3, [r1, #3]
1a0035f0:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
1a0035f4:	1ae4      	subs	r4, r4, r3
1a0035f6:	d100      	bne.n	1a0035fa <strcmp+0x1b2>
1a0035f8:	b91b      	cbnz	r3, 1a003602 <strcmp+0x1ba>
1a0035fa:	4620      	mov	r0, r4
1a0035fc:	f85d 4b10 	ldr.w	r4, [sp], #16
1a003600:	4770      	bx	lr
1a003602:	f101 0104 	add.w	r1, r1, #4
1a003606:	f850 2b04 	ldr.w	r2, [r0], #4
1a00360a:	07cc      	lsls	r4, r1, #31
1a00360c:	f021 0103 	bic.w	r1, r1, #3
1a003610:	f851 3b04 	ldr.w	r3, [r1], #4
1a003614:	d848      	bhi.n	1a0036a8 <strcmp+0x260>
1a003616:	d224      	bcs.n	1a003662 <strcmp+0x21a>
1a003618:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
1a00361c:	fa82 f54c 	uadd8	r5, r2, ip
1a003620:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
1a003624:	faa5 f58c 	sel	r5, r5, ip
1a003628:	d10a      	bne.n	1a003640 <strcmp+0x1f8>
1a00362a:	b965      	cbnz	r5, 1a003646 <strcmp+0x1fe>
1a00362c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003630:	ea84 0402 	eor.w	r4, r4, r2
1a003634:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
1a003638:	d10e      	bne.n	1a003658 <strcmp+0x210>
1a00363a:	f850 2b04 	ldr.w	r2, [r0], #4
1a00363e:	e7eb      	b.n	1a003618 <strcmp+0x1d0>
1a003640:	ea4f 2313 	mov.w	r3, r3, lsr #8
1a003644:	e055      	b.n	1a0036f2 <strcmp+0x2aa>
1a003646:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
1a00364a:	d14d      	bne.n	1a0036e8 <strcmp+0x2a0>
1a00364c:	7808      	ldrb	r0, [r1, #0]
1a00364e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a003652:	f1c0 0000 	rsb	r0, r0, #0
1a003656:	4770      	bx	lr
1a003658:	ea4f 6212 	mov.w	r2, r2, lsr #24
1a00365c:	f003 03ff 	and.w	r3, r3, #255	; 0xff
1a003660:	e047      	b.n	1a0036f2 <strcmp+0x2aa>
1a003662:	ea02 441c 	and.w	r4, r2, ip, lsr #16
1a003666:	fa82 f54c 	uadd8	r5, r2, ip
1a00366a:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
1a00366e:	faa5 f58c 	sel	r5, r5, ip
1a003672:	d10a      	bne.n	1a00368a <strcmp+0x242>
1a003674:	b965      	cbnz	r5, 1a003690 <strcmp+0x248>
1a003676:	f851 3b04 	ldr.w	r3, [r1], #4
1a00367a:	ea84 0402 	eor.w	r4, r4, r2
1a00367e:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
1a003682:	d10c      	bne.n	1a00369e <strcmp+0x256>
1a003684:	f850 2b04 	ldr.w	r2, [r0], #4
1a003688:	e7eb      	b.n	1a003662 <strcmp+0x21a>
1a00368a:	ea4f 4313 	mov.w	r3, r3, lsr #16
1a00368e:	e030      	b.n	1a0036f2 <strcmp+0x2aa>
1a003690:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
1a003694:	d128      	bne.n	1a0036e8 <strcmp+0x2a0>
1a003696:	880b      	ldrh	r3, [r1, #0]
1a003698:	ea4f 4212 	mov.w	r2, r2, lsr #16
1a00369c:	e029      	b.n	1a0036f2 <strcmp+0x2aa>
1a00369e:	ea4f 4212 	mov.w	r2, r2, lsr #16
1a0036a2:	ea03 431c 	and.w	r3, r3, ip, lsr #16
1a0036a6:	e024      	b.n	1a0036f2 <strcmp+0x2aa>
1a0036a8:	f002 04ff 	and.w	r4, r2, #255	; 0xff
1a0036ac:	fa82 f54c 	uadd8	r5, r2, ip
1a0036b0:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
1a0036b4:	faa5 f58c 	sel	r5, r5, ip
1a0036b8:	d10a      	bne.n	1a0036d0 <strcmp+0x288>
1a0036ba:	b965      	cbnz	r5, 1a0036d6 <strcmp+0x28e>
1a0036bc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0036c0:	ea84 0402 	eor.w	r4, r4, r2
1a0036c4:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
1a0036c8:	d109      	bne.n	1a0036de <strcmp+0x296>
1a0036ca:	f850 2b04 	ldr.w	r2, [r0], #4
1a0036ce:	e7eb      	b.n	1a0036a8 <strcmp+0x260>
1a0036d0:	ea4f 6313 	mov.w	r3, r3, lsr #24
1a0036d4:	e00d      	b.n	1a0036f2 <strcmp+0x2aa>
1a0036d6:	f015 0fff 	tst.w	r5, #255	; 0xff
1a0036da:	d105      	bne.n	1a0036e8 <strcmp+0x2a0>
1a0036dc:	680b      	ldr	r3, [r1, #0]
1a0036de:	ea4f 2212 	mov.w	r2, r2, lsr #8
1a0036e2:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
1a0036e6:	e004      	b.n	1a0036f2 <strcmp+0x2aa>
1a0036e8:	f04f 0000 	mov.w	r0, #0
1a0036ec:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a0036f0:	4770      	bx	lr
1a0036f2:	ba12      	rev	r2, r2
1a0036f4:	ba1b      	rev	r3, r3
1a0036f6:	fa82 f44c 	uadd8	r4, r2, ip
1a0036fa:	ea82 0403 	eor.w	r4, r2, r3
1a0036fe:	faa4 f58c 	sel	r5, r4, ip
1a003702:	fab5 f485 	clz	r4, r5
1a003706:	fa02 f204 	lsl.w	r2, r2, r4
1a00370a:	fa03 f304 	lsl.w	r3, r3, r4
1a00370e:	ea4f 6012 	mov.w	r0, r2, lsr #24
1a003712:	e8fd 4504 	ldrd	r4, r5, [sp], #16
1a003716:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
1a00371a:	4770      	bx	lr
1a00371c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003720:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003724:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003728:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00372c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003730:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003734:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003738:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00373c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a003740 <strlen>:
1a003740:	f890 f000 	pld	[r0]
1a003744:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a003748:	f020 0107 	bic.w	r1, r0, #7
1a00374c:	f06f 0c00 	mvn.w	ip, #0
1a003750:	f010 0407 	ands.w	r4, r0, #7
1a003754:	f891 f020 	pld	[r1, #32]
1a003758:	f040 8049 	bne.w	1a0037ee <strlen+0xae>
1a00375c:	f04f 0400 	mov.w	r4, #0
1a003760:	f06f 0007 	mvn.w	r0, #7
1a003764:	e9d1 2300 	ldrd	r2, r3, [r1]
1a003768:	f891 f040 	pld	[r1, #64]	; 0x40
1a00376c:	f100 0008 	add.w	r0, r0, #8
1a003770:	fa82 f24c 	uadd8	r2, r2, ip
1a003774:	faa4 f28c 	sel	r2, r4, ip
1a003778:	fa83 f34c 	uadd8	r3, r3, ip
1a00377c:	faa2 f38c 	sel	r3, r2, ip
1a003780:	bb4b      	cbnz	r3, 1a0037d6 <strlen+0x96>
1a003782:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a003786:	fa82 f24c 	uadd8	r2, r2, ip
1a00378a:	f100 0008 	add.w	r0, r0, #8
1a00378e:	faa4 f28c 	sel	r2, r4, ip
1a003792:	fa83 f34c 	uadd8	r3, r3, ip
1a003796:	faa2 f38c 	sel	r3, r2, ip
1a00379a:	b9e3      	cbnz	r3, 1a0037d6 <strlen+0x96>
1a00379c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a0037a0:	fa82 f24c 	uadd8	r2, r2, ip
1a0037a4:	f100 0008 	add.w	r0, r0, #8
1a0037a8:	faa4 f28c 	sel	r2, r4, ip
1a0037ac:	fa83 f34c 	uadd8	r3, r3, ip
1a0037b0:	faa2 f38c 	sel	r3, r2, ip
1a0037b4:	b97b      	cbnz	r3, 1a0037d6 <strlen+0x96>
1a0037b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a0037ba:	f101 0120 	add.w	r1, r1, #32
1a0037be:	fa82 f24c 	uadd8	r2, r2, ip
1a0037c2:	f100 0008 	add.w	r0, r0, #8
1a0037c6:	faa4 f28c 	sel	r2, r4, ip
1a0037ca:	fa83 f34c 	uadd8	r3, r3, ip
1a0037ce:	faa2 f38c 	sel	r3, r2, ip
1a0037d2:	2b00      	cmp	r3, #0
1a0037d4:	d0c6      	beq.n	1a003764 <strlen+0x24>
1a0037d6:	2a00      	cmp	r2, #0
1a0037d8:	bf04      	itt	eq
1a0037da:	3004      	addeq	r0, #4
1a0037dc:	461a      	moveq	r2, r3
1a0037de:	ba12      	rev	r2, r2
1a0037e0:	fab2 f282 	clz	r2, r2
1a0037e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a0037e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a0037ec:	4770      	bx	lr
1a0037ee:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0037f2:	f004 0503 	and.w	r5, r4, #3
1a0037f6:	f1c4 0000 	rsb	r0, r4, #0
1a0037fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a0037fe:	f014 0f04 	tst.w	r4, #4
1a003802:	f891 f040 	pld	[r1, #64]	; 0x40
1a003806:	fa0c f505 	lsl.w	r5, ip, r5
1a00380a:	ea62 0205 	orn	r2, r2, r5
1a00380e:	bf1c      	itt	ne
1a003810:	ea63 0305 	ornne	r3, r3, r5
1a003814:	4662      	movne	r2, ip
1a003816:	f04f 0400 	mov.w	r4, #0
1a00381a:	e7a9      	b.n	1a003770 <strlen+0x30>

1a00381c <_strtol_l.isra.0>:
1a00381c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a003820:	460e      	mov	r6, r1
1a003822:	4680      	mov	r8, r0
1a003824:	4617      	mov	r7, r2
1a003826:	4699      	mov	r9, r3
1a003828:	460d      	mov	r5, r1
1a00382a:	e000      	b.n	1a00382e <_strtol_l.isra.0+0x12>
1a00382c:	4625      	mov	r5, r4
1a00382e:	462c      	mov	r4, r5
1a003830:	980a      	ldr	r0, [sp, #40]	; 0x28
1a003832:	f814 bb01 	ldrb.w	fp, [r4], #1
1a003836:	f000 f899 	bl	1a00396c <__locale_ctype_ptr_l>
1a00383a:	4458      	add	r0, fp
1a00383c:	7841      	ldrb	r1, [r0, #1]
1a00383e:	f011 0108 	ands.w	r1, r1, #8
1a003842:	d1f3      	bne.n	1a00382c <_strtol_l.isra.0+0x10>
1a003844:	f1bb 0f2d 	cmp.w	fp, #45	; 0x2d
1a003848:	d057      	beq.n	1a0038fa <_strtol_l.isra.0+0xde>
1a00384a:	f1bb 0f2b 	cmp.w	fp, #43	; 0x2b
1a00384e:	bf04      	itt	eq
1a003850:	f895 b001 	ldrbeq.w	fp, [r5, #1]
1a003854:	1cac      	addeq	r4, r5, #2
1a003856:	f1b9 0f00 	cmp.w	r9, #0
1a00385a:	d004      	beq.n	1a003866 <_strtol_l.isra.0+0x4a>
1a00385c:	f1b9 0f10 	cmp.w	r9, #16
1a003860:	d050      	beq.n	1a003904 <_strtol_l.isra.0+0xe8>
1a003862:	46cc      	mov	ip, r9
1a003864:	e005      	b.n	1a003872 <_strtol_l.isra.0+0x56>
1a003866:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
1a00386a:	d055      	beq.n	1a003918 <_strtol_l.isra.0+0xfc>
1a00386c:	f04f 090a 	mov.w	r9, #10
1a003870:	46cc      	mov	ip, r9
1a003872:	2900      	cmp	r1, #0
1a003874:	bf0c      	ite	eq
1a003876:	f06f 4e00 	mvneq.w	lr, #2147483648	; 0x80000000
1a00387a:	f04f 4e00 	movne.w	lr, #2147483648	; 0x80000000
1a00387e:	2500      	movs	r5, #0
1a003880:	fbbe f3fc 	udiv	r3, lr, ip
1a003884:	4628      	mov	r0, r5
1a003886:	fb0c ea13 	mls	sl, ip, r3, lr
1a00388a:	e005      	b.n	1a003898 <_strtol_l.isra.0+0x7c>
1a00388c:	d029      	beq.n	1a0038e2 <_strtol_l.isra.0+0xc6>
1a00388e:	fb0c 2000 	mla	r0, ip, r0, r2
1a003892:	2501      	movs	r5, #1
1a003894:	f814 bb01 	ldrb.w	fp, [r4], #1
1a003898:	f1ab 0230 	sub.w	r2, fp, #48	; 0x30
1a00389c:	2a09      	cmp	r2, #9
1a00389e:	d905      	bls.n	1a0038ac <_strtol_l.isra.0+0x90>
1a0038a0:	f1ab 0241 	sub.w	r2, fp, #65	; 0x41
1a0038a4:	2a19      	cmp	r2, #25
1a0038a6:	d80b      	bhi.n	1a0038c0 <_strtol_l.isra.0+0xa4>
1a0038a8:	f1ab 0237 	sub.w	r2, fp, #55	; 0x37
1a0038ac:	4591      	cmp	r9, r2
1a0038ae:	dd0f      	ble.n	1a0038d0 <_strtol_l.isra.0+0xb4>
1a0038b0:	f1b5 3fff 	cmp.w	r5, #4294967295	; 0xffffffff
1a0038b4:	d0ee      	beq.n	1a003894 <_strtol_l.isra.0+0x78>
1a0038b6:	4283      	cmp	r3, r0
1a0038b8:	d2e8      	bcs.n	1a00388c <_strtol_l.isra.0+0x70>
1a0038ba:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
1a0038be:	e7e9      	b.n	1a003894 <_strtol_l.isra.0+0x78>
1a0038c0:	f1ab 0261 	sub.w	r2, fp, #97	; 0x61
1a0038c4:	2a19      	cmp	r2, #25
1a0038c6:	d803      	bhi.n	1a0038d0 <_strtol_l.isra.0+0xb4>
1a0038c8:	f1ab 0257 	sub.w	r2, fp, #87	; 0x57
1a0038cc:	4591      	cmp	r9, r2
1a0038ce:	dcef      	bgt.n	1a0038b0 <_strtol_l.isra.0+0x94>
1a0038d0:	1c6b      	adds	r3, r5, #1
1a0038d2:	d00b      	beq.n	1a0038ec <_strtol_l.isra.0+0xd0>
1a0038d4:	b101      	cbz	r1, 1a0038d8 <_strtol_l.isra.0+0xbc>
1a0038d6:	4240      	negs	r0, r0
1a0038d8:	b10f      	cbz	r7, 1a0038de <_strtol_l.isra.0+0xc2>
1a0038da:	bb4d      	cbnz	r5, 1a003930 <_strtol_l.isra.0+0x114>
1a0038dc:	603e      	str	r6, [r7, #0]
1a0038de:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0038e2:	4592      	cmp	sl, r2
1a0038e4:	dad3      	bge.n	1a00388e <_strtol_l.isra.0+0x72>
1a0038e6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
1a0038ea:	e7d3      	b.n	1a003894 <_strtol_l.isra.0+0x78>
1a0038ec:	2322      	movs	r3, #34	; 0x22
1a0038ee:	f8c8 3000 	str.w	r3, [r8]
1a0038f2:	b1ff      	cbz	r7, 1a003934 <_strtol_l.isra.0+0x118>
1a0038f4:	1e66      	subs	r6, r4, #1
1a0038f6:	4670      	mov	r0, lr
1a0038f8:	e7f0      	b.n	1a0038dc <_strtol_l.isra.0+0xc0>
1a0038fa:	1cac      	adds	r4, r5, #2
1a0038fc:	f895 b001 	ldrb.w	fp, [r5, #1]
1a003900:	2101      	movs	r1, #1
1a003902:	e7a8      	b.n	1a003856 <_strtol_l.isra.0+0x3a>
1a003904:	f1bb 0f30 	cmp.w	fp, #48	; 0x30
1a003908:	d1ab      	bne.n	1a003862 <_strtol_l.isra.0+0x46>
1a00390a:	7823      	ldrb	r3, [r4, #0]
1a00390c:	f003 03df 	and.w	r3, r3, #223	; 0xdf
1a003910:	2b58      	cmp	r3, #88	; 0x58
1a003912:	d006      	beq.n	1a003922 <_strtol_l.isra.0+0x106>
1a003914:	46cc      	mov	ip, r9
1a003916:	e7ac      	b.n	1a003872 <_strtol_l.isra.0+0x56>
1a003918:	7823      	ldrb	r3, [r4, #0]
1a00391a:	f003 03df 	and.w	r3, r3, #223	; 0xdf
1a00391e:	2b58      	cmp	r3, #88	; 0x58
1a003920:	d10a      	bne.n	1a003938 <_strtol_l.isra.0+0x11c>
1a003922:	f04f 0c10 	mov.w	ip, #16
1a003926:	f894 b001 	ldrb.w	fp, [r4, #1]
1a00392a:	46e1      	mov	r9, ip
1a00392c:	3402      	adds	r4, #2
1a00392e:	e7a0      	b.n	1a003872 <_strtol_l.isra.0+0x56>
1a003930:	4686      	mov	lr, r0
1a003932:	e7df      	b.n	1a0038f4 <_strtol_l.isra.0+0xd8>
1a003934:	4670      	mov	r0, lr
1a003936:	e7d2      	b.n	1a0038de <_strtol_l.isra.0+0xc2>
1a003938:	f04f 0908 	mov.w	r9, #8
1a00393c:	46cc      	mov	ip, r9
1a00393e:	e798      	b.n	1a003872 <_strtol_l.isra.0+0x56>

1a003940 <strtol>:
1a003940:	b530      	push	{r4, r5, lr}
1a003942:	4c08      	ldr	r4, [pc, #32]	; (1a003964 <strtol+0x24>)
1a003944:	4b08      	ldr	r3, [pc, #32]	; (1a003968 <strtol+0x28>)
1a003946:	6825      	ldr	r5, [r4, #0]
1a003948:	6b6c      	ldr	r4, [r5, #52]	; 0x34
1a00394a:	b083      	sub	sp, #12
1a00394c:	2c00      	cmp	r4, #0
1a00394e:	bf08      	it	eq
1a003950:	461c      	moveq	r4, r3
1a003952:	9400      	str	r4, [sp, #0]
1a003954:	4613      	mov	r3, r2
1a003956:	460a      	mov	r2, r1
1a003958:	4601      	mov	r1, r0
1a00395a:	4628      	mov	r0, r5
1a00395c:	f7ff ff5e 	bl	1a00381c <_strtol_l.isra.0>
1a003960:	b003      	add	sp, #12
1a003962:	bd30      	pop	{r4, r5, pc}
1a003964:	10000000 	.word	0x10000000
1a003968:	10000460 	.word	0x10000460

1a00396c <__locale_ctype_ptr_l>:
1a00396c:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
1a003970:	4770      	bx	lr
1a003972:	bf00      	nop

1a003974 <__ascii_mbtowc>:
1a003974:	b082      	sub	sp, #8
1a003976:	b149      	cbz	r1, 1a00398c <__ascii_mbtowc+0x18>
1a003978:	b15a      	cbz	r2, 1a003992 <__ascii_mbtowc+0x1e>
1a00397a:	b16b      	cbz	r3, 1a003998 <__ascii_mbtowc+0x24>
1a00397c:	7813      	ldrb	r3, [r2, #0]
1a00397e:	600b      	str	r3, [r1, #0]
1a003980:	7812      	ldrb	r2, [r2, #0]
1a003982:	1c10      	adds	r0, r2, #0
1a003984:	bf18      	it	ne
1a003986:	2001      	movne	r0, #1
1a003988:	b002      	add	sp, #8
1a00398a:	4770      	bx	lr
1a00398c:	a901      	add	r1, sp, #4
1a00398e:	2a00      	cmp	r2, #0
1a003990:	d1f3      	bne.n	1a00397a <__ascii_mbtowc+0x6>
1a003992:	4610      	mov	r0, r2
1a003994:	b002      	add	sp, #8
1a003996:	4770      	bx	lr
1a003998:	f06f 0001 	mvn.w	r0, #1
1a00399c:	e7f4      	b.n	1a003988 <__ascii_mbtowc+0x14>
1a00399e:	bf00      	nop

1a0039a0 <__ascii_wctomb>:
1a0039a0:	b121      	cbz	r1, 1a0039ac <__ascii_wctomb+0xc>
1a0039a2:	2aff      	cmp	r2, #255	; 0xff
1a0039a4:	d804      	bhi.n	1a0039b0 <__ascii_wctomb+0x10>
1a0039a6:	700a      	strb	r2, [r1, #0]
1a0039a8:	2001      	movs	r0, #1
1a0039aa:	4770      	bx	lr
1a0039ac:	4608      	mov	r0, r1
1a0039ae:	4770      	bx	lr
1a0039b0:	238a      	movs	r3, #138	; 0x8a
1a0039b2:	6003      	str	r3, [r0, #0]
1a0039b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a0039b8:	4770      	bx	lr
1a0039ba:	bf00      	nop

1a0039bc <ExtRateIn>:
1a0039bc:	0000 0000                                   ....

1a0039c0 <OscRateIn>:
1a0039c0:	1b00 00b7 6465 5f75 6963 6161 2023 0000     ....edu_ciaa# ..
1a0039d0:	5b1b 2044 5b1b 0044 000d 0000 5b1b 0000     .[D .[D......[..
1a0039e0:	0043 0000 0044 0000 1b44 005b 5b1b 004b     C...D...D.[..[K.
1a0039f0:	5245 4f52 3a52 6f74 206f 616d 796e 7420     ERROR:too many t
1a003a00:	6b6f 6e65 0073 ffff                         okens...

1a003a08 <leds>:
1a003a08:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a003a18:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a003a28:	0105 0014                                   ....

1a003a2c <keys>:
1a003a2c:	0001 0400 00c0 0101 0800 00c0 0201 0900     ................
1a003a3c:	00c0 0601 0901 00c0 0d0a 0000 6352 3a76     ............Rcv:
1a003a4c:	0000 0000 7265 6f72 2c72 6f20 6370 c369     ....error, opci.
1a003a5c:	6eb3 6920 636e 726f 6572 7463 0061 0000     .n incorrecta...
1a003a6c:	000d ffff                                   ....

1a003a70 <ledSec1>:
1a003a70:	0108 0302 0204 0801 ff05 ffff               ............

1a003a7c <ledSec2>:
1a003a7c:	0905 0504 0201 ffff                         ........

1a003a84 <secuencias>:
1a003a84:	3a70 1a00 3a7c 1a00 6568 706c 0000 0000     p:..|:..help....
1a003a94:	656c 3164 6e4f 0000 656c 3264 6e4f 0000     led1On..led2On..
1a003aa4:	656c 3364 6e4f 0000 656c 3464 6e4f 0000     led3On..led4On..
1a003ab4:	656c 3164 664f 0066 656c 3264 664f 0066     led1Off.led2Off.
1a003ac4:	656c 3364 664f 0066 656c 3464 664f 0066     led3Off.led4Off.
1a003ad4:	6573 7563 6e65 6963 5f61 0031 6573 7563     secuencia_1.secu
1a003ae4:	6e65 6963 5f61 0032 6c63 0073 6568 706c     encia_2.cls.help
1a003af4:	2d20 7620 7369 6175 696c 617a 2072 656d      - visualizar me
1a003b04:	c36e 20ba 6564 6120 7579 6164 0d0a 0000     n.. de ayuda....
1a003b14:	656c 3164 6e4f 2d20 4520 636e 6e65 6564     led1On - Encende
1a003b24:	2072 656c 3164 0d0a 0000 0000 656c 3264     r led1......led2
1a003b34:	6e4f 2d20 4520 636e 6e65 6564 2072 656c     On - Encender le
1a003b44:	3264 0d0a 0000 0000 656c 3364 6e4f 2d20     d2......led3On -
1a003b54:	4520 636e 6e65 6564 2072 656c 3364 0d0a      Encender led3..
1a003b64:	0000 0000 656c 3464 6e4f 2d20 4520 636e     ....led4On - Enc
1a003b74:	6e65 6564 2072 656c 3164 0d0a 0000 0000     ender led1......
1a003b84:	656c 3164 664f 2066 202d 7041 6761 7261     led1Off - Apagar
1a003b94:	6c20 6465 0a31 000d 656c 3264 664f 2066      led1...led2Off 
1a003ba4:	202d 7041 6761 7261 6c20 6465 0a32 000d     - Apagar led2...
1a003bb4:	656c 3364 664f 2066 202d 7041 6761 7261     led3Off - Apagar
1a003bc4:	6c20 6465 0a33 000d 656c 3464 664f 2066      led3...led4Off 
1a003bd4:	202d 7041 6761 7261 6c20 6465 0a34 000d     - Apagar led4...
1a003be4:	6573 7563 6e65 6963 5f61 2031 202d 6573     secuencia_1 - se
1a003bf4:	7563 6e65 6963 2061 726e 206f 0a31 000d     cuencia nro 1...
1a003c04:	6573 7563 6e65 6963 5f61 2032 202d 6573     secuencia_2 - se
1a003c14:	7563 6e65 6963 2061 726e 206f 0a32 000d     cuencia nro 2...
1a003c24:	0a0d 0000 5b1b 4a32 5b1b 663b ff00 ffff     .....[2J.[;f....

1a003c34 <menu>:
1a003c34:	3a8c 1a00 1ea9 1a00 3a94 1a00 1fa9 1a00     .:.......:......
1a003c44:	3a9c 1a00 1fd5 1a00 3aa4 1a00 2001 1a00     .:.......:... ..
1a003c54:	3aac 1a00 202d 1a00 3ab4 1a00 2059 1a00     .:..- ...:..Y ..
1a003c64:	3abc 1a00 2085 1a00 3ac4 1a00 20b1 1a00     .:... ...:... ..
1a003c74:	3acc 1a00 20dd 1a00 3ad4 1a00 1ef1 1a00     .:... ...:......
1a003c84:	3ae0 1a00 1f4d 1a00 3aec 1a00 212d 1a00     .:..M....:..-!..

1a003c94 <InitClkStates>:
1a003c94:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a003ca4:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a003cb4:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a003cc4:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a003cd4:	111a 0001 111b 0001                         ........

1a003cdc <UART_PClock>:
1a003cdc:	0081 0082 00a1 00a2                         ........

1a003ce4 <UART_BClock>:
1a003ce4:	01c2 01a2 0182 0162                         ......b.

1a003cec <periph_to_base>:
1a003cec:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a003cfc:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a003d0c:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a003d1c:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a003d2c:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a003d3c:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a003d4c:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a003d5c:	0f03 0f0f 00ff ffff 0043 0000 4f50 4953     ........C...POSI
1a003d6c:	0058 0000 ff00 ffff 002e 0000               X...........

1a003d78 <_ctype_>:
1a003d78:	2000 2020 2020 2020 2020 2828 2828 2028     .         ((((( 
1a003d88:	2020 2020 2020 2020 2020 2020 2020 2020                     
1a003d98:	8820 1010 1010 1010 1010 1010 1010 1010      ...............
1a003da8:	0410 0404 0404 0404 0404 1004 1010 1010     ................
1a003db8:	1010 4141 4141 4141 0101 0101 0101 0101     ..AAAAAA........
1a003dc8:	0101 0101 0101 0101 0101 0101 1010 1010     ................
1a003dd8:	1010 4242 4242 4242 0202 0202 0202 0202     ..BBBBBB........
1a003de8:	0202 0202 0202 0202 0202 0202 1010 1010     ................
1a003df8:	0020 0000 0000 0000 0000 0000 0000 0000      ...............
	...
1a003e78:	ff00 ffff                                   ....

Disassembly of section .init:

1a003e7c <_init>:
1a003e7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a003e7e:	bf00      	nop

Disassembly of section .fini:

1a003e80 <_fini>:
1a003e80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a003e82:	bf00      	nop
