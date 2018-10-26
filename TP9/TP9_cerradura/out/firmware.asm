
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	f1 1d 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a 39 1e 00 1a 61 1e 00 1a 89 1e 00 1a     ....9...a.......
1a0000cc:	b1 1e 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002fe4 	.word	0x1a002fe4
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
1a000430:	f001 f8e2 	bl	1a0015f8 <main>
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
1a0006c8:	220d      	movs	r2, #13
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
1a0006e0:	f000 f82f 	bl	1a000742 <cerradura_clearInEvents>
1a0006e4:	6878      	ldr	r0, [r7, #4]
1a0006e6:	f000 f849 	bl	1a00077c <cerradura_clearOutEvents>
1a0006ea:	687b      	ldr	r3, [r7, #4]
1a0006ec:	2200      	movs	r2, #0
1a0006ee:	611a      	str	r2, [r3, #16]
1a0006f0:	687b      	ldr	r3, [r7, #4]
1a0006f2:	2200      	movs	r2, #0
1a0006f4:	615a      	str	r2, [r3, #20]
1a0006f6:	687b      	ldr	r3, [r7, #4]
1a0006f8:	4a0b      	ldr	r2, [pc, #44]	; (1a000728 <cerradura_init+0x74>)
1a0006fa:	619a      	str	r2, [r3, #24]
1a0006fc:	687b      	ldr	r3, [r7, #4]
1a0006fe:	2200      	movs	r2, #0
1a000700:	61da      	str	r2, [r3, #28]
1a000702:	687b      	ldr	r3, [r7, #4]
1a000704:	2200      	movs	r2, #0
1a000706:	621a      	str	r2, [r3, #32]
1a000708:	687b      	ldr	r3, [r7, #4]
1a00070a:	2200      	movs	r2, #0
1a00070c:	625a      	str	r2, [r3, #36]	; 0x24
1a00070e:	687b      	ldr	r3, [r7, #4]
1a000710:	2200      	movs	r2, #0
1a000712:	629a      	str	r2, [r3, #40]	; 0x28
1a000714:	687b      	ldr	r3, [r7, #4]
1a000716:	2206      	movs	r2, #6
1a000718:	62da      	str	r2, [r3, #44]	; 0x2c
1a00071a:	687b      	ldr	r3, [r7, #4]
1a00071c:	2200      	movs	r2, #0
1a00071e:	631a      	str	r2, [r3, #48]	; 0x30
1a000720:	bf00      	nop
1a000722:	3710      	adds	r7, #16
1a000724:	46bd      	mov	sp, r7
1a000726:	bd80      	pop	{r7, pc}
1a000728:	0001e1b9 	.word	0x0001e1b9

1a00072c <cerradura_enter>:
1a00072c:	b580      	push	{r7, lr}
1a00072e:	b082      	sub	sp, #8
1a000730:	af00      	add	r7, sp, #0
1a000732:	6078      	str	r0, [r7, #4]
1a000734:	6878      	ldr	r0, [r7, #4]
1a000736:	f000 fc99 	bl	1a00106c <cerradura_enseq_main_region_default>
1a00073a:	bf00      	nop
1a00073c:	3708      	adds	r7, #8
1a00073e:	46bd      	mov	sp, r7
1a000740:	bd80      	pop	{r7, pc}

1a000742 <cerradura_clearInEvents>:
1a000742:	b480      	push	{r7}
1a000744:	b083      	sub	sp, #12
1a000746:	af00      	add	r7, sp, #0
1a000748:	6078      	str	r0, [r7, #4]
1a00074a:	687b      	ldr	r3, [r7, #4]
1a00074c:	2200      	movs	r2, #0
1a00074e:	721a      	strb	r2, [r3, #8]
1a000750:	687b      	ldr	r3, [r7, #4]
1a000752:	2200      	movs	r2, #0
1a000754:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34
1a000758:	687b      	ldr	r3, [r7, #4]
1a00075a:	2200      	movs	r2, #0
1a00075c:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
1a000760:	687b      	ldr	r3, [r7, #4]
1a000762:	2200      	movs	r2, #0
1a000764:	f883 2036 	strb.w	r2, [r3, #54]	; 0x36
1a000768:	687b      	ldr	r3, [r7, #4]
1a00076a:	2200      	movs	r2, #0
1a00076c:	f883 2037 	strb.w	r2, [r3, #55]	; 0x37
1a000770:	bf00      	nop
1a000772:	370c      	adds	r7, #12
1a000774:	46bd      	mov	sp, r7
1a000776:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00077a:	4770      	bx	lr

1a00077c <cerradura_clearOutEvents>:
1a00077c:	b480      	push	{r7}
1a00077e:	b083      	sub	sp, #12
1a000780:	af00      	add	r7, sp, #0
1a000782:	6078      	str	r0, [r7, #4]
1a000784:	bf00      	nop
1a000786:	370c      	adds	r7, #12
1a000788:	46bd      	mov	sp, r7
1a00078a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00078e:	4770      	bx	lr

1a000790 <cerradura_runCycle>:
1a000790:	b580      	push	{r7, lr}
1a000792:	b082      	sub	sp, #8
1a000794:	af00      	add	r7, sp, #0
1a000796:	6078      	str	r0, [r7, #4]
1a000798:	6878      	ldr	r0, [r7, #4]
1a00079a:	f7ff ffef 	bl	1a00077c <cerradura_clearOutEvents>
1a00079e:	687b      	ldr	r3, [r7, #4]
1a0007a0:	2200      	movs	r2, #0
1a0007a2:	605a      	str	r2, [r3, #4]
1a0007a4:	e04c      	b.n	1a000840 <cerradura_runCycle+0xb0>
1a0007a6:	687b      	ldr	r3, [r7, #4]
1a0007a8:	685b      	ldr	r3, [r3, #4]
1a0007aa:	687a      	ldr	r2, [r7, #4]
1a0007ac:	5cd3      	ldrb	r3, [r2, r3]
1a0007ae:	3b01      	subs	r3, #1
1a0007b0:	2b0b      	cmp	r3, #11
1a0007b2:	d83f      	bhi.n	1a000834 <cerradura_runCycle+0xa4>
1a0007b4:	a201      	add	r2, pc, #4	; (adr r2, 1a0007bc <cerradura_runCycle+0x2c>)
1a0007b6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0007ba:	bf00      	nop
1a0007bc:	1a0007ed 	.word	0x1a0007ed
1a0007c0:	1a0007f5 	.word	0x1a0007f5
1a0007c4:	1a000835 	.word	0x1a000835
1a0007c8:	1a0007fd 	.word	0x1a0007fd
1a0007cc:	1a000805 	.word	0x1a000805
1a0007d0:	1a000835 	.word	0x1a000835
1a0007d4:	1a00080d 	.word	0x1a00080d
1a0007d8:	1a000815 	.word	0x1a000815
1a0007dc:	1a00081d 	.word	0x1a00081d
1a0007e0:	1a000835 	.word	0x1a000835
1a0007e4:	1a000825 	.word	0x1a000825
1a0007e8:	1a00082d 	.word	0x1a00082d
1a0007ec:	6878      	ldr	r0, [r7, #4]
1a0007ee:	f000 fd90 	bl	1a001312 <cerradura_react_main_region_led0_r1_encendido>
1a0007f2:	e020      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a0007f4:	6878      	ldr	r0, [r7, #4]
1a0007f6:	f000 fda7 	bl	1a001348 <cerradura_react_main_region_led0_r1_apagado>
1a0007fa:	e01c      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a0007fc:	6878      	ldr	r0, [r7, #4]
1a0007fe:	f000 fdbe 	bl	1a00137e <cerradura_react_main_region_led1_r1_encendido>
1a000802:	e018      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a000804:	6878      	ldr	r0, [r7, #4]
1a000806:	f000 fdd5 	bl	1a0013b4 <cerradura_react_main_region_led1_r1_apagado>
1a00080a:	e014      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a00080c:	6878      	ldr	r0, [r7, #4]
1a00080e:	f000 fdec 	bl	1a0013ea <cerradura_react_main_region_Closed__region0_Wait>
1a000812:	e010      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a000814:	6878      	ldr	r0, [r7, #4]
1a000816:	f000 fe0d 	bl	1a001434 <cerradura_react_main_region_Closed__region0_getKey>
1a00081a:	e00c      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a00081c:	6878      	ldr	r0, [r7, #4]
1a00081e:	f000 fe2e 	bl	1a00147e <cerradura_react_main_region_Locked>
1a000822:	e008      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a000824:	6878      	ldr	r0, [r7, #4]
1a000826:	f000 fe3b 	bl	1a0014a0 <cerradura_react_main_region_Unlocked__region0_Wait>
1a00082a:	e004      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a00082c:	6878      	ldr	r0, [r7, #4]
1a00082e:	f000 fe52 	bl	1a0014d6 <cerradura_react_main_region_Unlocked__region0_getKey>
1a000832:	e000      	b.n	1a000836 <cerradura_runCycle+0xa6>
1a000834:	bf00      	nop
1a000836:	687b      	ldr	r3, [r7, #4]
1a000838:	685b      	ldr	r3, [r3, #4]
1a00083a:	1c5a      	adds	r2, r3, #1
1a00083c:	687b      	ldr	r3, [r7, #4]
1a00083e:	605a      	str	r2, [r3, #4]
1a000840:	687b      	ldr	r3, [r7, #4]
1a000842:	685b      	ldr	r3, [r3, #4]
1a000844:	2b00      	cmp	r3, #0
1a000846:	d0ae      	beq.n	1a0007a6 <cerradura_runCycle+0x16>
1a000848:	6878      	ldr	r0, [r7, #4]
1a00084a:	f7ff ff7a 	bl	1a000742 <cerradura_clearInEvents>
1a00084e:	bf00      	nop
1a000850:	3708      	adds	r7, #8
1a000852:	46bd      	mov	sp, r7
1a000854:	bd80      	pop	{r7, pc}
1a000856:	bf00      	nop

1a000858 <cerradura_raiseTimeEvent>:
1a000858:	b480      	push	{r7}
1a00085a:	b083      	sub	sp, #12
1a00085c:	af00      	add	r7, sp, #0
1a00085e:	6078      	str	r0, [r7, #4]
1a000860:	6039      	str	r1, [r7, #0]
1a000862:	687b      	ldr	r3, [r7, #4]
1a000864:	3334      	adds	r3, #52	; 0x34
1a000866:	461a      	mov	r2, r3
1a000868:	683b      	ldr	r3, [r7, #0]
1a00086a:	429a      	cmp	r2, r3
1a00086c:	dc08      	bgt.n	1a000880 <cerradura_raiseTimeEvent+0x28>
1a00086e:	687b      	ldr	r3, [r7, #4]
1a000870:	3334      	adds	r3, #52	; 0x34
1a000872:	1d1a      	adds	r2, r3, #4
1a000874:	683b      	ldr	r3, [r7, #0]
1a000876:	429a      	cmp	r2, r3
1a000878:	d902      	bls.n	1a000880 <cerradura_raiseTimeEvent+0x28>
1a00087a:	683b      	ldr	r3, [r7, #0]
1a00087c:	2201      	movs	r2, #1
1a00087e:	701a      	strb	r2, [r3, #0]
1a000880:	bf00      	nop
1a000882:	370c      	adds	r7, #12
1a000884:	46bd      	mov	sp, r7
1a000886:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00088a:	4770      	bx	lr

1a00088c <cerraduraIface_raise_keyPressed>:
1a00088c:	b480      	push	{r7}
1a00088e:	b083      	sub	sp, #12
1a000890:	af00      	add	r7, sp, #0
1a000892:	6078      	str	r0, [r7, #4]
1a000894:	6039      	str	r1, [r7, #0]
1a000896:	687b      	ldr	r3, [r7, #4]
1a000898:	683a      	ldr	r2, [r7, #0]
1a00089a:	60da      	str	r2, [r3, #12]
1a00089c:	687b      	ldr	r3, [r7, #4]
1a00089e:	2201      	movs	r2, #1
1a0008a0:	721a      	strb	r2, [r3, #8]
1a0008a2:	bf00      	nop
1a0008a4:	370c      	adds	r7, #12
1a0008a6:	46bd      	mov	sp, r7
1a0008a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008ac:	4770      	bx	lr

1a0008ae <cerradura_check_main_region_led0_tr0_tr0>:
1a0008ae:	b480      	push	{r7}
1a0008b0:	b083      	sub	sp, #12
1a0008b2:	af00      	add	r7, sp, #0
1a0008b4:	6078      	str	r0, [r7, #4]
1a0008b6:	687b      	ldr	r3, [r7, #4]
1a0008b8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a0008ba:	2b03      	cmp	r3, #3
1a0008bc:	bfcc      	ite	gt
1a0008be:	2301      	movgt	r3, #1
1a0008c0:	2300      	movle	r3, #0
1a0008c2:	b2db      	uxtb	r3, r3
1a0008c4:	4618      	mov	r0, r3
1a0008c6:	370c      	adds	r7, #12
1a0008c8:	46bd      	mov	sp, r7
1a0008ca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008ce:	4770      	bx	lr

1a0008d0 <cerradura_check_main_region_led0_r1_encendido_tr0_tr0>:
1a0008d0:	b480      	push	{r7}
1a0008d2:	b083      	sub	sp, #12
1a0008d4:	af00      	add	r7, sp, #0
1a0008d6:	6078      	str	r0, [r7, #4]
1a0008d8:	687b      	ldr	r3, [r7, #4]
1a0008da:	f893 3034 	ldrb.w	r3, [r3, #52]	; 0x34
1a0008de:	4618      	mov	r0, r3
1a0008e0:	370c      	adds	r7, #12
1a0008e2:	46bd      	mov	sp, r7
1a0008e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008e8:	4770      	bx	lr

1a0008ea <cerradura_check_main_region_led0_r1_apagado_tr0_tr0>:
1a0008ea:	b480      	push	{r7}
1a0008ec:	b083      	sub	sp, #12
1a0008ee:	af00      	add	r7, sp, #0
1a0008f0:	6078      	str	r0, [r7, #4]
1a0008f2:	687b      	ldr	r3, [r7, #4]
1a0008f4:	f893 3035 	ldrb.w	r3, [r3, #53]	; 0x35
1a0008f8:	2b00      	cmp	r3, #0
1a0008fa:	d005      	beq.n	1a000908 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x1e>
1a0008fc:	687b      	ldr	r3, [r7, #4]
1a0008fe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a000900:	2b03      	cmp	r3, #3
1a000902:	dc01      	bgt.n	1a000908 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x1e>
1a000904:	2301      	movs	r3, #1
1a000906:	e000      	b.n	1a00090a <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x20>
1a000908:	2300      	movs	r3, #0
1a00090a:	f003 0301 	and.w	r3, r3, #1
1a00090e:	b2db      	uxtb	r3, r3
1a000910:	4618      	mov	r0, r3
1a000912:	370c      	adds	r7, #12
1a000914:	46bd      	mov	sp, r7
1a000916:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00091a:	4770      	bx	lr

1a00091c <cerradura_check_main_region_led1_tr0_tr0>:
1a00091c:	b480      	push	{r7}
1a00091e:	b083      	sub	sp, #12
1a000920:	af00      	add	r7, sp, #0
1a000922:	6078      	str	r0, [r7, #4]
1a000924:	687b      	ldr	r3, [r7, #4]
1a000926:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a000928:	2b03      	cmp	r3, #3
1a00092a:	bfcc      	ite	gt
1a00092c:	2301      	movgt	r3, #1
1a00092e:	2300      	movle	r3, #0
1a000930:	b2db      	uxtb	r3, r3
1a000932:	4618      	mov	r0, r3
1a000934:	370c      	adds	r7, #12
1a000936:	46bd      	mov	sp, r7
1a000938:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00093c:	4770      	bx	lr

1a00093e <cerradura_check_main_region_led1_r1_encendido_tr0_tr0>:
1a00093e:	b480      	push	{r7}
1a000940:	b083      	sub	sp, #12
1a000942:	af00      	add	r7, sp, #0
1a000944:	6078      	str	r0, [r7, #4]
1a000946:	687b      	ldr	r3, [r7, #4]
1a000948:	f893 3036 	ldrb.w	r3, [r3, #54]	; 0x36
1a00094c:	4618      	mov	r0, r3
1a00094e:	370c      	adds	r7, #12
1a000950:	46bd      	mov	sp, r7
1a000952:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000956:	4770      	bx	lr

1a000958 <cerradura_check_main_region_led1_r1_apagado_tr0_tr0>:
1a000958:	b480      	push	{r7}
1a00095a:	b083      	sub	sp, #12
1a00095c:	af00      	add	r7, sp, #0
1a00095e:	6078      	str	r0, [r7, #4]
1a000960:	687b      	ldr	r3, [r7, #4]
1a000962:	f893 3037 	ldrb.w	r3, [r3, #55]	; 0x37
1a000966:	2b00      	cmp	r3, #0
1a000968:	d005      	beq.n	1a000976 <cerradura_check_main_region_led1_r1_apagado_tr0_tr0+0x1e>
1a00096a:	687b      	ldr	r3, [r7, #4]
1a00096c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a00096e:	2b03      	cmp	r3, #3
1a000970:	dc01      	bgt.n	1a000976 <cerradura_check_main_region_led1_r1_apagado_tr0_tr0+0x1e>
1a000972:	2301      	movs	r3, #1
1a000974:	e000      	b.n	1a000978 <cerradura_check_main_region_led1_r1_apagado_tr0_tr0+0x20>
1a000976:	2300      	movs	r3, #0
1a000978:	f003 0301 	and.w	r3, r3, #1
1a00097c:	b2db      	uxtb	r3, r3
1a00097e:	4618      	mov	r0, r3
1a000980:	370c      	adds	r7, #12
1a000982:	46bd      	mov	sp, r7
1a000984:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000988:	4770      	bx	lr

1a00098a <cerradura_check_main_region_Closed_tr0_tr0>:
1a00098a:	b480      	push	{r7}
1a00098c:	b083      	sub	sp, #12
1a00098e:	af00      	add	r7, sp, #0
1a000990:	6078      	str	r0, [r7, #4]
1a000992:	687b      	ldr	r3, [r7, #4]
1a000994:	695a      	ldr	r2, [r3, #20]
1a000996:	687b      	ldr	r3, [r7, #4]
1a000998:	691b      	ldr	r3, [r3, #16]
1a00099a:	429a      	cmp	r2, r3
1a00099c:	d007      	beq.n	1a0009ae <cerradura_check_main_region_Closed_tr0_tr0+0x24>
1a00099e:	687b      	ldr	r3, [r7, #4]
1a0009a0:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a0009a2:	687b      	ldr	r3, [r7, #4]
1a0009a4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a0009a6:	429a      	cmp	r2, r3
1a0009a8:	d101      	bne.n	1a0009ae <cerradura_check_main_region_Closed_tr0_tr0+0x24>
1a0009aa:	2301      	movs	r3, #1
1a0009ac:	e000      	b.n	1a0009b0 <cerradura_check_main_region_Closed_tr0_tr0+0x26>
1a0009ae:	2300      	movs	r3, #0
1a0009b0:	f003 0301 	and.w	r3, r3, #1
1a0009b4:	b2db      	uxtb	r3, r3
1a0009b6:	4618      	mov	r0, r3
1a0009b8:	370c      	adds	r7, #12
1a0009ba:	46bd      	mov	sp, r7
1a0009bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009c0:	4770      	bx	lr

1a0009c2 <cerradura_check_main_region_Closed_tr1_tr1>:
1a0009c2:	b480      	push	{r7}
1a0009c4:	b083      	sub	sp, #12
1a0009c6:	af00      	add	r7, sp, #0
1a0009c8:	6078      	str	r0, [r7, #4]
1a0009ca:	687b      	ldr	r3, [r7, #4]
1a0009cc:	695a      	ldr	r2, [r3, #20]
1a0009ce:	687b      	ldr	r3, [r7, #4]
1a0009d0:	691b      	ldr	r3, [r3, #16]
1a0009d2:	429a      	cmp	r2, r3
1a0009d4:	bf0c      	ite	eq
1a0009d6:	2301      	moveq	r3, #1
1a0009d8:	2300      	movne	r3, #0
1a0009da:	b2db      	uxtb	r3, r3
1a0009dc:	4618      	mov	r0, r3
1a0009de:	370c      	adds	r7, #12
1a0009e0:	46bd      	mov	sp, r7
1a0009e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009e6:	4770      	bx	lr

1a0009e8 <cerradura_check_main_region_Closed__region0_Wait_tr0_tr0>:
1a0009e8:	b480      	push	{r7}
1a0009ea:	b083      	sub	sp, #12
1a0009ec:	af00      	add	r7, sp, #0
1a0009ee:	6078      	str	r0, [r7, #4]
1a0009f0:	687b      	ldr	r3, [r7, #4]
1a0009f2:	7a1b      	ldrb	r3, [r3, #8]
1a0009f4:	4618      	mov	r0, r3
1a0009f6:	370c      	adds	r7, #12
1a0009f8:	46bd      	mov	sp, r7
1a0009fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009fe:	4770      	bx	lr

1a000a00 <cerradura_check_main_region_Closed__region0_getKey_tr0_tr0>:
1a000a00:	b480      	push	{r7}
1a000a02:	b083      	sub	sp, #12
1a000a04:	af00      	add	r7, sp, #0
1a000a06:	6078      	str	r0, [r7, #4]
1a000a08:	687b      	ldr	r3, [r7, #4]
1a000a0a:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a000a0c:	687b      	ldr	r3, [r7, #4]
1a000a0e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000a10:	429a      	cmp	r2, r3
1a000a12:	bfb4      	ite	lt
1a000a14:	2301      	movlt	r3, #1
1a000a16:	2300      	movge	r3, #0
1a000a18:	b2db      	uxtb	r3, r3
1a000a1a:	4618      	mov	r0, r3
1a000a1c:	370c      	adds	r7, #12
1a000a1e:	46bd      	mov	sp, r7
1a000a20:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a24:	4770      	bx	lr

1a000a26 <cerradura_check_main_region_Locked_tr0_tr0>:
1a000a26:	b480      	push	{r7}
1a000a28:	b083      	sub	sp, #12
1a000a2a:	af00      	add	r7, sp, #0
1a000a2c:	6078      	str	r0, [r7, #4]
1a000a2e:	687b      	ldr	r3, [r7, #4]
1a000a30:	6a5b      	ldr	r3, [r3, #36]	; 0x24
1a000a32:	2b00      	cmp	r3, #0
1a000a34:	bf0c      	ite	eq
1a000a36:	2301      	moveq	r3, #1
1a000a38:	2300      	movne	r3, #0
1a000a3a:	b2db      	uxtb	r3, r3
1a000a3c:	4618      	mov	r0, r3
1a000a3e:	370c      	adds	r7, #12
1a000a40:	46bd      	mov	sp, r7
1a000a42:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a46:	4770      	bx	lr

1a000a48 <cerradura_check_main_region_Unlocked_tr0_tr0>:
1a000a48:	b480      	push	{r7}
1a000a4a:	b083      	sub	sp, #12
1a000a4c:	af00      	add	r7, sp, #0
1a000a4e:	6078      	str	r0, [r7, #4]
1a000a50:	687b      	ldr	r3, [r7, #4]
1a000a52:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a000a54:	687b      	ldr	r3, [r7, #4]
1a000a56:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000a58:	429a      	cmp	r2, r3
1a000a5a:	bf0c      	ite	eq
1a000a5c:	2301      	moveq	r3, #1
1a000a5e:	2300      	movne	r3, #0
1a000a60:	b2db      	uxtb	r3, r3
1a000a62:	4618      	mov	r0, r3
1a000a64:	370c      	adds	r7, #12
1a000a66:	46bd      	mov	sp, r7
1a000a68:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a6c:	4770      	bx	lr

1a000a6e <cerradura_check_main_region_Unlocked__region0_Wait_tr0_tr0>:
1a000a6e:	b480      	push	{r7}
1a000a70:	b083      	sub	sp, #12
1a000a72:	af00      	add	r7, sp, #0
1a000a74:	6078      	str	r0, [r7, #4]
1a000a76:	687b      	ldr	r3, [r7, #4]
1a000a78:	7a1b      	ldrb	r3, [r3, #8]
1a000a7a:	4618      	mov	r0, r3
1a000a7c:	370c      	adds	r7, #12
1a000a7e:	46bd      	mov	sp, r7
1a000a80:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a84:	4770      	bx	lr

1a000a86 <cerradura_check_main_region_Unlocked__region0_getKey_tr0_tr0>:
1a000a86:	b480      	push	{r7}
1a000a88:	b083      	sub	sp, #12
1a000a8a:	af00      	add	r7, sp, #0
1a000a8c:	6078      	str	r0, [r7, #4]
1a000a8e:	687b      	ldr	r3, [r7, #4]
1a000a90:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a000a92:	687b      	ldr	r3, [r7, #4]
1a000a94:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000a96:	429a      	cmp	r2, r3
1a000a98:	bfb4      	ite	lt
1a000a9a:	2301      	movlt	r3, #1
1a000a9c:	2300      	movge	r3, #0
1a000a9e:	b2db      	uxtb	r3, r3
1a000aa0:	4618      	mov	r0, r3
1a000aa2:	370c      	adds	r7, #12
1a000aa4:	46bd      	mov	sp, r7
1a000aa6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aaa:	4770      	bx	lr

1a000aac <cerradura_effect_main_region_led0_tr0>:
1a000aac:	b580      	push	{r7, lr}
1a000aae:	b082      	sub	sp, #8
1a000ab0:	af00      	add	r7, sp, #0
1a000ab2:	6078      	str	r0, [r7, #4]
1a000ab4:	6878      	ldr	r0, [r7, #4]
1a000ab6:	f000 fb10 	bl	1a0010da <cerradura_exseq_main_region_led0>
1a000aba:	6878      	ldr	r0, [r7, #4]
1a000abc:	f000 fa95 	bl	1a000fea <cerradura_enseq_main_region_Locked_default>
1a000ac0:	bf00      	nop
1a000ac2:	3708      	adds	r7, #8
1a000ac4:	46bd      	mov	sp, r7
1a000ac6:	bd80      	pop	{r7, pc}

1a000ac8 <cerradura_effect_main_region_led0_r1_encendido_tr0>:
1a000ac8:	b580      	push	{r7, lr}
1a000aca:	b082      	sub	sp, #8
1a000acc:	af00      	add	r7, sp, #0
1a000ace:	6078      	str	r0, [r7, #4]
1a000ad0:	6878      	ldr	r0, [r7, #4]
1a000ad2:	f000 fb0d 	bl	1a0010f0 <cerradura_exseq_main_region_led0_r1_encendido>
1a000ad6:	6878      	ldr	r0, [r7, #4]
1a000ad8:	f000 fa16 	bl	1a000f08 <cerradura_enseq_main_region_led0_r1_apagado_default>
1a000adc:	bf00      	nop
1a000ade:	3708      	adds	r7, #8
1a000ae0:	46bd      	mov	sp, r7
1a000ae2:	bd80      	pop	{r7, pc}

1a000ae4 <cerradura_effect_main_region_led0_r1_apagado_tr0>:
1a000ae4:	b580      	push	{r7, lr}
1a000ae6:	b082      	sub	sp, #8
1a000ae8:	af00      	add	r7, sp, #0
1a000aea:	6078      	str	r0, [r7, #4]
1a000aec:	6878      	ldr	r0, [r7, #4]
1a000aee:	f000 fb10 	bl	1a001112 <cerradura_exseq_main_region_led0_r1_apagado>
1a000af2:	6878      	ldr	r0, [r7, #4]
1a000af4:	f000 f9f7 	bl	1a000ee6 <cerradura_enseq_main_region_led0_r1_encendido_default>
1a000af8:	bf00      	nop
1a000afa:	3708      	adds	r7, #8
1a000afc:	46bd      	mov	sp, r7
1a000afe:	bd80      	pop	{r7, pc}

1a000b00 <cerradura_effect_main_region_led1_tr0>:
1a000b00:	b580      	push	{r7, lr}
1a000b02:	b082      	sub	sp, #8
1a000b04:	af00      	add	r7, sp, #0
1a000b06:	6078      	str	r0, [r7, #4]
1a000b08:	6878      	ldr	r0, [r7, #4]
1a000b0a:	f000 fb13 	bl	1a001134 <cerradura_exseq_main_region_led1>
1a000b0e:	6878      	ldr	r0, [r7, #4]
1a000b10:	f000 fa7c 	bl	1a00100c <cerradura_enseq_main_region_Unlocked_default>
1a000b14:	bf00      	nop
1a000b16:	3708      	adds	r7, #8
1a000b18:	46bd      	mov	sp, r7
1a000b1a:	bd80      	pop	{r7, pc}

1a000b1c <cerradura_effect_main_region_led1_r1_encendido_tr0>:
1a000b1c:	b580      	push	{r7, lr}
1a000b1e:	b082      	sub	sp, #8
1a000b20:	af00      	add	r7, sp, #0
1a000b22:	6078      	str	r0, [r7, #4]
1a000b24:	6878      	ldr	r0, [r7, #4]
1a000b26:	f000 fb10 	bl	1a00114a <cerradura_exseq_main_region_led1_r1_encendido>
1a000b2a:	6878      	ldr	r0, [r7, #4]
1a000b2c:	f000 fa1c 	bl	1a000f68 <cerradura_enseq_main_region_led1_r1_apagado_default>
1a000b30:	bf00      	nop
1a000b32:	3708      	adds	r7, #8
1a000b34:	46bd      	mov	sp, r7
1a000b36:	bd80      	pop	{r7, pc}

1a000b38 <cerradura_effect_main_region_led1_r1_apagado_tr0>:
1a000b38:	b580      	push	{r7, lr}
1a000b3a:	b082      	sub	sp, #8
1a000b3c:	af00      	add	r7, sp, #0
1a000b3e:	6078      	str	r0, [r7, #4]
1a000b40:	6878      	ldr	r0, [r7, #4]
1a000b42:	f000 fb13 	bl	1a00116c <cerradura_exseq_main_region_led1_r1_apagado>
1a000b46:	6878      	ldr	r0, [r7, #4]
1a000b48:	f000 f9fd 	bl	1a000f46 <cerradura_enseq_main_region_led1_r1_encendido_default>
1a000b4c:	bf00      	nop
1a000b4e:	3708      	adds	r7, #8
1a000b50:	46bd      	mov	sp, r7
1a000b52:	bd80      	pop	{r7, pc}

1a000b54 <cerradura_effect_main_region_Closed_tr0>:
1a000b54:	b580      	push	{r7, lr}
1a000b56:	b082      	sub	sp, #8
1a000b58:	af00      	add	r7, sp, #0
1a000b5a:	6078      	str	r0, [r7, #4]
1a000b5c:	6878      	ldr	r0, [r7, #4]
1a000b5e:	f000 fb16 	bl	1a00118e <cerradura_exseq_main_region_Closed>
1a000b62:	6878      	ldr	r0, [r7, #4]
1a000b64:	f000 f9b1 	bl	1a000eca <cerradura_enseq_main_region_led0_default>
1a000b68:	bf00      	nop
1a000b6a:	3708      	adds	r7, #8
1a000b6c:	46bd      	mov	sp, r7
1a000b6e:	bd80      	pop	{r7, pc}

1a000b70 <cerradura_effect_main_region_Closed_tr1>:
1a000b70:	b580      	push	{r7, lr}
1a000b72:	b082      	sub	sp, #8
1a000b74:	af00      	add	r7, sp, #0
1a000b76:	6078      	str	r0, [r7, #4]
1a000b78:	6878      	ldr	r0, [r7, #4]
1a000b7a:	f000 fb08 	bl	1a00118e <cerradura_exseq_main_region_Closed>
1a000b7e:	6878      	ldr	r0, [r7, #4]
1a000b80:	f000 f9d3 	bl	1a000f2a <cerradura_enseq_main_region_led1_default>
1a000b84:	bf00      	nop
1a000b86:	3708      	adds	r7, #8
1a000b88:	46bd      	mov	sp, r7
1a000b8a:	bd80      	pop	{r7, pc}

1a000b8c <cerradura_effect_main_region_Closed__region0_Wait_tr0>:
1a000b8c:	b580      	push	{r7, lr}
1a000b8e:	b082      	sub	sp, #8
1a000b90:	af00      	add	r7, sp, #0
1a000b92:	6078      	str	r0, [r7, #4]
1a000b94:	6878      	ldr	r0, [r7, #4]
1a000b96:	f000 fb05 	bl	1a0011a4 <cerradura_exseq_main_region_Closed__region0_Wait>
1a000b9a:	6878      	ldr	r0, [r7, #4]
1a000b9c:	f000 fa14 	bl	1a000fc8 <cerradura_enseq_main_region_Closed__region0_getKey_default>
1a000ba0:	bf00      	nop
1a000ba2:	3708      	adds	r7, #8
1a000ba4:	46bd      	mov	sp, r7
1a000ba6:	bd80      	pop	{r7, pc}

1a000ba8 <cerradura_effect_main_region_Closed__region0_getKey_tr0>:
1a000ba8:	b580      	push	{r7, lr}
1a000baa:	b082      	sub	sp, #8
1a000bac:	af00      	add	r7, sp, #0
1a000bae:	6078      	str	r0, [r7, #4]
1a000bb0:	6878      	ldr	r0, [r7, #4]
1a000bb2:	f000 fb07 	bl	1a0011c4 <cerradura_exseq_main_region_Closed__region0_getKey>
1a000bb6:	6878      	ldr	r0, [r7, #4]
1a000bb8:	f000 f9f5 	bl	1a000fa6 <cerradura_enseq_main_region_Closed__region0_Wait_default>
1a000bbc:	bf00      	nop
1a000bbe:	3708      	adds	r7, #8
1a000bc0:	46bd      	mov	sp, r7
1a000bc2:	bd80      	pop	{r7, pc}

1a000bc4 <cerradura_effect_main_region_Locked_tr0>:
1a000bc4:	b580      	push	{r7, lr}
1a000bc6:	b082      	sub	sp, #8
1a000bc8:	af00      	add	r7, sp, #0
1a000bca:	6078      	str	r0, [r7, #4]
1a000bcc:	6878      	ldr	r0, [r7, #4]
1a000bce:	f000 fb09 	bl	1a0011e4 <cerradura_exseq_main_region_Locked>
1a000bd2:	6878      	ldr	r0, [r7, #4]
1a000bd4:	f000 f9d9 	bl	1a000f8a <cerradura_enseq_main_region_Closed_default>
1a000bd8:	bf00      	nop
1a000bda:	3708      	adds	r7, #8
1a000bdc:	46bd      	mov	sp, r7
1a000bde:	bd80      	pop	{r7, pc}

1a000be0 <cerradura_effect_main_region_Unlocked_tr0>:
1a000be0:	b580      	push	{r7, lr}
1a000be2:	b082      	sub	sp, #8
1a000be4:	af00      	add	r7, sp, #0
1a000be6:	6078      	str	r0, [r7, #4]
1a000be8:	6878      	ldr	r0, [r7, #4]
1a000bea:	f000 fb0b 	bl	1a001204 <cerradura_exseq_main_region_Unlocked>
1a000bee:	6878      	ldr	r0, [r7, #4]
1a000bf0:	f000 f9fb 	bl	1a000fea <cerradura_enseq_main_region_Locked_default>
1a000bf4:	bf00      	nop
1a000bf6:	3708      	adds	r7, #8
1a000bf8:	46bd      	mov	sp, r7
1a000bfa:	bd80      	pop	{r7, pc}

1a000bfc <cerradura_effect_main_region_Unlocked__region0_Wait_tr0>:
1a000bfc:	b580      	push	{r7, lr}
1a000bfe:	b082      	sub	sp, #8
1a000c00:	af00      	add	r7, sp, #0
1a000c02:	6078      	str	r0, [r7, #4]
1a000c04:	6878      	ldr	r0, [r7, #4]
1a000c06:	f000 fb08 	bl	1a00121a <cerradura_exseq_main_region_Unlocked__region0_Wait>
1a000c0a:	6878      	ldr	r0, [r7, #4]
1a000c0c:	f000 fa1d 	bl	1a00104a <cerradura_enseq_main_region_Unlocked__region0_getKey_default>
1a000c10:	bf00      	nop
1a000c12:	3708      	adds	r7, #8
1a000c14:	46bd      	mov	sp, r7
1a000c16:	bd80      	pop	{r7, pc}

1a000c18 <cerradura_effect_main_region_Unlocked__region0_getKey_tr0>:
1a000c18:	b580      	push	{r7, lr}
1a000c1a:	b082      	sub	sp, #8
1a000c1c:	af00      	add	r7, sp, #0
1a000c1e:	6078      	str	r0, [r7, #4]
1a000c20:	6878      	ldr	r0, [r7, #4]
1a000c22:	f000 fb0a 	bl	1a00123a <cerradura_exseq_main_region_Unlocked__region0_getKey>
1a000c26:	6878      	ldr	r0, [r7, #4]
1a000c28:	f000 f9fe 	bl	1a001028 <cerradura_enseq_main_region_Unlocked__region0_Wait_default>
1a000c2c:	bf00      	nop
1a000c2e:	3708      	adds	r7, #8
1a000c30:	46bd      	mov	sp, r7
1a000c32:	bd80      	pop	{r7, pc}

1a000c34 <cerradura_enact_main_region_led0>:
1a000c34:	b580      	push	{r7, lr}
1a000c36:	b082      	sub	sp, #8
1a000c38:	af00      	add	r7, sp, #0
1a000c3a:	6078      	str	r0, [r7, #4]
1a000c3c:	2108      	movs	r1, #8
1a000c3e:	6878      	ldr	r0, [r7, #4]
1a000c40:	f000 fcc2 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000c44:	687b      	ldr	r3, [r7, #4]
1a000c46:	2200      	movs	r2, #0
1a000c48:	631a      	str	r2, [r3, #48]	; 0x30
1a000c4a:	bf00      	nop
1a000c4c:	3708      	adds	r7, #8
1a000c4e:	46bd      	mov	sp, r7
1a000c50:	bd80      	pop	{r7, pc}

1a000c52 <cerradura_enact_main_region_led0_r1_encendido>:
1a000c52:	b580      	push	{r7, lr}
1a000c54:	b082      	sub	sp, #8
1a000c56:	af00      	add	r7, sp, #0
1a000c58:	6078      	str	r0, [r7, #4]
1a000c5a:	687b      	ldr	r3, [r7, #4]
1a000c5c:	f103 0134 	add.w	r1, r3, #52	; 0x34
1a000c60:	2300      	movs	r3, #0
1a000c62:	22fa      	movs	r2, #250	; 0xfa
1a000c64:	6878      	ldr	r0, [r7, #4]
1a000c66:	f000 fc89 	bl	1a00157c <cerradura_setTimer>
1a000c6a:	2108      	movs	r1, #8
1a000c6c:	6878      	ldr	r0, [r7, #4]
1a000c6e:	f000 fcab 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000c72:	687b      	ldr	r3, [r7, #4]
1a000c74:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a000c76:	1c5a      	adds	r2, r3, #1
1a000c78:	687b      	ldr	r3, [r7, #4]
1a000c7a:	631a      	str	r2, [r3, #48]	; 0x30
1a000c7c:	bf00      	nop
1a000c7e:	3708      	adds	r7, #8
1a000c80:	46bd      	mov	sp, r7
1a000c82:	bd80      	pop	{r7, pc}

1a000c84 <cerradura_enact_main_region_led0_r1_apagado>:
1a000c84:	b580      	push	{r7, lr}
1a000c86:	b082      	sub	sp, #8
1a000c88:	af00      	add	r7, sp, #0
1a000c8a:	6078      	str	r0, [r7, #4]
1a000c8c:	687b      	ldr	r3, [r7, #4]
1a000c8e:	f103 0135 	add.w	r1, r3, #53	; 0x35
1a000c92:	2300      	movs	r3, #0
1a000c94:	22fa      	movs	r2, #250	; 0xfa
1a000c96:	6878      	ldr	r0, [r7, #4]
1a000c98:	f000 fc70 	bl	1a00157c <cerradura_setTimer>
1a000c9c:	2100      	movs	r1, #0
1a000c9e:	6878      	ldr	r0, [r7, #4]
1a000ca0:	f000 fc92 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000ca4:	bf00      	nop
1a000ca6:	3708      	adds	r7, #8
1a000ca8:	46bd      	mov	sp, r7
1a000caa:	bd80      	pop	{r7, pc}

1a000cac <cerradura_enact_main_region_led1>:
1a000cac:	b580      	push	{r7, lr}
1a000cae:	b082      	sub	sp, #8
1a000cb0:	af00      	add	r7, sp, #0
1a000cb2:	6078      	str	r0, [r7, #4]
1a000cb4:	2120      	movs	r1, #32
1a000cb6:	6878      	ldr	r0, [r7, #4]
1a000cb8:	f000 fc86 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000cbc:	687b      	ldr	r3, [r7, #4]
1a000cbe:	2200      	movs	r2, #0
1a000cc0:	631a      	str	r2, [r3, #48]	; 0x30
1a000cc2:	bf00      	nop
1a000cc4:	3708      	adds	r7, #8
1a000cc6:	46bd      	mov	sp, r7
1a000cc8:	bd80      	pop	{r7, pc}

1a000cca <cerradura_enact_main_region_led1_r1_encendido>:
1a000cca:	b580      	push	{r7, lr}
1a000ccc:	b082      	sub	sp, #8
1a000cce:	af00      	add	r7, sp, #0
1a000cd0:	6078      	str	r0, [r7, #4]
1a000cd2:	687b      	ldr	r3, [r7, #4]
1a000cd4:	f103 0136 	add.w	r1, r3, #54	; 0x36
1a000cd8:	2300      	movs	r3, #0
1a000cda:	22fa      	movs	r2, #250	; 0xfa
1a000cdc:	6878      	ldr	r0, [r7, #4]
1a000cde:	f000 fc4d 	bl	1a00157c <cerradura_setTimer>
1a000ce2:	2108      	movs	r1, #8
1a000ce4:	6878      	ldr	r0, [r7, #4]
1a000ce6:	f000 fc6f 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000cea:	687b      	ldr	r3, [r7, #4]
1a000cec:	6b1b      	ldr	r3, [r3, #48]	; 0x30
1a000cee:	1c5a      	adds	r2, r3, #1
1a000cf0:	687b      	ldr	r3, [r7, #4]
1a000cf2:	631a      	str	r2, [r3, #48]	; 0x30
1a000cf4:	bf00      	nop
1a000cf6:	3708      	adds	r7, #8
1a000cf8:	46bd      	mov	sp, r7
1a000cfa:	bd80      	pop	{r7, pc}

1a000cfc <cerradura_enact_main_region_led1_r1_apagado>:
1a000cfc:	b580      	push	{r7, lr}
1a000cfe:	b082      	sub	sp, #8
1a000d00:	af00      	add	r7, sp, #0
1a000d02:	6078      	str	r0, [r7, #4]
1a000d04:	687b      	ldr	r3, [r7, #4]
1a000d06:	f103 0137 	add.w	r1, r3, #55	; 0x37
1a000d0a:	2300      	movs	r3, #0
1a000d0c:	22fa      	movs	r2, #250	; 0xfa
1a000d0e:	6878      	ldr	r0, [r7, #4]
1a000d10:	f000 fc34 	bl	1a00157c <cerradura_setTimer>
1a000d14:	2100      	movs	r1, #0
1a000d16:	6878      	ldr	r0, [r7, #4]
1a000d18:	f000 fc56 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000d1c:	bf00      	nop
1a000d1e:	3708      	adds	r7, #8
1a000d20:	46bd      	mov	sp, r7
1a000d22:	bd80      	pop	{r7, pc}

1a000d24 <cerradura_enact_main_region_Closed>:
1a000d24:	b580      	push	{r7, lr}
1a000d26:	b082      	sub	sp, #8
1a000d28:	af00      	add	r7, sp, #0
1a000d2a:	6078      	str	r0, [r7, #4]
1a000d2c:	2100      	movs	r1, #0
1a000d2e:	6878      	ldr	r0, [r7, #4]
1a000d30:	f000 fc4a 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000d34:	687b      	ldr	r3, [r7, #4]
1a000d36:	2200      	movs	r2, #0
1a000d38:	625a      	str	r2, [r3, #36]	; 0x24
1a000d3a:	687b      	ldr	r3, [r7, #4]
1a000d3c:	2200      	movs	r2, #0
1a000d3e:	615a      	str	r2, [r3, #20]
1a000d40:	687b      	ldr	r3, [r7, #4]
1a000d42:	699a      	ldr	r2, [r3, #24]
1a000d44:	687b      	ldr	r3, [r7, #4]
1a000d46:	611a      	str	r2, [r3, #16]
1a000d48:	bf00      	nop
1a000d4a:	3708      	adds	r7, #8
1a000d4c:	46bd      	mov	sp, r7
1a000d4e:	bd80      	pop	{r7, pc}

1a000d50 <cerradura_enact_main_region_Closed__region0_Wait>:
1a000d50:	b480      	push	{r7}
1a000d52:	b083      	sub	sp, #12
1a000d54:	af00      	add	r7, sp, #0
1a000d56:	6078      	str	r0, [r7, #4]
1a000d58:	687b      	ldr	r3, [r7, #4]
1a000d5a:	695a      	ldr	r2, [r3, #20]
1a000d5c:	4613      	mov	r3, r2
1a000d5e:	009b      	lsls	r3, r3, #2
1a000d60:	4413      	add	r3, r2
1a000d62:	005b      	lsls	r3, r3, #1
1a000d64:	461a      	mov	r2, r3
1a000d66:	687b      	ldr	r3, [r7, #4]
1a000d68:	615a      	str	r2, [r3, #20]
1a000d6a:	bf00      	nop
1a000d6c:	370c      	adds	r7, #12
1a000d6e:	46bd      	mov	sp, r7
1a000d70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d74:	4770      	bx	lr

1a000d76 <cerradura_enact_main_region_Closed__region0_getKey>:
1a000d76:	b580      	push	{r7, lr}
1a000d78:	b082      	sub	sp, #8
1a000d7a:	af00      	add	r7, sp, #0
1a000d7c:	6078      	str	r0, [r7, #4]
1a000d7e:	687b      	ldr	r3, [r7, #4]
1a000d80:	6a5b      	ldr	r3, [r3, #36]	; 0x24
1a000d82:	1c5a      	adds	r2, r3, #1
1a000d84:	687b      	ldr	r3, [r7, #4]
1a000d86:	625a      	str	r2, [r3, #36]	; 0x24
1a000d88:	6878      	ldr	r0, [r7, #4]
1a000d8a:	f000 fc29 	bl	1a0015e0 <cerraduraIface_getKeyPressed>
1a000d8e:	4602      	mov	r2, r0
1a000d90:	687b      	ldr	r3, [r7, #4]
1a000d92:	61da      	str	r2, [r3, #28]
1a000d94:	687b      	ldr	r3, [r7, #4]
1a000d96:	695a      	ldr	r2, [r3, #20]
1a000d98:	687b      	ldr	r3, [r7, #4]
1a000d9a:	69db      	ldr	r3, [r3, #28]
1a000d9c:	441a      	add	r2, r3
1a000d9e:	687b      	ldr	r3, [r7, #4]
1a000da0:	615a      	str	r2, [r3, #20]
1a000da2:	bf00      	nop
1a000da4:	3708      	adds	r7, #8
1a000da6:	46bd      	mov	sp, r7
1a000da8:	bd80      	pop	{r7, pc}

1a000daa <cerradura_enact_main_region_Locked>:
1a000daa:	b480      	push	{r7}
1a000dac:	b083      	sub	sp, #12
1a000dae:	af00      	add	r7, sp, #0
1a000db0:	6078      	str	r0, [r7, #4]
1a000db2:	687b      	ldr	r3, [r7, #4]
1a000db4:	2200      	movs	r2, #0
1a000db6:	615a      	str	r2, [r3, #20]
1a000db8:	687b      	ldr	r3, [r7, #4]
1a000dba:	2200      	movs	r2, #0
1a000dbc:	61da      	str	r2, [r3, #28]
1a000dbe:	687b      	ldr	r3, [r7, #4]
1a000dc0:	2200      	movs	r2, #0
1a000dc2:	625a      	str	r2, [r3, #36]	; 0x24
1a000dc4:	bf00      	nop
1a000dc6:	370c      	adds	r7, #12
1a000dc8:	46bd      	mov	sp, r7
1a000dca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000dce:	4770      	bx	lr

1a000dd0 <cerradura_enact_main_region_Unlocked>:
1a000dd0:	b580      	push	{r7, lr}
1a000dd2:	b082      	sub	sp, #8
1a000dd4:	af00      	add	r7, sp, #0
1a000dd6:	6078      	str	r0, [r7, #4]
1a000dd8:	2100      	movs	r1, #0
1a000dda:	6878      	ldr	r0, [r7, #4]
1a000ddc:	f000 fbf4 	bl	1a0015c8 <cerraduraIface_setLedFromMask>
1a000de0:	687b      	ldr	r3, [r7, #4]
1a000de2:	2200      	movs	r2, #0
1a000de4:	625a      	str	r2, [r3, #36]	; 0x24
1a000de6:	687b      	ldr	r3, [r7, #4]
1a000de8:	2200      	movs	r2, #0
1a000dea:	61da      	str	r2, [r3, #28]
1a000dec:	687b      	ldr	r3, [r7, #4]
1a000dee:	2200      	movs	r2, #0
1a000df0:	619a      	str	r2, [r3, #24]
1a000df2:	687b      	ldr	r3, [r7, #4]
1a000df4:	2200      	movs	r2, #0
1a000df6:	615a      	str	r2, [r3, #20]
1a000df8:	bf00      	nop
1a000dfa:	3708      	adds	r7, #8
1a000dfc:	46bd      	mov	sp, r7
1a000dfe:	bd80      	pop	{r7, pc}

1a000e00 <cerradura_enact_main_region_Unlocked__region0_Wait>:
1a000e00:	b480      	push	{r7}
1a000e02:	b083      	sub	sp, #12
1a000e04:	af00      	add	r7, sp, #0
1a000e06:	6078      	str	r0, [r7, #4]
1a000e08:	687b      	ldr	r3, [r7, #4]
1a000e0a:	699a      	ldr	r2, [r3, #24]
1a000e0c:	4613      	mov	r3, r2
1a000e0e:	009b      	lsls	r3, r3, #2
1a000e10:	4413      	add	r3, r2
1a000e12:	005b      	lsls	r3, r3, #1
1a000e14:	461a      	mov	r2, r3
1a000e16:	687b      	ldr	r3, [r7, #4]
1a000e18:	619a      	str	r2, [r3, #24]
1a000e1a:	bf00      	nop
1a000e1c:	370c      	adds	r7, #12
1a000e1e:	46bd      	mov	sp, r7
1a000e20:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e24:	4770      	bx	lr

1a000e26 <cerradura_enact_main_region_Unlocked__region0_getKey>:
1a000e26:	b580      	push	{r7, lr}
1a000e28:	b082      	sub	sp, #8
1a000e2a:	af00      	add	r7, sp, #0
1a000e2c:	6078      	str	r0, [r7, #4]
1a000e2e:	687b      	ldr	r3, [r7, #4]
1a000e30:	6a5b      	ldr	r3, [r3, #36]	; 0x24
1a000e32:	1c5a      	adds	r2, r3, #1
1a000e34:	687b      	ldr	r3, [r7, #4]
1a000e36:	625a      	str	r2, [r3, #36]	; 0x24
1a000e38:	6878      	ldr	r0, [r7, #4]
1a000e3a:	f000 fbd1 	bl	1a0015e0 <cerraduraIface_getKeyPressed>
1a000e3e:	4602      	mov	r2, r0
1a000e40:	687b      	ldr	r3, [r7, #4]
1a000e42:	61da      	str	r2, [r3, #28]
1a000e44:	687b      	ldr	r3, [r7, #4]
1a000e46:	699a      	ldr	r2, [r3, #24]
1a000e48:	687b      	ldr	r3, [r7, #4]
1a000e4a:	69db      	ldr	r3, [r3, #28]
1a000e4c:	441a      	add	r2, r3
1a000e4e:	687b      	ldr	r3, [r7, #4]
1a000e50:	619a      	str	r2, [r3, #24]
1a000e52:	bf00      	nop
1a000e54:	3708      	adds	r7, #8
1a000e56:	46bd      	mov	sp, r7
1a000e58:	bd80      	pop	{r7, pc}

1a000e5a <cerradura_exact_main_region_led0_r1_encendido>:
1a000e5a:	b580      	push	{r7, lr}
1a000e5c:	b082      	sub	sp, #8
1a000e5e:	af00      	add	r7, sp, #0
1a000e60:	6078      	str	r0, [r7, #4]
1a000e62:	687b      	ldr	r3, [r7, #4]
1a000e64:	3334      	adds	r3, #52	; 0x34
1a000e66:	4619      	mov	r1, r3
1a000e68:	6878      	ldr	r0, [r7, #4]
1a000e6a:	f000 fb9d 	bl	1a0015a8 <cerradura_unsetTimer>
1a000e6e:	bf00      	nop
1a000e70:	3708      	adds	r7, #8
1a000e72:	46bd      	mov	sp, r7
1a000e74:	bd80      	pop	{r7, pc}

1a000e76 <cerradura_exact_main_region_led0_r1_apagado>:
1a000e76:	b580      	push	{r7, lr}
1a000e78:	b082      	sub	sp, #8
1a000e7a:	af00      	add	r7, sp, #0
1a000e7c:	6078      	str	r0, [r7, #4]
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	3335      	adds	r3, #53	; 0x35
1a000e82:	4619      	mov	r1, r3
1a000e84:	6878      	ldr	r0, [r7, #4]
1a000e86:	f000 fb8f 	bl	1a0015a8 <cerradura_unsetTimer>
1a000e8a:	bf00      	nop
1a000e8c:	3708      	adds	r7, #8
1a000e8e:	46bd      	mov	sp, r7
1a000e90:	bd80      	pop	{r7, pc}

1a000e92 <cerradura_exact_main_region_led1_r1_encendido>:
1a000e92:	b580      	push	{r7, lr}
1a000e94:	b082      	sub	sp, #8
1a000e96:	af00      	add	r7, sp, #0
1a000e98:	6078      	str	r0, [r7, #4]
1a000e9a:	687b      	ldr	r3, [r7, #4]
1a000e9c:	3336      	adds	r3, #54	; 0x36
1a000e9e:	4619      	mov	r1, r3
1a000ea0:	6878      	ldr	r0, [r7, #4]
1a000ea2:	f000 fb81 	bl	1a0015a8 <cerradura_unsetTimer>
1a000ea6:	bf00      	nop
1a000ea8:	3708      	adds	r7, #8
1a000eaa:	46bd      	mov	sp, r7
1a000eac:	bd80      	pop	{r7, pc}

1a000eae <cerradura_exact_main_region_led1_r1_apagado>:
1a000eae:	b580      	push	{r7, lr}
1a000eb0:	b082      	sub	sp, #8
1a000eb2:	af00      	add	r7, sp, #0
1a000eb4:	6078      	str	r0, [r7, #4]
1a000eb6:	687b      	ldr	r3, [r7, #4]
1a000eb8:	3337      	adds	r3, #55	; 0x37
1a000eba:	4619      	mov	r1, r3
1a000ebc:	6878      	ldr	r0, [r7, #4]
1a000ebe:	f000 fb73 	bl	1a0015a8 <cerradura_unsetTimer>
1a000ec2:	bf00      	nop
1a000ec4:	3708      	adds	r7, #8
1a000ec6:	46bd      	mov	sp, r7
1a000ec8:	bd80      	pop	{r7, pc}

1a000eca <cerradura_enseq_main_region_led0_default>:
1a000eca:	b580      	push	{r7, lr}
1a000ecc:	b082      	sub	sp, #8
1a000ece:	af00      	add	r7, sp, #0
1a000ed0:	6078      	str	r0, [r7, #4]
1a000ed2:	6878      	ldr	r0, [r7, #4]
1a000ed4:	f7ff feae 	bl	1a000c34 <cerradura_enact_main_region_led0>
1a000ed8:	6878      	ldr	r0, [r7, #4]
1a000eda:	f000 f8d2 	bl	1a001082 <cerradura_enseq_main_region_led0_r1_default>
1a000ede:	bf00      	nop
1a000ee0:	3708      	adds	r7, #8
1a000ee2:	46bd      	mov	sp, r7
1a000ee4:	bd80      	pop	{r7, pc}

1a000ee6 <cerradura_enseq_main_region_led0_r1_encendido_default>:
1a000ee6:	b580      	push	{r7, lr}
1a000ee8:	b082      	sub	sp, #8
1a000eea:	af00      	add	r7, sp, #0
1a000eec:	6078      	str	r0, [r7, #4]
1a000eee:	6878      	ldr	r0, [r7, #4]
1a000ef0:	f7ff feaf 	bl	1a000c52 <cerradura_enact_main_region_led0_r1_encendido>
1a000ef4:	687b      	ldr	r3, [r7, #4]
1a000ef6:	2201      	movs	r2, #1
1a000ef8:	701a      	strb	r2, [r3, #0]
1a000efa:	687b      	ldr	r3, [r7, #4]
1a000efc:	2200      	movs	r2, #0
1a000efe:	605a      	str	r2, [r3, #4]
1a000f00:	bf00      	nop
1a000f02:	3708      	adds	r7, #8
1a000f04:	46bd      	mov	sp, r7
1a000f06:	bd80      	pop	{r7, pc}

1a000f08 <cerradura_enseq_main_region_led0_r1_apagado_default>:
1a000f08:	b580      	push	{r7, lr}
1a000f0a:	b082      	sub	sp, #8
1a000f0c:	af00      	add	r7, sp, #0
1a000f0e:	6078      	str	r0, [r7, #4]
1a000f10:	6878      	ldr	r0, [r7, #4]
1a000f12:	f7ff feb7 	bl	1a000c84 <cerradura_enact_main_region_led0_r1_apagado>
1a000f16:	687b      	ldr	r3, [r7, #4]
1a000f18:	2202      	movs	r2, #2
1a000f1a:	701a      	strb	r2, [r3, #0]
1a000f1c:	687b      	ldr	r3, [r7, #4]
1a000f1e:	2200      	movs	r2, #0
1a000f20:	605a      	str	r2, [r3, #4]
1a000f22:	bf00      	nop
1a000f24:	3708      	adds	r7, #8
1a000f26:	46bd      	mov	sp, r7
1a000f28:	bd80      	pop	{r7, pc}

1a000f2a <cerradura_enseq_main_region_led1_default>:
1a000f2a:	b580      	push	{r7, lr}
1a000f2c:	b082      	sub	sp, #8
1a000f2e:	af00      	add	r7, sp, #0
1a000f30:	6078      	str	r0, [r7, #4]
1a000f32:	6878      	ldr	r0, [r7, #4]
1a000f34:	f7ff feba 	bl	1a000cac <cerradura_enact_main_region_led1>
1a000f38:	6878      	ldr	r0, [r7, #4]
1a000f3a:	f000 f8ad 	bl	1a001098 <cerradura_enseq_main_region_led1_r1_default>
1a000f3e:	bf00      	nop
1a000f40:	3708      	adds	r7, #8
1a000f42:	46bd      	mov	sp, r7
1a000f44:	bd80      	pop	{r7, pc}

1a000f46 <cerradura_enseq_main_region_led1_r1_encendido_default>:
1a000f46:	b580      	push	{r7, lr}
1a000f48:	b082      	sub	sp, #8
1a000f4a:	af00      	add	r7, sp, #0
1a000f4c:	6078      	str	r0, [r7, #4]
1a000f4e:	6878      	ldr	r0, [r7, #4]
1a000f50:	f7ff febb 	bl	1a000cca <cerradura_enact_main_region_led1_r1_encendido>
1a000f54:	687b      	ldr	r3, [r7, #4]
1a000f56:	2204      	movs	r2, #4
1a000f58:	701a      	strb	r2, [r3, #0]
1a000f5a:	687b      	ldr	r3, [r7, #4]
1a000f5c:	2200      	movs	r2, #0
1a000f5e:	605a      	str	r2, [r3, #4]
1a000f60:	bf00      	nop
1a000f62:	3708      	adds	r7, #8
1a000f64:	46bd      	mov	sp, r7
1a000f66:	bd80      	pop	{r7, pc}

1a000f68 <cerradura_enseq_main_region_led1_r1_apagado_default>:
1a000f68:	b580      	push	{r7, lr}
1a000f6a:	b082      	sub	sp, #8
1a000f6c:	af00      	add	r7, sp, #0
1a000f6e:	6078      	str	r0, [r7, #4]
1a000f70:	6878      	ldr	r0, [r7, #4]
1a000f72:	f7ff fec3 	bl	1a000cfc <cerradura_enact_main_region_led1_r1_apagado>
1a000f76:	687b      	ldr	r3, [r7, #4]
1a000f78:	2205      	movs	r2, #5
1a000f7a:	701a      	strb	r2, [r3, #0]
1a000f7c:	687b      	ldr	r3, [r7, #4]
1a000f7e:	2200      	movs	r2, #0
1a000f80:	605a      	str	r2, [r3, #4]
1a000f82:	bf00      	nop
1a000f84:	3708      	adds	r7, #8
1a000f86:	46bd      	mov	sp, r7
1a000f88:	bd80      	pop	{r7, pc}

1a000f8a <cerradura_enseq_main_region_Closed_default>:
1a000f8a:	b580      	push	{r7, lr}
1a000f8c:	b082      	sub	sp, #8
1a000f8e:	af00      	add	r7, sp, #0
1a000f90:	6078      	str	r0, [r7, #4]
1a000f92:	6878      	ldr	r0, [r7, #4]
1a000f94:	f7ff fec6 	bl	1a000d24 <cerradura_enact_main_region_Closed>
1a000f98:	6878      	ldr	r0, [r7, #4]
1a000f9a:	f000 f888 	bl	1a0010ae <cerradura_enseq_main_region_Closed__region0_default>
1a000f9e:	bf00      	nop
1a000fa0:	3708      	adds	r7, #8
1a000fa2:	46bd      	mov	sp, r7
1a000fa4:	bd80      	pop	{r7, pc}

1a000fa6 <cerradura_enseq_main_region_Closed__region0_Wait_default>:
1a000fa6:	b580      	push	{r7, lr}
1a000fa8:	b082      	sub	sp, #8
1a000faa:	af00      	add	r7, sp, #0
1a000fac:	6078      	str	r0, [r7, #4]
1a000fae:	6878      	ldr	r0, [r7, #4]
1a000fb0:	f7ff fece 	bl	1a000d50 <cerradura_enact_main_region_Closed__region0_Wait>
1a000fb4:	687b      	ldr	r3, [r7, #4]
1a000fb6:	2207      	movs	r2, #7
1a000fb8:	701a      	strb	r2, [r3, #0]
1a000fba:	687b      	ldr	r3, [r7, #4]
1a000fbc:	2200      	movs	r2, #0
1a000fbe:	605a      	str	r2, [r3, #4]
1a000fc0:	bf00      	nop
1a000fc2:	3708      	adds	r7, #8
1a000fc4:	46bd      	mov	sp, r7
1a000fc6:	bd80      	pop	{r7, pc}

1a000fc8 <cerradura_enseq_main_region_Closed__region0_getKey_default>:
1a000fc8:	b580      	push	{r7, lr}
1a000fca:	b082      	sub	sp, #8
1a000fcc:	af00      	add	r7, sp, #0
1a000fce:	6078      	str	r0, [r7, #4]
1a000fd0:	6878      	ldr	r0, [r7, #4]
1a000fd2:	f7ff fed0 	bl	1a000d76 <cerradura_enact_main_region_Closed__region0_getKey>
1a000fd6:	687b      	ldr	r3, [r7, #4]
1a000fd8:	2208      	movs	r2, #8
1a000fda:	701a      	strb	r2, [r3, #0]
1a000fdc:	687b      	ldr	r3, [r7, #4]
1a000fde:	2200      	movs	r2, #0
1a000fe0:	605a      	str	r2, [r3, #4]
1a000fe2:	bf00      	nop
1a000fe4:	3708      	adds	r7, #8
1a000fe6:	46bd      	mov	sp, r7
1a000fe8:	bd80      	pop	{r7, pc}

1a000fea <cerradura_enseq_main_region_Locked_default>:
1a000fea:	b580      	push	{r7, lr}
1a000fec:	b082      	sub	sp, #8
1a000fee:	af00      	add	r7, sp, #0
1a000ff0:	6078      	str	r0, [r7, #4]
1a000ff2:	6878      	ldr	r0, [r7, #4]
1a000ff4:	f7ff fed9 	bl	1a000daa <cerradura_enact_main_region_Locked>
1a000ff8:	687b      	ldr	r3, [r7, #4]
1a000ffa:	2209      	movs	r2, #9
1a000ffc:	701a      	strb	r2, [r3, #0]
1a000ffe:	687b      	ldr	r3, [r7, #4]
1a001000:	2200      	movs	r2, #0
1a001002:	605a      	str	r2, [r3, #4]
1a001004:	bf00      	nop
1a001006:	3708      	adds	r7, #8
1a001008:	46bd      	mov	sp, r7
1a00100a:	bd80      	pop	{r7, pc}

1a00100c <cerradura_enseq_main_region_Unlocked_default>:
1a00100c:	b580      	push	{r7, lr}
1a00100e:	b082      	sub	sp, #8
1a001010:	af00      	add	r7, sp, #0
1a001012:	6078      	str	r0, [r7, #4]
1a001014:	6878      	ldr	r0, [r7, #4]
1a001016:	f7ff fedb 	bl	1a000dd0 <cerradura_enact_main_region_Unlocked>
1a00101a:	6878      	ldr	r0, [r7, #4]
1a00101c:	f000 f852 	bl	1a0010c4 <cerradura_enseq_main_region_Unlocked__region0_default>
1a001020:	bf00      	nop
1a001022:	3708      	adds	r7, #8
1a001024:	46bd      	mov	sp, r7
1a001026:	bd80      	pop	{r7, pc}

1a001028 <cerradura_enseq_main_region_Unlocked__region0_Wait_default>:
1a001028:	b580      	push	{r7, lr}
1a00102a:	b082      	sub	sp, #8
1a00102c:	af00      	add	r7, sp, #0
1a00102e:	6078      	str	r0, [r7, #4]
1a001030:	6878      	ldr	r0, [r7, #4]
1a001032:	f7ff fee5 	bl	1a000e00 <cerradura_enact_main_region_Unlocked__region0_Wait>
1a001036:	687b      	ldr	r3, [r7, #4]
1a001038:	220b      	movs	r2, #11
1a00103a:	701a      	strb	r2, [r3, #0]
1a00103c:	687b      	ldr	r3, [r7, #4]
1a00103e:	2200      	movs	r2, #0
1a001040:	605a      	str	r2, [r3, #4]
1a001042:	bf00      	nop
1a001044:	3708      	adds	r7, #8
1a001046:	46bd      	mov	sp, r7
1a001048:	bd80      	pop	{r7, pc}

1a00104a <cerradura_enseq_main_region_Unlocked__region0_getKey_default>:
1a00104a:	b580      	push	{r7, lr}
1a00104c:	b082      	sub	sp, #8
1a00104e:	af00      	add	r7, sp, #0
1a001050:	6078      	str	r0, [r7, #4]
1a001052:	6878      	ldr	r0, [r7, #4]
1a001054:	f7ff fee7 	bl	1a000e26 <cerradura_enact_main_region_Unlocked__region0_getKey>
1a001058:	687b      	ldr	r3, [r7, #4]
1a00105a:	220c      	movs	r2, #12
1a00105c:	701a      	strb	r2, [r3, #0]
1a00105e:	687b      	ldr	r3, [r7, #4]
1a001060:	2200      	movs	r2, #0
1a001062:	605a      	str	r2, [r3, #4]
1a001064:	bf00      	nop
1a001066:	3708      	adds	r7, #8
1a001068:	46bd      	mov	sp, r7
1a00106a:	bd80      	pop	{r7, pc}

1a00106c <cerradura_enseq_main_region_default>:
1a00106c:	b580      	push	{r7, lr}
1a00106e:	b082      	sub	sp, #8
1a001070:	af00      	add	r7, sp, #0
1a001072:	6078      	str	r0, [r7, #4]
1a001074:	6878      	ldr	r0, [r7, #4]
1a001076:	f000 fa49 	bl	1a00150c <cerradura_react_main_region__entry_Default>
1a00107a:	bf00      	nop
1a00107c:	3708      	adds	r7, #8
1a00107e:	46bd      	mov	sp, r7
1a001080:	bd80      	pop	{r7, pc}

1a001082 <cerradura_enseq_main_region_led0_r1_default>:
1a001082:	b580      	push	{r7, lr}
1a001084:	b082      	sub	sp, #8
1a001086:	af00      	add	r7, sp, #0
1a001088:	6078      	str	r0, [r7, #4]
1a00108a:	6878      	ldr	r0, [r7, #4]
1a00108c:	f000 fa49 	bl	1a001522 <cerradura_react_main_region_led0_r1__entry_Default>
1a001090:	bf00      	nop
1a001092:	3708      	adds	r7, #8
1a001094:	46bd      	mov	sp, r7
1a001096:	bd80      	pop	{r7, pc}

1a001098 <cerradura_enseq_main_region_led1_r1_default>:
1a001098:	b580      	push	{r7, lr}
1a00109a:	b082      	sub	sp, #8
1a00109c:	af00      	add	r7, sp, #0
1a00109e:	6078      	str	r0, [r7, #4]
1a0010a0:	6878      	ldr	r0, [r7, #4]
1a0010a2:	f000 fa49 	bl	1a001538 <cerradura_react_main_region_led1_r1__entry_Default>
1a0010a6:	bf00      	nop
1a0010a8:	3708      	adds	r7, #8
1a0010aa:	46bd      	mov	sp, r7
1a0010ac:	bd80      	pop	{r7, pc}

1a0010ae <cerradura_enseq_main_region_Closed__region0_default>:
1a0010ae:	b580      	push	{r7, lr}
1a0010b0:	b082      	sub	sp, #8
1a0010b2:	af00      	add	r7, sp, #0
1a0010b4:	6078      	str	r0, [r7, #4]
1a0010b6:	6878      	ldr	r0, [r7, #4]
1a0010b8:	f000 fa49 	bl	1a00154e <cerradura_react_main_region_Closed__region0__entry_Default>
1a0010bc:	bf00      	nop
1a0010be:	3708      	adds	r7, #8
1a0010c0:	46bd      	mov	sp, r7
1a0010c2:	bd80      	pop	{r7, pc}

1a0010c4 <cerradura_enseq_main_region_Unlocked__region0_default>:
1a0010c4:	b580      	push	{r7, lr}
1a0010c6:	b082      	sub	sp, #8
1a0010c8:	af00      	add	r7, sp, #0
1a0010ca:	6078      	str	r0, [r7, #4]
1a0010cc:	6878      	ldr	r0, [r7, #4]
1a0010ce:	f000 fa49 	bl	1a001564 <cerradura_react_main_region_Unlocked__region0__entry_Default>
1a0010d2:	bf00      	nop
1a0010d4:	3708      	adds	r7, #8
1a0010d6:	46bd      	mov	sp, r7
1a0010d8:	bd80      	pop	{r7, pc}

1a0010da <cerradura_exseq_main_region_led0>:
1a0010da:	b580      	push	{r7, lr}
1a0010dc:	b082      	sub	sp, #8
1a0010de:	af00      	add	r7, sp, #0
1a0010e0:	6078      	str	r0, [r7, #4]
1a0010e2:	6878      	ldr	r0, [r7, #4]
1a0010e4:	f000 f8b9 	bl	1a00125a <cerradura_exseq_main_region_led0_r1>
1a0010e8:	bf00      	nop
1a0010ea:	3708      	adds	r7, #8
1a0010ec:	46bd      	mov	sp, r7
1a0010ee:	bd80      	pop	{r7, pc}

1a0010f0 <cerradura_exseq_main_region_led0_r1_encendido>:
1a0010f0:	b580      	push	{r7, lr}
1a0010f2:	b082      	sub	sp, #8
1a0010f4:	af00      	add	r7, sp, #0
1a0010f6:	6078      	str	r0, [r7, #4]
1a0010f8:	687b      	ldr	r3, [r7, #4]
1a0010fa:	220d      	movs	r2, #13
1a0010fc:	701a      	strb	r2, [r3, #0]
1a0010fe:	687b      	ldr	r3, [r7, #4]
1a001100:	2200      	movs	r2, #0
1a001102:	605a      	str	r2, [r3, #4]
1a001104:	6878      	ldr	r0, [r7, #4]
1a001106:	f7ff fea8 	bl	1a000e5a <cerradura_exact_main_region_led0_r1_encendido>
1a00110a:	bf00      	nop
1a00110c:	3708      	adds	r7, #8
1a00110e:	46bd      	mov	sp, r7
1a001110:	bd80      	pop	{r7, pc}

1a001112 <cerradura_exseq_main_region_led0_r1_apagado>:
1a001112:	b580      	push	{r7, lr}
1a001114:	b082      	sub	sp, #8
1a001116:	af00      	add	r7, sp, #0
1a001118:	6078      	str	r0, [r7, #4]
1a00111a:	687b      	ldr	r3, [r7, #4]
1a00111c:	220d      	movs	r2, #13
1a00111e:	701a      	strb	r2, [r3, #0]
1a001120:	687b      	ldr	r3, [r7, #4]
1a001122:	2200      	movs	r2, #0
1a001124:	605a      	str	r2, [r3, #4]
1a001126:	6878      	ldr	r0, [r7, #4]
1a001128:	f7ff fea5 	bl	1a000e76 <cerradura_exact_main_region_led0_r1_apagado>
1a00112c:	bf00      	nop
1a00112e:	3708      	adds	r7, #8
1a001130:	46bd      	mov	sp, r7
1a001132:	bd80      	pop	{r7, pc}

1a001134 <cerradura_exseq_main_region_led1>:
1a001134:	b580      	push	{r7, lr}
1a001136:	b082      	sub	sp, #8
1a001138:	af00      	add	r7, sp, #0
1a00113a:	6078      	str	r0, [r7, #4]
1a00113c:	6878      	ldr	r0, [r7, #4]
1a00113e:	f000 f8a3 	bl	1a001288 <cerradura_exseq_main_region_led1_r1>
1a001142:	bf00      	nop
1a001144:	3708      	adds	r7, #8
1a001146:	46bd      	mov	sp, r7
1a001148:	bd80      	pop	{r7, pc}

1a00114a <cerradura_exseq_main_region_led1_r1_encendido>:
1a00114a:	b580      	push	{r7, lr}
1a00114c:	b082      	sub	sp, #8
1a00114e:	af00      	add	r7, sp, #0
1a001150:	6078      	str	r0, [r7, #4]
1a001152:	687b      	ldr	r3, [r7, #4]
1a001154:	220d      	movs	r2, #13
1a001156:	701a      	strb	r2, [r3, #0]
1a001158:	687b      	ldr	r3, [r7, #4]
1a00115a:	2200      	movs	r2, #0
1a00115c:	605a      	str	r2, [r3, #4]
1a00115e:	6878      	ldr	r0, [r7, #4]
1a001160:	f7ff fe97 	bl	1a000e92 <cerradura_exact_main_region_led1_r1_encendido>
1a001164:	bf00      	nop
1a001166:	3708      	adds	r7, #8
1a001168:	46bd      	mov	sp, r7
1a00116a:	bd80      	pop	{r7, pc}

1a00116c <cerradura_exseq_main_region_led1_r1_apagado>:
1a00116c:	b580      	push	{r7, lr}
1a00116e:	b082      	sub	sp, #8
1a001170:	af00      	add	r7, sp, #0
1a001172:	6078      	str	r0, [r7, #4]
1a001174:	687b      	ldr	r3, [r7, #4]
1a001176:	220d      	movs	r2, #13
1a001178:	701a      	strb	r2, [r3, #0]
1a00117a:	687b      	ldr	r3, [r7, #4]
1a00117c:	2200      	movs	r2, #0
1a00117e:	605a      	str	r2, [r3, #4]
1a001180:	6878      	ldr	r0, [r7, #4]
1a001182:	f7ff fe94 	bl	1a000eae <cerradura_exact_main_region_led1_r1_apagado>
1a001186:	bf00      	nop
1a001188:	3708      	adds	r7, #8
1a00118a:	46bd      	mov	sp, r7
1a00118c:	bd80      	pop	{r7, pc}

1a00118e <cerradura_exseq_main_region_Closed>:
1a00118e:	b580      	push	{r7, lr}
1a001190:	b082      	sub	sp, #8
1a001192:	af00      	add	r7, sp, #0
1a001194:	6078      	str	r0, [r7, #4]
1a001196:	6878      	ldr	r0, [r7, #4]
1a001198:	f000 f88d 	bl	1a0012b6 <cerradura_exseq_main_region_Closed__region0>
1a00119c:	bf00      	nop
1a00119e:	3708      	adds	r7, #8
1a0011a0:	46bd      	mov	sp, r7
1a0011a2:	bd80      	pop	{r7, pc}

1a0011a4 <cerradura_exseq_main_region_Closed__region0_Wait>:
1a0011a4:	b480      	push	{r7}
1a0011a6:	b083      	sub	sp, #12
1a0011a8:	af00      	add	r7, sp, #0
1a0011aa:	6078      	str	r0, [r7, #4]
1a0011ac:	687b      	ldr	r3, [r7, #4]
1a0011ae:	220d      	movs	r2, #13
1a0011b0:	701a      	strb	r2, [r3, #0]
1a0011b2:	687b      	ldr	r3, [r7, #4]
1a0011b4:	2200      	movs	r2, #0
1a0011b6:	605a      	str	r2, [r3, #4]
1a0011b8:	bf00      	nop
1a0011ba:	370c      	adds	r7, #12
1a0011bc:	46bd      	mov	sp, r7
1a0011be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011c2:	4770      	bx	lr

1a0011c4 <cerradura_exseq_main_region_Closed__region0_getKey>:
1a0011c4:	b480      	push	{r7}
1a0011c6:	b083      	sub	sp, #12
1a0011c8:	af00      	add	r7, sp, #0
1a0011ca:	6078      	str	r0, [r7, #4]
1a0011cc:	687b      	ldr	r3, [r7, #4]
1a0011ce:	220d      	movs	r2, #13
1a0011d0:	701a      	strb	r2, [r3, #0]
1a0011d2:	687b      	ldr	r3, [r7, #4]
1a0011d4:	2200      	movs	r2, #0
1a0011d6:	605a      	str	r2, [r3, #4]
1a0011d8:	bf00      	nop
1a0011da:	370c      	adds	r7, #12
1a0011dc:	46bd      	mov	sp, r7
1a0011de:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011e2:	4770      	bx	lr

1a0011e4 <cerradura_exseq_main_region_Locked>:
1a0011e4:	b480      	push	{r7}
1a0011e6:	b083      	sub	sp, #12
1a0011e8:	af00      	add	r7, sp, #0
1a0011ea:	6078      	str	r0, [r7, #4]
1a0011ec:	687b      	ldr	r3, [r7, #4]
1a0011ee:	220d      	movs	r2, #13
1a0011f0:	701a      	strb	r2, [r3, #0]
1a0011f2:	687b      	ldr	r3, [r7, #4]
1a0011f4:	2200      	movs	r2, #0
1a0011f6:	605a      	str	r2, [r3, #4]
1a0011f8:	bf00      	nop
1a0011fa:	370c      	adds	r7, #12
1a0011fc:	46bd      	mov	sp, r7
1a0011fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001202:	4770      	bx	lr

1a001204 <cerradura_exseq_main_region_Unlocked>:
1a001204:	b580      	push	{r7, lr}
1a001206:	b082      	sub	sp, #8
1a001208:	af00      	add	r7, sp, #0
1a00120a:	6078      	str	r0, [r7, #4]
1a00120c:	6878      	ldr	r0, [r7, #4]
1a00120e:	f000 f869 	bl	1a0012e4 <cerradura_exseq_main_region_Unlocked__region0>
1a001212:	bf00      	nop
1a001214:	3708      	adds	r7, #8
1a001216:	46bd      	mov	sp, r7
1a001218:	bd80      	pop	{r7, pc}

1a00121a <cerradura_exseq_main_region_Unlocked__region0_Wait>:
1a00121a:	b480      	push	{r7}
1a00121c:	b083      	sub	sp, #12
1a00121e:	af00      	add	r7, sp, #0
1a001220:	6078      	str	r0, [r7, #4]
1a001222:	687b      	ldr	r3, [r7, #4]
1a001224:	220d      	movs	r2, #13
1a001226:	701a      	strb	r2, [r3, #0]
1a001228:	687b      	ldr	r3, [r7, #4]
1a00122a:	2200      	movs	r2, #0
1a00122c:	605a      	str	r2, [r3, #4]
1a00122e:	bf00      	nop
1a001230:	370c      	adds	r7, #12
1a001232:	46bd      	mov	sp, r7
1a001234:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001238:	4770      	bx	lr

1a00123a <cerradura_exseq_main_region_Unlocked__region0_getKey>:
1a00123a:	b480      	push	{r7}
1a00123c:	b083      	sub	sp, #12
1a00123e:	af00      	add	r7, sp, #0
1a001240:	6078      	str	r0, [r7, #4]
1a001242:	687b      	ldr	r3, [r7, #4]
1a001244:	220d      	movs	r2, #13
1a001246:	701a      	strb	r2, [r3, #0]
1a001248:	687b      	ldr	r3, [r7, #4]
1a00124a:	2200      	movs	r2, #0
1a00124c:	605a      	str	r2, [r3, #4]
1a00124e:	bf00      	nop
1a001250:	370c      	adds	r7, #12
1a001252:	46bd      	mov	sp, r7
1a001254:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001258:	4770      	bx	lr

1a00125a <cerradura_exseq_main_region_led0_r1>:
1a00125a:	b580      	push	{r7, lr}
1a00125c:	b082      	sub	sp, #8
1a00125e:	af00      	add	r7, sp, #0
1a001260:	6078      	str	r0, [r7, #4]
1a001262:	687b      	ldr	r3, [r7, #4]
1a001264:	781b      	ldrb	r3, [r3, #0]
1a001266:	2b01      	cmp	r3, #1
1a001268:	d002      	beq.n	1a001270 <cerradura_exseq_main_region_led0_r1+0x16>
1a00126a:	2b02      	cmp	r3, #2
1a00126c:	d004      	beq.n	1a001278 <cerradura_exseq_main_region_led0_r1+0x1e>
1a00126e:	e007      	b.n	1a001280 <cerradura_exseq_main_region_led0_r1+0x26>
1a001270:	6878      	ldr	r0, [r7, #4]
1a001272:	f7ff ff3d 	bl	1a0010f0 <cerradura_exseq_main_region_led0_r1_encendido>
1a001276:	e003      	b.n	1a001280 <cerradura_exseq_main_region_led0_r1+0x26>
1a001278:	6878      	ldr	r0, [r7, #4]
1a00127a:	f7ff ff4a 	bl	1a001112 <cerradura_exseq_main_region_led0_r1_apagado>
1a00127e:	bf00      	nop
1a001280:	bf00      	nop
1a001282:	3708      	adds	r7, #8
1a001284:	46bd      	mov	sp, r7
1a001286:	bd80      	pop	{r7, pc}

1a001288 <cerradura_exseq_main_region_led1_r1>:
1a001288:	b580      	push	{r7, lr}
1a00128a:	b082      	sub	sp, #8
1a00128c:	af00      	add	r7, sp, #0
1a00128e:	6078      	str	r0, [r7, #4]
1a001290:	687b      	ldr	r3, [r7, #4]
1a001292:	781b      	ldrb	r3, [r3, #0]
1a001294:	2b04      	cmp	r3, #4
1a001296:	d002      	beq.n	1a00129e <cerradura_exseq_main_region_led1_r1+0x16>
1a001298:	2b05      	cmp	r3, #5
1a00129a:	d004      	beq.n	1a0012a6 <cerradura_exseq_main_region_led1_r1+0x1e>
1a00129c:	e007      	b.n	1a0012ae <cerradura_exseq_main_region_led1_r1+0x26>
1a00129e:	6878      	ldr	r0, [r7, #4]
1a0012a0:	f7ff ff53 	bl	1a00114a <cerradura_exseq_main_region_led1_r1_encendido>
1a0012a4:	e003      	b.n	1a0012ae <cerradura_exseq_main_region_led1_r1+0x26>
1a0012a6:	6878      	ldr	r0, [r7, #4]
1a0012a8:	f7ff ff60 	bl	1a00116c <cerradura_exseq_main_region_led1_r1_apagado>
1a0012ac:	bf00      	nop
1a0012ae:	bf00      	nop
1a0012b0:	3708      	adds	r7, #8
1a0012b2:	46bd      	mov	sp, r7
1a0012b4:	bd80      	pop	{r7, pc}

1a0012b6 <cerradura_exseq_main_region_Closed__region0>:
1a0012b6:	b580      	push	{r7, lr}
1a0012b8:	b082      	sub	sp, #8
1a0012ba:	af00      	add	r7, sp, #0
1a0012bc:	6078      	str	r0, [r7, #4]
1a0012be:	687b      	ldr	r3, [r7, #4]
1a0012c0:	781b      	ldrb	r3, [r3, #0]
1a0012c2:	2b07      	cmp	r3, #7
1a0012c4:	d002      	beq.n	1a0012cc <cerradura_exseq_main_region_Closed__region0+0x16>
1a0012c6:	2b08      	cmp	r3, #8
1a0012c8:	d004      	beq.n	1a0012d4 <cerradura_exseq_main_region_Closed__region0+0x1e>
1a0012ca:	e007      	b.n	1a0012dc <cerradura_exseq_main_region_Closed__region0+0x26>
1a0012cc:	6878      	ldr	r0, [r7, #4]
1a0012ce:	f7ff ff69 	bl	1a0011a4 <cerradura_exseq_main_region_Closed__region0_Wait>
1a0012d2:	e003      	b.n	1a0012dc <cerradura_exseq_main_region_Closed__region0+0x26>
1a0012d4:	6878      	ldr	r0, [r7, #4]
1a0012d6:	f7ff ff75 	bl	1a0011c4 <cerradura_exseq_main_region_Closed__region0_getKey>
1a0012da:	bf00      	nop
1a0012dc:	bf00      	nop
1a0012de:	3708      	adds	r7, #8
1a0012e0:	46bd      	mov	sp, r7
1a0012e2:	bd80      	pop	{r7, pc}

1a0012e4 <cerradura_exseq_main_region_Unlocked__region0>:
1a0012e4:	b580      	push	{r7, lr}
1a0012e6:	b082      	sub	sp, #8
1a0012e8:	af00      	add	r7, sp, #0
1a0012ea:	6078      	str	r0, [r7, #4]
1a0012ec:	687b      	ldr	r3, [r7, #4]
1a0012ee:	781b      	ldrb	r3, [r3, #0]
1a0012f0:	2b0b      	cmp	r3, #11
1a0012f2:	d002      	beq.n	1a0012fa <cerradura_exseq_main_region_Unlocked__region0+0x16>
1a0012f4:	2b0c      	cmp	r3, #12
1a0012f6:	d004      	beq.n	1a001302 <cerradura_exseq_main_region_Unlocked__region0+0x1e>
1a0012f8:	e007      	b.n	1a00130a <cerradura_exseq_main_region_Unlocked__region0+0x26>
1a0012fa:	6878      	ldr	r0, [r7, #4]
1a0012fc:	f7ff ff8d 	bl	1a00121a <cerradura_exseq_main_region_Unlocked__region0_Wait>
1a001300:	e003      	b.n	1a00130a <cerradura_exseq_main_region_Unlocked__region0+0x26>
1a001302:	6878      	ldr	r0, [r7, #4]
1a001304:	f7ff ff99 	bl	1a00123a <cerradura_exseq_main_region_Unlocked__region0_getKey>
1a001308:	bf00      	nop
1a00130a:	bf00      	nop
1a00130c:	3708      	adds	r7, #8
1a00130e:	46bd      	mov	sp, r7
1a001310:	bd80      	pop	{r7, pc}

1a001312 <cerradura_react_main_region_led0_r1_encendido>:
1a001312:	b580      	push	{r7, lr}
1a001314:	b082      	sub	sp, #8
1a001316:	af00      	add	r7, sp, #0
1a001318:	6078      	str	r0, [r7, #4]
1a00131a:	6878      	ldr	r0, [r7, #4]
1a00131c:	f7ff fac7 	bl	1a0008ae <cerradura_check_main_region_led0_tr0_tr0>
1a001320:	4603      	mov	r3, r0
1a001322:	2b00      	cmp	r3, #0
1a001324:	d003      	beq.n	1a00132e <cerradura_react_main_region_led0_r1_encendido+0x1c>
1a001326:	6878      	ldr	r0, [r7, #4]
1a001328:	f7ff fbc0 	bl	1a000aac <cerradura_effect_main_region_led0_tr0>
1a00132c:	e008      	b.n	1a001340 <cerradura_react_main_region_led0_r1_encendido+0x2e>
1a00132e:	6878      	ldr	r0, [r7, #4]
1a001330:	f7ff face 	bl	1a0008d0 <cerradura_check_main_region_led0_r1_encendido_tr0_tr0>
1a001334:	4603      	mov	r3, r0
1a001336:	2b00      	cmp	r3, #0
1a001338:	d002      	beq.n	1a001340 <cerradura_react_main_region_led0_r1_encendido+0x2e>
1a00133a:	6878      	ldr	r0, [r7, #4]
1a00133c:	f7ff fbc4 	bl	1a000ac8 <cerradura_effect_main_region_led0_r1_encendido_tr0>
1a001340:	bf00      	nop
1a001342:	3708      	adds	r7, #8
1a001344:	46bd      	mov	sp, r7
1a001346:	bd80      	pop	{r7, pc}

1a001348 <cerradura_react_main_region_led0_r1_apagado>:
1a001348:	b580      	push	{r7, lr}
1a00134a:	b082      	sub	sp, #8
1a00134c:	af00      	add	r7, sp, #0
1a00134e:	6078      	str	r0, [r7, #4]
1a001350:	6878      	ldr	r0, [r7, #4]
1a001352:	f7ff faac 	bl	1a0008ae <cerradura_check_main_region_led0_tr0_tr0>
1a001356:	4603      	mov	r3, r0
1a001358:	2b00      	cmp	r3, #0
1a00135a:	d003      	beq.n	1a001364 <cerradura_react_main_region_led0_r1_apagado+0x1c>
1a00135c:	6878      	ldr	r0, [r7, #4]
1a00135e:	f7ff fba5 	bl	1a000aac <cerradura_effect_main_region_led0_tr0>
1a001362:	e008      	b.n	1a001376 <cerradura_react_main_region_led0_r1_apagado+0x2e>
1a001364:	6878      	ldr	r0, [r7, #4]
1a001366:	f7ff fac0 	bl	1a0008ea <cerradura_check_main_region_led0_r1_apagado_tr0_tr0>
1a00136a:	4603      	mov	r3, r0
1a00136c:	2b00      	cmp	r3, #0
1a00136e:	d002      	beq.n	1a001376 <cerradura_react_main_region_led0_r1_apagado+0x2e>
1a001370:	6878      	ldr	r0, [r7, #4]
1a001372:	f7ff fbb7 	bl	1a000ae4 <cerradura_effect_main_region_led0_r1_apagado_tr0>
1a001376:	bf00      	nop
1a001378:	3708      	adds	r7, #8
1a00137a:	46bd      	mov	sp, r7
1a00137c:	bd80      	pop	{r7, pc}

1a00137e <cerradura_react_main_region_led1_r1_encendido>:
1a00137e:	b580      	push	{r7, lr}
1a001380:	b082      	sub	sp, #8
1a001382:	af00      	add	r7, sp, #0
1a001384:	6078      	str	r0, [r7, #4]
1a001386:	6878      	ldr	r0, [r7, #4]
1a001388:	f7ff fac8 	bl	1a00091c <cerradura_check_main_region_led1_tr0_tr0>
1a00138c:	4603      	mov	r3, r0
1a00138e:	2b00      	cmp	r3, #0
1a001390:	d003      	beq.n	1a00139a <cerradura_react_main_region_led1_r1_encendido+0x1c>
1a001392:	6878      	ldr	r0, [r7, #4]
1a001394:	f7ff fbb4 	bl	1a000b00 <cerradura_effect_main_region_led1_tr0>
1a001398:	e008      	b.n	1a0013ac <cerradura_react_main_region_led1_r1_encendido+0x2e>
1a00139a:	6878      	ldr	r0, [r7, #4]
1a00139c:	f7ff facf 	bl	1a00093e <cerradura_check_main_region_led1_r1_encendido_tr0_tr0>
1a0013a0:	4603      	mov	r3, r0
1a0013a2:	2b00      	cmp	r3, #0
1a0013a4:	d002      	beq.n	1a0013ac <cerradura_react_main_region_led1_r1_encendido+0x2e>
1a0013a6:	6878      	ldr	r0, [r7, #4]
1a0013a8:	f7ff fbb8 	bl	1a000b1c <cerradura_effect_main_region_led1_r1_encendido_tr0>
1a0013ac:	bf00      	nop
1a0013ae:	3708      	adds	r7, #8
1a0013b0:	46bd      	mov	sp, r7
1a0013b2:	bd80      	pop	{r7, pc}

1a0013b4 <cerradura_react_main_region_led1_r1_apagado>:
1a0013b4:	b580      	push	{r7, lr}
1a0013b6:	b082      	sub	sp, #8
1a0013b8:	af00      	add	r7, sp, #0
1a0013ba:	6078      	str	r0, [r7, #4]
1a0013bc:	6878      	ldr	r0, [r7, #4]
1a0013be:	f7ff faad 	bl	1a00091c <cerradura_check_main_region_led1_tr0_tr0>
1a0013c2:	4603      	mov	r3, r0
1a0013c4:	2b00      	cmp	r3, #0
1a0013c6:	d003      	beq.n	1a0013d0 <cerradura_react_main_region_led1_r1_apagado+0x1c>
1a0013c8:	6878      	ldr	r0, [r7, #4]
1a0013ca:	f7ff fb99 	bl	1a000b00 <cerradura_effect_main_region_led1_tr0>
1a0013ce:	e008      	b.n	1a0013e2 <cerradura_react_main_region_led1_r1_apagado+0x2e>
1a0013d0:	6878      	ldr	r0, [r7, #4]
1a0013d2:	f7ff fac1 	bl	1a000958 <cerradura_check_main_region_led1_r1_apagado_tr0_tr0>
1a0013d6:	4603      	mov	r3, r0
1a0013d8:	2b00      	cmp	r3, #0
1a0013da:	d002      	beq.n	1a0013e2 <cerradura_react_main_region_led1_r1_apagado+0x2e>
1a0013dc:	6878      	ldr	r0, [r7, #4]
1a0013de:	f7ff fbab 	bl	1a000b38 <cerradura_effect_main_region_led1_r1_apagado_tr0>
1a0013e2:	bf00      	nop
1a0013e4:	3708      	adds	r7, #8
1a0013e6:	46bd      	mov	sp, r7
1a0013e8:	bd80      	pop	{r7, pc}

1a0013ea <cerradura_react_main_region_Closed__region0_Wait>:
1a0013ea:	b580      	push	{r7, lr}
1a0013ec:	b082      	sub	sp, #8
1a0013ee:	af00      	add	r7, sp, #0
1a0013f0:	6078      	str	r0, [r7, #4]
1a0013f2:	6878      	ldr	r0, [r7, #4]
1a0013f4:	f7ff fac9 	bl	1a00098a <cerradura_check_main_region_Closed_tr0_tr0>
1a0013f8:	4603      	mov	r3, r0
1a0013fa:	2b00      	cmp	r3, #0
1a0013fc:	d003      	beq.n	1a001406 <cerradura_react_main_region_Closed__region0_Wait+0x1c>
1a0013fe:	6878      	ldr	r0, [r7, #4]
1a001400:	f7ff fba8 	bl	1a000b54 <cerradura_effect_main_region_Closed_tr0>
1a001404:	e012      	b.n	1a00142c <cerradura_react_main_region_Closed__region0_Wait+0x42>
1a001406:	6878      	ldr	r0, [r7, #4]
1a001408:	f7ff fadb 	bl	1a0009c2 <cerradura_check_main_region_Closed_tr1_tr1>
1a00140c:	4603      	mov	r3, r0
1a00140e:	2b00      	cmp	r3, #0
1a001410:	d003      	beq.n	1a00141a <cerradura_react_main_region_Closed__region0_Wait+0x30>
1a001412:	6878      	ldr	r0, [r7, #4]
1a001414:	f7ff fbac 	bl	1a000b70 <cerradura_effect_main_region_Closed_tr1>
1a001418:	e008      	b.n	1a00142c <cerradura_react_main_region_Closed__region0_Wait+0x42>
1a00141a:	6878      	ldr	r0, [r7, #4]
1a00141c:	f7ff fae4 	bl	1a0009e8 <cerradura_check_main_region_Closed__region0_Wait_tr0_tr0>
1a001420:	4603      	mov	r3, r0
1a001422:	2b00      	cmp	r3, #0
1a001424:	d002      	beq.n	1a00142c <cerradura_react_main_region_Closed__region0_Wait+0x42>
1a001426:	6878      	ldr	r0, [r7, #4]
1a001428:	f7ff fbb0 	bl	1a000b8c <cerradura_effect_main_region_Closed__region0_Wait_tr0>
1a00142c:	bf00      	nop
1a00142e:	3708      	adds	r7, #8
1a001430:	46bd      	mov	sp, r7
1a001432:	bd80      	pop	{r7, pc}

1a001434 <cerradura_react_main_region_Closed__region0_getKey>:
1a001434:	b580      	push	{r7, lr}
1a001436:	b082      	sub	sp, #8
1a001438:	af00      	add	r7, sp, #0
1a00143a:	6078      	str	r0, [r7, #4]
1a00143c:	6878      	ldr	r0, [r7, #4]
1a00143e:	f7ff faa4 	bl	1a00098a <cerradura_check_main_region_Closed_tr0_tr0>
1a001442:	4603      	mov	r3, r0
1a001444:	2b00      	cmp	r3, #0
1a001446:	d003      	beq.n	1a001450 <cerradura_react_main_region_Closed__region0_getKey+0x1c>
1a001448:	6878      	ldr	r0, [r7, #4]
1a00144a:	f7ff fb83 	bl	1a000b54 <cerradura_effect_main_region_Closed_tr0>
1a00144e:	e012      	b.n	1a001476 <cerradura_react_main_region_Closed__region0_getKey+0x42>
1a001450:	6878      	ldr	r0, [r7, #4]
1a001452:	f7ff fab6 	bl	1a0009c2 <cerradura_check_main_region_Closed_tr1_tr1>
1a001456:	4603      	mov	r3, r0
1a001458:	2b00      	cmp	r3, #0
1a00145a:	d003      	beq.n	1a001464 <cerradura_react_main_region_Closed__region0_getKey+0x30>
1a00145c:	6878      	ldr	r0, [r7, #4]
1a00145e:	f7ff fb87 	bl	1a000b70 <cerradura_effect_main_region_Closed_tr1>
1a001462:	e008      	b.n	1a001476 <cerradura_react_main_region_Closed__region0_getKey+0x42>
1a001464:	6878      	ldr	r0, [r7, #4]
1a001466:	f7ff facb 	bl	1a000a00 <cerradura_check_main_region_Closed__region0_getKey_tr0_tr0>
1a00146a:	4603      	mov	r3, r0
1a00146c:	2b00      	cmp	r3, #0
1a00146e:	d002      	beq.n	1a001476 <cerradura_react_main_region_Closed__region0_getKey+0x42>
1a001470:	6878      	ldr	r0, [r7, #4]
1a001472:	f7ff fb99 	bl	1a000ba8 <cerradura_effect_main_region_Closed__region0_getKey_tr0>
1a001476:	bf00      	nop
1a001478:	3708      	adds	r7, #8
1a00147a:	46bd      	mov	sp, r7
1a00147c:	bd80      	pop	{r7, pc}

1a00147e <cerradura_react_main_region_Locked>:
1a00147e:	b580      	push	{r7, lr}
1a001480:	b082      	sub	sp, #8
1a001482:	af00      	add	r7, sp, #0
1a001484:	6078      	str	r0, [r7, #4]
1a001486:	6878      	ldr	r0, [r7, #4]
1a001488:	f7ff facd 	bl	1a000a26 <cerradura_check_main_region_Locked_tr0_tr0>
1a00148c:	4603      	mov	r3, r0
1a00148e:	2b00      	cmp	r3, #0
1a001490:	d002      	beq.n	1a001498 <cerradura_react_main_region_Locked+0x1a>
1a001492:	6878      	ldr	r0, [r7, #4]
1a001494:	f7ff fb96 	bl	1a000bc4 <cerradura_effect_main_region_Locked_tr0>
1a001498:	bf00      	nop
1a00149a:	3708      	adds	r7, #8
1a00149c:	46bd      	mov	sp, r7
1a00149e:	bd80      	pop	{r7, pc}

1a0014a0 <cerradura_react_main_region_Unlocked__region0_Wait>:
1a0014a0:	b580      	push	{r7, lr}
1a0014a2:	b082      	sub	sp, #8
1a0014a4:	af00      	add	r7, sp, #0
1a0014a6:	6078      	str	r0, [r7, #4]
1a0014a8:	6878      	ldr	r0, [r7, #4]
1a0014aa:	f7ff facd 	bl	1a000a48 <cerradura_check_main_region_Unlocked_tr0_tr0>
1a0014ae:	4603      	mov	r3, r0
1a0014b0:	2b00      	cmp	r3, #0
1a0014b2:	d003      	beq.n	1a0014bc <cerradura_react_main_region_Unlocked__region0_Wait+0x1c>
1a0014b4:	6878      	ldr	r0, [r7, #4]
1a0014b6:	f7ff fb93 	bl	1a000be0 <cerradura_effect_main_region_Unlocked_tr0>
1a0014ba:	e008      	b.n	1a0014ce <cerradura_react_main_region_Unlocked__region0_Wait+0x2e>
1a0014bc:	6878      	ldr	r0, [r7, #4]
1a0014be:	f7ff fad6 	bl	1a000a6e <cerradura_check_main_region_Unlocked__region0_Wait_tr0_tr0>
1a0014c2:	4603      	mov	r3, r0
1a0014c4:	2b00      	cmp	r3, #0
1a0014c6:	d002      	beq.n	1a0014ce <cerradura_react_main_region_Unlocked__region0_Wait+0x2e>
1a0014c8:	6878      	ldr	r0, [r7, #4]
1a0014ca:	f7ff fb97 	bl	1a000bfc <cerradura_effect_main_region_Unlocked__region0_Wait_tr0>
1a0014ce:	bf00      	nop
1a0014d0:	3708      	adds	r7, #8
1a0014d2:	46bd      	mov	sp, r7
1a0014d4:	bd80      	pop	{r7, pc}

1a0014d6 <cerradura_react_main_region_Unlocked__region0_getKey>:
1a0014d6:	b580      	push	{r7, lr}
1a0014d8:	b082      	sub	sp, #8
1a0014da:	af00      	add	r7, sp, #0
1a0014dc:	6078      	str	r0, [r7, #4]
1a0014de:	6878      	ldr	r0, [r7, #4]
1a0014e0:	f7ff fab2 	bl	1a000a48 <cerradura_check_main_region_Unlocked_tr0_tr0>
1a0014e4:	4603      	mov	r3, r0
1a0014e6:	2b00      	cmp	r3, #0
1a0014e8:	d003      	beq.n	1a0014f2 <cerradura_react_main_region_Unlocked__region0_getKey+0x1c>
1a0014ea:	6878      	ldr	r0, [r7, #4]
1a0014ec:	f7ff fb78 	bl	1a000be0 <cerradura_effect_main_region_Unlocked_tr0>
1a0014f0:	e008      	b.n	1a001504 <cerradura_react_main_region_Unlocked__region0_getKey+0x2e>
1a0014f2:	6878      	ldr	r0, [r7, #4]
1a0014f4:	f7ff fac7 	bl	1a000a86 <cerradura_check_main_region_Unlocked__region0_getKey_tr0_tr0>
1a0014f8:	4603      	mov	r3, r0
1a0014fa:	2b00      	cmp	r3, #0
1a0014fc:	d002      	beq.n	1a001504 <cerradura_react_main_region_Unlocked__region0_getKey+0x2e>
1a0014fe:	6878      	ldr	r0, [r7, #4]
1a001500:	f7ff fb8a 	bl	1a000c18 <cerradura_effect_main_region_Unlocked__region0_getKey_tr0>
1a001504:	bf00      	nop
1a001506:	3708      	adds	r7, #8
1a001508:	46bd      	mov	sp, r7
1a00150a:	bd80      	pop	{r7, pc}

1a00150c <cerradura_react_main_region__entry_Default>:
1a00150c:	b580      	push	{r7, lr}
1a00150e:	b082      	sub	sp, #8
1a001510:	af00      	add	r7, sp, #0
1a001512:	6078      	str	r0, [r7, #4]
1a001514:	6878      	ldr	r0, [r7, #4]
1a001516:	f7ff fd38 	bl	1a000f8a <cerradura_enseq_main_region_Closed_default>
1a00151a:	bf00      	nop
1a00151c:	3708      	adds	r7, #8
1a00151e:	46bd      	mov	sp, r7
1a001520:	bd80      	pop	{r7, pc}

1a001522 <cerradura_react_main_region_led0_r1__entry_Default>:
1a001522:	b580      	push	{r7, lr}
1a001524:	b082      	sub	sp, #8
1a001526:	af00      	add	r7, sp, #0
1a001528:	6078      	str	r0, [r7, #4]
1a00152a:	6878      	ldr	r0, [r7, #4]
1a00152c:	f7ff fcdb 	bl	1a000ee6 <cerradura_enseq_main_region_led0_r1_encendido_default>
1a001530:	bf00      	nop
1a001532:	3708      	adds	r7, #8
1a001534:	46bd      	mov	sp, r7
1a001536:	bd80      	pop	{r7, pc}

1a001538 <cerradura_react_main_region_led1_r1__entry_Default>:
1a001538:	b580      	push	{r7, lr}
1a00153a:	b082      	sub	sp, #8
1a00153c:	af00      	add	r7, sp, #0
1a00153e:	6078      	str	r0, [r7, #4]
1a001540:	6878      	ldr	r0, [r7, #4]
1a001542:	f7ff fd00 	bl	1a000f46 <cerradura_enseq_main_region_led1_r1_encendido_default>
1a001546:	bf00      	nop
1a001548:	3708      	adds	r7, #8
1a00154a:	46bd      	mov	sp, r7
1a00154c:	bd80      	pop	{r7, pc}

1a00154e <cerradura_react_main_region_Closed__region0__entry_Default>:
1a00154e:	b580      	push	{r7, lr}
1a001550:	b082      	sub	sp, #8
1a001552:	af00      	add	r7, sp, #0
1a001554:	6078      	str	r0, [r7, #4]
1a001556:	6878      	ldr	r0, [r7, #4]
1a001558:	f7ff fd25 	bl	1a000fa6 <cerradura_enseq_main_region_Closed__region0_Wait_default>
1a00155c:	bf00      	nop
1a00155e:	3708      	adds	r7, #8
1a001560:	46bd      	mov	sp, r7
1a001562:	bd80      	pop	{r7, pc}

1a001564 <cerradura_react_main_region_Unlocked__region0__entry_Default>:
1a001564:	b580      	push	{r7, lr}
1a001566:	b082      	sub	sp, #8
1a001568:	af00      	add	r7, sp, #0
1a00156a:	6078      	str	r0, [r7, #4]
1a00156c:	6878      	ldr	r0, [r7, #4]
1a00156e:	f7ff fd5b 	bl	1a001028 <cerradura_enseq_main_region_Unlocked__region0_Wait_default>
1a001572:	bf00      	nop
1a001574:	3708      	adds	r7, #8
1a001576:	46bd      	mov	sp, r7
1a001578:	bd80      	pop	{r7, pc}
1a00157a:	Address 0x000000001a00157a is out of bounds.


1a00157c <cerradura_setTimer>:
1a00157c:	b580      	push	{r7, lr}
1a00157e:	b086      	sub	sp, #24
1a001580:	af02      	add	r7, sp, #8
1a001582:	60f8      	str	r0, [r7, #12]
1a001584:	60b9      	str	r1, [r7, #8]
1a001586:	607a      	str	r2, [r7, #4]
1a001588:	70fb      	strb	r3, [r7, #3]
1a00158a:	687a      	ldr	r2, [r7, #4]
1a00158c:	78fb      	ldrb	r3, [r7, #3]
1a00158e:	9300      	str	r3, [sp, #0]
1a001590:	4613      	mov	r3, r2
1a001592:	68ba      	ldr	r2, [r7, #8]
1a001594:	2104      	movs	r1, #4
1a001596:	4803      	ldr	r0, [pc, #12]	; (1a0015a4 <cerradura_setTimer+0x28>)
1a001598:	f7fe ff5c 	bl	1a000454 <SetNewTimerTick>
1a00159c:	bf00      	nop
1a00159e:	3710      	adds	r7, #16
1a0015a0:	46bd      	mov	sp, r7
1a0015a2:	bd80      	pop	{r7, pc}
1a0015a4:	10000000 	.word	0x10000000

1a0015a8 <cerradura_unsetTimer>:
1a0015a8:	b580      	push	{r7, lr}
1a0015aa:	b082      	sub	sp, #8
1a0015ac:	af00      	add	r7, sp, #0
1a0015ae:	6078      	str	r0, [r7, #4]
1a0015b0:	6039      	str	r1, [r7, #0]
1a0015b2:	683a      	ldr	r2, [r7, #0]
1a0015b4:	2104      	movs	r1, #4
1a0015b6:	4803      	ldr	r0, [pc, #12]	; (1a0015c4 <cerradura_unsetTimer+0x1c>)
1a0015b8:	f7fe ff95 	bl	1a0004e6 <UnsetTimerTick>
1a0015bc:	bf00      	nop
1a0015be:	3708      	adds	r7, #8
1a0015c0:	46bd      	mov	sp, r7
1a0015c2:	bd80      	pop	{r7, pc}
1a0015c4:	10000000 	.word	0x10000000

1a0015c8 <cerraduraIface_setLedFromMask>:
1a0015c8:	b580      	push	{r7, lr}
1a0015ca:	b082      	sub	sp, #8
1a0015cc:	af00      	add	r7, sp, #0
1a0015ce:	6078      	str	r0, [r7, #4]
1a0015d0:	6039      	str	r1, [r7, #0]
1a0015d2:	6838      	ldr	r0, [r7, #0]
1a0015d4:	f000 fa3b 	bl	1a001a4e <setLedFromMask>
1a0015d8:	bf00      	nop
1a0015da:	3708      	adds	r7, #8
1a0015dc:	46bd      	mov	sp, r7
1a0015de:	bd80      	pop	{r7, pc}

1a0015e0 <cerraduraIface_getKeyPressed>:
1a0015e0:	b580      	push	{r7, lr}
1a0015e2:	b082      	sub	sp, #8
1a0015e4:	af00      	add	r7, sp, #0
1a0015e6:	6078      	str	r0, [r7, #4]
1a0015e8:	f000 fa7c 	bl	1a001ae4 <getKeyPressed>
1a0015ec:	4603      	mov	r3, r0
1a0015ee:	4618      	mov	r0, r3
1a0015f0:	3708      	adds	r7, #8
1a0015f2:	46bd      	mov	sp, r7
1a0015f4:	bd80      	pop	{r7, pc}
1a0015f6:	Address 0x000000001a0015f6 is out of bounds.


1a0015f8 <main>:
1a0015f8:	b580      	push	{r7, lr}
1a0015fa:	b090      	sub	sp, #64	; 0x40
1a0015fc:	af00      	add	r7, sp, #0
1a0015fe:	f000 fa7d 	bl	1a001afc <sysInit>
1a001602:	1d3b      	adds	r3, r7, #4
1a001604:	4618      	mov	r0, r3
1a001606:	f7ff f855 	bl	1a0006b4 <cerradura_init>
1a00160a:	1d3b      	adds	r3, r7, #4
1a00160c:	4618      	mov	r0, r3
1a00160e:	f7ff f88d 	bl	1a00072c <cerradura_enter>
1a001612:	bf30      	wfi
1a001614:	f000 fbf8 	bl	1a001e08 <getSysTickEv>
1a001618:	4603      	mov	r3, r0
1a00161a:	2b00      	cmp	r3, #0
1a00161c:	d02f      	beq.n	1a00167e <main+0x86>
1a00161e:	f000 fbff 	bl	1a001e20 <rstSysTickEv>
1a001622:	2104      	movs	r1, #4
1a001624:	4820      	ldr	r0, [pc, #128]	; (1a0016a8 <main+0xb0>)
1a001626:	f7fe fff6 	bl	1a000616 <UpdateTimers>
1a00162a:	2300      	movs	r3, #0
1a00162c:	63fb      	str	r3, [r7, #60]	; 0x3c
1a00162e:	e023      	b.n	1a001678 <main+0x80>
1a001630:	4a1d      	ldr	r2, [pc, #116]	; (1a0016a8 <main+0xb0>)
1a001632:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001634:	011b      	lsls	r3, r3, #4
1a001636:	4413      	add	r3, r2
1a001638:	681b      	ldr	r3, [r3, #0]
1a00163a:	461a      	mov	r2, r3
1a00163c:	2104      	movs	r1, #4
1a00163e:	481a      	ldr	r0, [pc, #104]	; (1a0016a8 <main+0xb0>)
1a001640:	f7fe ff99 	bl	1a000576 <IsPendEvent>
1a001644:	4603      	mov	r3, r0
1a001646:	2b00      	cmp	r3, #0
1a001648:	d013      	beq.n	1a001672 <main+0x7a>
1a00164a:	4a17      	ldr	r2, [pc, #92]	; (1a0016a8 <main+0xb0>)
1a00164c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a00164e:	011b      	lsls	r3, r3, #4
1a001650:	4413      	add	r3, r2
1a001652:	681a      	ldr	r2, [r3, #0]
1a001654:	1d3b      	adds	r3, r7, #4
1a001656:	4611      	mov	r1, r2
1a001658:	4618      	mov	r0, r3
1a00165a:	f7ff f8fd 	bl	1a000858 <cerradura_raiseTimeEvent>
1a00165e:	4a12      	ldr	r2, [pc, #72]	; (1a0016a8 <main+0xb0>)
1a001660:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001662:	011b      	lsls	r3, r3, #4
1a001664:	4413      	add	r3, r2
1a001666:	681b      	ldr	r3, [r3, #0]
1a001668:	461a      	mov	r2, r3
1a00166a:	2104      	movs	r1, #4
1a00166c:	480e      	ldr	r0, [pc, #56]	; (1a0016a8 <main+0xb0>)
1a00166e:	f7fe ffad 	bl	1a0005cc <MarkAsAttEvent>
1a001672:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001674:	3301      	adds	r3, #1
1a001676:	63fb      	str	r3, [r7, #60]	; 0x3c
1a001678:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a00167a:	2b03      	cmp	r3, #3
1a00167c:	d9d8      	bls.n	1a001630 <main+0x38>
1a00167e:	f000 fa31 	bl	1a001ae4 <getKeyPressed>
1a001682:	4603      	mov	r3, r0
1a001684:	2b00      	cmp	r3, #0
1a001686:	d009      	beq.n	1a00169c <main+0xa4>
1a001688:	f000 fa2c 	bl	1a001ae4 <getKeyPressed>
1a00168c:	4602      	mov	r2, r0
1a00168e:	1d3b      	adds	r3, r7, #4
1a001690:	4611      	mov	r1, r2
1a001692:	4618      	mov	r0, r3
1a001694:	f7ff f8fa 	bl	1a00088c <cerraduraIface_raise_keyPressed>
1a001698:	f000 fc1e 	bl	1a001ed8 <rstKeyPressed>
1a00169c:	1d3b      	adds	r3, r7, #4
1a00169e:	4618      	mov	r0, r3
1a0016a0:	f7ff f876 	bl	1a000790 <cerradura_runCycle>
1a0016a4:	e7b5      	b.n	1a001612 <main+0x1a>
1a0016a6:	bf00      	nop
1a0016a8:	10000000 	.word	0x10000000

1a0016ac <NVIC_EnableIRQ>:
1a0016ac:	b480      	push	{r7}
1a0016ae:	b083      	sub	sp, #12
1a0016b0:	af00      	add	r7, sp, #0
1a0016b2:	4603      	mov	r3, r0
1a0016b4:	71fb      	strb	r3, [r7, #7]
1a0016b6:	79fb      	ldrb	r3, [r7, #7]
1a0016b8:	f003 031f 	and.w	r3, r3, #31
1a0016bc:	2201      	movs	r2, #1
1a0016be:	fa02 f103 	lsl.w	r1, r2, r3
1a0016c2:	4a06      	ldr	r2, [pc, #24]	; (1a0016dc <NVIC_EnableIRQ+0x30>)
1a0016c4:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0016c8:	095b      	lsrs	r3, r3, #5
1a0016ca:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0016ce:	bf00      	nop
1a0016d0:	370c      	adds	r7, #12
1a0016d2:	46bd      	mov	sp, r7
1a0016d4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016d8:	4770      	bx	lr
1a0016da:	bf00      	nop
1a0016dc:	e000e100 	.word	0xe000e100

1a0016e0 <NVIC_ClearPendingIRQ>:
1a0016e0:	b480      	push	{r7}
1a0016e2:	b083      	sub	sp, #12
1a0016e4:	af00      	add	r7, sp, #0
1a0016e6:	4603      	mov	r3, r0
1a0016e8:	71fb      	strb	r3, [r7, #7]
1a0016ea:	79fb      	ldrb	r3, [r7, #7]
1a0016ec:	f003 031f 	and.w	r3, r3, #31
1a0016f0:	2201      	movs	r2, #1
1a0016f2:	fa02 f103 	lsl.w	r1, r2, r3
1a0016f6:	4a06      	ldr	r2, [pc, #24]	; (1a001710 <NVIC_ClearPendingIRQ+0x30>)
1a0016f8:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0016fc:	095b      	lsrs	r3, r3, #5
1a0016fe:	3360      	adds	r3, #96	; 0x60
1a001700:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a001704:	bf00      	nop
1a001706:	370c      	adds	r7, #12
1a001708:	46bd      	mov	sp, r7
1a00170a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00170e:	4770      	bx	lr
1a001710:	e000e100 	.word	0xe000e100

1a001714 <NVIC_SetPriority>:
1a001714:	b480      	push	{r7}
1a001716:	b083      	sub	sp, #12
1a001718:	af00      	add	r7, sp, #0
1a00171a:	4603      	mov	r3, r0
1a00171c:	6039      	str	r1, [r7, #0]
1a00171e:	71fb      	strb	r3, [r7, #7]
1a001720:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a001724:	2b00      	cmp	r3, #0
1a001726:	da0b      	bge.n	1a001740 <NVIC_SetPriority+0x2c>
1a001728:	683b      	ldr	r3, [r7, #0]
1a00172a:	b2da      	uxtb	r2, r3
1a00172c:	490c      	ldr	r1, [pc, #48]	; (1a001760 <NVIC_SetPriority+0x4c>)
1a00172e:	79fb      	ldrb	r3, [r7, #7]
1a001730:	f003 030f 	and.w	r3, r3, #15
1a001734:	3b04      	subs	r3, #4
1a001736:	0152      	lsls	r2, r2, #5
1a001738:	b2d2      	uxtb	r2, r2
1a00173a:	440b      	add	r3, r1
1a00173c:	761a      	strb	r2, [r3, #24]
1a00173e:	e009      	b.n	1a001754 <NVIC_SetPriority+0x40>
1a001740:	683b      	ldr	r3, [r7, #0]
1a001742:	b2da      	uxtb	r2, r3
1a001744:	4907      	ldr	r1, [pc, #28]	; (1a001764 <NVIC_SetPriority+0x50>)
1a001746:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00174a:	0152      	lsls	r2, r2, #5
1a00174c:	b2d2      	uxtb	r2, r2
1a00174e:	440b      	add	r3, r1
1a001750:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a001754:	bf00      	nop
1a001756:	370c      	adds	r7, #12
1a001758:	46bd      	mov	sp, r7
1a00175a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00175e:	4770      	bx	lr
1a001760:	e000ed00 	.word	0xe000ed00
1a001764:	e000e100 	.word	0xe000e100

1a001768 <SysTick_Config>:
1a001768:	b580      	push	{r7, lr}
1a00176a:	b082      	sub	sp, #8
1a00176c:	af00      	add	r7, sp, #0
1a00176e:	6078      	str	r0, [r7, #4]
1a001770:	687b      	ldr	r3, [r7, #4]
1a001772:	3b01      	subs	r3, #1
1a001774:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a001778:	d301      	bcc.n	1a00177e <SysTick_Config+0x16>
1a00177a:	2301      	movs	r3, #1
1a00177c:	e00f      	b.n	1a00179e <SysTick_Config+0x36>
1a00177e:	4a0a      	ldr	r2, [pc, #40]	; (1a0017a8 <SysTick_Config+0x40>)
1a001780:	687b      	ldr	r3, [r7, #4]
1a001782:	3b01      	subs	r3, #1
1a001784:	6053      	str	r3, [r2, #4]
1a001786:	2107      	movs	r1, #7
1a001788:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a00178c:	f7ff ffc2 	bl	1a001714 <NVIC_SetPriority>
1a001790:	4b05      	ldr	r3, [pc, #20]	; (1a0017a8 <SysTick_Config+0x40>)
1a001792:	2200      	movs	r2, #0
1a001794:	609a      	str	r2, [r3, #8]
1a001796:	4b04      	ldr	r3, [pc, #16]	; (1a0017a8 <SysTick_Config+0x40>)
1a001798:	2207      	movs	r2, #7
1a00179a:	601a      	str	r2, [r3, #0]
1a00179c:	2300      	movs	r3, #0
1a00179e:	4618      	mov	r0, r3
1a0017a0:	3708      	adds	r7, #8
1a0017a2:	46bd      	mov	sp, r7
1a0017a4:	bd80      	pop	{r7, pc}
1a0017a6:	bf00      	nop
1a0017a8:	e000e010 	.word	0xe000e010

1a0017ac <Chip_SCU_PinMuxSet>:
1a0017ac:	b480      	push	{r7}
1a0017ae:	b083      	sub	sp, #12
1a0017b0:	af00      	add	r7, sp, #0
1a0017b2:	4603      	mov	r3, r0
1a0017b4:	71fb      	strb	r3, [r7, #7]
1a0017b6:	460b      	mov	r3, r1
1a0017b8:	71bb      	strb	r3, [r7, #6]
1a0017ba:	4613      	mov	r3, r2
1a0017bc:	80bb      	strh	r3, [r7, #4]
1a0017be:	4807      	ldr	r0, [pc, #28]	; (1a0017dc <Chip_SCU_PinMuxSet+0x30>)
1a0017c0:	79f9      	ldrb	r1, [r7, #7]
1a0017c2:	79bb      	ldrb	r3, [r7, #6]
1a0017c4:	88ba      	ldrh	r2, [r7, #4]
1a0017c6:	0149      	lsls	r1, r1, #5
1a0017c8:	440b      	add	r3, r1
1a0017ca:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a0017ce:	bf00      	nop
1a0017d0:	370c      	adds	r7, #12
1a0017d2:	46bd      	mov	sp, r7
1a0017d4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017d8:	4770      	bx	lr
1a0017da:	bf00      	nop
1a0017dc:	40086000 	.word	0x40086000

1a0017e0 <Chip_SCU_GPIOIntPinSel>:
1a0017e0:	b480      	push	{r7}
1a0017e2:	b085      	sub	sp, #20
1a0017e4:	af00      	add	r7, sp, #0
1a0017e6:	4603      	mov	r3, r0
1a0017e8:	71fb      	strb	r3, [r7, #7]
1a0017ea:	460b      	mov	r3, r1
1a0017ec:	71bb      	strb	r3, [r7, #6]
1a0017ee:	4613      	mov	r3, r2
1a0017f0:	717b      	strb	r3, [r7, #5]
1a0017f2:	79fb      	ldrb	r3, [r7, #7]
1a0017f4:	00db      	lsls	r3, r3, #3
1a0017f6:	f003 0318 	and.w	r3, r3, #24
1a0017fa:	60fb      	str	r3, [r7, #12]
1a0017fc:	79bb      	ldrb	r3, [r7, #6]
1a0017fe:	015b      	lsls	r3, r3, #5
1a001800:	b2da      	uxtb	r2, r3
1a001802:	797b      	ldrb	r3, [r7, #5]
1a001804:	f003 031f 	and.w	r3, r3, #31
1a001808:	431a      	orrs	r2, r3
1a00180a:	68fb      	ldr	r3, [r7, #12]
1a00180c:	fa02 f303 	lsl.w	r3, r2, r3
1a001810:	60bb      	str	r3, [r7, #8]
1a001812:	4a0f      	ldr	r2, [pc, #60]	; (1a001850 <Chip_SCU_GPIOIntPinSel+0x70>)
1a001814:	79fb      	ldrb	r3, [r7, #7]
1a001816:	089b      	lsrs	r3, r3, #2
1a001818:	b2db      	uxtb	r3, r3
1a00181a:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a00181e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001822:	21ff      	movs	r1, #255	; 0xff
1a001824:	68fa      	ldr	r2, [r7, #12]
1a001826:	fa01 f202 	lsl.w	r2, r1, r2
1a00182a:	43d2      	mvns	r2, r2
1a00182c:	401a      	ands	r2, r3
1a00182e:	4908      	ldr	r1, [pc, #32]	; (1a001850 <Chip_SCU_GPIOIntPinSel+0x70>)
1a001830:	79fb      	ldrb	r3, [r7, #7]
1a001832:	089b      	lsrs	r3, r3, #2
1a001834:	b2db      	uxtb	r3, r3
1a001836:	4618      	mov	r0, r3
1a001838:	68bb      	ldr	r3, [r7, #8]
1a00183a:	431a      	orrs	r2, r3
1a00183c:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a001840:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a001844:	bf00      	nop
1a001846:	3714      	adds	r7, #20
1a001848:	46bd      	mov	sp, r7
1a00184a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00184e:	4770      	bx	lr
1a001850:	40086000 	.word	0x40086000

1a001854 <Chip_GPIO_SetPinDIROutput>:
1a001854:	b480      	push	{r7}
1a001856:	b083      	sub	sp, #12
1a001858:	af00      	add	r7, sp, #0
1a00185a:	6078      	str	r0, [r7, #4]
1a00185c:	460b      	mov	r3, r1
1a00185e:	70fb      	strb	r3, [r7, #3]
1a001860:	4613      	mov	r3, r2
1a001862:	70bb      	strb	r3, [r7, #2]
1a001864:	78fa      	ldrb	r2, [r7, #3]
1a001866:	687b      	ldr	r3, [r7, #4]
1a001868:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00186c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a001870:	78bb      	ldrb	r3, [r7, #2]
1a001872:	2201      	movs	r2, #1
1a001874:	fa02 f303 	lsl.w	r3, r2, r3
1a001878:	78fa      	ldrb	r2, [r7, #3]
1a00187a:	4319      	orrs	r1, r3
1a00187c:	687b      	ldr	r3, [r7, #4]
1a00187e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001882:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001886:	bf00      	nop
1a001888:	370c      	adds	r7, #12
1a00188a:	46bd      	mov	sp, r7
1a00188c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001890:	4770      	bx	lr

1a001892 <Chip_GPIO_SetPinDIRInput>:
1a001892:	b480      	push	{r7}
1a001894:	b083      	sub	sp, #12
1a001896:	af00      	add	r7, sp, #0
1a001898:	6078      	str	r0, [r7, #4]
1a00189a:	460b      	mov	r3, r1
1a00189c:	70fb      	strb	r3, [r7, #3]
1a00189e:	4613      	mov	r3, r2
1a0018a0:	70bb      	strb	r3, [r7, #2]
1a0018a2:	78fa      	ldrb	r2, [r7, #3]
1a0018a4:	687b      	ldr	r3, [r7, #4]
1a0018a6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0018aa:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0018ae:	78bb      	ldrb	r3, [r7, #2]
1a0018b0:	2201      	movs	r2, #1
1a0018b2:	fa02 f303 	lsl.w	r3, r2, r3
1a0018b6:	43db      	mvns	r3, r3
1a0018b8:	78fa      	ldrb	r2, [r7, #3]
1a0018ba:	4019      	ands	r1, r3
1a0018bc:	687b      	ldr	r3, [r7, #4]
1a0018be:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0018c2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0018c6:	bf00      	nop
1a0018c8:	370c      	adds	r7, #12
1a0018ca:	46bd      	mov	sp, r7
1a0018cc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0018d0:	4770      	bx	lr

1a0018d2 <Chip_GPIO_SetPinOutHigh>:
1a0018d2:	b480      	push	{r7}
1a0018d4:	b083      	sub	sp, #12
1a0018d6:	af00      	add	r7, sp, #0
1a0018d8:	6078      	str	r0, [r7, #4]
1a0018da:	460b      	mov	r3, r1
1a0018dc:	70fb      	strb	r3, [r7, #3]
1a0018de:	4613      	mov	r3, r2
1a0018e0:	70bb      	strb	r3, [r7, #2]
1a0018e2:	78bb      	ldrb	r3, [r7, #2]
1a0018e4:	2201      	movs	r2, #1
1a0018e6:	fa02 f303 	lsl.w	r3, r2, r3
1a0018ea:	78fa      	ldrb	r2, [r7, #3]
1a0018ec:	4619      	mov	r1, r3
1a0018ee:	687b      	ldr	r3, [r7, #4]
1a0018f0:	f502 6208 	add.w	r2, r2, #2176	; 0x880
1a0018f4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0018f8:	bf00      	nop
1a0018fa:	370c      	adds	r7, #12
1a0018fc:	46bd      	mov	sp, r7
1a0018fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001902:	4770      	bx	lr

1a001904 <Chip_GPIO_SetPinOutLow>:
1a001904:	b480      	push	{r7}
1a001906:	b083      	sub	sp, #12
1a001908:	af00      	add	r7, sp, #0
1a00190a:	6078      	str	r0, [r7, #4]
1a00190c:	460b      	mov	r3, r1
1a00190e:	70fb      	strb	r3, [r7, #3]
1a001910:	4613      	mov	r3, r2
1a001912:	70bb      	strb	r3, [r7, #2]
1a001914:	78bb      	ldrb	r3, [r7, #2]
1a001916:	2201      	movs	r2, #1
1a001918:	fa02 f303 	lsl.w	r3, r2, r3
1a00191c:	78fa      	ldrb	r2, [r7, #3]
1a00191e:	4619      	mov	r1, r3
1a001920:	687b      	ldr	r3, [r7, #4]
1a001922:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a001926:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00192a:	bf00      	nop
1a00192c:	370c      	adds	r7, #12
1a00192e:	46bd      	mov	sp, r7
1a001930:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001934:	4770      	bx	lr

1a001936 <Chip_PININT_SetPinModeEdge>:
1a001936:	b480      	push	{r7}
1a001938:	b083      	sub	sp, #12
1a00193a:	af00      	add	r7, sp, #0
1a00193c:	6078      	str	r0, [r7, #4]
1a00193e:	6039      	str	r1, [r7, #0]
1a001940:	687b      	ldr	r3, [r7, #4]
1a001942:	681a      	ldr	r2, [r3, #0]
1a001944:	683b      	ldr	r3, [r7, #0]
1a001946:	43db      	mvns	r3, r3
1a001948:	401a      	ands	r2, r3
1a00194a:	687b      	ldr	r3, [r7, #4]
1a00194c:	601a      	str	r2, [r3, #0]
1a00194e:	bf00      	nop
1a001950:	370c      	adds	r7, #12
1a001952:	46bd      	mov	sp, r7
1a001954:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001958:	4770      	bx	lr

1a00195a <Chip_PININT_EnableIntLow>:
1a00195a:	b480      	push	{r7}
1a00195c:	b083      	sub	sp, #12
1a00195e:	af00      	add	r7, sp, #0
1a001960:	6078      	str	r0, [r7, #4]
1a001962:	6039      	str	r1, [r7, #0]
1a001964:	687b      	ldr	r3, [r7, #4]
1a001966:	683a      	ldr	r2, [r7, #0]
1a001968:	615a      	str	r2, [r3, #20]
1a00196a:	bf00      	nop
1a00196c:	370c      	adds	r7, #12
1a00196e:	46bd      	mov	sp, r7
1a001970:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001974:	4770      	bx	lr

1a001976 <Chip_PININT_ClearIntStatus>:
1a001976:	b480      	push	{r7}
1a001978:	b083      	sub	sp, #12
1a00197a:	af00      	add	r7, sp, #0
1a00197c:	6078      	str	r0, [r7, #4]
1a00197e:	6039      	str	r1, [r7, #0]
1a001980:	687b      	ldr	r3, [r7, #4]
1a001982:	683a      	ldr	r2, [r7, #0]
1a001984:	625a      	str	r2, [r3, #36]	; 0x24
1a001986:	bf00      	nop
1a001988:	370c      	adds	r7, #12
1a00198a:	46bd      	mov	sp, r7
1a00198c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001990:	4770      	bx	lr

1a001992 <Chip_UART_TXEnable>:
1a001992:	b480      	push	{r7}
1a001994:	b083      	sub	sp, #12
1a001996:	af00      	add	r7, sp, #0
1a001998:	6078      	str	r0, [r7, #4]
1a00199a:	687b      	ldr	r3, [r7, #4]
1a00199c:	2201      	movs	r2, #1
1a00199e:	65da      	str	r2, [r3, #92]	; 0x5c
1a0019a0:	bf00      	nop
1a0019a2:	370c      	adds	r7, #12
1a0019a4:	46bd      	mov	sp, r7
1a0019a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019aa:	4770      	bx	lr

1a0019ac <Chip_UART_IntEnable>:
1a0019ac:	b480      	push	{r7}
1a0019ae:	b083      	sub	sp, #12
1a0019b0:	af00      	add	r7, sp, #0
1a0019b2:	6078      	str	r0, [r7, #4]
1a0019b4:	6039      	str	r1, [r7, #0]
1a0019b6:	687b      	ldr	r3, [r7, #4]
1a0019b8:	685a      	ldr	r2, [r3, #4]
1a0019ba:	683b      	ldr	r3, [r7, #0]
1a0019bc:	431a      	orrs	r2, r3
1a0019be:	687b      	ldr	r3, [r7, #4]
1a0019c0:	605a      	str	r2, [r3, #4]
1a0019c2:	bf00      	nop
1a0019c4:	370c      	adds	r7, #12
1a0019c6:	46bd      	mov	sp, r7
1a0019c8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019cc:	4770      	bx	lr

1a0019ce <Chip_UART_SetupFIFOS>:
1a0019ce:	b480      	push	{r7}
1a0019d0:	b083      	sub	sp, #12
1a0019d2:	af00      	add	r7, sp, #0
1a0019d4:	6078      	str	r0, [r7, #4]
1a0019d6:	6039      	str	r1, [r7, #0]
1a0019d8:	687b      	ldr	r3, [r7, #4]
1a0019da:	683a      	ldr	r2, [r7, #0]
1a0019dc:	609a      	str	r2, [r3, #8]
1a0019de:	bf00      	nop
1a0019e0:	370c      	adds	r7, #12
1a0019e2:	46bd      	mov	sp, r7
1a0019e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019e8:	4770      	bx	lr

1a0019ea <Chip_UART_ConfigData>:
1a0019ea:	b480      	push	{r7}
1a0019ec:	b083      	sub	sp, #12
1a0019ee:	af00      	add	r7, sp, #0
1a0019f0:	6078      	str	r0, [r7, #4]
1a0019f2:	6039      	str	r1, [r7, #0]
1a0019f4:	687b      	ldr	r3, [r7, #4]
1a0019f6:	683a      	ldr	r2, [r7, #0]
1a0019f8:	60da      	str	r2, [r3, #12]
1a0019fa:	bf00      	nop
1a0019fc:	370c      	adds	r7, #12
1a0019fe:	46bd      	mov	sp, r7
1a001a00:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a04:	4770      	bx	lr

1a001a06 <StopWatch_Elapsed>:
1a001a06:	b580      	push	{r7, lr}
1a001a08:	b082      	sub	sp, #8
1a001a0a:	af00      	add	r7, sp, #0
1a001a0c:	6078      	str	r0, [r7, #4]
1a001a0e:	f000 fd0d 	bl	1a00242c <StopWatch_Start>
1a001a12:	4602      	mov	r2, r0
1a001a14:	687b      	ldr	r3, [r7, #4]
1a001a16:	1ad3      	subs	r3, r2, r3
1a001a18:	4618      	mov	r0, r3
1a001a1a:	3708      	adds	r7, #8
1a001a1c:	46bd      	mov	sp, r7
1a001a1e:	bd80      	pop	{r7, pc}

1a001a20 <StopWatch_DelayMs>:
1a001a20:	b580      	push	{r7, lr}
1a001a22:	b084      	sub	sp, #16
1a001a24:	af00      	add	r7, sp, #0
1a001a26:	6078      	str	r0, [r7, #4]
1a001a28:	6878      	ldr	r0, [r7, #4]
1a001a2a:	f000 fd09 	bl	1a002440 <StopWatch_MsToTicks>
1a001a2e:	60f8      	str	r0, [r7, #12]
1a001a30:	f000 fcfc 	bl	1a00242c <StopWatch_Start>
1a001a34:	60b8      	str	r0, [r7, #8]
1a001a36:	bf00      	nop
1a001a38:	68b8      	ldr	r0, [r7, #8]
1a001a3a:	f7ff ffe4 	bl	1a001a06 <StopWatch_Elapsed>
1a001a3e:	4602      	mov	r2, r0
1a001a40:	68fb      	ldr	r3, [r7, #12]
1a001a42:	4293      	cmp	r3, r2
1a001a44:	d8f8      	bhi.n	1a001a38 <StopWatch_DelayMs+0x18>
1a001a46:	bf00      	nop
1a001a48:	3710      	adds	r7, #16
1a001a4a:	46bd      	mov	sp, r7
1a001a4c:	bd80      	pop	{r7, pc}

1a001a4e <setLedFromMask>:
1a001a4e:	b580      	push	{r7, lr}
1a001a50:	b082      	sub	sp, #8
1a001a52:	af00      	add	r7, sp, #0
1a001a54:	4603      	mov	r3, r0
1a001a56:	71fb      	strb	r3, [r7, #7]
1a001a58:	2000      	movs	r0, #0
1a001a5a:	f000 f9a5 	bl	1a001da8 <ledOff>
1a001a5e:	2005      	movs	r0, #5
1a001a60:	f000 f9a2 	bl	1a001da8 <ledOff>
1a001a64:	2004      	movs	r0, #4
1a001a66:	f000 f99f 	bl	1a001da8 <ledOff>
1a001a6a:	2003      	movs	r0, #3
1a001a6c:	f000 f99c 	bl	1a001da8 <ledOff>
1a001a70:	2002      	movs	r0, #2
1a001a72:	f000 f999 	bl	1a001da8 <ledOff>
1a001a76:	2001      	movs	r0, #1
1a001a78:	f000 f996 	bl	1a001da8 <ledOff>
1a001a7c:	79fb      	ldrb	r3, [r7, #7]
1a001a7e:	f003 0308 	and.w	r3, r3, #8
1a001a82:	2b00      	cmp	r3, #0
1a001a84:	d002      	beq.n	1a001a8c <setLedFromMask+0x3e>
1a001a86:	2001      	movs	r0, #1
1a001a88:	f000 f96a 	bl	1a001d60 <ledOn>
1a001a8c:	79fb      	ldrb	r3, [r7, #7]
1a001a8e:	f003 0310 	and.w	r3, r3, #16
1a001a92:	2b00      	cmp	r3, #0
1a001a94:	d002      	beq.n	1a001a9c <setLedFromMask+0x4e>
1a001a96:	2002      	movs	r0, #2
1a001a98:	f000 f962 	bl	1a001d60 <ledOn>
1a001a9c:	79fb      	ldrb	r3, [r7, #7]
1a001a9e:	f003 0320 	and.w	r3, r3, #32
1a001aa2:	2b00      	cmp	r3, #0
1a001aa4:	d002      	beq.n	1a001aac <setLedFromMask+0x5e>
1a001aa6:	2003      	movs	r0, #3
1a001aa8:	f000 f95a 	bl	1a001d60 <ledOn>
1a001aac:	79fb      	ldrb	r3, [r7, #7]
1a001aae:	f003 0301 	and.w	r3, r3, #1
1a001ab2:	2b00      	cmp	r3, #0
1a001ab4:	d002      	beq.n	1a001abc <setLedFromMask+0x6e>
1a001ab6:	2004      	movs	r0, #4
1a001ab8:	f000 f952 	bl	1a001d60 <ledOn>
1a001abc:	79fb      	ldrb	r3, [r7, #7]
1a001abe:	f003 0302 	and.w	r3, r3, #2
1a001ac2:	2b00      	cmp	r3, #0
1a001ac4:	d002      	beq.n	1a001acc <setLedFromMask+0x7e>
1a001ac6:	2005      	movs	r0, #5
1a001ac8:	f000 f94a 	bl	1a001d60 <ledOn>
1a001acc:	79fb      	ldrb	r3, [r7, #7]
1a001ace:	f003 0304 	and.w	r3, r3, #4
1a001ad2:	2b00      	cmp	r3, #0
1a001ad4:	d002      	beq.n	1a001adc <setLedFromMask+0x8e>
1a001ad6:	2000      	movs	r0, #0
1a001ad8:	f000 f942 	bl	1a001d60 <ledOn>
1a001adc:	bf00      	nop
1a001ade:	3708      	adds	r7, #8
1a001ae0:	46bd      	mov	sp, r7
1a001ae2:	bd80      	pop	{r7, pc}

1a001ae4 <getKeyPressed>:
1a001ae4:	b480      	push	{r7}
1a001ae6:	af00      	add	r7, sp, #0
1a001ae8:	4b03      	ldr	r3, [pc, #12]	; (1a001af8 <getKeyPressed+0x14>)
1a001aea:	781b      	ldrb	r3, [r3, #0]
1a001aec:	4618      	mov	r0, r3
1a001aee:	46bd      	mov	sp, r7
1a001af0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001af4:	4770      	bx	lr
1a001af6:	bf00      	nop
1a001af8:	10000040 	.word	0x10000040

1a001afc <sysInit>:
1a001afc:	b590      	push	{r4, r7, lr}
1a001afe:	b083      	sub	sp, #12
1a001b00:	af00      	add	r7, sp, #0
1a001b02:	f000 fb19 	bl	1a002138 <Chip_SetupXtalClocking>
1a001b06:	f001 f991 	bl	1a002e2c <SystemCoreClockUpdate>
1a001b0a:	f000 fc55 	bl	1a0023b8 <StopWatch_Init>
1a001b0e:	f000 f9ef 	bl	1a001ef0 <fpuInit>
1a001b12:	488c      	ldr	r0, [pc, #560]	; (1a001d44 <sysInit+0x248>)
1a001b14:	f001 f996 	bl	1a002e44 <Chip_GPIO_Init>
1a001b18:	2300      	movs	r3, #0
1a001b1a:	607b      	str	r3, [r7, #4]
1a001b1c:	e04e      	b.n	1a001bbc <sysInit+0xc0>
1a001b1e:	498a      	ldr	r1, [pc, #552]	; (1a001d48 <sysInit+0x24c>)
1a001b20:	687a      	ldr	r2, [r7, #4]
1a001b22:	4613      	mov	r3, r2
1a001b24:	005b      	lsls	r3, r3, #1
1a001b26:	4413      	add	r3, r2
1a001b28:	005b      	lsls	r3, r3, #1
1a001b2a:	440b      	add	r3, r1
1a001b2c:	7818      	ldrb	r0, [r3, #0]
1a001b2e:	4986      	ldr	r1, [pc, #536]	; (1a001d48 <sysInit+0x24c>)
1a001b30:	687a      	ldr	r2, [r7, #4]
1a001b32:	4613      	mov	r3, r2
1a001b34:	005b      	lsls	r3, r3, #1
1a001b36:	4413      	add	r3, r2
1a001b38:	005b      	lsls	r3, r3, #1
1a001b3a:	440b      	add	r3, r1
1a001b3c:	3301      	adds	r3, #1
1a001b3e:	781c      	ldrb	r4, [r3, #0]
1a001b40:	4981      	ldr	r1, [pc, #516]	; (1a001d48 <sysInit+0x24c>)
1a001b42:	687a      	ldr	r2, [r7, #4]
1a001b44:	4613      	mov	r3, r2
1a001b46:	005b      	lsls	r3, r3, #1
1a001b48:	4413      	add	r3, r2
1a001b4a:	005b      	lsls	r3, r3, #1
1a001b4c:	440b      	add	r3, r1
1a001b4e:	3304      	adds	r3, #4
1a001b50:	881b      	ldrh	r3, [r3, #0]
1a001b52:	461a      	mov	r2, r3
1a001b54:	4621      	mov	r1, r4
1a001b56:	f7ff fe29 	bl	1a0017ac <Chip_SCU_PinMuxSet>
1a001b5a:	497b      	ldr	r1, [pc, #492]	; (1a001d48 <sysInit+0x24c>)
1a001b5c:	687a      	ldr	r2, [r7, #4]
1a001b5e:	4613      	mov	r3, r2
1a001b60:	005b      	lsls	r3, r3, #1
1a001b62:	4413      	add	r3, r2
1a001b64:	005b      	lsls	r3, r3, #1
1a001b66:	440b      	add	r3, r1
1a001b68:	3302      	adds	r3, #2
1a001b6a:	7818      	ldrb	r0, [r3, #0]
1a001b6c:	4976      	ldr	r1, [pc, #472]	; (1a001d48 <sysInit+0x24c>)
1a001b6e:	687a      	ldr	r2, [r7, #4]
1a001b70:	4613      	mov	r3, r2
1a001b72:	005b      	lsls	r3, r3, #1
1a001b74:	4413      	add	r3, r2
1a001b76:	005b      	lsls	r3, r3, #1
1a001b78:	440b      	add	r3, r1
1a001b7a:	3303      	adds	r3, #3
1a001b7c:	781b      	ldrb	r3, [r3, #0]
1a001b7e:	461a      	mov	r2, r3
1a001b80:	4601      	mov	r1, r0
1a001b82:	4870      	ldr	r0, [pc, #448]	; (1a001d44 <sysInit+0x248>)
1a001b84:	f7ff fe66 	bl	1a001854 <Chip_GPIO_SetPinDIROutput>
1a001b88:	496f      	ldr	r1, [pc, #444]	; (1a001d48 <sysInit+0x24c>)
1a001b8a:	687a      	ldr	r2, [r7, #4]
1a001b8c:	4613      	mov	r3, r2
1a001b8e:	005b      	lsls	r3, r3, #1
1a001b90:	4413      	add	r3, r2
1a001b92:	005b      	lsls	r3, r3, #1
1a001b94:	440b      	add	r3, r1
1a001b96:	3302      	adds	r3, #2
1a001b98:	7818      	ldrb	r0, [r3, #0]
1a001b9a:	496b      	ldr	r1, [pc, #428]	; (1a001d48 <sysInit+0x24c>)
1a001b9c:	687a      	ldr	r2, [r7, #4]
1a001b9e:	4613      	mov	r3, r2
1a001ba0:	005b      	lsls	r3, r3, #1
1a001ba2:	4413      	add	r3, r2
1a001ba4:	005b      	lsls	r3, r3, #1
1a001ba6:	440b      	add	r3, r1
1a001ba8:	3303      	adds	r3, #3
1a001baa:	781b      	ldrb	r3, [r3, #0]
1a001bac:	461a      	mov	r2, r3
1a001bae:	4601      	mov	r1, r0
1a001bb0:	4864      	ldr	r0, [pc, #400]	; (1a001d44 <sysInit+0x248>)
1a001bb2:	f7ff fea7 	bl	1a001904 <Chip_GPIO_SetPinOutLow>
1a001bb6:	687b      	ldr	r3, [r7, #4]
1a001bb8:	3301      	adds	r3, #1
1a001bba:	607b      	str	r3, [r7, #4]
1a001bbc:	687b      	ldr	r3, [r7, #4]
1a001bbe:	2b05      	cmp	r3, #5
1a001bc0:	d9ad      	bls.n	1a001b1e <sysInit+0x22>
1a001bc2:	2300      	movs	r3, #0
1a001bc4:	607b      	str	r3, [r7, #4]
1a001bc6:	e037      	b.n	1a001c38 <sysInit+0x13c>
1a001bc8:	4960      	ldr	r1, [pc, #384]	; (1a001d4c <sysInit+0x250>)
1a001bca:	687a      	ldr	r2, [r7, #4]
1a001bcc:	4613      	mov	r3, r2
1a001bce:	005b      	lsls	r3, r3, #1
1a001bd0:	4413      	add	r3, r2
1a001bd2:	005b      	lsls	r3, r3, #1
1a001bd4:	440b      	add	r3, r1
1a001bd6:	7818      	ldrb	r0, [r3, #0]
1a001bd8:	495c      	ldr	r1, [pc, #368]	; (1a001d4c <sysInit+0x250>)
1a001bda:	687a      	ldr	r2, [r7, #4]
1a001bdc:	4613      	mov	r3, r2
1a001bde:	005b      	lsls	r3, r3, #1
1a001be0:	4413      	add	r3, r2
1a001be2:	005b      	lsls	r3, r3, #1
1a001be4:	440b      	add	r3, r1
1a001be6:	3301      	adds	r3, #1
1a001be8:	781c      	ldrb	r4, [r3, #0]
1a001bea:	4958      	ldr	r1, [pc, #352]	; (1a001d4c <sysInit+0x250>)
1a001bec:	687a      	ldr	r2, [r7, #4]
1a001bee:	4613      	mov	r3, r2
1a001bf0:	005b      	lsls	r3, r3, #1
1a001bf2:	4413      	add	r3, r2
1a001bf4:	005b      	lsls	r3, r3, #1
1a001bf6:	440b      	add	r3, r1
1a001bf8:	3304      	adds	r3, #4
1a001bfa:	881b      	ldrh	r3, [r3, #0]
1a001bfc:	461a      	mov	r2, r3
1a001bfe:	4621      	mov	r1, r4
1a001c00:	f7ff fdd4 	bl	1a0017ac <Chip_SCU_PinMuxSet>
1a001c04:	4951      	ldr	r1, [pc, #324]	; (1a001d4c <sysInit+0x250>)
1a001c06:	687a      	ldr	r2, [r7, #4]
1a001c08:	4613      	mov	r3, r2
1a001c0a:	005b      	lsls	r3, r3, #1
1a001c0c:	4413      	add	r3, r2
1a001c0e:	005b      	lsls	r3, r3, #1
1a001c10:	440b      	add	r3, r1
1a001c12:	3302      	adds	r3, #2
1a001c14:	7818      	ldrb	r0, [r3, #0]
1a001c16:	494d      	ldr	r1, [pc, #308]	; (1a001d4c <sysInit+0x250>)
1a001c18:	687a      	ldr	r2, [r7, #4]
1a001c1a:	4613      	mov	r3, r2
1a001c1c:	005b      	lsls	r3, r3, #1
1a001c1e:	4413      	add	r3, r2
1a001c20:	005b      	lsls	r3, r3, #1
1a001c22:	440b      	add	r3, r1
1a001c24:	3303      	adds	r3, #3
1a001c26:	781b      	ldrb	r3, [r3, #0]
1a001c28:	461a      	mov	r2, r3
1a001c2a:	4601      	mov	r1, r0
1a001c2c:	4845      	ldr	r0, [pc, #276]	; (1a001d44 <sysInit+0x248>)
1a001c2e:	f7ff fe30 	bl	1a001892 <Chip_GPIO_SetPinDIRInput>
1a001c32:	687b      	ldr	r3, [r7, #4]
1a001c34:	3301      	adds	r3, #1
1a001c36:	607b      	str	r3, [r7, #4]
1a001c38:	687b      	ldr	r3, [r7, #4]
1a001c3a:	2b03      	cmp	r3, #3
1a001c3c:	d9c4      	bls.n	1a001bc8 <sysInit+0xcc>
1a001c3e:	221e      	movs	r2, #30
1a001c40:	2101      	movs	r1, #1
1a001c42:	2007      	movs	r0, #7
1a001c44:	f7ff fdb2 	bl	1a0017ac <Chip_SCU_PinMuxSet>
1a001c48:	22d6      	movs	r2, #214	; 0xd6
1a001c4a:	2102      	movs	r1, #2
1a001c4c:	2007      	movs	r0, #7
1a001c4e:	f7ff fdad 	bl	1a0017ac <Chip_SCU_PinMuxSet>
1a001c52:	483f      	ldr	r0, [pc, #252]	; (1a001d50 <sysInit+0x254>)
1a001c54:	f000 fb0a 	bl	1a00226c <Chip_UART_Init>
1a001c58:	2103      	movs	r1, #3
1a001c5a:	483d      	ldr	r0, [pc, #244]	; (1a001d50 <sysInit+0x254>)
1a001c5c:	f7ff fec5 	bl	1a0019ea <Chip_UART_ConfigData>
1a001c60:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a001c64:	483a      	ldr	r0, [pc, #232]	; (1a001d50 <sysInit+0x254>)
1a001c66:	f000 fb45 	bl	1a0022f4 <Chip_UART_SetBaud>
1a001c6a:	21c7      	movs	r1, #199	; 0xc7
1a001c6c:	4838      	ldr	r0, [pc, #224]	; (1a001d50 <sysInit+0x254>)
1a001c6e:	f7ff feae 	bl	1a0019ce <Chip_UART_SetupFIFOS>
1a001c72:	2101      	movs	r1, #1
1a001c74:	4836      	ldr	r0, [pc, #216]	; (1a001d50 <sysInit+0x254>)
1a001c76:	f7ff fe99 	bl	1a0019ac <Chip_UART_IntEnable>
1a001c7a:	2300      	movs	r3, #0
1a001c7c:	607b      	str	r3, [r7, #4]
1a001c7e:	e032      	b.n	1a001ce6 <sysInit+0x1ea>
1a001c80:	687b      	ldr	r3, [r7, #4]
1a001c82:	b2d8      	uxtb	r0, r3
1a001c84:	4931      	ldr	r1, [pc, #196]	; (1a001d4c <sysInit+0x250>)
1a001c86:	687a      	ldr	r2, [r7, #4]
1a001c88:	4613      	mov	r3, r2
1a001c8a:	005b      	lsls	r3, r3, #1
1a001c8c:	4413      	add	r3, r2
1a001c8e:	005b      	lsls	r3, r3, #1
1a001c90:	440b      	add	r3, r1
1a001c92:	3302      	adds	r3, #2
1a001c94:	781c      	ldrb	r4, [r3, #0]
1a001c96:	492d      	ldr	r1, [pc, #180]	; (1a001d4c <sysInit+0x250>)
1a001c98:	687a      	ldr	r2, [r7, #4]
1a001c9a:	4613      	mov	r3, r2
1a001c9c:	005b      	lsls	r3, r3, #1
1a001c9e:	4413      	add	r3, r2
1a001ca0:	005b      	lsls	r3, r3, #1
1a001ca2:	440b      	add	r3, r1
1a001ca4:	3303      	adds	r3, #3
1a001ca6:	781b      	ldrb	r3, [r3, #0]
1a001ca8:	461a      	mov	r2, r3
1a001caa:	4621      	mov	r1, r4
1a001cac:	f7ff fd98 	bl	1a0017e0 <Chip_SCU_GPIOIntPinSel>
1a001cb0:	2201      	movs	r2, #1
1a001cb2:	687b      	ldr	r3, [r7, #4]
1a001cb4:	fa02 f303 	lsl.w	r3, r2, r3
1a001cb8:	4619      	mov	r1, r3
1a001cba:	4826      	ldr	r0, [pc, #152]	; (1a001d54 <sysInit+0x258>)
1a001cbc:	f7ff fe5b 	bl	1a001976 <Chip_PININT_ClearIntStatus>
1a001cc0:	2201      	movs	r2, #1
1a001cc2:	687b      	ldr	r3, [r7, #4]
1a001cc4:	fa02 f303 	lsl.w	r3, r2, r3
1a001cc8:	4619      	mov	r1, r3
1a001cca:	4822      	ldr	r0, [pc, #136]	; (1a001d54 <sysInit+0x258>)
1a001ccc:	f7ff fe33 	bl	1a001936 <Chip_PININT_SetPinModeEdge>
1a001cd0:	2201      	movs	r2, #1
1a001cd2:	687b      	ldr	r3, [r7, #4]
1a001cd4:	fa02 f303 	lsl.w	r3, r2, r3
1a001cd8:	4619      	mov	r1, r3
1a001cda:	481e      	ldr	r0, [pc, #120]	; (1a001d54 <sysInit+0x258>)
1a001cdc:	f7ff fe3d 	bl	1a00195a <Chip_PININT_EnableIntLow>
1a001ce0:	687b      	ldr	r3, [r7, #4]
1a001ce2:	3301      	adds	r3, #1
1a001ce4:	607b      	str	r3, [r7, #4]
1a001ce6:	687b      	ldr	r3, [r7, #4]
1a001ce8:	2b03      	cmp	r3, #3
1a001cea:	ddc9      	ble.n	1a001c80 <sysInit+0x184>
1a001cec:	2020      	movs	r0, #32
1a001cee:	f7ff fcf7 	bl	1a0016e0 <NVIC_ClearPendingIRQ>
1a001cf2:	2021      	movs	r0, #33	; 0x21
1a001cf4:	f7ff fcf4 	bl	1a0016e0 <NVIC_ClearPendingIRQ>
1a001cf8:	2022      	movs	r0, #34	; 0x22
1a001cfa:	f7ff fcf1 	bl	1a0016e0 <NVIC_ClearPendingIRQ>
1a001cfe:	2023      	movs	r0, #35	; 0x23
1a001d00:	f7ff fcee 	bl	1a0016e0 <NVIC_ClearPendingIRQ>
1a001d04:	2020      	movs	r0, #32
1a001d06:	f7ff fcd1 	bl	1a0016ac <NVIC_EnableIRQ>
1a001d0a:	2021      	movs	r0, #33	; 0x21
1a001d0c:	f7ff fcce 	bl	1a0016ac <NVIC_EnableIRQ>
1a001d10:	2022      	movs	r0, #34	; 0x22
1a001d12:	f7ff fccb 	bl	1a0016ac <NVIC_EnableIRQ>
1a001d16:	2023      	movs	r0, #35	; 0x23
1a001d18:	f7ff fcc8 	bl	1a0016ac <NVIC_EnableIRQ>
1a001d1c:	201a      	movs	r0, #26
1a001d1e:	f7ff fcc5 	bl	1a0016ac <NVIC_EnableIRQ>
1a001d22:	480b      	ldr	r0, [pc, #44]	; (1a001d50 <sysInit+0x254>)
1a001d24:	f7ff fe35 	bl	1a001992 <Chip_UART_TXEnable>
1a001d28:	4b0b      	ldr	r3, [pc, #44]	; (1a001d58 <sysInit+0x25c>)
1a001d2a:	681b      	ldr	r3, [r3, #0]
1a001d2c:	4a0b      	ldr	r2, [pc, #44]	; (1a001d5c <sysInit+0x260>)
1a001d2e:	fba2 2303 	umull	r2, r3, r2, r3
1a001d32:	099b      	lsrs	r3, r3, #6
1a001d34:	4618      	mov	r0, r3
1a001d36:	f7ff fd17 	bl	1a001768 <SysTick_Config>
1a001d3a:	bf00      	nop
1a001d3c:	370c      	adds	r7, #12
1a001d3e:	46bd      	mov	sp, r7
1a001d40:	bd90      	pop	{r4, r7, pc}
1a001d42:	bf00      	nop
1a001d44:	400f4000 	.word	0x400f4000
1a001d48:	1a002ed0 	.word	0x1a002ed0
1a001d4c:	1a002ef4 	.word	0x1a002ef4
1a001d50:	400c1000 	.word	0x400c1000
1a001d54:	40087000 	.word	0x40087000
1a001d58:	10000058 	.word	0x10000058
1a001d5c:	10624dd3 	.word	0x10624dd3

1a001d60 <ledOn>:
1a001d60:	b580      	push	{r7, lr}
1a001d62:	b082      	sub	sp, #8
1a001d64:	af00      	add	r7, sp, #0
1a001d66:	4603      	mov	r3, r0
1a001d68:	71fb      	strb	r3, [r7, #7]
1a001d6a:	79fa      	ldrb	r2, [r7, #7]
1a001d6c:	490c      	ldr	r1, [pc, #48]	; (1a001da0 <ledOn+0x40>)
1a001d6e:	4613      	mov	r3, r2
1a001d70:	005b      	lsls	r3, r3, #1
1a001d72:	4413      	add	r3, r2
1a001d74:	005b      	lsls	r3, r3, #1
1a001d76:	440b      	add	r3, r1
1a001d78:	3302      	adds	r3, #2
1a001d7a:	7818      	ldrb	r0, [r3, #0]
1a001d7c:	79fa      	ldrb	r2, [r7, #7]
1a001d7e:	4908      	ldr	r1, [pc, #32]	; (1a001da0 <ledOn+0x40>)
1a001d80:	4613      	mov	r3, r2
1a001d82:	005b      	lsls	r3, r3, #1
1a001d84:	4413      	add	r3, r2
1a001d86:	005b      	lsls	r3, r3, #1
1a001d88:	440b      	add	r3, r1
1a001d8a:	3303      	adds	r3, #3
1a001d8c:	781b      	ldrb	r3, [r3, #0]
1a001d8e:	461a      	mov	r2, r3
1a001d90:	4601      	mov	r1, r0
1a001d92:	4804      	ldr	r0, [pc, #16]	; (1a001da4 <ledOn+0x44>)
1a001d94:	f7ff fd9d 	bl	1a0018d2 <Chip_GPIO_SetPinOutHigh>
1a001d98:	bf00      	nop
1a001d9a:	3708      	adds	r7, #8
1a001d9c:	46bd      	mov	sp, r7
1a001d9e:	bd80      	pop	{r7, pc}
1a001da0:	1a002ed0 	.word	0x1a002ed0
1a001da4:	400f4000 	.word	0x400f4000

1a001da8 <ledOff>:
1a001da8:	b580      	push	{r7, lr}
1a001daa:	b082      	sub	sp, #8
1a001dac:	af00      	add	r7, sp, #0
1a001dae:	4603      	mov	r3, r0
1a001db0:	71fb      	strb	r3, [r7, #7]
1a001db2:	79fa      	ldrb	r2, [r7, #7]
1a001db4:	490c      	ldr	r1, [pc, #48]	; (1a001de8 <ledOff+0x40>)
1a001db6:	4613      	mov	r3, r2
1a001db8:	005b      	lsls	r3, r3, #1
1a001dba:	4413      	add	r3, r2
1a001dbc:	005b      	lsls	r3, r3, #1
1a001dbe:	440b      	add	r3, r1
1a001dc0:	3302      	adds	r3, #2
1a001dc2:	7818      	ldrb	r0, [r3, #0]
1a001dc4:	79fa      	ldrb	r2, [r7, #7]
1a001dc6:	4908      	ldr	r1, [pc, #32]	; (1a001de8 <ledOff+0x40>)
1a001dc8:	4613      	mov	r3, r2
1a001dca:	005b      	lsls	r3, r3, #1
1a001dcc:	4413      	add	r3, r2
1a001dce:	005b      	lsls	r3, r3, #1
1a001dd0:	440b      	add	r3, r1
1a001dd2:	3303      	adds	r3, #3
1a001dd4:	781b      	ldrb	r3, [r3, #0]
1a001dd6:	461a      	mov	r2, r3
1a001dd8:	4601      	mov	r1, r0
1a001dda:	4804      	ldr	r0, [pc, #16]	; (1a001dec <ledOff+0x44>)
1a001ddc:	f7ff fd92 	bl	1a001904 <Chip_GPIO_SetPinOutLow>
1a001de0:	bf00      	nop
1a001de2:	3708      	adds	r7, #8
1a001de4:	46bd      	mov	sp, r7
1a001de6:	bd80      	pop	{r7, pc}
1a001de8:	1a002ed0 	.word	0x1a002ed0
1a001dec:	400f4000 	.word	0x400f4000

1a001df0 <SysTick_Handler>:
1a001df0:	b480      	push	{r7}
1a001df2:	af00      	add	r7, sp, #0
1a001df4:	4b03      	ldr	r3, [pc, #12]	; (1a001e04 <SysTick_Handler+0x14>)
1a001df6:	2201      	movs	r2, #1
1a001df8:	701a      	strb	r2, [r3, #0]
1a001dfa:	bf00      	nop
1a001dfc:	46bd      	mov	sp, r7
1a001dfe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e02:	4770      	bx	lr
1a001e04:	10000041 	.word	0x10000041

1a001e08 <getSysTickEv>:
1a001e08:	b480      	push	{r7}
1a001e0a:	af00      	add	r7, sp, #0
1a001e0c:	4b03      	ldr	r3, [pc, #12]	; (1a001e1c <getSysTickEv+0x14>)
1a001e0e:	781b      	ldrb	r3, [r3, #0]
1a001e10:	4618      	mov	r0, r3
1a001e12:	46bd      	mov	sp, r7
1a001e14:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e18:	4770      	bx	lr
1a001e1a:	bf00      	nop
1a001e1c:	10000041 	.word	0x10000041

1a001e20 <rstSysTickEv>:
1a001e20:	b480      	push	{r7}
1a001e22:	af00      	add	r7, sp, #0
1a001e24:	4b03      	ldr	r3, [pc, #12]	; (1a001e34 <rstSysTickEv+0x14>)
1a001e26:	2200      	movs	r2, #0
1a001e28:	701a      	strb	r2, [r3, #0]
1a001e2a:	bf00      	nop
1a001e2c:	46bd      	mov	sp, r7
1a001e2e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e32:	4770      	bx	lr
1a001e34:	10000041 	.word	0x10000041

1a001e38 <GPIO0_IRQHandler>:
1a001e38:	b580      	push	{r7, lr}
1a001e3a:	af00      	add	r7, sp, #0
1a001e3c:	4b06      	ldr	r3, [pc, #24]	; (1a001e58 <GPIO0_IRQHandler+0x20>)
1a001e3e:	2201      	movs	r2, #1
1a001e40:	701a      	strb	r2, [r3, #0]
1a001e42:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a001e46:	f7ff fdeb 	bl	1a001a20 <StopWatch_DelayMs>
1a001e4a:	2101      	movs	r1, #1
1a001e4c:	4803      	ldr	r0, [pc, #12]	; (1a001e5c <GPIO0_IRQHandler+0x24>)
1a001e4e:	f7ff fd92 	bl	1a001976 <Chip_PININT_ClearIntStatus>
1a001e52:	bf00      	nop
1a001e54:	bd80      	pop	{r7, pc}
1a001e56:	bf00      	nop
1a001e58:	10000040 	.word	0x10000040
1a001e5c:	40087000 	.word	0x40087000

1a001e60 <GPIO1_IRQHandler>:
1a001e60:	b580      	push	{r7, lr}
1a001e62:	af00      	add	r7, sp, #0
1a001e64:	4b06      	ldr	r3, [pc, #24]	; (1a001e80 <GPIO1_IRQHandler+0x20>)
1a001e66:	2202      	movs	r2, #2
1a001e68:	701a      	strb	r2, [r3, #0]
1a001e6a:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a001e6e:	f7ff fdd7 	bl	1a001a20 <StopWatch_DelayMs>
1a001e72:	2102      	movs	r1, #2
1a001e74:	4803      	ldr	r0, [pc, #12]	; (1a001e84 <GPIO1_IRQHandler+0x24>)
1a001e76:	f7ff fd7e 	bl	1a001976 <Chip_PININT_ClearIntStatus>
1a001e7a:	bf00      	nop
1a001e7c:	bd80      	pop	{r7, pc}
1a001e7e:	bf00      	nop
1a001e80:	10000040 	.word	0x10000040
1a001e84:	40087000 	.word	0x40087000

1a001e88 <GPIO2_IRQHandler>:
1a001e88:	b580      	push	{r7, lr}
1a001e8a:	af00      	add	r7, sp, #0
1a001e8c:	4b06      	ldr	r3, [pc, #24]	; (1a001ea8 <GPIO2_IRQHandler+0x20>)
1a001e8e:	2203      	movs	r2, #3
1a001e90:	701a      	strb	r2, [r3, #0]
1a001e92:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a001e96:	f7ff fdc3 	bl	1a001a20 <StopWatch_DelayMs>
1a001e9a:	2104      	movs	r1, #4
1a001e9c:	4803      	ldr	r0, [pc, #12]	; (1a001eac <GPIO2_IRQHandler+0x24>)
1a001e9e:	f7ff fd6a 	bl	1a001976 <Chip_PININT_ClearIntStatus>
1a001ea2:	bf00      	nop
1a001ea4:	bd80      	pop	{r7, pc}
1a001ea6:	bf00      	nop
1a001ea8:	10000040 	.word	0x10000040
1a001eac:	40087000 	.word	0x40087000

1a001eb0 <GPIO3_IRQHandler>:
1a001eb0:	b580      	push	{r7, lr}
1a001eb2:	af00      	add	r7, sp, #0
1a001eb4:	4b06      	ldr	r3, [pc, #24]	; (1a001ed0 <GPIO3_IRQHandler+0x20>)
1a001eb6:	2204      	movs	r2, #4
1a001eb8:	701a      	strb	r2, [r3, #0]
1a001eba:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a001ebe:	f7ff fdaf 	bl	1a001a20 <StopWatch_DelayMs>
1a001ec2:	2108      	movs	r1, #8
1a001ec4:	4803      	ldr	r0, [pc, #12]	; (1a001ed4 <GPIO3_IRQHandler+0x24>)
1a001ec6:	f7ff fd56 	bl	1a001976 <Chip_PININT_ClearIntStatus>
1a001eca:	bf00      	nop
1a001ecc:	bd80      	pop	{r7, pc}
1a001ece:	bf00      	nop
1a001ed0:	10000040 	.word	0x10000040
1a001ed4:	40087000 	.word	0x40087000

1a001ed8 <rstKeyPressed>:
1a001ed8:	b480      	push	{r7}
1a001eda:	af00      	add	r7, sp, #0
1a001edc:	4b03      	ldr	r3, [pc, #12]	; (1a001eec <rstKeyPressed+0x14>)
1a001ede:	2200      	movs	r2, #0
1a001ee0:	701a      	strb	r2, [r3, #0]
1a001ee2:	bf00      	nop
1a001ee4:	46bd      	mov	sp, r7
1a001ee6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eea:	4770      	bx	lr
1a001eec:	10000040 	.word	0x10000040

1a001ef0 <fpuInit>:
1a001ef0:	b480      	push	{r7}
1a001ef2:	b089      	sub	sp, #36	; 0x24
1a001ef4:	af00      	add	r7, sp, #0
1a001ef6:	4b16      	ldr	r3, [pc, #88]	; (1a001f50 <fpuInit+0x60>)
1a001ef8:	61fb      	str	r3, [r7, #28]
1a001efa:	4b16      	ldr	r3, [pc, #88]	; (1a001f54 <fpuInit+0x64>)
1a001efc:	61bb      	str	r3, [r7, #24]
1a001efe:	4b16      	ldr	r3, [pc, #88]	; (1a001f58 <fpuInit+0x68>)
1a001f00:	617b      	str	r3, [r7, #20]
1a001f02:	2300      	movs	r3, #0
1a001f04:	74fb      	strb	r3, [r7, #19]
1a001f06:	69bb      	ldr	r3, [r7, #24]
1a001f08:	681b      	ldr	r3, [r3, #0]
1a001f0a:	60bb      	str	r3, [r7, #8]
1a001f0c:	697b      	ldr	r3, [r7, #20]
1a001f0e:	681b      	ldr	r3, [r3, #0]
1a001f10:	607b      	str	r3, [r7, #4]
1a001f12:	68bb      	ldr	r3, [r7, #8]
1a001f14:	4a11      	ldr	r2, [pc, #68]	; (1a001f5c <fpuInit+0x6c>)
1a001f16:	4293      	cmp	r3, r2
1a001f18:	d105      	bne.n	1a001f26 <fpuInit+0x36>
1a001f1a:	687b      	ldr	r3, [r7, #4]
1a001f1c:	4a10      	ldr	r2, [pc, #64]	; (1a001f60 <fpuInit+0x70>)
1a001f1e:	4293      	cmp	r3, r2
1a001f20:	d101      	bne.n	1a001f26 <fpuInit+0x36>
1a001f22:	2301      	movs	r3, #1
1a001f24:	e000      	b.n	1a001f28 <fpuInit+0x38>
1a001f26:	2300      	movs	r3, #0
1a001f28:	74fb      	strb	r3, [r7, #19]
1a001f2a:	7cfb      	ldrb	r3, [r7, #19]
1a001f2c:	2b00      	cmp	r3, #0
1a001f2e:	d009      	beq.n	1a001f44 <fpuInit+0x54>
1a001f30:	69fb      	ldr	r3, [r7, #28]
1a001f32:	681b      	ldr	r3, [r3, #0]
1a001f34:	60fb      	str	r3, [r7, #12]
1a001f36:	68fb      	ldr	r3, [r7, #12]
1a001f38:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a001f3c:	60fb      	str	r3, [r7, #12]
1a001f3e:	68fa      	ldr	r2, [r7, #12]
1a001f40:	69fb      	ldr	r3, [r7, #28]
1a001f42:	601a      	str	r2, [r3, #0]
1a001f44:	bf00      	nop
1a001f46:	3724      	adds	r7, #36	; 0x24
1a001f48:	46bd      	mov	sp, r7
1a001f4a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f4e:	4770      	bx	lr
1a001f50:	e000ed88 	.word	0xe000ed88
1a001f54:	e000ef40 	.word	0xe000ef40
1a001f58:	e000ef44 	.word	0xe000ef44
1a001f5c:	10110021 	.word	0x10110021
1a001f60:	11000011 	.word	0x11000011

1a001f64 <Chip_Clock_DisableMainPLL>:
1a001f64:	b480      	push	{r7}
1a001f66:	af00      	add	r7, sp, #0
1a001f68:	4b05      	ldr	r3, [pc, #20]	; (1a001f80 <Chip_Clock_DisableMainPLL+0x1c>)
1a001f6a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001f6c:	4a04      	ldr	r2, [pc, #16]	; (1a001f80 <Chip_Clock_DisableMainPLL+0x1c>)
1a001f6e:	f043 0301 	orr.w	r3, r3, #1
1a001f72:	6453      	str	r3, [r2, #68]	; 0x44
1a001f74:	bf00      	nop
1a001f76:	46bd      	mov	sp, r7
1a001f78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f7c:	4770      	bx	lr
1a001f7e:	bf00      	nop
1a001f80:	40050000 	.word	0x40050000

1a001f84 <Chip_Clock_SetupMainPLL>:
1a001f84:	b480      	push	{r7}
1a001f86:	b083      	sub	sp, #12
1a001f88:	af00      	add	r7, sp, #0
1a001f8a:	6078      	str	r0, [r7, #4]
1a001f8c:	687b      	ldr	r3, [r7, #4]
1a001f8e:	681b      	ldr	r3, [r3, #0]
1a001f90:	461a      	mov	r2, r3
1a001f92:	687b      	ldr	r3, [r7, #4]
1a001f94:	791b      	ldrb	r3, [r3, #4]
1a001f96:	061b      	lsls	r3, r3, #24
1a001f98:	4313      	orrs	r3, r2
1a001f9a:	687a      	ldr	r2, [r7, #4]
1a001f9c:	6912      	ldr	r2, [r2, #16]
1a001f9e:	0412      	lsls	r2, r2, #16
1a001fa0:	4313      	orrs	r3, r2
1a001fa2:	687a      	ldr	r2, [r7, #4]
1a001fa4:	6892      	ldr	r2, [r2, #8]
1a001fa6:	0312      	lsls	r2, r2, #12
1a001fa8:	4313      	orrs	r3, r2
1a001faa:	687a      	ldr	r2, [r7, #4]
1a001fac:	68d2      	ldr	r2, [r2, #12]
1a001fae:	0212      	lsls	r2, r2, #8
1a001fb0:	4313      	orrs	r3, r2
1a001fb2:	4a05      	ldr	r2, [pc, #20]	; (1a001fc8 <Chip_Clock_SetupMainPLL+0x44>)
1a001fb4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001fb8:	6453      	str	r3, [r2, #68]	; 0x44
1a001fba:	bf00      	nop
1a001fbc:	370c      	adds	r7, #12
1a001fbe:	46bd      	mov	sp, r7
1a001fc0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fc4:	4770      	bx	lr
1a001fc6:	bf00      	nop
1a001fc8:	40050000 	.word	0x40050000

1a001fcc <Chip_Clock_MainPLLLocked>:
1a001fcc:	b480      	push	{r7}
1a001fce:	af00      	add	r7, sp, #0
1a001fd0:	4b06      	ldr	r3, [pc, #24]	; (1a001fec <Chip_Clock_MainPLLLocked+0x20>)
1a001fd2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001fd4:	f003 0301 	and.w	r3, r3, #1
1a001fd8:	2b00      	cmp	r3, #0
1a001fda:	bf14      	ite	ne
1a001fdc:	2301      	movne	r3, #1
1a001fde:	2300      	moveq	r3, #0
1a001fe0:	b2db      	uxtb	r3, r3
1a001fe2:	4618      	mov	r0, r3
1a001fe4:	46bd      	mov	sp, r7
1a001fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fea:	4770      	bx	lr
1a001fec:	40050000 	.word	0x40050000

1a001ff0 <Chip_SetupCoreClock>:
1a001ff0:	b590      	push	{r4, r7, lr}
1a001ff2:	b08f      	sub	sp, #60	; 0x3c
1a001ff4:	af00      	add	r7, sp, #0
1a001ff6:	4603      	mov	r3, r0
1a001ff8:	6039      	str	r1, [r7, #0]
1a001ffa:	71fb      	strb	r3, [r7, #7]
1a001ffc:	4613      	mov	r3, r2
1a001ffe:	71bb      	strb	r3, [r7, #6]
1a002000:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a002004:	62bb      	str	r3, [r7, #40]	; 0x28
1a002006:	2300      	movs	r3, #0
1a002008:	633b      	str	r3, [r7, #48]	; 0x30
1a00200a:	2300      	movs	r3, #0
1a00200c:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00200e:	79fb      	ldrb	r3, [r7, #7]
1a002010:	2b06      	cmp	r3, #6
1a002012:	d101      	bne.n	1a002018 <Chip_SetupCoreClock+0x28>
1a002014:	f000 fbf2 	bl	1a0027fc <Chip_Clock_EnableCrystal>
1a002018:	79f9      	ldrb	r1, [r7, #7]
1a00201a:	2300      	movs	r3, #0
1a00201c:	2201      	movs	r2, #1
1a00201e:	2004      	movs	r0, #4
1a002020:	f000 fdde 	bl	1a002be0 <Chip_Clock_SetBaseClock>
1a002024:	f7ff ff9e 	bl	1a001f64 <Chip_Clock_DisableMainPLL>
1a002028:	79fb      	ldrb	r3, [r7, #7]
1a00202a:	733b      	strb	r3, [r7, #12]
1a00202c:	f107 0308 	add.w	r3, r7, #8
1a002030:	4619      	mov	r1, r3
1a002032:	6838      	ldr	r0, [r7, #0]
1a002034:	f000 fc1a 	bl	1a00286c <Chip_Clock_CalcMainPLLValue>
1a002038:	683b      	ldr	r3, [r7, #0]
1a00203a:	4a3d      	ldr	r2, [pc, #244]	; (1a002130 <Chip_SetupCoreClock+0x140>)
1a00203c:	4293      	cmp	r3, r2
1a00203e:	d916      	bls.n	1a00206e <Chip_SetupCoreClock+0x7e>
1a002040:	68bb      	ldr	r3, [r7, #8]
1a002042:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a002046:	2b00      	cmp	r3, #0
1a002048:	d000      	beq.n	1a00204c <Chip_SetupCoreClock+0x5c>
1a00204a:	e7fe      	b.n	1a00204a <Chip_SetupCoreClock+0x5a>
1a00204c:	68bb      	ldr	r3, [r7, #8]
1a00204e:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002052:	2b00      	cmp	r3, #0
1a002054:	d006      	beq.n	1a002064 <Chip_SetupCoreClock+0x74>
1a002056:	2301      	movs	r3, #1
1a002058:	633b      	str	r3, [r7, #48]	; 0x30
1a00205a:	68bb      	ldr	r3, [r7, #8]
1a00205c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a002060:	60bb      	str	r3, [r7, #8]
1a002062:	e004      	b.n	1a00206e <Chip_SetupCoreClock+0x7e>
1a002064:	2301      	movs	r3, #1
1a002066:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002068:	697b      	ldr	r3, [r7, #20]
1a00206a:	3301      	adds	r3, #1
1a00206c:	617b      	str	r3, [r7, #20]
1a00206e:	f107 0308 	add.w	r3, r7, #8
1a002072:	4618      	mov	r0, r3
1a002074:	f7ff ff86 	bl	1a001f84 <Chip_Clock_SetupMainPLL>
1a002078:	bf00      	nop
1a00207a:	f7ff ffa7 	bl	1a001fcc <Chip_Clock_MainPLLLocked>
1a00207e:	4603      	mov	r3, r0
1a002080:	2b00      	cmp	r3, #0
1a002082:	d0fa      	beq.n	1a00207a <Chip_SetupCoreClock+0x8a>
1a002084:	2300      	movs	r3, #0
1a002086:	2201      	movs	r2, #1
1a002088:	2109      	movs	r1, #9
1a00208a:	2004      	movs	r0, #4
1a00208c:	f000 fda8 	bl	1a002be0 <Chip_Clock_SetBaseClock>
1a002090:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a002092:	2b00      	cmp	r3, #0
1a002094:	d012      	beq.n	1a0020bc <Chip_SetupCoreClock+0xcc>
1a002096:	f241 7370 	movw	r3, #6000	; 0x1770
1a00209a:	62bb      	str	r3, [r7, #40]	; 0x28
1a00209c:	bf00      	nop
1a00209e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0020a0:	1e5a      	subs	r2, r3, #1
1a0020a2:	62ba      	str	r2, [r7, #40]	; 0x28
1a0020a4:	2b00      	cmp	r3, #0
1a0020a6:	d1fa      	bne.n	1a00209e <Chip_SetupCoreClock+0xae>
1a0020a8:	68bb      	ldr	r3, [r7, #8]
1a0020aa:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0020ae:	60bb      	str	r3, [r7, #8]
1a0020b0:	f107 0308 	add.w	r3, r7, #8
1a0020b4:	4618      	mov	r0, r3
1a0020b6:	f7ff ff65 	bl	1a001f84 <Chip_Clock_SetupMainPLL>
1a0020ba:	e013      	b.n	1a0020e4 <Chip_SetupCoreClock+0xf4>
1a0020bc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020be:	2b00      	cmp	r3, #0
1a0020c0:	d010      	beq.n	1a0020e4 <Chip_SetupCoreClock+0xf4>
1a0020c2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0020c6:	62bb      	str	r3, [r7, #40]	; 0x28
1a0020c8:	bf00      	nop
1a0020ca:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0020cc:	1e5a      	subs	r2, r3, #1
1a0020ce:	62ba      	str	r2, [r7, #40]	; 0x28
1a0020d0:	2b00      	cmp	r3, #0
1a0020d2:	d1fa      	bne.n	1a0020ca <Chip_SetupCoreClock+0xda>
1a0020d4:	697b      	ldr	r3, [r7, #20]
1a0020d6:	3b01      	subs	r3, #1
1a0020d8:	617b      	str	r3, [r7, #20]
1a0020da:	f107 0308 	add.w	r3, r7, #8
1a0020de:	4618      	mov	r0, r3
1a0020e0:	f7ff ff50 	bl	1a001f84 <Chip_Clock_SetupMainPLL>
1a0020e4:	79bb      	ldrb	r3, [r7, #6]
1a0020e6:	2b00      	cmp	r3, #0
1a0020e8:	d01e      	beq.n	1a002128 <Chip_SetupCoreClock+0x138>
1a0020ea:	2300      	movs	r3, #0
1a0020ec:	637b      	str	r3, [r7, #52]	; 0x34
1a0020ee:	e018      	b.n	1a002122 <Chip_SetupCoreClock+0x132>
1a0020f0:	4a10      	ldr	r2, [pc, #64]	; (1a002134 <Chip_SetupCoreClock+0x144>)
1a0020f2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0020f4:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a0020f8:	4a0e      	ldr	r2, [pc, #56]	; (1a002134 <Chip_SetupCoreClock+0x144>)
1a0020fa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0020fc:	009b      	lsls	r3, r3, #2
1a0020fe:	4413      	add	r3, r2
1a002100:	7859      	ldrb	r1, [r3, #1]
1a002102:	4a0c      	ldr	r2, [pc, #48]	; (1a002134 <Chip_SetupCoreClock+0x144>)
1a002104:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002106:	009b      	lsls	r3, r3, #2
1a002108:	4413      	add	r3, r2
1a00210a:	789c      	ldrb	r4, [r3, #2]
1a00210c:	4a09      	ldr	r2, [pc, #36]	; (1a002134 <Chip_SetupCoreClock+0x144>)
1a00210e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002110:	009b      	lsls	r3, r3, #2
1a002112:	4413      	add	r3, r2
1a002114:	78db      	ldrb	r3, [r3, #3]
1a002116:	4622      	mov	r2, r4
1a002118:	f000 fd62 	bl	1a002be0 <Chip_Clock_SetBaseClock>
1a00211c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00211e:	3301      	adds	r3, #1
1a002120:	637b      	str	r3, [r7, #52]	; 0x34
1a002122:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002124:	2b11      	cmp	r3, #17
1a002126:	d9e3      	bls.n	1a0020f0 <Chip_SetupCoreClock+0x100>
1a002128:	bf00      	nop
1a00212a:	373c      	adds	r7, #60	; 0x3c
1a00212c:	46bd      	mov	sp, r7
1a00212e:	bd90      	pop	{r4, r7, pc}
1a002130:	068e7780 	.word	0x068e7780
1a002134:	1a002f0c 	.word	0x1a002f0c

1a002138 <Chip_SetupXtalClocking>:
1a002138:	b580      	push	{r7, lr}
1a00213a:	af00      	add	r7, sp, #0
1a00213c:	2201      	movs	r2, #1
1a00213e:	4903      	ldr	r1, [pc, #12]	; (1a00214c <Chip_SetupXtalClocking+0x14>)
1a002140:	2006      	movs	r0, #6
1a002142:	f7ff ff55 	bl	1a001ff0 <Chip_SetupCoreClock>
1a002146:	bf00      	nop
1a002148:	bd80      	pop	{r7, pc}
1a00214a:	bf00      	nop
1a00214c:	0c28cb00 	.word	0x0c28cb00

1a002150 <Chip_UART_TXDisable>:
1a002150:	b480      	push	{r7}
1a002152:	b083      	sub	sp, #12
1a002154:	af00      	add	r7, sp, #0
1a002156:	6078      	str	r0, [r7, #4]
1a002158:	687b      	ldr	r3, [r7, #4]
1a00215a:	2200      	movs	r2, #0
1a00215c:	65da      	str	r2, [r3, #92]	; 0x5c
1a00215e:	bf00      	nop
1a002160:	370c      	adds	r7, #12
1a002162:	46bd      	mov	sp, r7
1a002164:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002168:	4770      	bx	lr

1a00216a <Chip_UART_SetupFIFOS>:
1a00216a:	b480      	push	{r7}
1a00216c:	b083      	sub	sp, #12
1a00216e:	af00      	add	r7, sp, #0
1a002170:	6078      	str	r0, [r7, #4]
1a002172:	6039      	str	r1, [r7, #0]
1a002174:	687b      	ldr	r3, [r7, #4]
1a002176:	683a      	ldr	r2, [r7, #0]
1a002178:	609a      	str	r2, [r3, #8]
1a00217a:	bf00      	nop
1a00217c:	370c      	adds	r7, #12
1a00217e:	46bd      	mov	sp, r7
1a002180:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002184:	4770      	bx	lr

1a002186 <Chip_UART_ConfigData>:
1a002186:	b480      	push	{r7}
1a002188:	b083      	sub	sp, #12
1a00218a:	af00      	add	r7, sp, #0
1a00218c:	6078      	str	r0, [r7, #4]
1a00218e:	6039      	str	r1, [r7, #0]
1a002190:	687b      	ldr	r3, [r7, #4]
1a002192:	683a      	ldr	r2, [r7, #0]
1a002194:	60da      	str	r2, [r3, #12]
1a002196:	bf00      	nop
1a002198:	370c      	adds	r7, #12
1a00219a:	46bd      	mov	sp, r7
1a00219c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021a0:	4770      	bx	lr

1a0021a2 <Chip_UART_EnableDivisorAccess>:
1a0021a2:	b480      	push	{r7}
1a0021a4:	b083      	sub	sp, #12
1a0021a6:	af00      	add	r7, sp, #0
1a0021a8:	6078      	str	r0, [r7, #4]
1a0021aa:	687b      	ldr	r3, [r7, #4]
1a0021ac:	68db      	ldr	r3, [r3, #12]
1a0021ae:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a0021b2:	687b      	ldr	r3, [r7, #4]
1a0021b4:	60da      	str	r2, [r3, #12]
1a0021b6:	bf00      	nop
1a0021b8:	370c      	adds	r7, #12
1a0021ba:	46bd      	mov	sp, r7
1a0021bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021c0:	4770      	bx	lr

1a0021c2 <Chip_UART_DisableDivisorAccess>:
1a0021c2:	b480      	push	{r7}
1a0021c4:	b083      	sub	sp, #12
1a0021c6:	af00      	add	r7, sp, #0
1a0021c8:	6078      	str	r0, [r7, #4]
1a0021ca:	687b      	ldr	r3, [r7, #4]
1a0021cc:	68db      	ldr	r3, [r3, #12]
1a0021ce:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0021d2:	687b      	ldr	r3, [r7, #4]
1a0021d4:	60da      	str	r2, [r3, #12]
1a0021d6:	bf00      	nop
1a0021d8:	370c      	adds	r7, #12
1a0021da:	46bd      	mov	sp, r7
1a0021dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021e0:	4770      	bx	lr

1a0021e2 <Chip_UART_SetDivisorLatches>:
1a0021e2:	b480      	push	{r7}
1a0021e4:	b083      	sub	sp, #12
1a0021e6:	af00      	add	r7, sp, #0
1a0021e8:	6078      	str	r0, [r7, #4]
1a0021ea:	460b      	mov	r3, r1
1a0021ec:	70fb      	strb	r3, [r7, #3]
1a0021ee:	4613      	mov	r3, r2
1a0021f0:	70bb      	strb	r3, [r7, #2]
1a0021f2:	78fa      	ldrb	r2, [r7, #3]
1a0021f4:	687b      	ldr	r3, [r7, #4]
1a0021f6:	601a      	str	r2, [r3, #0]
1a0021f8:	78ba      	ldrb	r2, [r7, #2]
1a0021fa:	687b      	ldr	r3, [r7, #4]
1a0021fc:	605a      	str	r2, [r3, #4]
1a0021fe:	bf00      	nop
1a002200:	370c      	adds	r7, #12
1a002202:	46bd      	mov	sp, r7
1a002204:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002208:	4770      	bx	lr
1a00220a:	Address 0x000000001a00220a is out of bounds.


1a00220c <Chip_UART_GetIndex>:
1a00220c:	b480      	push	{r7}
1a00220e:	b085      	sub	sp, #20
1a002210:	af00      	add	r7, sp, #0
1a002212:	6078      	str	r0, [r7, #4]
1a002214:	687b      	ldr	r3, [r7, #4]
1a002216:	60fb      	str	r3, [r7, #12]
1a002218:	68fb      	ldr	r3, [r7, #12]
1a00221a:	4a10      	ldr	r2, [pc, #64]	; (1a00225c <Chip_UART_GetIndex+0x50>)
1a00221c:	4293      	cmp	r3, r2
1a00221e:	d00f      	beq.n	1a002240 <Chip_UART_GetIndex+0x34>
1a002220:	4a0e      	ldr	r2, [pc, #56]	; (1a00225c <Chip_UART_GetIndex+0x50>)
1a002222:	4293      	cmp	r3, r2
1a002224:	d803      	bhi.n	1a00222e <Chip_UART_GetIndex+0x22>
1a002226:	4a0e      	ldr	r2, [pc, #56]	; (1a002260 <Chip_UART_GetIndex+0x54>)
1a002228:	4293      	cmp	r3, r2
1a00222a:	d007      	beq.n	1a00223c <Chip_UART_GetIndex+0x30>
1a00222c:	e00e      	b.n	1a00224c <Chip_UART_GetIndex+0x40>
1a00222e:	4a0d      	ldr	r2, [pc, #52]	; (1a002264 <Chip_UART_GetIndex+0x58>)
1a002230:	4293      	cmp	r3, r2
1a002232:	d007      	beq.n	1a002244 <Chip_UART_GetIndex+0x38>
1a002234:	4a0c      	ldr	r2, [pc, #48]	; (1a002268 <Chip_UART_GetIndex+0x5c>)
1a002236:	4293      	cmp	r3, r2
1a002238:	d006      	beq.n	1a002248 <Chip_UART_GetIndex+0x3c>
1a00223a:	e007      	b.n	1a00224c <Chip_UART_GetIndex+0x40>
1a00223c:	2300      	movs	r3, #0
1a00223e:	e006      	b.n	1a00224e <Chip_UART_GetIndex+0x42>
1a002240:	2301      	movs	r3, #1
1a002242:	e004      	b.n	1a00224e <Chip_UART_GetIndex+0x42>
1a002244:	2302      	movs	r3, #2
1a002246:	e002      	b.n	1a00224e <Chip_UART_GetIndex+0x42>
1a002248:	2303      	movs	r3, #3
1a00224a:	e000      	b.n	1a00224e <Chip_UART_GetIndex+0x42>
1a00224c:	2300      	movs	r3, #0
1a00224e:	4618      	mov	r0, r3
1a002250:	3714      	adds	r7, #20
1a002252:	46bd      	mov	sp, r7
1a002254:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002258:	4770      	bx	lr
1a00225a:	bf00      	nop
1a00225c:	40082000 	.word	0x40082000
1a002260:	40081000 	.word	0x40081000
1a002264:	400c1000 	.word	0x400c1000
1a002268:	400c2000 	.word	0x400c2000

1a00226c <Chip_UART_Init>:
1a00226c:	b580      	push	{r7, lr}
1a00226e:	b084      	sub	sp, #16
1a002270:	af00      	add	r7, sp, #0
1a002272:	6078      	str	r0, [r7, #4]
1a002274:	68fb      	ldr	r3, [r7, #12]
1a002276:	6878      	ldr	r0, [r7, #4]
1a002278:	f7ff ffc8 	bl	1a00220c <Chip_UART_GetIndex>
1a00227c:	4602      	mov	r2, r0
1a00227e:	4b1b      	ldr	r3, [pc, #108]	; (1a0022ec <Chip_UART_Init+0x80>)
1a002280:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a002284:	2301      	movs	r3, #1
1a002286:	2201      	movs	r2, #1
1a002288:	2101      	movs	r1, #1
1a00228a:	f000 fd1d 	bl	1a002cc8 <Chip_Clock_EnableOpts>
1a00228e:	2107      	movs	r1, #7
1a002290:	6878      	ldr	r0, [r7, #4]
1a002292:	f7ff ff6a 	bl	1a00216a <Chip_UART_SetupFIFOS>
1a002296:	6878      	ldr	r0, [r7, #4]
1a002298:	f7ff ff5a 	bl	1a002150 <Chip_UART_TXDisable>
1a00229c:	687b      	ldr	r3, [r7, #4]
1a00229e:	2200      	movs	r2, #0
1a0022a0:	605a      	str	r2, [r3, #4]
1a0022a2:	687b      	ldr	r3, [r7, #4]
1a0022a4:	2200      	movs	r2, #0
1a0022a6:	60da      	str	r2, [r3, #12]
1a0022a8:	687b      	ldr	r3, [r7, #4]
1a0022aa:	2200      	movs	r2, #0
1a0022ac:	621a      	str	r2, [r3, #32]
1a0022ae:	687b      	ldr	r3, [r7, #4]
1a0022b0:	2200      	movs	r2, #0
1a0022b2:	64da      	str	r2, [r3, #76]	; 0x4c
1a0022b4:	687b      	ldr	r3, [r7, #4]
1a0022b6:	2200      	movs	r2, #0
1a0022b8:	655a      	str	r2, [r3, #84]	; 0x54
1a0022ba:	687b      	ldr	r3, [r7, #4]
1a0022bc:	2200      	movs	r2, #0
1a0022be:	651a      	str	r2, [r3, #80]	; 0x50
1a0022c0:	687b      	ldr	r3, [r7, #4]
1a0022c2:	4a0b      	ldr	r2, [pc, #44]	; (1a0022f0 <Chip_UART_Init+0x84>)
1a0022c4:	4293      	cmp	r3, r2
1a0022c6:	d105      	bne.n	1a0022d4 <Chip_UART_Init+0x68>
1a0022c8:	687b      	ldr	r3, [r7, #4]
1a0022ca:	2200      	movs	r2, #0
1a0022cc:	611a      	str	r2, [r3, #16]
1a0022ce:	687b      	ldr	r3, [r7, #4]
1a0022d0:	699b      	ldr	r3, [r3, #24]
1a0022d2:	60fb      	str	r3, [r7, #12]
1a0022d4:	2103      	movs	r1, #3
1a0022d6:	6878      	ldr	r0, [r7, #4]
1a0022d8:	f7ff ff55 	bl	1a002186 <Chip_UART_ConfigData>
1a0022dc:	687b      	ldr	r3, [r7, #4]
1a0022de:	2210      	movs	r2, #16
1a0022e0:	629a      	str	r2, [r3, #40]	; 0x28
1a0022e2:	bf00      	nop
1a0022e4:	3710      	adds	r7, #16
1a0022e6:	46bd      	mov	sp, r7
1a0022e8:	bd80      	pop	{r7, pc}
1a0022ea:	bf00      	nop
1a0022ec:	1a002f54 	.word	0x1a002f54
1a0022f0:	40082000 	.word	0x40082000

1a0022f4 <Chip_UART_SetBaud>:
1a0022f4:	b580      	push	{r7, lr}
1a0022f6:	b086      	sub	sp, #24
1a0022f8:	af00      	add	r7, sp, #0
1a0022fa:	6078      	str	r0, [r7, #4]
1a0022fc:	6039      	str	r1, [r7, #0]
1a0022fe:	6878      	ldr	r0, [r7, #4]
1a002300:	f7ff ff84 	bl	1a00220c <Chip_UART_GetIndex>
1a002304:	4602      	mov	r2, r0
1a002306:	4b16      	ldr	r3, [pc, #88]	; (1a002360 <Chip_UART_SetBaud+0x6c>)
1a002308:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a00230c:	4618      	mov	r0, r3
1a00230e:	f000 fd49 	bl	1a002da4 <Chip_Clock_GetRate>
1a002312:	6178      	str	r0, [r7, #20]
1a002314:	683b      	ldr	r3, [r7, #0]
1a002316:	011b      	lsls	r3, r3, #4
1a002318:	697a      	ldr	r2, [r7, #20]
1a00231a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00231e:	613b      	str	r3, [r7, #16]
1a002320:	693b      	ldr	r3, [r7, #16]
1a002322:	0a1b      	lsrs	r3, r3, #8
1a002324:	60fb      	str	r3, [r7, #12]
1a002326:	68fb      	ldr	r3, [r7, #12]
1a002328:	021b      	lsls	r3, r3, #8
1a00232a:	693a      	ldr	r2, [r7, #16]
1a00232c:	1ad3      	subs	r3, r2, r3
1a00232e:	60bb      	str	r3, [r7, #8]
1a002330:	6878      	ldr	r0, [r7, #4]
1a002332:	f7ff ff36 	bl	1a0021a2 <Chip_UART_EnableDivisorAccess>
1a002336:	68bb      	ldr	r3, [r7, #8]
1a002338:	b2db      	uxtb	r3, r3
1a00233a:	68fa      	ldr	r2, [r7, #12]
1a00233c:	b2d2      	uxtb	r2, r2
1a00233e:	4619      	mov	r1, r3
1a002340:	6878      	ldr	r0, [r7, #4]
1a002342:	f7ff ff4e 	bl	1a0021e2 <Chip_UART_SetDivisorLatches>
1a002346:	6878      	ldr	r0, [r7, #4]
1a002348:	f7ff ff3b 	bl	1a0021c2 <Chip_UART_DisableDivisorAccess>
1a00234c:	697a      	ldr	r2, [r7, #20]
1a00234e:	693b      	ldr	r3, [r7, #16]
1a002350:	fbb2 f3f3 	udiv	r3, r2, r3
1a002354:	091b      	lsrs	r3, r3, #4
1a002356:	4618      	mov	r0, r3
1a002358:	3718      	adds	r7, #24
1a00235a:	46bd      	mov	sp, r7
1a00235c:	bd80      	pop	{r7, pc}
1a00235e:	bf00      	nop
1a002360:	1a002f5c 	.word	0x1a002f5c

1a002364 <Chip_TIMER_Enable>:
1a002364:	b480      	push	{r7}
1a002366:	b083      	sub	sp, #12
1a002368:	af00      	add	r7, sp, #0
1a00236a:	6078      	str	r0, [r7, #4]
1a00236c:	687b      	ldr	r3, [r7, #4]
1a00236e:	685b      	ldr	r3, [r3, #4]
1a002370:	f043 0201 	orr.w	r2, r3, #1
1a002374:	687b      	ldr	r3, [r7, #4]
1a002376:	605a      	str	r2, [r3, #4]
1a002378:	bf00      	nop
1a00237a:	370c      	adds	r7, #12
1a00237c:	46bd      	mov	sp, r7
1a00237e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002382:	4770      	bx	lr

1a002384 <Chip_TIMER_ReadCount>:
1a002384:	b480      	push	{r7}
1a002386:	b083      	sub	sp, #12
1a002388:	af00      	add	r7, sp, #0
1a00238a:	6078      	str	r0, [r7, #4]
1a00238c:	687b      	ldr	r3, [r7, #4]
1a00238e:	689b      	ldr	r3, [r3, #8]
1a002390:	4618      	mov	r0, r3
1a002392:	370c      	adds	r7, #12
1a002394:	46bd      	mov	sp, r7
1a002396:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00239a:	4770      	bx	lr

1a00239c <Chip_TIMER_PrescaleSet>:
1a00239c:	b480      	push	{r7}
1a00239e:	b083      	sub	sp, #12
1a0023a0:	af00      	add	r7, sp, #0
1a0023a2:	6078      	str	r0, [r7, #4]
1a0023a4:	6039      	str	r1, [r7, #0]
1a0023a6:	687b      	ldr	r3, [r7, #4]
1a0023a8:	683a      	ldr	r2, [r7, #0]
1a0023aa:	60da      	str	r2, [r3, #12]
1a0023ac:	bf00      	nop
1a0023ae:	370c      	adds	r7, #12
1a0023b0:	46bd      	mov	sp, r7
1a0023b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0023b6:	4770      	bx	lr

1a0023b8 <StopWatch_Init>:
1a0023b8:	b580      	push	{r7, lr}
1a0023ba:	b082      	sub	sp, #8
1a0023bc:	af00      	add	r7, sp, #0
1a0023be:	2308      	movs	r3, #8
1a0023c0:	607b      	str	r3, [r7, #4]
1a0023c2:	4814      	ldr	r0, [pc, #80]	; (1a002414 <StopWatch_Init+0x5c>)
1a0023c4:	f000 fd70 	bl	1a002ea8 <Chip_TIMER_Init>
1a0023c8:	687b      	ldr	r3, [r7, #4]
1a0023ca:	3b01      	subs	r3, #1
1a0023cc:	4619      	mov	r1, r3
1a0023ce:	4811      	ldr	r0, [pc, #68]	; (1a002414 <StopWatch_Init+0x5c>)
1a0023d0:	f7ff ffe4 	bl	1a00239c <Chip_TIMER_PrescaleSet>
1a0023d4:	480f      	ldr	r0, [pc, #60]	; (1a002414 <StopWatch_Init+0x5c>)
1a0023d6:	f7ff ffc5 	bl	1a002364 <Chip_TIMER_Enable>
1a0023da:	2084      	movs	r0, #132	; 0x84
1a0023dc:	f000 fce2 	bl	1a002da4 <Chip_Clock_GetRate>
1a0023e0:	4602      	mov	r2, r0
1a0023e2:	687b      	ldr	r3, [r7, #4]
1a0023e4:	fbb2 f3f3 	udiv	r3, r2, r3
1a0023e8:	4a0b      	ldr	r2, [pc, #44]	; (1a002418 <StopWatch_Init+0x60>)
1a0023ea:	6013      	str	r3, [r2, #0]
1a0023ec:	4b0a      	ldr	r3, [pc, #40]	; (1a002418 <StopWatch_Init+0x60>)
1a0023ee:	681b      	ldr	r3, [r3, #0]
1a0023f0:	4a0a      	ldr	r2, [pc, #40]	; (1a00241c <StopWatch_Init+0x64>)
1a0023f2:	fba2 2303 	umull	r2, r3, r2, r3
1a0023f6:	099b      	lsrs	r3, r3, #6
1a0023f8:	4a09      	ldr	r2, [pc, #36]	; (1a002420 <StopWatch_Init+0x68>)
1a0023fa:	6013      	str	r3, [r2, #0]
1a0023fc:	4b06      	ldr	r3, [pc, #24]	; (1a002418 <StopWatch_Init+0x60>)
1a0023fe:	681b      	ldr	r3, [r3, #0]
1a002400:	4a08      	ldr	r2, [pc, #32]	; (1a002424 <StopWatch_Init+0x6c>)
1a002402:	fba2 2303 	umull	r2, r3, r2, r3
1a002406:	0c9b      	lsrs	r3, r3, #18
1a002408:	4a07      	ldr	r2, [pc, #28]	; (1a002428 <StopWatch_Init+0x70>)
1a00240a:	6013      	str	r3, [r2, #0]
1a00240c:	bf00      	nop
1a00240e:	3708      	adds	r7, #8
1a002410:	46bd      	mov	sp, r7
1a002412:	bd80      	pop	{r7, pc}
1a002414:	40084000 	.word	0x40084000
1a002418:	10000044 	.word	0x10000044
1a00241c:	10624dd3 	.word	0x10624dd3
1a002420:	10000048 	.word	0x10000048
1a002424:	431bde83 	.word	0x431bde83
1a002428:	1000004c 	.word	0x1000004c

1a00242c <StopWatch_Start>:
1a00242c:	b580      	push	{r7, lr}
1a00242e:	af00      	add	r7, sp, #0
1a002430:	4802      	ldr	r0, [pc, #8]	; (1a00243c <StopWatch_Start+0x10>)
1a002432:	f7ff ffa7 	bl	1a002384 <Chip_TIMER_ReadCount>
1a002436:	4603      	mov	r3, r0
1a002438:	4618      	mov	r0, r3
1a00243a:	bd80      	pop	{r7, pc}
1a00243c:	40084000 	.word	0x40084000

1a002440 <StopWatch_MsToTicks>:
1a002440:	b480      	push	{r7}
1a002442:	b083      	sub	sp, #12
1a002444:	af00      	add	r7, sp, #0
1a002446:	6078      	str	r0, [r7, #4]
1a002448:	4b05      	ldr	r3, [pc, #20]	; (1a002460 <StopWatch_MsToTicks+0x20>)
1a00244a:	681b      	ldr	r3, [r3, #0]
1a00244c:	687a      	ldr	r2, [r7, #4]
1a00244e:	fb02 f303 	mul.w	r3, r2, r3
1a002452:	4618      	mov	r0, r3
1a002454:	370c      	adds	r7, #12
1a002456:	46bd      	mov	sp, r7
1a002458:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00245c:	4770      	bx	lr
1a00245e:	bf00      	nop
1a002460:	10000048 	.word	0x10000048

1a002464 <ABS>:
1a002464:	b480      	push	{r7}
1a002466:	b083      	sub	sp, #12
1a002468:	af00      	add	r7, sp, #0
1a00246a:	6078      	str	r0, [r7, #4]
1a00246c:	687b      	ldr	r3, [r7, #4]
1a00246e:	2b00      	cmp	r3, #0
1a002470:	da02      	bge.n	1a002478 <ABS+0x14>
1a002472:	687b      	ldr	r3, [r7, #4]
1a002474:	425b      	negs	r3, r3
1a002476:	e000      	b.n	1a00247a <ABS+0x16>
1a002478:	687b      	ldr	r3, [r7, #4]
1a00247a:	4618      	mov	r0, r3
1a00247c:	370c      	adds	r7, #12
1a00247e:	46bd      	mov	sp, r7
1a002480:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002484:	4770      	bx	lr
1a002486:	Address 0x000000001a002486 is out of bounds.


1a002488 <pll_calc_divs>:
1a002488:	b580      	push	{r7, lr}
1a00248a:	b088      	sub	sp, #32
1a00248c:	af00      	add	r7, sp, #0
1a00248e:	6078      	str	r0, [r7, #4]
1a002490:	6039      	str	r1, [r7, #0]
1a002492:	687b      	ldr	r3, [r7, #4]
1a002494:	61fb      	str	r3, [r7, #28]
1a002496:	683b      	ldr	r3, [r7, #0]
1a002498:	681b      	ldr	r3, [r3, #0]
1a00249a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00249e:	2b00      	cmp	r3, #0
1a0024a0:	d005      	beq.n	1a0024ae <pll_calc_divs+0x26>
1a0024a2:	683b      	ldr	r3, [r7, #0]
1a0024a4:	681b      	ldr	r3, [r3, #0]
1a0024a6:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0024aa:	683b      	ldr	r3, [r7, #0]
1a0024ac:	601a      	str	r2, [r3, #0]
1a0024ae:	2301      	movs	r3, #1
1a0024b0:	61bb      	str	r3, [r7, #24]
1a0024b2:	e06f      	b.n	1a002594 <pll_calc_divs+0x10c>
1a0024b4:	2300      	movs	r3, #0
1a0024b6:	613b      	str	r3, [r7, #16]
1a0024b8:	e066      	b.n	1a002588 <pll_calc_divs+0x100>
1a0024ba:	2301      	movs	r3, #1
1a0024bc:	617b      	str	r3, [r7, #20]
1a0024be:	e05a      	b.n	1a002576 <pll_calc_divs+0xee>
1a0024c0:	683b      	ldr	r3, [r7, #0]
1a0024c2:	681b      	ldr	r3, [r3, #0]
1a0024c4:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0024c8:	2b00      	cmp	r3, #0
1a0024ca:	d00e      	beq.n	1a0024ea <pll_calc_divs+0x62>
1a0024cc:	693b      	ldr	r3, [r7, #16]
1a0024ce:	3301      	adds	r3, #1
1a0024d0:	697a      	ldr	r2, [r7, #20]
1a0024d2:	fa02 f303 	lsl.w	r3, r2, r3
1a0024d6:	461a      	mov	r2, r3
1a0024d8:	683b      	ldr	r3, [r7, #0]
1a0024da:	695b      	ldr	r3, [r3, #20]
1a0024dc:	fb03 f202 	mul.w	r2, r3, r2
1a0024e0:	69bb      	ldr	r3, [r7, #24]
1a0024e2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0024e6:	60fb      	str	r3, [r7, #12]
1a0024e8:	e008      	b.n	1a0024fc <pll_calc_divs+0x74>
1a0024ea:	683b      	ldr	r3, [r7, #0]
1a0024ec:	695b      	ldr	r3, [r3, #20]
1a0024ee:	697a      	ldr	r2, [r7, #20]
1a0024f0:	fb02 f203 	mul.w	r2, r2, r3
1a0024f4:	69bb      	ldr	r3, [r7, #24]
1a0024f6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0024fa:	60fb      	str	r3, [r7, #12]
1a0024fc:	68fb      	ldr	r3, [r7, #12]
1a0024fe:	4a29      	ldr	r2, [pc, #164]	; (1a0025a4 <pll_calc_divs+0x11c>)
1a002500:	4293      	cmp	r3, r2
1a002502:	d934      	bls.n	1a00256e <pll_calc_divs+0xe6>
1a002504:	68fb      	ldr	r3, [r7, #12]
1a002506:	4a28      	ldr	r2, [pc, #160]	; (1a0025a8 <pll_calc_divs+0x120>)
1a002508:	4293      	cmp	r3, r2
1a00250a:	d839      	bhi.n	1a002580 <pll_calc_divs+0xf8>
1a00250c:	683b      	ldr	r3, [r7, #0]
1a00250e:	681b      	ldr	r3, [r3, #0]
1a002510:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002514:	2b00      	cmp	r3, #0
1a002516:	d002      	beq.n	1a00251e <pll_calc_divs+0x96>
1a002518:	68fb      	ldr	r3, [r7, #12]
1a00251a:	60bb      	str	r3, [r7, #8]
1a00251c:	e005      	b.n	1a00252a <pll_calc_divs+0xa2>
1a00251e:	693b      	ldr	r3, [r7, #16]
1a002520:	3301      	adds	r3, #1
1a002522:	68fa      	ldr	r2, [r7, #12]
1a002524:	fa22 f303 	lsr.w	r3, r2, r3
1a002528:	60bb      	str	r3, [r7, #8]
1a00252a:	687a      	ldr	r2, [r7, #4]
1a00252c:	68bb      	ldr	r3, [r7, #8]
1a00252e:	1ad3      	subs	r3, r2, r3
1a002530:	4618      	mov	r0, r3
1a002532:	f7ff ff97 	bl	1a002464 <ABS>
1a002536:	4602      	mov	r2, r0
1a002538:	69fb      	ldr	r3, [r7, #28]
1a00253a:	4293      	cmp	r3, r2
1a00253c:	d918      	bls.n	1a002570 <pll_calc_divs+0xe8>
1a00253e:	683b      	ldr	r3, [r7, #0]
1a002540:	69ba      	ldr	r2, [r7, #24]
1a002542:	609a      	str	r2, [r3, #8]
1a002544:	693b      	ldr	r3, [r7, #16]
1a002546:	1c5a      	adds	r2, r3, #1
1a002548:	683b      	ldr	r3, [r7, #0]
1a00254a:	60da      	str	r2, [r3, #12]
1a00254c:	683b      	ldr	r3, [r7, #0]
1a00254e:	697a      	ldr	r2, [r7, #20]
1a002550:	611a      	str	r2, [r3, #16]
1a002552:	683b      	ldr	r3, [r7, #0]
1a002554:	68ba      	ldr	r2, [r7, #8]
1a002556:	619a      	str	r2, [r3, #24]
1a002558:	683b      	ldr	r3, [r7, #0]
1a00255a:	68fa      	ldr	r2, [r7, #12]
1a00255c:	61da      	str	r2, [r3, #28]
1a00255e:	687a      	ldr	r2, [r7, #4]
1a002560:	68bb      	ldr	r3, [r7, #8]
1a002562:	1ad3      	subs	r3, r2, r3
1a002564:	4618      	mov	r0, r3
1a002566:	f7ff ff7d 	bl	1a002464 <ABS>
1a00256a:	61f8      	str	r0, [r7, #28]
1a00256c:	e000      	b.n	1a002570 <pll_calc_divs+0xe8>
1a00256e:	bf00      	nop
1a002570:	697b      	ldr	r3, [r7, #20]
1a002572:	3301      	adds	r3, #1
1a002574:	617b      	str	r3, [r7, #20]
1a002576:	697b      	ldr	r3, [r7, #20]
1a002578:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a00257c:	dda0      	ble.n	1a0024c0 <pll_calc_divs+0x38>
1a00257e:	e000      	b.n	1a002582 <pll_calc_divs+0xfa>
1a002580:	bf00      	nop
1a002582:	693b      	ldr	r3, [r7, #16]
1a002584:	3301      	adds	r3, #1
1a002586:	613b      	str	r3, [r7, #16]
1a002588:	693b      	ldr	r3, [r7, #16]
1a00258a:	2b03      	cmp	r3, #3
1a00258c:	dd95      	ble.n	1a0024ba <pll_calc_divs+0x32>
1a00258e:	69bb      	ldr	r3, [r7, #24]
1a002590:	3301      	adds	r3, #1
1a002592:	61bb      	str	r3, [r7, #24]
1a002594:	69bb      	ldr	r3, [r7, #24]
1a002596:	2b04      	cmp	r3, #4
1a002598:	dd8c      	ble.n	1a0024b4 <pll_calc_divs+0x2c>
1a00259a:	bf00      	nop
1a00259c:	3720      	adds	r7, #32
1a00259e:	46bd      	mov	sp, r7
1a0025a0:	bd80      	pop	{r7, pc}
1a0025a2:	bf00      	nop
1a0025a4:	094c5eff 	.word	0x094c5eff
1a0025a8:	1312d000 	.word	0x1312d000

1a0025ac <pll_get_frac>:
1a0025ac:	b5b0      	push	{r4, r5, r7, lr}
1a0025ae:	b09e      	sub	sp, #120	; 0x78
1a0025b0:	af00      	add	r7, sp, #0
1a0025b2:	6078      	str	r0, [r7, #4]
1a0025b4:	6039      	str	r1, [r7, #0]
1a0025b6:	f107 030c 	add.w	r3, r7, #12
1a0025ba:	2260      	movs	r2, #96	; 0x60
1a0025bc:	2100      	movs	r1, #0
1a0025be:	4618      	mov	r0, r3
1a0025c0:	f7fd fe9e 	bl	1a000300 <memset>
1a0025c4:	68fb      	ldr	r3, [r7, #12]
1a0025c6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0025ca:	60fb      	str	r3, [r7, #12]
1a0025cc:	683b      	ldr	r3, [r7, #0]
1a0025ce:	695b      	ldr	r3, [r3, #20]
1a0025d0:	623b      	str	r3, [r7, #32]
1a0025d2:	683b      	ldr	r3, [r7, #0]
1a0025d4:	791b      	ldrb	r3, [r3, #4]
1a0025d6:	743b      	strb	r3, [r7, #16]
1a0025d8:	f107 030c 	add.w	r3, r7, #12
1a0025dc:	4619      	mov	r1, r3
1a0025de:	6878      	ldr	r0, [r7, #4]
1a0025e0:	f7ff ff52 	bl	1a002488 <pll_calc_divs>
1a0025e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0025e6:	687a      	ldr	r2, [r7, #4]
1a0025e8:	429a      	cmp	r2, r3
1a0025ea:	d10a      	bne.n	1a002602 <pll_get_frac+0x56>
1a0025ec:	683b      	ldr	r3, [r7, #0]
1a0025ee:	461d      	mov	r5, r3
1a0025f0:	f107 040c 	add.w	r4, r7, #12
1a0025f4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0025f6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0025f8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0025fc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002600:	e08e      	b.n	1a002720 <pll_get_frac+0x174>
1a002602:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002604:	687a      	ldr	r2, [r7, #4]
1a002606:	1ad3      	subs	r3, r2, r3
1a002608:	4618      	mov	r0, r3
1a00260a:	f7ff ff2b 	bl	1a002464 <ABS>
1a00260e:	4603      	mov	r3, r0
1a002610:	66fb      	str	r3, [r7, #108]	; 0x6c
1a002612:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a002614:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a002618:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00261a:	683b      	ldr	r3, [r7, #0]
1a00261c:	695b      	ldr	r3, [r3, #20]
1a00261e:	663b      	str	r3, [r7, #96]	; 0x60
1a002620:	683b      	ldr	r3, [r7, #0]
1a002622:	791b      	ldrb	r3, [r3, #4]
1a002624:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a002628:	f107 030c 	add.w	r3, r7, #12
1a00262c:	3340      	adds	r3, #64	; 0x40
1a00262e:	4619      	mov	r1, r3
1a002630:	6878      	ldr	r0, [r7, #4]
1a002632:	f7ff ff29 	bl	1a002488 <pll_calc_divs>
1a002636:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002638:	687a      	ldr	r2, [r7, #4]
1a00263a:	429a      	cmp	r2, r3
1a00263c:	d10a      	bne.n	1a002654 <pll_get_frac+0xa8>
1a00263e:	683b      	ldr	r3, [r7, #0]
1a002640:	461d      	mov	r5, r3
1a002642:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002646:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002648:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00264a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00264e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002652:	e065      	b.n	1a002720 <pll_get_frac+0x174>
1a002654:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002656:	687a      	ldr	r2, [r7, #4]
1a002658:	1ad3      	subs	r3, r2, r3
1a00265a:	4618      	mov	r0, r3
1a00265c:	f7ff ff02 	bl	1a002464 <ABS>
1a002660:	4603      	mov	r3, r0
1a002662:	677b      	str	r3, [r7, #116]	; 0x74
1a002664:	687b      	ldr	r3, [r7, #4]
1a002666:	4a30      	ldr	r2, [pc, #192]	; (1a002728 <pll_get_frac+0x17c>)
1a002668:	4293      	cmp	r3, r2
1a00266a:	d81a      	bhi.n	1a0026a2 <pll_get_frac+0xf6>
1a00266c:	2340      	movs	r3, #64	; 0x40
1a00266e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002670:	683b      	ldr	r3, [r7, #0]
1a002672:	695b      	ldr	r3, [r3, #20]
1a002674:	643b      	str	r3, [r7, #64]	; 0x40
1a002676:	f107 030c 	add.w	r3, r7, #12
1a00267a:	3320      	adds	r3, #32
1a00267c:	4619      	mov	r1, r3
1a00267e:	6878      	ldr	r0, [r7, #4]
1a002680:	f7ff ff02 	bl	1a002488 <pll_calc_divs>
1a002684:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002686:	687a      	ldr	r2, [r7, #4]
1a002688:	429a      	cmp	r2, r3
1a00268a:	d10a      	bne.n	1a0026a2 <pll_get_frac+0xf6>
1a00268c:	683b      	ldr	r3, [r7, #0]
1a00268e:	461d      	mov	r5, r3
1a002690:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a002694:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002696:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002698:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00269c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0026a0:	e03e      	b.n	1a002720 <pll_get_frac+0x174>
1a0026a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0026a4:	687a      	ldr	r2, [r7, #4]
1a0026a6:	1ad3      	subs	r3, r2, r3
1a0026a8:	4618      	mov	r0, r3
1a0026aa:	f7ff fedb 	bl	1a002464 <ABS>
1a0026ae:	4603      	mov	r3, r0
1a0026b0:	673b      	str	r3, [r7, #112]	; 0x70
1a0026b2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0026b4:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0026b6:	429a      	cmp	r2, r3
1a0026b8:	dc19      	bgt.n	1a0026ee <pll_get_frac+0x142>
1a0026ba:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0026bc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0026be:	429a      	cmp	r2, r3
1a0026c0:	dc0a      	bgt.n	1a0026d8 <pll_get_frac+0x12c>
1a0026c2:	683b      	ldr	r3, [r7, #0]
1a0026c4:	461d      	mov	r5, r3
1a0026c6:	f107 040c 	add.w	r4, r7, #12
1a0026ca:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0026cc:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0026ce:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0026d2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0026d6:	e023      	b.n	1a002720 <pll_get_frac+0x174>
1a0026d8:	683b      	ldr	r3, [r7, #0]
1a0026da:	461d      	mov	r5, r3
1a0026dc:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0026e0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0026e2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0026e4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0026e8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0026ec:	e018      	b.n	1a002720 <pll_get_frac+0x174>
1a0026ee:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0026f0:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0026f2:	429a      	cmp	r2, r3
1a0026f4:	dc0a      	bgt.n	1a00270c <pll_get_frac+0x160>
1a0026f6:	683b      	ldr	r3, [r7, #0]
1a0026f8:	461d      	mov	r5, r3
1a0026fa:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0026fe:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002700:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002702:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002706:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00270a:	e009      	b.n	1a002720 <pll_get_frac+0x174>
1a00270c:	683b      	ldr	r3, [r7, #0]
1a00270e:	461d      	mov	r5, r3
1a002710:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002714:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002716:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002718:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00271c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002720:	3778      	adds	r7, #120	; 0x78
1a002722:	46bd      	mov	sp, r7
1a002724:	bdb0      	pop	{r4, r5, r7, pc}
1a002726:	bf00      	nop
1a002728:	068e7780 	.word	0x068e7780

1a00272c <Chip_Clock_GetDivRate>:
1a00272c:	b580      	push	{r7, lr}
1a00272e:	b084      	sub	sp, #16
1a002730:	af00      	add	r7, sp, #0
1a002732:	4603      	mov	r3, r0
1a002734:	460a      	mov	r2, r1
1a002736:	71fb      	strb	r3, [r7, #7]
1a002738:	4613      	mov	r3, r2
1a00273a:	71bb      	strb	r3, [r7, #6]
1a00273c:	79bb      	ldrb	r3, [r7, #6]
1a00273e:	4618      	mov	r0, r3
1a002740:	f000 f960 	bl	1a002a04 <Chip_Clock_GetDividerSource>
1a002744:	4603      	mov	r3, r0
1a002746:	73fb      	strb	r3, [r7, #15]
1a002748:	79bb      	ldrb	r3, [r7, #6]
1a00274a:	4618      	mov	r0, r3
1a00274c:	f000 f97a 	bl	1a002a44 <Chip_Clock_GetDividerDivisor>
1a002750:	60b8      	str	r0, [r7, #8]
1a002752:	7bfb      	ldrb	r3, [r7, #15]
1a002754:	4618      	mov	r0, r3
1a002756:	f000 f991 	bl	1a002a7c <Chip_Clock_GetClockInputHz>
1a00275a:	4602      	mov	r2, r0
1a00275c:	68bb      	ldr	r3, [r7, #8]
1a00275e:	3301      	adds	r3, #1
1a002760:	fbb2 f3f3 	udiv	r3, r2, r3
1a002764:	4618      	mov	r0, r3
1a002766:	3710      	adds	r7, #16
1a002768:	46bd      	mov	sp, r7
1a00276a:	bd80      	pop	{r7, pc}

1a00276c <Chip_Clock_FindBaseClock>:
1a00276c:	b480      	push	{r7}
1a00276e:	b085      	sub	sp, #20
1a002770:	af00      	add	r7, sp, #0
1a002772:	4603      	mov	r3, r0
1a002774:	80fb      	strh	r3, [r7, #6]
1a002776:	231c      	movs	r3, #28
1a002778:	73fb      	strb	r3, [r7, #15]
1a00277a:	2300      	movs	r3, #0
1a00277c:	60bb      	str	r3, [r7, #8]
1a00277e:	e024      	b.n	1a0027ca <Chip_Clock_FindBaseClock+0x5e>
1a002780:	491d      	ldr	r1, [pc, #116]	; (1a0027f8 <Chip_Clock_FindBaseClock+0x8c>)
1a002782:	68ba      	ldr	r2, [r7, #8]
1a002784:	4613      	mov	r3, r2
1a002786:	005b      	lsls	r3, r3, #1
1a002788:	4413      	add	r3, r2
1a00278a:	005b      	lsls	r3, r3, #1
1a00278c:	440b      	add	r3, r1
1a00278e:	881b      	ldrh	r3, [r3, #0]
1a002790:	88fa      	ldrh	r2, [r7, #6]
1a002792:	429a      	cmp	r2, r3
1a002794:	d316      	bcc.n	1a0027c4 <Chip_Clock_FindBaseClock+0x58>
1a002796:	4918      	ldr	r1, [pc, #96]	; (1a0027f8 <Chip_Clock_FindBaseClock+0x8c>)
1a002798:	68ba      	ldr	r2, [r7, #8]
1a00279a:	4613      	mov	r3, r2
1a00279c:	005b      	lsls	r3, r3, #1
1a00279e:	4413      	add	r3, r2
1a0027a0:	005b      	lsls	r3, r3, #1
1a0027a2:	440b      	add	r3, r1
1a0027a4:	3302      	adds	r3, #2
1a0027a6:	881b      	ldrh	r3, [r3, #0]
1a0027a8:	88fa      	ldrh	r2, [r7, #6]
1a0027aa:	429a      	cmp	r2, r3
1a0027ac:	d80a      	bhi.n	1a0027c4 <Chip_Clock_FindBaseClock+0x58>
1a0027ae:	4912      	ldr	r1, [pc, #72]	; (1a0027f8 <Chip_Clock_FindBaseClock+0x8c>)
1a0027b0:	68ba      	ldr	r2, [r7, #8]
1a0027b2:	4613      	mov	r3, r2
1a0027b4:	005b      	lsls	r3, r3, #1
1a0027b6:	4413      	add	r3, r2
1a0027b8:	005b      	lsls	r3, r3, #1
1a0027ba:	440b      	add	r3, r1
1a0027bc:	3304      	adds	r3, #4
1a0027be:	781b      	ldrb	r3, [r3, #0]
1a0027c0:	73fb      	strb	r3, [r7, #15]
1a0027c2:	e002      	b.n	1a0027ca <Chip_Clock_FindBaseClock+0x5e>
1a0027c4:	68bb      	ldr	r3, [r7, #8]
1a0027c6:	3301      	adds	r3, #1
1a0027c8:	60bb      	str	r3, [r7, #8]
1a0027ca:	7bfb      	ldrb	r3, [r7, #15]
1a0027cc:	2b1c      	cmp	r3, #28
1a0027ce:	d10b      	bne.n	1a0027e8 <Chip_Clock_FindBaseClock+0x7c>
1a0027d0:	4909      	ldr	r1, [pc, #36]	; (1a0027f8 <Chip_Clock_FindBaseClock+0x8c>)
1a0027d2:	68ba      	ldr	r2, [r7, #8]
1a0027d4:	4613      	mov	r3, r2
1a0027d6:	005b      	lsls	r3, r3, #1
1a0027d8:	4413      	add	r3, r2
1a0027da:	005b      	lsls	r3, r3, #1
1a0027dc:	440b      	add	r3, r1
1a0027de:	3304      	adds	r3, #4
1a0027e0:	781b      	ldrb	r3, [r3, #0]
1a0027e2:	7bfa      	ldrb	r2, [r7, #15]
1a0027e4:	429a      	cmp	r2, r3
1a0027e6:	d1cb      	bne.n	1a002780 <Chip_Clock_FindBaseClock+0x14>
1a0027e8:	7bfb      	ldrb	r3, [r7, #15]
1a0027ea:	4618      	mov	r0, r3
1a0027ec:	3714      	adds	r7, #20
1a0027ee:	46bd      	mov	sp, r7
1a0027f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0027f4:	4770      	bx	lr
1a0027f6:	bf00      	nop
1a0027f8:	1a002f64 	.word	0x1a002f64

1a0027fc <Chip_Clock_EnableCrystal>:
1a0027fc:	b480      	push	{r7}
1a0027fe:	b083      	sub	sp, #12
1a002800:	af00      	add	r7, sp, #0
1a002802:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a002806:	603b      	str	r3, [r7, #0]
1a002808:	4b15      	ldr	r3, [pc, #84]	; (1a002860 <Chip_Clock_EnableCrystal+0x64>)
1a00280a:	699b      	ldr	r3, [r3, #24]
1a00280c:	607b      	str	r3, [r7, #4]
1a00280e:	687b      	ldr	r3, [r7, #4]
1a002810:	f023 0302 	bic.w	r3, r3, #2
1a002814:	607b      	str	r3, [r7, #4]
1a002816:	4b12      	ldr	r3, [pc, #72]	; (1a002860 <Chip_Clock_EnableCrystal+0x64>)
1a002818:	699b      	ldr	r3, [r3, #24]
1a00281a:	687a      	ldr	r2, [r7, #4]
1a00281c:	429a      	cmp	r2, r3
1a00281e:	d002      	beq.n	1a002826 <Chip_Clock_EnableCrystal+0x2a>
1a002820:	4a0f      	ldr	r2, [pc, #60]	; (1a002860 <Chip_Clock_EnableCrystal+0x64>)
1a002822:	687b      	ldr	r3, [r7, #4]
1a002824:	6193      	str	r3, [r2, #24]
1a002826:	687b      	ldr	r3, [r7, #4]
1a002828:	f023 0301 	bic.w	r3, r3, #1
1a00282c:	607b      	str	r3, [r7, #4]
1a00282e:	4b0d      	ldr	r3, [pc, #52]	; (1a002864 <Chip_Clock_EnableCrystal+0x68>)
1a002830:	681b      	ldr	r3, [r3, #0]
1a002832:	4a0d      	ldr	r2, [pc, #52]	; (1a002868 <Chip_Clock_EnableCrystal+0x6c>)
1a002834:	4293      	cmp	r3, r2
1a002836:	d903      	bls.n	1a002840 <Chip_Clock_EnableCrystal+0x44>
1a002838:	687b      	ldr	r3, [r7, #4]
1a00283a:	f043 0304 	orr.w	r3, r3, #4
1a00283e:	607b      	str	r3, [r7, #4]
1a002840:	4a07      	ldr	r2, [pc, #28]	; (1a002860 <Chip_Clock_EnableCrystal+0x64>)
1a002842:	687b      	ldr	r3, [r7, #4]
1a002844:	6193      	str	r3, [r2, #24]
1a002846:	bf00      	nop
1a002848:	683b      	ldr	r3, [r7, #0]
1a00284a:	1e5a      	subs	r2, r3, #1
1a00284c:	603a      	str	r2, [r7, #0]
1a00284e:	2b00      	cmp	r3, #0
1a002850:	d1fa      	bne.n	1a002848 <Chip_Clock_EnableCrystal+0x4c>
1a002852:	bf00      	nop
1a002854:	370c      	adds	r7, #12
1a002856:	46bd      	mov	sp, r7
1a002858:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00285c:	4770      	bx	lr
1a00285e:	bf00      	nop
1a002860:	40050000 	.word	0x40050000
1a002864:	1a002ecc 	.word	0x1a002ecc
1a002868:	01312cff 	.word	0x01312cff

1a00286c <Chip_Clock_CalcMainPLLValue>:
1a00286c:	b580      	push	{r7, lr}
1a00286e:	b082      	sub	sp, #8
1a002870:	af00      	add	r7, sp, #0
1a002872:	6078      	str	r0, [r7, #4]
1a002874:	6039      	str	r1, [r7, #0]
1a002876:	683b      	ldr	r3, [r7, #0]
1a002878:	791b      	ldrb	r3, [r3, #4]
1a00287a:	4618      	mov	r0, r3
1a00287c:	f000 f8fe 	bl	1a002a7c <Chip_Clock_GetClockInputHz>
1a002880:	4602      	mov	r2, r0
1a002882:	683b      	ldr	r3, [r7, #0]
1a002884:	615a      	str	r2, [r3, #20]
1a002886:	687b      	ldr	r3, [r7, #4]
1a002888:	4a2b      	ldr	r2, [pc, #172]	; (1a002938 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00288a:	4293      	cmp	r3, r2
1a00288c:	d807      	bhi.n	1a00289e <Chip_Clock_CalcMainPLLValue+0x32>
1a00288e:	687b      	ldr	r3, [r7, #4]
1a002890:	4a2a      	ldr	r2, [pc, #168]	; (1a00293c <Chip_Clock_CalcMainPLLValue+0xd0>)
1a002892:	4293      	cmp	r3, r2
1a002894:	d903      	bls.n	1a00289e <Chip_Clock_CalcMainPLLValue+0x32>
1a002896:	683b      	ldr	r3, [r7, #0]
1a002898:	695b      	ldr	r3, [r3, #20]
1a00289a:	2b00      	cmp	r3, #0
1a00289c:	d102      	bne.n	1a0028a4 <Chip_Clock_CalcMainPLLValue+0x38>
1a00289e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0028a2:	e044      	b.n	1a00292e <Chip_Clock_CalcMainPLLValue+0xc2>
1a0028a4:	683b      	ldr	r3, [r7, #0]
1a0028a6:	2280      	movs	r2, #128	; 0x80
1a0028a8:	601a      	str	r2, [r3, #0]
1a0028aa:	683b      	ldr	r3, [r7, #0]
1a0028ac:	2200      	movs	r2, #0
1a0028ae:	609a      	str	r2, [r3, #8]
1a0028b0:	683b      	ldr	r3, [r7, #0]
1a0028b2:	2200      	movs	r2, #0
1a0028b4:	60da      	str	r2, [r3, #12]
1a0028b6:	683b      	ldr	r3, [r7, #0]
1a0028b8:	695b      	ldr	r3, [r3, #20]
1a0028ba:	687a      	ldr	r2, [r7, #4]
1a0028bc:	fbb2 f3f3 	udiv	r3, r2, r3
1a0028c0:	461a      	mov	r2, r3
1a0028c2:	683b      	ldr	r3, [r7, #0]
1a0028c4:	611a      	str	r2, [r3, #16]
1a0028c6:	687b      	ldr	r3, [r7, #4]
1a0028c8:	4a1d      	ldr	r2, [pc, #116]	; (1a002940 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0028ca:	4293      	cmp	r3, r2
1a0028cc:	d909      	bls.n	1a0028e2 <Chip_Clock_CalcMainPLLValue+0x76>
1a0028ce:	683b      	ldr	r3, [r7, #0]
1a0028d0:	691b      	ldr	r3, [r3, #16]
1a0028d2:	461a      	mov	r2, r3
1a0028d4:	683b      	ldr	r3, [r7, #0]
1a0028d6:	695b      	ldr	r3, [r3, #20]
1a0028d8:	fb03 f302 	mul.w	r3, r3, r2
1a0028dc:	687a      	ldr	r2, [r7, #4]
1a0028de:	429a      	cmp	r2, r3
1a0028e0:	d00f      	beq.n	1a002902 <Chip_Clock_CalcMainPLLValue+0x96>
1a0028e2:	6839      	ldr	r1, [r7, #0]
1a0028e4:	6878      	ldr	r0, [r7, #4]
1a0028e6:	f7ff fe61 	bl	1a0025ac <pll_get_frac>
1a0028ea:	683b      	ldr	r3, [r7, #0]
1a0028ec:	689b      	ldr	r3, [r3, #8]
1a0028ee:	2b00      	cmp	r3, #0
1a0028f0:	d102      	bne.n	1a0028f8 <Chip_Clock_CalcMainPLLValue+0x8c>
1a0028f2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0028f6:	e01a      	b.n	1a00292e <Chip_Clock_CalcMainPLLValue+0xc2>
1a0028f8:	683b      	ldr	r3, [r7, #0]
1a0028fa:	689b      	ldr	r3, [r3, #8]
1a0028fc:	1e5a      	subs	r2, r3, #1
1a0028fe:	683b      	ldr	r3, [r7, #0]
1a002900:	609a      	str	r2, [r3, #8]
1a002902:	683b      	ldr	r3, [r7, #0]
1a002904:	691b      	ldr	r3, [r3, #16]
1a002906:	2b00      	cmp	r3, #0
1a002908:	d102      	bne.n	1a002910 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00290a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00290e:	e00e      	b.n	1a00292e <Chip_Clock_CalcMainPLLValue+0xc2>
1a002910:	683b      	ldr	r3, [r7, #0]
1a002912:	68db      	ldr	r3, [r3, #12]
1a002914:	2b00      	cmp	r3, #0
1a002916:	d004      	beq.n	1a002922 <Chip_Clock_CalcMainPLLValue+0xb6>
1a002918:	683b      	ldr	r3, [r7, #0]
1a00291a:	68db      	ldr	r3, [r3, #12]
1a00291c:	1e5a      	subs	r2, r3, #1
1a00291e:	683b      	ldr	r3, [r7, #0]
1a002920:	60da      	str	r2, [r3, #12]
1a002922:	683b      	ldr	r3, [r7, #0]
1a002924:	691b      	ldr	r3, [r3, #16]
1a002926:	1e5a      	subs	r2, r3, #1
1a002928:	683b      	ldr	r3, [r7, #0]
1a00292a:	611a      	str	r2, [r3, #16]
1a00292c:	2300      	movs	r3, #0
1a00292e:	4618      	mov	r0, r3
1a002930:	3708      	adds	r7, #8
1a002932:	46bd      	mov	sp, r7
1a002934:	bd80      	pop	{r7, pc}
1a002936:	bf00      	nop
1a002938:	0c28cb00 	.word	0x0c28cb00
1a00293c:	0094c5ef 	.word	0x0094c5ef
1a002940:	094c5eff 	.word	0x094c5eff

1a002944 <Chip_Clock_GetMainPLLHz>:
1a002944:	b580      	push	{r7, lr}
1a002946:	b08c      	sub	sp, #48	; 0x30
1a002948:	af00      	add	r7, sp, #0
1a00294a:	4b2c      	ldr	r3, [pc, #176]	; (1a0029fc <Chip_Clock_GetMainPLLHz+0xb8>)
1a00294c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00294e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002950:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002952:	0e1b      	lsrs	r3, r3, #24
1a002954:	b2db      	uxtb	r3, r3
1a002956:	f003 030f 	and.w	r3, r3, #15
1a00295a:	b2db      	uxtb	r3, r3
1a00295c:	4618      	mov	r0, r3
1a00295e:	f000 f88d 	bl	1a002a7c <Chip_Clock_GetClockInputHz>
1a002962:	62b8      	str	r0, [r7, #40]	; 0x28
1a002964:	4b26      	ldr	r3, [pc, #152]	; (1a002a00 <Chip_Clock_GetMainPLLHz+0xbc>)
1a002966:	681b      	ldr	r3, [r3, #0]
1a002968:	607b      	str	r3, [r7, #4]
1a00296a:	4b24      	ldr	r3, [pc, #144]	; (1a0029fc <Chip_Clock_GetMainPLLHz+0xb8>)
1a00296c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00296e:	f003 0301 	and.w	r3, r3, #1
1a002972:	2b00      	cmp	r3, #0
1a002974:	d101      	bne.n	1a00297a <Chip_Clock_GetMainPLLHz+0x36>
1a002976:	2300      	movs	r3, #0
1a002978:	e03b      	b.n	1a0029f2 <Chip_Clock_GetMainPLLHz+0xae>
1a00297a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00297c:	0c1b      	lsrs	r3, r3, #16
1a00297e:	b2db      	uxtb	r3, r3
1a002980:	627b      	str	r3, [r7, #36]	; 0x24
1a002982:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002984:	0b1b      	lsrs	r3, r3, #12
1a002986:	f003 0303 	and.w	r3, r3, #3
1a00298a:	623b      	str	r3, [r7, #32]
1a00298c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00298e:	0a1b      	lsrs	r3, r3, #8
1a002990:	f003 0303 	and.w	r3, r3, #3
1a002994:	61fb      	str	r3, [r7, #28]
1a002996:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002998:	09db      	lsrs	r3, r3, #7
1a00299a:	f003 0301 	and.w	r3, r3, #1
1a00299e:	61bb      	str	r3, [r7, #24]
1a0029a0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0029a2:	099b      	lsrs	r3, r3, #6
1a0029a4:	f003 0301 	and.w	r3, r3, #1
1a0029a8:	617b      	str	r3, [r7, #20]
1a0029aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0029ac:	3301      	adds	r3, #1
1a0029ae:	613b      	str	r3, [r7, #16]
1a0029b0:	6a3b      	ldr	r3, [r7, #32]
1a0029b2:	3301      	adds	r3, #1
1a0029b4:	60fb      	str	r3, [r7, #12]
1a0029b6:	1d3a      	adds	r2, r7, #4
1a0029b8:	69fb      	ldr	r3, [r7, #28]
1a0029ba:	4413      	add	r3, r2
1a0029bc:	781b      	ldrb	r3, [r3, #0]
1a0029be:	60bb      	str	r3, [r7, #8]
1a0029c0:	69bb      	ldr	r3, [r7, #24]
1a0029c2:	2b00      	cmp	r3, #0
1a0029c4:	d102      	bne.n	1a0029cc <Chip_Clock_GetMainPLLHz+0x88>
1a0029c6:	697b      	ldr	r3, [r7, #20]
1a0029c8:	2b00      	cmp	r3, #0
1a0029ca:	d007      	beq.n	1a0029dc <Chip_Clock_GetMainPLLHz+0x98>
1a0029cc:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0029ce:	68fb      	ldr	r3, [r7, #12]
1a0029d0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0029d4:	693a      	ldr	r2, [r7, #16]
1a0029d6:	fb02 f303 	mul.w	r3, r2, r3
1a0029da:	e00a      	b.n	1a0029f2 <Chip_Clock_GetMainPLLHz+0xae>
1a0029dc:	68bb      	ldr	r3, [r7, #8]
1a0029de:	005b      	lsls	r3, r3, #1
1a0029e0:	693a      	ldr	r2, [r7, #16]
1a0029e2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0029e6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a0029e8:	68fa      	ldr	r2, [r7, #12]
1a0029ea:	fbb1 f2f2 	udiv	r2, r1, r2
1a0029ee:	fb02 f303 	mul.w	r3, r2, r3
1a0029f2:	4618      	mov	r0, r3
1a0029f4:	3730      	adds	r7, #48	; 0x30
1a0029f6:	46bd      	mov	sp, r7
1a0029f8:	bd80      	pop	{r7, pc}
1a0029fa:	bf00      	nop
1a0029fc:	40050000 	.word	0x40050000
1a002a00:	1a002fd0 	.word	0x1a002fd0

1a002a04 <Chip_Clock_GetDividerSource>:
1a002a04:	b480      	push	{r7}
1a002a06:	b085      	sub	sp, #20
1a002a08:	af00      	add	r7, sp, #0
1a002a0a:	4603      	mov	r3, r0
1a002a0c:	71fb      	strb	r3, [r7, #7]
1a002a0e:	4a0c      	ldr	r2, [pc, #48]	; (1a002a40 <Chip_Clock_GetDividerSource+0x3c>)
1a002a10:	79fb      	ldrb	r3, [r7, #7]
1a002a12:	3312      	adds	r3, #18
1a002a14:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002a18:	60fb      	str	r3, [r7, #12]
1a002a1a:	68fb      	ldr	r3, [r7, #12]
1a002a1c:	f003 0301 	and.w	r3, r3, #1
1a002a20:	2b00      	cmp	r3, #0
1a002a22:	d001      	beq.n	1a002a28 <Chip_Clock_GetDividerSource+0x24>
1a002a24:	2311      	movs	r3, #17
1a002a26:	e005      	b.n	1a002a34 <Chip_Clock_GetDividerSource+0x30>
1a002a28:	68fb      	ldr	r3, [r7, #12]
1a002a2a:	0e1b      	lsrs	r3, r3, #24
1a002a2c:	b2db      	uxtb	r3, r3
1a002a2e:	f003 031f 	and.w	r3, r3, #31
1a002a32:	b2db      	uxtb	r3, r3
1a002a34:	4618      	mov	r0, r3
1a002a36:	3714      	adds	r7, #20
1a002a38:	46bd      	mov	sp, r7
1a002a3a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002a3e:	4770      	bx	lr
1a002a40:	40050000 	.word	0x40050000

1a002a44 <Chip_Clock_GetDividerDivisor>:
1a002a44:	b480      	push	{r7}
1a002a46:	b083      	sub	sp, #12
1a002a48:	af00      	add	r7, sp, #0
1a002a4a:	4603      	mov	r3, r0
1a002a4c:	71fb      	strb	r3, [r7, #7]
1a002a4e:	4a09      	ldr	r2, [pc, #36]	; (1a002a74 <Chip_Clock_GetDividerDivisor+0x30>)
1a002a50:	79fb      	ldrb	r3, [r7, #7]
1a002a52:	3312      	adds	r3, #18
1a002a54:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002a58:	089b      	lsrs	r3, r3, #2
1a002a5a:	b2da      	uxtb	r2, r3
1a002a5c:	79fb      	ldrb	r3, [r7, #7]
1a002a5e:	4906      	ldr	r1, [pc, #24]	; (1a002a78 <Chip_Clock_GetDividerDivisor+0x34>)
1a002a60:	5ccb      	ldrb	r3, [r1, r3]
1a002a62:	4013      	ands	r3, r2
1a002a64:	b2db      	uxtb	r3, r3
1a002a66:	4618      	mov	r0, r3
1a002a68:	370c      	adds	r7, #12
1a002a6a:	46bd      	mov	sp, r7
1a002a6c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002a70:	4770      	bx	lr
1a002a72:	bf00      	nop
1a002a74:	40050000 	.word	0x40050000
1a002a78:	1a002fd4 	.word	0x1a002fd4

1a002a7c <Chip_Clock_GetClockInputHz>:
1a002a7c:	b580      	push	{r7, lr}
1a002a7e:	b084      	sub	sp, #16
1a002a80:	af00      	add	r7, sp, #0
1a002a82:	4603      	mov	r3, r0
1a002a84:	71fb      	strb	r3, [r7, #7]
1a002a86:	2300      	movs	r3, #0
1a002a88:	60fb      	str	r3, [r7, #12]
1a002a8a:	79fb      	ldrb	r3, [r7, #7]
1a002a8c:	2b11      	cmp	r3, #17
1a002a8e:	d87f      	bhi.n	1a002b90 <Chip_Clock_GetClockInputHz+0x114>
1a002a90:	a201      	add	r2, pc, #4	; (adr r2, 1a002a98 <Chip_Clock_GetClockInputHz+0x1c>)
1a002a92:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a002a96:	bf00      	nop
1a002a98:	1a002ae1 	.word	0x1a002ae1
1a002a9c:	1a002ae9 	.word	0x1a002ae9
1a002aa0:	1a002aef 	.word	0x1a002aef
1a002aa4:	1a002b03 	.word	0x1a002b03
1a002aa8:	1a002b1d 	.word	0x1a002b1d
1a002aac:	1a002b91 	.word	0x1a002b91
1a002ab0:	1a002b25 	.word	0x1a002b25
1a002ab4:	1a002b2d 	.word	0x1a002b2d
1a002ab8:	1a002b35 	.word	0x1a002b35
1a002abc:	1a002b3d 	.word	0x1a002b3d
1a002ac0:	1a002b91 	.word	0x1a002b91
1a002ac4:	1a002b91 	.word	0x1a002b91
1a002ac8:	1a002b45 	.word	0x1a002b45
1a002acc:	1a002b53 	.word	0x1a002b53
1a002ad0:	1a002b61 	.word	0x1a002b61
1a002ad4:	1a002b6f 	.word	0x1a002b6f
1a002ad8:	1a002b7d 	.word	0x1a002b7d
1a002adc:	1a002b8b 	.word	0x1a002b8b
1a002ae0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a002ae4:	60fb      	str	r3, [r7, #12]
1a002ae6:	e056      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002ae8:	4b2d      	ldr	r3, [pc, #180]	; (1a002ba0 <Chip_Clock_GetClockInputHz+0x124>)
1a002aea:	60fb      	str	r3, [r7, #12]
1a002aec:	e053      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002aee:	4b2d      	ldr	r3, [pc, #180]	; (1a002ba4 <Chip_Clock_GetClockInputHz+0x128>)
1a002af0:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002af4:	f003 0307 	and.w	r3, r3, #7
1a002af8:	2b04      	cmp	r3, #4
1a002afa:	d04b      	beq.n	1a002b94 <Chip_Clock_GetClockInputHz+0x118>
1a002afc:	4b2a      	ldr	r3, [pc, #168]	; (1a002ba8 <Chip_Clock_GetClockInputHz+0x12c>)
1a002afe:	60fb      	str	r3, [r7, #12]
1a002b00:	e048      	b.n	1a002b94 <Chip_Clock_GetClockInputHz+0x118>
1a002b02:	4b28      	ldr	r3, [pc, #160]	; (1a002ba4 <Chip_Clock_GetClockInputHz+0x128>)
1a002b04:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002b08:	f003 0307 	and.w	r3, r3, #7
1a002b0c:	2b04      	cmp	r3, #4
1a002b0e:	d002      	beq.n	1a002b16 <Chip_Clock_GetClockInputHz+0x9a>
1a002b10:	4b25      	ldr	r3, [pc, #148]	; (1a002ba8 <Chip_Clock_GetClockInputHz+0x12c>)
1a002b12:	60fb      	str	r3, [r7, #12]
1a002b14:	e03f      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b16:	4b25      	ldr	r3, [pc, #148]	; (1a002bac <Chip_Clock_GetClockInputHz+0x130>)
1a002b18:	60fb      	str	r3, [r7, #12]
1a002b1a:	e03c      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b1c:	4b24      	ldr	r3, [pc, #144]	; (1a002bb0 <Chip_Clock_GetClockInputHz+0x134>)
1a002b1e:	681b      	ldr	r3, [r3, #0]
1a002b20:	60fb      	str	r3, [r7, #12]
1a002b22:	e038      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b24:	4b23      	ldr	r3, [pc, #140]	; (1a002bb4 <Chip_Clock_GetClockInputHz+0x138>)
1a002b26:	681b      	ldr	r3, [r3, #0]
1a002b28:	60fb      	str	r3, [r7, #12]
1a002b2a:	e034      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b2c:	4b22      	ldr	r3, [pc, #136]	; (1a002bb8 <Chip_Clock_GetClockInputHz+0x13c>)
1a002b2e:	681b      	ldr	r3, [r3, #0]
1a002b30:	60fb      	str	r3, [r7, #12]
1a002b32:	e030      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b34:	4b20      	ldr	r3, [pc, #128]	; (1a002bb8 <Chip_Clock_GetClockInputHz+0x13c>)
1a002b36:	685b      	ldr	r3, [r3, #4]
1a002b38:	60fb      	str	r3, [r7, #12]
1a002b3a:	e02c      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b3c:	f7ff ff02 	bl	1a002944 <Chip_Clock_GetMainPLLHz>
1a002b40:	60f8      	str	r0, [r7, #12]
1a002b42:	e028      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b44:	79fb      	ldrb	r3, [r7, #7]
1a002b46:	2100      	movs	r1, #0
1a002b48:	4618      	mov	r0, r3
1a002b4a:	f7ff fdef 	bl	1a00272c <Chip_Clock_GetDivRate>
1a002b4e:	60f8      	str	r0, [r7, #12]
1a002b50:	e021      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b52:	79fb      	ldrb	r3, [r7, #7]
1a002b54:	2101      	movs	r1, #1
1a002b56:	4618      	mov	r0, r3
1a002b58:	f7ff fde8 	bl	1a00272c <Chip_Clock_GetDivRate>
1a002b5c:	60f8      	str	r0, [r7, #12]
1a002b5e:	e01a      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b60:	79fb      	ldrb	r3, [r7, #7]
1a002b62:	2102      	movs	r1, #2
1a002b64:	4618      	mov	r0, r3
1a002b66:	f7ff fde1 	bl	1a00272c <Chip_Clock_GetDivRate>
1a002b6a:	60f8      	str	r0, [r7, #12]
1a002b6c:	e013      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b6e:	79fb      	ldrb	r3, [r7, #7]
1a002b70:	2103      	movs	r1, #3
1a002b72:	4618      	mov	r0, r3
1a002b74:	f7ff fdda 	bl	1a00272c <Chip_Clock_GetDivRate>
1a002b78:	60f8      	str	r0, [r7, #12]
1a002b7a:	e00c      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b7c:	79fb      	ldrb	r3, [r7, #7]
1a002b7e:	2104      	movs	r1, #4
1a002b80:	4618      	mov	r0, r3
1a002b82:	f7ff fdd3 	bl	1a00272c <Chip_Clock_GetDivRate>
1a002b86:	60f8      	str	r0, [r7, #12]
1a002b88:	e005      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b8a:	2300      	movs	r3, #0
1a002b8c:	60fb      	str	r3, [r7, #12]
1a002b8e:	e002      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b90:	bf00      	nop
1a002b92:	e000      	b.n	1a002b96 <Chip_Clock_GetClockInputHz+0x11a>
1a002b94:	bf00      	nop
1a002b96:	68fb      	ldr	r3, [r7, #12]
1a002b98:	4618      	mov	r0, r3
1a002b9a:	3710      	adds	r7, #16
1a002b9c:	46bd      	mov	sp, r7
1a002b9e:	bd80      	pop	{r7, pc}
1a002ba0:	00b71b00 	.word	0x00b71b00
1a002ba4:	40043000 	.word	0x40043000
1a002ba8:	017d7840 	.word	0x017d7840
1a002bac:	02faf080 	.word	0x02faf080
1a002bb0:	1a002ec8 	.word	0x1a002ec8
1a002bb4:	1a002ecc 	.word	0x1a002ecc
1a002bb8:	10000050 	.word	0x10000050

1a002bbc <Chip_Clock_GetBaseClocktHz>:
1a002bbc:	b580      	push	{r7, lr}
1a002bbe:	b082      	sub	sp, #8
1a002bc0:	af00      	add	r7, sp, #0
1a002bc2:	4603      	mov	r3, r0
1a002bc4:	71fb      	strb	r3, [r7, #7]
1a002bc6:	79fb      	ldrb	r3, [r7, #7]
1a002bc8:	4618      	mov	r0, r3
1a002bca:	f000 f857 	bl	1a002c7c <Chip_Clock_GetBaseClock>
1a002bce:	4603      	mov	r3, r0
1a002bd0:	4618      	mov	r0, r3
1a002bd2:	f7ff ff53 	bl	1a002a7c <Chip_Clock_GetClockInputHz>
1a002bd6:	4603      	mov	r3, r0
1a002bd8:	4618      	mov	r0, r3
1a002bda:	3708      	adds	r7, #8
1a002bdc:	46bd      	mov	sp, r7
1a002bde:	bd80      	pop	{r7, pc}

1a002be0 <Chip_Clock_SetBaseClock>:
1a002be0:	b490      	push	{r4, r7}
1a002be2:	b084      	sub	sp, #16
1a002be4:	af00      	add	r7, sp, #0
1a002be6:	4604      	mov	r4, r0
1a002be8:	4608      	mov	r0, r1
1a002bea:	4611      	mov	r1, r2
1a002bec:	461a      	mov	r2, r3
1a002bee:	4623      	mov	r3, r4
1a002bf0:	71fb      	strb	r3, [r7, #7]
1a002bf2:	4603      	mov	r3, r0
1a002bf4:	71bb      	strb	r3, [r7, #6]
1a002bf6:	460b      	mov	r3, r1
1a002bf8:	717b      	strb	r3, [r7, #5]
1a002bfa:	4613      	mov	r3, r2
1a002bfc:	713b      	strb	r3, [r7, #4]
1a002bfe:	4a1d      	ldr	r2, [pc, #116]	; (1a002c74 <Chip_Clock_SetBaseClock+0x94>)
1a002c00:	79fb      	ldrb	r3, [r7, #7]
1a002c02:	3316      	adds	r3, #22
1a002c04:	009b      	lsls	r3, r3, #2
1a002c06:	4413      	add	r3, r2
1a002c08:	685b      	ldr	r3, [r3, #4]
1a002c0a:	60fb      	str	r3, [r7, #12]
1a002c0c:	79fb      	ldrb	r3, [r7, #7]
1a002c0e:	2b1b      	cmp	r3, #27
1a002c10:	d822      	bhi.n	1a002c58 <Chip_Clock_SetBaseClock+0x78>
1a002c12:	79bb      	ldrb	r3, [r7, #6]
1a002c14:	2b11      	cmp	r3, #17
1a002c16:	d028      	beq.n	1a002c6a <Chip_Clock_SetBaseClock+0x8a>
1a002c18:	68fa      	ldr	r2, [r7, #12]
1a002c1a:	4b17      	ldr	r3, [pc, #92]	; (1a002c78 <Chip_Clock_SetBaseClock+0x98>)
1a002c1c:	4013      	ands	r3, r2
1a002c1e:	60fb      	str	r3, [r7, #12]
1a002c20:	797b      	ldrb	r3, [r7, #5]
1a002c22:	2b00      	cmp	r3, #0
1a002c24:	d003      	beq.n	1a002c2e <Chip_Clock_SetBaseClock+0x4e>
1a002c26:	68fb      	ldr	r3, [r7, #12]
1a002c28:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002c2c:	60fb      	str	r3, [r7, #12]
1a002c2e:	793b      	ldrb	r3, [r7, #4]
1a002c30:	2b00      	cmp	r3, #0
1a002c32:	d003      	beq.n	1a002c3c <Chip_Clock_SetBaseClock+0x5c>
1a002c34:	68fb      	ldr	r3, [r7, #12]
1a002c36:	f043 0301 	orr.w	r3, r3, #1
1a002c3a:	60fb      	str	r3, [r7, #12]
1a002c3c:	79bb      	ldrb	r3, [r7, #6]
1a002c3e:	061b      	lsls	r3, r3, #24
1a002c40:	461a      	mov	r2, r3
1a002c42:	68fb      	ldr	r3, [r7, #12]
1a002c44:	4313      	orrs	r3, r2
1a002c46:	60fb      	str	r3, [r7, #12]
1a002c48:	4a0a      	ldr	r2, [pc, #40]	; (1a002c74 <Chip_Clock_SetBaseClock+0x94>)
1a002c4a:	79fb      	ldrb	r3, [r7, #7]
1a002c4c:	3316      	adds	r3, #22
1a002c4e:	009b      	lsls	r3, r3, #2
1a002c50:	4413      	add	r3, r2
1a002c52:	68fa      	ldr	r2, [r7, #12]
1a002c54:	605a      	str	r2, [r3, #4]
1a002c56:	e008      	b.n	1a002c6a <Chip_Clock_SetBaseClock+0x8a>
1a002c58:	4906      	ldr	r1, [pc, #24]	; (1a002c74 <Chip_Clock_SetBaseClock+0x94>)
1a002c5a:	79fb      	ldrb	r3, [r7, #7]
1a002c5c:	68fa      	ldr	r2, [r7, #12]
1a002c5e:	f042 0201 	orr.w	r2, r2, #1
1a002c62:	3316      	adds	r3, #22
1a002c64:	009b      	lsls	r3, r3, #2
1a002c66:	440b      	add	r3, r1
1a002c68:	605a      	str	r2, [r3, #4]
1a002c6a:	bf00      	nop
1a002c6c:	3710      	adds	r7, #16
1a002c6e:	46bd      	mov	sp, r7
1a002c70:	bc90      	pop	{r4, r7}
1a002c72:	4770      	bx	lr
1a002c74:	40050000 	.word	0x40050000
1a002c78:	e0fff7fe 	.word	0xe0fff7fe

1a002c7c <Chip_Clock_GetBaseClock>:
1a002c7c:	b480      	push	{r7}
1a002c7e:	b085      	sub	sp, #20
1a002c80:	af00      	add	r7, sp, #0
1a002c82:	4603      	mov	r3, r0
1a002c84:	71fb      	strb	r3, [r7, #7]
1a002c86:	79fb      	ldrb	r3, [r7, #7]
1a002c88:	2b1b      	cmp	r3, #27
1a002c8a:	d901      	bls.n	1a002c90 <Chip_Clock_GetBaseClock+0x14>
1a002c8c:	2311      	movs	r3, #17
1a002c8e:	e013      	b.n	1a002cb8 <Chip_Clock_GetBaseClock+0x3c>
1a002c90:	4a0c      	ldr	r2, [pc, #48]	; (1a002cc4 <Chip_Clock_GetBaseClock+0x48>)
1a002c92:	79fb      	ldrb	r3, [r7, #7]
1a002c94:	3316      	adds	r3, #22
1a002c96:	009b      	lsls	r3, r3, #2
1a002c98:	4413      	add	r3, r2
1a002c9a:	685b      	ldr	r3, [r3, #4]
1a002c9c:	60fb      	str	r3, [r7, #12]
1a002c9e:	68fb      	ldr	r3, [r7, #12]
1a002ca0:	f003 0301 	and.w	r3, r3, #1
1a002ca4:	2b00      	cmp	r3, #0
1a002ca6:	d001      	beq.n	1a002cac <Chip_Clock_GetBaseClock+0x30>
1a002ca8:	2311      	movs	r3, #17
1a002caa:	e005      	b.n	1a002cb8 <Chip_Clock_GetBaseClock+0x3c>
1a002cac:	68fb      	ldr	r3, [r7, #12]
1a002cae:	0e1b      	lsrs	r3, r3, #24
1a002cb0:	b2db      	uxtb	r3, r3
1a002cb2:	f003 031f 	and.w	r3, r3, #31
1a002cb6:	b2db      	uxtb	r3, r3
1a002cb8:	4618      	mov	r0, r3
1a002cba:	3714      	adds	r7, #20
1a002cbc:	46bd      	mov	sp, r7
1a002cbe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002cc2:	4770      	bx	lr
1a002cc4:	40050000 	.word	0x40050000

1a002cc8 <Chip_Clock_EnableOpts>:
1a002cc8:	b480      	push	{r7}
1a002cca:	b085      	sub	sp, #20
1a002ccc:	af00      	add	r7, sp, #0
1a002cce:	603b      	str	r3, [r7, #0]
1a002cd0:	4603      	mov	r3, r0
1a002cd2:	80fb      	strh	r3, [r7, #6]
1a002cd4:	460b      	mov	r3, r1
1a002cd6:	717b      	strb	r3, [r7, #5]
1a002cd8:	4613      	mov	r3, r2
1a002cda:	713b      	strb	r3, [r7, #4]
1a002cdc:	2301      	movs	r3, #1
1a002cde:	60fb      	str	r3, [r7, #12]
1a002ce0:	797b      	ldrb	r3, [r7, #5]
1a002ce2:	2b00      	cmp	r3, #0
1a002ce4:	d003      	beq.n	1a002cee <Chip_Clock_EnableOpts+0x26>
1a002ce6:	68fb      	ldr	r3, [r7, #12]
1a002ce8:	f043 0302 	orr.w	r3, r3, #2
1a002cec:	60fb      	str	r3, [r7, #12]
1a002cee:	793b      	ldrb	r3, [r7, #4]
1a002cf0:	2b00      	cmp	r3, #0
1a002cf2:	d003      	beq.n	1a002cfc <Chip_Clock_EnableOpts+0x34>
1a002cf4:	68fb      	ldr	r3, [r7, #12]
1a002cf6:	f043 0304 	orr.w	r3, r3, #4
1a002cfa:	60fb      	str	r3, [r7, #12]
1a002cfc:	683b      	ldr	r3, [r7, #0]
1a002cfe:	2b02      	cmp	r3, #2
1a002d00:	d103      	bne.n	1a002d0a <Chip_Clock_EnableOpts+0x42>
1a002d02:	68fb      	ldr	r3, [r7, #12]
1a002d04:	f043 0320 	orr.w	r3, r3, #32
1a002d08:	60fb      	str	r3, [r7, #12]
1a002d0a:	88fb      	ldrh	r3, [r7, #6]
1a002d0c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002d10:	d308      	bcc.n	1a002d24 <Chip_Clock_EnableOpts+0x5c>
1a002d12:	490a      	ldr	r1, [pc, #40]	; (1a002d3c <Chip_Clock_EnableOpts+0x74>)
1a002d14:	88fb      	ldrh	r3, [r7, #6]
1a002d16:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002d1a:	3320      	adds	r3, #32
1a002d1c:	68fa      	ldr	r2, [r7, #12]
1a002d1e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002d22:	e005      	b.n	1a002d30 <Chip_Clock_EnableOpts+0x68>
1a002d24:	4906      	ldr	r1, [pc, #24]	; (1a002d40 <Chip_Clock_EnableOpts+0x78>)
1a002d26:	88fb      	ldrh	r3, [r7, #6]
1a002d28:	3320      	adds	r3, #32
1a002d2a:	68fa      	ldr	r2, [r7, #12]
1a002d2c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002d30:	bf00      	nop
1a002d32:	3714      	adds	r7, #20
1a002d34:	46bd      	mov	sp, r7
1a002d36:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002d3a:	4770      	bx	lr
1a002d3c:	40052000 	.word	0x40052000
1a002d40:	40051000 	.word	0x40051000

1a002d44 <Chip_Clock_Enable>:
1a002d44:	b480      	push	{r7}
1a002d46:	b083      	sub	sp, #12
1a002d48:	af00      	add	r7, sp, #0
1a002d4a:	4603      	mov	r3, r0
1a002d4c:	80fb      	strh	r3, [r7, #6]
1a002d4e:	88fb      	ldrh	r3, [r7, #6]
1a002d50:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002d54:	d310      	bcc.n	1a002d78 <Chip_Clock_Enable+0x34>
1a002d56:	4a11      	ldr	r2, [pc, #68]	; (1a002d9c <Chip_Clock_Enable+0x58>)
1a002d58:	88fb      	ldrh	r3, [r7, #6]
1a002d5a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002d5e:	3320      	adds	r3, #32
1a002d60:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a002d64:	490d      	ldr	r1, [pc, #52]	; (1a002d9c <Chip_Clock_Enable+0x58>)
1a002d66:	88fb      	ldrh	r3, [r7, #6]
1a002d68:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002d6c:	f042 0201 	orr.w	r2, r2, #1
1a002d70:	3320      	adds	r3, #32
1a002d72:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002d76:	e00b      	b.n	1a002d90 <Chip_Clock_Enable+0x4c>
1a002d78:	4a09      	ldr	r2, [pc, #36]	; (1a002da0 <Chip_Clock_Enable+0x5c>)
1a002d7a:	88fb      	ldrh	r3, [r7, #6]
1a002d7c:	3320      	adds	r3, #32
1a002d7e:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a002d82:	4907      	ldr	r1, [pc, #28]	; (1a002da0 <Chip_Clock_Enable+0x5c>)
1a002d84:	88fb      	ldrh	r3, [r7, #6]
1a002d86:	f042 0201 	orr.w	r2, r2, #1
1a002d8a:	3320      	adds	r3, #32
1a002d8c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002d90:	bf00      	nop
1a002d92:	370c      	adds	r7, #12
1a002d94:	46bd      	mov	sp, r7
1a002d96:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002d9a:	4770      	bx	lr
1a002d9c:	40052000 	.word	0x40052000
1a002da0:	40051000 	.word	0x40051000

1a002da4 <Chip_Clock_GetRate>:
1a002da4:	b580      	push	{r7, lr}
1a002da6:	b086      	sub	sp, #24
1a002da8:	af00      	add	r7, sp, #0
1a002daa:	4603      	mov	r3, r0
1a002dac:	80fb      	strh	r3, [r7, #6]
1a002dae:	88fb      	ldrh	r3, [r7, #6]
1a002db0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002db4:	d308      	bcc.n	1a002dc8 <Chip_Clock_GetRate+0x24>
1a002db6:	4a1b      	ldr	r2, [pc, #108]	; (1a002e24 <Chip_Clock_GetRate+0x80>)
1a002db8:	88fb      	ldrh	r3, [r7, #6]
1a002dba:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002dbe:	3320      	adds	r3, #32
1a002dc0:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002dc4:	617b      	str	r3, [r7, #20]
1a002dc6:	e005      	b.n	1a002dd4 <Chip_Clock_GetRate+0x30>
1a002dc8:	4a17      	ldr	r2, [pc, #92]	; (1a002e28 <Chip_Clock_GetRate+0x84>)
1a002dca:	88fb      	ldrh	r3, [r7, #6]
1a002dcc:	3320      	adds	r3, #32
1a002dce:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002dd2:	617b      	str	r3, [r7, #20]
1a002dd4:	697b      	ldr	r3, [r7, #20]
1a002dd6:	f003 0301 	and.w	r3, r3, #1
1a002dda:	2b00      	cmp	r3, #0
1a002ddc:	d01b      	beq.n	1a002e16 <Chip_Clock_GetRate+0x72>
1a002dde:	88fb      	ldrh	r3, [r7, #6]
1a002de0:	4618      	mov	r0, r3
1a002de2:	f7ff fcc3 	bl	1a00276c <Chip_Clock_FindBaseClock>
1a002de6:	4603      	mov	r3, r0
1a002de8:	72fb      	strb	r3, [r7, #11]
1a002dea:	7afb      	ldrb	r3, [r7, #11]
1a002dec:	4618      	mov	r0, r3
1a002dee:	f7ff fee5 	bl	1a002bbc <Chip_Clock_GetBaseClocktHz>
1a002df2:	60f8      	str	r0, [r7, #12]
1a002df4:	697b      	ldr	r3, [r7, #20]
1a002df6:	095b      	lsrs	r3, r3, #5
1a002df8:	f003 0307 	and.w	r3, r3, #7
1a002dfc:	2b00      	cmp	r3, #0
1a002dfe:	d102      	bne.n	1a002e06 <Chip_Clock_GetRate+0x62>
1a002e00:	2301      	movs	r3, #1
1a002e02:	613b      	str	r3, [r7, #16]
1a002e04:	e001      	b.n	1a002e0a <Chip_Clock_GetRate+0x66>
1a002e06:	2302      	movs	r3, #2
1a002e08:	613b      	str	r3, [r7, #16]
1a002e0a:	68fa      	ldr	r2, [r7, #12]
1a002e0c:	693b      	ldr	r3, [r7, #16]
1a002e0e:	fbb2 f3f3 	udiv	r3, r2, r3
1a002e12:	60fb      	str	r3, [r7, #12]
1a002e14:	e001      	b.n	1a002e1a <Chip_Clock_GetRate+0x76>
1a002e16:	2300      	movs	r3, #0
1a002e18:	60fb      	str	r3, [r7, #12]
1a002e1a:	68fb      	ldr	r3, [r7, #12]
1a002e1c:	4618      	mov	r0, r3
1a002e1e:	3718      	adds	r7, #24
1a002e20:	46bd      	mov	sp, r7
1a002e22:	bd80      	pop	{r7, pc}
1a002e24:	40052000 	.word	0x40052000
1a002e28:	40051000 	.word	0x40051000

1a002e2c <SystemCoreClockUpdate>:
1a002e2c:	b580      	push	{r7, lr}
1a002e2e:	af00      	add	r7, sp, #0
1a002e30:	2069      	movs	r0, #105	; 0x69
1a002e32:	f7ff ffb7 	bl	1a002da4 <Chip_Clock_GetRate>
1a002e36:	4602      	mov	r2, r0
1a002e38:	4b01      	ldr	r3, [pc, #4]	; (1a002e40 <SystemCoreClockUpdate+0x14>)
1a002e3a:	601a      	str	r2, [r3, #0]
1a002e3c:	bf00      	nop
1a002e3e:	bd80      	pop	{r7, pc}
1a002e40:	10000058 	.word	0x10000058

1a002e44 <Chip_GPIO_Init>:
1a002e44:	b480      	push	{r7}
1a002e46:	b083      	sub	sp, #12
1a002e48:	af00      	add	r7, sp, #0
1a002e4a:	6078      	str	r0, [r7, #4]
1a002e4c:	bf00      	nop
1a002e4e:	370c      	adds	r7, #12
1a002e50:	46bd      	mov	sp, r7
1a002e52:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002e56:	4770      	bx	lr

1a002e58 <Chip_TIMER_GetClockIndex>:
1a002e58:	b480      	push	{r7}
1a002e5a:	b085      	sub	sp, #20
1a002e5c:	af00      	add	r7, sp, #0
1a002e5e:	6078      	str	r0, [r7, #4]
1a002e60:	687b      	ldr	r3, [r7, #4]
1a002e62:	4a0e      	ldr	r2, [pc, #56]	; (1a002e9c <Chip_TIMER_GetClockIndex+0x44>)
1a002e64:	4293      	cmp	r3, r2
1a002e66:	d102      	bne.n	1a002e6e <Chip_TIMER_GetClockIndex+0x16>
1a002e68:	23a4      	movs	r3, #164	; 0xa4
1a002e6a:	81fb      	strh	r3, [r7, #14]
1a002e6c:	e00f      	b.n	1a002e8e <Chip_TIMER_GetClockIndex+0x36>
1a002e6e:	687b      	ldr	r3, [r7, #4]
1a002e70:	4a0b      	ldr	r2, [pc, #44]	; (1a002ea0 <Chip_TIMER_GetClockIndex+0x48>)
1a002e72:	4293      	cmp	r3, r2
1a002e74:	d102      	bne.n	1a002e7c <Chip_TIMER_GetClockIndex+0x24>
1a002e76:	23a3      	movs	r3, #163	; 0xa3
1a002e78:	81fb      	strh	r3, [r7, #14]
1a002e7a:	e008      	b.n	1a002e8e <Chip_TIMER_GetClockIndex+0x36>
1a002e7c:	687b      	ldr	r3, [r7, #4]
1a002e7e:	4a09      	ldr	r2, [pc, #36]	; (1a002ea4 <Chip_TIMER_GetClockIndex+0x4c>)
1a002e80:	4293      	cmp	r3, r2
1a002e82:	d102      	bne.n	1a002e8a <Chip_TIMER_GetClockIndex+0x32>
1a002e84:	2385      	movs	r3, #133	; 0x85
1a002e86:	81fb      	strh	r3, [r7, #14]
1a002e88:	e001      	b.n	1a002e8e <Chip_TIMER_GetClockIndex+0x36>
1a002e8a:	2384      	movs	r3, #132	; 0x84
1a002e8c:	81fb      	strh	r3, [r7, #14]
1a002e8e:	89fb      	ldrh	r3, [r7, #14]
1a002e90:	4618      	mov	r0, r3
1a002e92:	3714      	adds	r7, #20
1a002e94:	46bd      	mov	sp, r7
1a002e96:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002e9a:	4770      	bx	lr
1a002e9c:	400c4000 	.word	0x400c4000
1a002ea0:	400c3000 	.word	0x400c3000
1a002ea4:	40085000 	.word	0x40085000

1a002ea8 <Chip_TIMER_Init>:
1a002ea8:	b580      	push	{r7, lr}
1a002eaa:	b082      	sub	sp, #8
1a002eac:	af00      	add	r7, sp, #0
1a002eae:	6078      	str	r0, [r7, #4]
1a002eb0:	6878      	ldr	r0, [r7, #4]
1a002eb2:	f7ff ffd1 	bl	1a002e58 <Chip_TIMER_GetClockIndex>
1a002eb6:	4603      	mov	r3, r0
1a002eb8:	4618      	mov	r0, r3
1a002eba:	f7ff ff43 	bl	1a002d44 <Chip_Clock_Enable>
1a002ebe:	bf00      	nop
1a002ec0:	3708      	adds	r7, #8
1a002ec2:	46bd      	mov	sp, r7
1a002ec4:	bd80      	pop	{r7, pc}
1a002ec6:	Address 0x000000001a002ec6 is out of bounds.


1a002ec8 <ExtRateIn>:
1a002ec8:	0000 0000                                   ....

1a002ecc <OscRateIn>:
1a002ecc:	1b00 00b7                                   ....

1a002ed0 <leds>:
1a002ed0:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a002ee0:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a002ef0:	0105 0014                                   ....

1a002ef4 <keys>:
1a002ef4:	0001 0400 0050 0101 0800 0050 0201 0900     ....P.....P.....
1a002f04:	0050 0601 0901 0050                         P.....P.

1a002f0c <InitClkStates>:
1a002f0c:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a002f1c:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a002f2c:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a002f3c:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a002f4c:	111a 0001 111b 0001                         ........

1a002f54 <UART_PClock>:
1a002f54:	0081 0082 00a1 00a2                         ........

1a002f5c <UART_BClock>:
1a002f5c:	01c2 01a2 0182 0162                         ......b.

1a002f64 <periph_to_base>:
1a002f64:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a002f74:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a002f84:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a002f94:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a002fa4:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a002fb4:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002fc4:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002fd4:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a002fdc <_init>:
1a002fdc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002fde:	bf00      	nop

Disassembly of section .fini:

1a002fe0 <_fini>:
1a002fe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002fe2:	bf00      	nop
