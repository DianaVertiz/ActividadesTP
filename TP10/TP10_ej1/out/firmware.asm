
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 bd 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	bd 0a 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 9d 03 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a d5 0a 00 1a f5 0a 00 1a 15 0b 00 1a     ................
1a0000cc:	35 0b 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     5...............
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002a74 	.word	0x1a002a74
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000844 	.word	0x00000844

1a000120 <__bss_section_table_>:
1a000120:	10000844 	.word	0x10000844
1a000124:	000000a0 	.word	0x000000a0

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

1a000394 <__retarget_lock_acquire_recursive>:
1a000394:	4770      	bx	lr
1a000396:	bf00      	nop

1a000398 <__retarget_lock_release_recursive>:
1a000398:	4770      	bx	lr
1a00039a:	bf00      	nop

1a00039c <UART2_IRQHandler>:
1a00039c:	b580      	push	{r7, lr}
1a00039e:	af00      	add	r7, sp, #0
1a0003a0:	4a03      	ldr	r2, [pc, #12]	; (1a0003b0 <UART2_IRQHandler+0x14>)
1a0003a2:	4904      	ldr	r1, [pc, #16]	; (1a0003b4 <UART2_IRQHandler+0x18>)
1a0003a4:	4804      	ldr	r0, [pc, #16]	; (1a0003b8 <UART2_IRQHandler+0x1c>)
1a0003a6:	f000 ff40 	bl	1a00122a <Chip_UART_IRQRBHandler>
1a0003aa:	bf00      	nop
1a0003ac:	bd80      	pop	{r7, pc}
1a0003ae:	bf00      	nop
1a0003b0:	10000844 	.word	0x10000844
1a0003b4:	10000858 	.word	0x10000858
1a0003b8:	400c1000 	.word	0x400c1000

1a0003bc <ResetISR>:
1a0003bc:	b580      	push	{r7, lr}
1a0003be:	b088      	sub	sp, #32
1a0003c0:	af00      	add	r7, sp, #0
1a0003c2:	b672      	cpsid	i
1a0003c4:	4b26      	ldr	r3, [pc, #152]	; (1a000460 <ResetISR+0xa4>)
1a0003c6:	617b      	str	r3, [r7, #20]
1a0003c8:	697b      	ldr	r3, [r7, #20]
1a0003ca:	4a26      	ldr	r2, [pc, #152]	; (1a000464 <ResetISR+0xa8>)
1a0003cc:	601a      	str	r2, [r3, #0]
1a0003ce:	697b      	ldr	r3, [r7, #20]
1a0003d0:	3304      	adds	r3, #4
1a0003d2:	4a25      	ldr	r2, [pc, #148]	; (1a000468 <ResetISR+0xac>)
1a0003d4:	601a      	str	r2, [r3, #0]
1a0003d6:	4b25      	ldr	r3, [pc, #148]	; (1a00046c <ResetISR+0xb0>)
1a0003d8:	613b      	str	r3, [r7, #16]
1a0003da:	2300      	movs	r3, #0
1a0003dc:	61fb      	str	r3, [r7, #28]
1a0003de:	e009      	b.n	1a0003f4 <ResetISR+0x38>
1a0003e0:	69fb      	ldr	r3, [r7, #28]
1a0003e2:	009b      	lsls	r3, r3, #2
1a0003e4:	693a      	ldr	r2, [r7, #16]
1a0003e6:	4413      	add	r3, r2
1a0003e8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0003ec:	601a      	str	r2, [r3, #0]
1a0003ee:	69fb      	ldr	r3, [r7, #28]
1a0003f0:	3301      	adds	r3, #1
1a0003f2:	61fb      	str	r3, [r7, #28]
1a0003f4:	69fb      	ldr	r3, [r7, #28]
1a0003f6:	2b07      	cmp	r3, #7
1a0003f8:	d9f2      	bls.n	1a0003e0 <ResetISR+0x24>
1a0003fa:	b662      	cpsie	i
1a0003fc:	4b1c      	ldr	r3, [pc, #112]	; (1a000470 <ResetISR+0xb4>)
1a0003fe:	61bb      	str	r3, [r7, #24]
1a000400:	e013      	b.n	1a00042a <ResetISR+0x6e>
1a000402:	69bb      	ldr	r3, [r7, #24]
1a000404:	1d1a      	adds	r2, r3, #4
1a000406:	61ba      	str	r2, [r7, #24]
1a000408:	681b      	ldr	r3, [r3, #0]
1a00040a:	607b      	str	r3, [r7, #4]
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
1a000420:	68ba      	ldr	r2, [r7, #8]
1a000422:	68f9      	ldr	r1, [r7, #12]
1a000424:	6878      	ldr	r0, [r7, #4]
1a000426:	f7ff fe7f 	bl	1a000128 <data_init>
1a00042a:	69bb      	ldr	r3, [r7, #24]
1a00042c:	4a11      	ldr	r2, [pc, #68]	; (1a000474 <ResetISR+0xb8>)
1a00042e:	4293      	cmp	r3, r2
1a000430:	d3e7      	bcc.n	1a000402 <ResetISR+0x46>
1a000432:	e00d      	b.n	1a000450 <ResetISR+0x94>
1a000434:	69bb      	ldr	r3, [r7, #24]
1a000436:	1d1a      	adds	r2, r3, #4
1a000438:	61ba      	str	r2, [r7, #24]
1a00043a:	681b      	ldr	r3, [r3, #0]
1a00043c:	60fb      	str	r3, [r7, #12]
1a00043e:	69bb      	ldr	r3, [r7, #24]
1a000440:	1d1a      	adds	r2, r3, #4
1a000442:	61ba      	str	r2, [r7, #24]
1a000444:	681b      	ldr	r3, [r3, #0]
1a000446:	60bb      	str	r3, [r7, #8]
1a000448:	68b9      	ldr	r1, [r7, #8]
1a00044a:	68f8      	ldr	r0, [r7, #12]
1a00044c:	f7ff fe8e 	bl	1a00016c <bss_init>
1a000450:	69bb      	ldr	r3, [r7, #24]
1a000452:	4a09      	ldr	r2, [pc, #36]	; (1a000478 <ResetISR+0xbc>)
1a000454:	4293      	cmp	r3, r2
1a000456:	d3ed      	bcc.n	1a000434 <ResetISR+0x78>
1a000458:	f000 f810 	bl	1a00047c <main>
1a00045c:	e7fe      	b.n	1a00045c <ResetISR+0xa0>
1a00045e:	bf00      	nop
1a000460:	40053100 	.word	0x40053100
1a000464:	10df1000 	.word	0x10df1000
1a000468:	01dff7ff 	.word	0x01dff7ff
1a00046c:	e000e280 	.word	0xe000e280
1a000470:	1a000114 	.word	0x1a000114
1a000474:	1a000120 	.word	0x1a000120
1a000478:	1a000128 	.word	0x1a000128

1a00047c <main>:
1a00047c:	b5b0      	push	{r4, r5, r7, lr}
1a00047e:	b098      	sub	sp, #96	; 0x60
1a000480:	af00      	add	r7, sp, #0
1a000482:	f000 f9e9 	bl	1a000858 <sysInit>
1a000486:	f107 032c 	add.w	r3, r7, #44	; 0x2c
1a00048a:	4618      	mov	r0, r3
1a00048c:	f002 f876 	bl	1a00257c <mallinfo>
1a000490:	2001      	movs	r0, #1
1a000492:	f001 fd19 	bl	1a001ec8 <malloc>
1a000496:	4603      	mov	r3, r0
1a000498:	65fb      	str	r3, [r7, #92]	; 0x5c
1a00049a:	2001      	movs	r0, #1
1a00049c:	f001 fd14 	bl	1a001ec8 <malloc>
1a0004a0:	4603      	mov	r3, r0
1a0004a2:	65bb      	str	r3, [r7, #88]	; 0x58
1a0004a4:	2001      	movs	r0, #1
1a0004a6:	f001 fd0f 	bl	1a001ec8 <malloc>
1a0004aa:	4603      	mov	r3, r0
1a0004ac:	657b      	str	r3, [r7, #84]	; 0x54
1a0004ae:	463b      	mov	r3, r7
1a0004b0:	4618      	mov	r0, r3
1a0004b2:	f002 f863 	bl	1a00257c <mallinfo>
1a0004b6:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0004ba:	463d      	mov	r5, r7
1a0004bc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004be:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004c0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004c2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004c4:	e895 0003 	ldmia.w	r5, {r0, r1}
1a0004c8:	e884 0003 	stmia.w	r4, {r0, r1}
1a0004cc:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
1a0004ce:	220a      	movs	r2, #10
1a0004d0:	701a      	strb	r2, [r3, #0]
1a0004d2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
1a0004d4:	2205      	movs	r2, #5
1a0004d6:	701a      	strb	r2, [r3, #0]
1a0004d8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
1a0004da:	2287      	movs	r2, #135	; 0x87
1a0004dc:	701a      	strb	r2, [r3, #0]
1a0004de:	463b      	mov	r3, r7
1a0004e0:	4618      	mov	r0, r3
1a0004e2:	f002 f84b 	bl	1a00257c <mallinfo>
1a0004e6:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0004ea:	463d      	mov	r5, r7
1a0004ec:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004ee:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004f0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004f2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004f4:	e895 0003 	ldmia.w	r5, {r0, r1}
1a0004f8:	e884 0003 	stmia.w	r4, {r0, r1}
1a0004fc:	6df8      	ldr	r0, [r7, #92]	; 0x5c
1a0004fe:	f001 fceb 	bl	1a001ed8 <free>
1a000502:	6db8      	ldr	r0, [r7, #88]	; 0x58
1a000504:	f001 fce8 	bl	1a001ed8 <free>
1a000508:	6d78      	ldr	r0, [r7, #84]	; 0x54
1a00050a:	f001 fce5 	bl	1a001ed8 <free>
1a00050e:	463b      	mov	r3, r7
1a000510:	4618      	mov	r0, r3
1a000512:	f002 f833 	bl	1a00257c <mallinfo>
1a000516:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00051a:	463d      	mov	r5, r7
1a00051c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a00051e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a000520:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a000522:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a000524:	e895 0003 	ldmia.w	r5, {r0, r1}
1a000528:	e884 0003 	stmia.w	r4, {r0, r1}
1a00052c:	e7fe      	b.n	1a00052c <main+0xb0>
1a00052e:	Address 0x000000001a00052e is out of bounds.


1a000530 <NVIC_EnableIRQ>:
1a000530:	b480      	push	{r7}
1a000532:	b083      	sub	sp, #12
1a000534:	af00      	add	r7, sp, #0
1a000536:	4603      	mov	r3, r0
1a000538:	71fb      	strb	r3, [r7, #7]
1a00053a:	79fb      	ldrb	r3, [r7, #7]
1a00053c:	f003 031f 	and.w	r3, r3, #31
1a000540:	2201      	movs	r2, #1
1a000542:	fa02 f103 	lsl.w	r1, r2, r3
1a000546:	4a06      	ldr	r2, [pc, #24]	; (1a000560 <NVIC_EnableIRQ+0x30>)
1a000548:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00054c:	095b      	lsrs	r3, r3, #5
1a00054e:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000552:	bf00      	nop
1a000554:	370c      	adds	r7, #12
1a000556:	46bd      	mov	sp, r7
1a000558:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00055c:	4770      	bx	lr
1a00055e:	bf00      	nop
1a000560:	e000e100 	.word	0xe000e100

1a000564 <NVIC_ClearPendingIRQ>:
1a000564:	b480      	push	{r7}
1a000566:	b083      	sub	sp, #12
1a000568:	af00      	add	r7, sp, #0
1a00056a:	4603      	mov	r3, r0
1a00056c:	71fb      	strb	r3, [r7, #7]
1a00056e:	79fb      	ldrb	r3, [r7, #7]
1a000570:	f003 031f 	and.w	r3, r3, #31
1a000574:	2201      	movs	r2, #1
1a000576:	fa02 f103 	lsl.w	r1, r2, r3
1a00057a:	4a06      	ldr	r2, [pc, #24]	; (1a000594 <NVIC_ClearPendingIRQ+0x30>)
1a00057c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000580:	095b      	lsrs	r3, r3, #5
1a000582:	3360      	adds	r3, #96	; 0x60
1a000584:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000588:	bf00      	nop
1a00058a:	370c      	adds	r7, #12
1a00058c:	46bd      	mov	sp, r7
1a00058e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000592:	4770      	bx	lr
1a000594:	e000e100 	.word	0xe000e100

1a000598 <NVIC_SetPriority>:
1a000598:	b480      	push	{r7}
1a00059a:	b083      	sub	sp, #12
1a00059c:	af00      	add	r7, sp, #0
1a00059e:	4603      	mov	r3, r0
1a0005a0:	6039      	str	r1, [r7, #0]
1a0005a2:	71fb      	strb	r3, [r7, #7]
1a0005a4:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005a8:	2b00      	cmp	r3, #0
1a0005aa:	da0b      	bge.n	1a0005c4 <NVIC_SetPriority+0x2c>
1a0005ac:	683b      	ldr	r3, [r7, #0]
1a0005ae:	b2da      	uxtb	r2, r3
1a0005b0:	490c      	ldr	r1, [pc, #48]	; (1a0005e4 <NVIC_SetPriority+0x4c>)
1a0005b2:	79fb      	ldrb	r3, [r7, #7]
1a0005b4:	f003 030f 	and.w	r3, r3, #15
1a0005b8:	3b04      	subs	r3, #4
1a0005ba:	0152      	lsls	r2, r2, #5
1a0005bc:	b2d2      	uxtb	r2, r2
1a0005be:	440b      	add	r3, r1
1a0005c0:	761a      	strb	r2, [r3, #24]
1a0005c2:	e009      	b.n	1a0005d8 <NVIC_SetPriority+0x40>
1a0005c4:	683b      	ldr	r3, [r7, #0]
1a0005c6:	b2da      	uxtb	r2, r3
1a0005c8:	4907      	ldr	r1, [pc, #28]	; (1a0005e8 <NVIC_SetPriority+0x50>)
1a0005ca:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005ce:	0152      	lsls	r2, r2, #5
1a0005d0:	b2d2      	uxtb	r2, r2
1a0005d2:	440b      	add	r3, r1
1a0005d4:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0005d8:	bf00      	nop
1a0005da:	370c      	adds	r7, #12
1a0005dc:	46bd      	mov	sp, r7
1a0005de:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005e2:	4770      	bx	lr
1a0005e4:	e000ed00 	.word	0xe000ed00
1a0005e8:	e000e100 	.word	0xe000e100

1a0005ec <SysTick_Config>:
1a0005ec:	b580      	push	{r7, lr}
1a0005ee:	b082      	sub	sp, #8
1a0005f0:	af00      	add	r7, sp, #0
1a0005f2:	6078      	str	r0, [r7, #4]
1a0005f4:	687b      	ldr	r3, [r7, #4]
1a0005f6:	3b01      	subs	r3, #1
1a0005f8:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a0005fc:	d301      	bcc.n	1a000602 <SysTick_Config+0x16>
1a0005fe:	2301      	movs	r3, #1
1a000600:	e00f      	b.n	1a000622 <SysTick_Config+0x36>
1a000602:	4a0a      	ldr	r2, [pc, #40]	; (1a00062c <SysTick_Config+0x40>)
1a000604:	687b      	ldr	r3, [r7, #4]
1a000606:	3b01      	subs	r3, #1
1a000608:	6053      	str	r3, [r2, #4]
1a00060a:	2107      	movs	r1, #7
1a00060c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000610:	f7ff ffc2 	bl	1a000598 <NVIC_SetPriority>
1a000614:	4b05      	ldr	r3, [pc, #20]	; (1a00062c <SysTick_Config+0x40>)
1a000616:	2200      	movs	r2, #0
1a000618:	609a      	str	r2, [r3, #8]
1a00061a:	4b04      	ldr	r3, [pc, #16]	; (1a00062c <SysTick_Config+0x40>)
1a00061c:	2207      	movs	r2, #7
1a00061e:	601a      	str	r2, [r3, #0]
1a000620:	2300      	movs	r3, #0
1a000622:	4618      	mov	r0, r3
1a000624:	3708      	adds	r7, #8
1a000626:	46bd      	mov	sp, r7
1a000628:	bd80      	pop	{r7, pc}
1a00062a:	bf00      	nop
1a00062c:	e000e010 	.word	0xe000e010

1a000630 <Chip_SCU_PinMuxSet>:
1a000630:	b480      	push	{r7}
1a000632:	b083      	sub	sp, #12
1a000634:	af00      	add	r7, sp, #0
1a000636:	4603      	mov	r3, r0
1a000638:	71fb      	strb	r3, [r7, #7]
1a00063a:	460b      	mov	r3, r1
1a00063c:	71bb      	strb	r3, [r7, #6]
1a00063e:	4613      	mov	r3, r2
1a000640:	80bb      	strh	r3, [r7, #4]
1a000642:	4807      	ldr	r0, [pc, #28]	; (1a000660 <Chip_SCU_PinMuxSet+0x30>)
1a000644:	79f9      	ldrb	r1, [r7, #7]
1a000646:	79bb      	ldrb	r3, [r7, #6]
1a000648:	88ba      	ldrh	r2, [r7, #4]
1a00064a:	0149      	lsls	r1, r1, #5
1a00064c:	440b      	add	r3, r1
1a00064e:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000652:	bf00      	nop
1a000654:	370c      	adds	r7, #12
1a000656:	46bd      	mov	sp, r7
1a000658:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00065c:	4770      	bx	lr
1a00065e:	bf00      	nop
1a000660:	40086000 	.word	0x40086000

1a000664 <Chip_SCU_GPIOIntPinSel>:
1a000664:	b480      	push	{r7}
1a000666:	b085      	sub	sp, #20
1a000668:	af00      	add	r7, sp, #0
1a00066a:	4603      	mov	r3, r0
1a00066c:	71fb      	strb	r3, [r7, #7]
1a00066e:	460b      	mov	r3, r1
1a000670:	71bb      	strb	r3, [r7, #6]
1a000672:	4613      	mov	r3, r2
1a000674:	717b      	strb	r3, [r7, #5]
1a000676:	79fb      	ldrb	r3, [r7, #7]
1a000678:	00db      	lsls	r3, r3, #3
1a00067a:	f003 0318 	and.w	r3, r3, #24
1a00067e:	60fb      	str	r3, [r7, #12]
1a000680:	79bb      	ldrb	r3, [r7, #6]
1a000682:	015b      	lsls	r3, r3, #5
1a000684:	b2da      	uxtb	r2, r3
1a000686:	797b      	ldrb	r3, [r7, #5]
1a000688:	f003 031f 	and.w	r3, r3, #31
1a00068c:	431a      	orrs	r2, r3
1a00068e:	68fb      	ldr	r3, [r7, #12]
1a000690:	fa02 f303 	lsl.w	r3, r2, r3
1a000694:	60bb      	str	r3, [r7, #8]
1a000696:	4a0f      	ldr	r2, [pc, #60]	; (1a0006d4 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000698:	79fb      	ldrb	r3, [r7, #7]
1a00069a:	089b      	lsrs	r3, r3, #2
1a00069c:	b2db      	uxtb	r3, r3
1a00069e:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a0006a2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0006a6:	21ff      	movs	r1, #255	; 0xff
1a0006a8:	68fa      	ldr	r2, [r7, #12]
1a0006aa:	fa01 f202 	lsl.w	r2, r1, r2
1a0006ae:	43d2      	mvns	r2, r2
1a0006b0:	401a      	ands	r2, r3
1a0006b2:	4908      	ldr	r1, [pc, #32]	; (1a0006d4 <Chip_SCU_GPIOIntPinSel+0x70>)
1a0006b4:	79fb      	ldrb	r3, [r7, #7]
1a0006b6:	089b      	lsrs	r3, r3, #2
1a0006b8:	b2db      	uxtb	r3, r3
1a0006ba:	4618      	mov	r0, r3
1a0006bc:	68bb      	ldr	r3, [r7, #8]
1a0006be:	431a      	orrs	r2, r3
1a0006c0:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a0006c4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a0006c8:	bf00      	nop
1a0006ca:	3714      	adds	r7, #20
1a0006cc:	46bd      	mov	sp, r7
1a0006ce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006d2:	4770      	bx	lr
1a0006d4:	40086000 	.word	0x40086000

1a0006d8 <Chip_GPIO_SetPinDIROutput>:
1a0006d8:	b480      	push	{r7}
1a0006da:	b083      	sub	sp, #12
1a0006dc:	af00      	add	r7, sp, #0
1a0006de:	6078      	str	r0, [r7, #4]
1a0006e0:	460b      	mov	r3, r1
1a0006e2:	70fb      	strb	r3, [r7, #3]
1a0006e4:	4613      	mov	r3, r2
1a0006e6:	70bb      	strb	r3, [r7, #2]
1a0006e8:	78fa      	ldrb	r2, [r7, #3]
1a0006ea:	687b      	ldr	r3, [r7, #4]
1a0006ec:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0006f0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0006f4:	78bb      	ldrb	r3, [r7, #2]
1a0006f6:	2201      	movs	r2, #1
1a0006f8:	fa02 f303 	lsl.w	r3, r2, r3
1a0006fc:	78fa      	ldrb	r2, [r7, #3]
1a0006fe:	4319      	orrs	r1, r3
1a000700:	687b      	ldr	r3, [r7, #4]
1a000702:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000706:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00070a:	bf00      	nop
1a00070c:	370c      	adds	r7, #12
1a00070e:	46bd      	mov	sp, r7
1a000710:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000714:	4770      	bx	lr

1a000716 <Chip_GPIO_SetPinDIRInput>:
1a000716:	b480      	push	{r7}
1a000718:	b083      	sub	sp, #12
1a00071a:	af00      	add	r7, sp, #0
1a00071c:	6078      	str	r0, [r7, #4]
1a00071e:	460b      	mov	r3, r1
1a000720:	70fb      	strb	r3, [r7, #3]
1a000722:	4613      	mov	r3, r2
1a000724:	70bb      	strb	r3, [r7, #2]
1a000726:	78fa      	ldrb	r2, [r7, #3]
1a000728:	687b      	ldr	r3, [r7, #4]
1a00072a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00072e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000732:	78bb      	ldrb	r3, [r7, #2]
1a000734:	2201      	movs	r2, #1
1a000736:	fa02 f303 	lsl.w	r3, r2, r3
1a00073a:	43db      	mvns	r3, r3
1a00073c:	78fa      	ldrb	r2, [r7, #3]
1a00073e:	4019      	ands	r1, r3
1a000740:	687b      	ldr	r3, [r7, #4]
1a000742:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000746:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00074a:	bf00      	nop
1a00074c:	370c      	adds	r7, #12
1a00074e:	46bd      	mov	sp, r7
1a000750:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000754:	4770      	bx	lr

1a000756 <Chip_GPIO_SetPinOutLow>:
1a000756:	b480      	push	{r7}
1a000758:	b083      	sub	sp, #12
1a00075a:	af00      	add	r7, sp, #0
1a00075c:	6078      	str	r0, [r7, #4]
1a00075e:	460b      	mov	r3, r1
1a000760:	70fb      	strb	r3, [r7, #3]
1a000762:	4613      	mov	r3, r2
1a000764:	70bb      	strb	r3, [r7, #2]
1a000766:	78bb      	ldrb	r3, [r7, #2]
1a000768:	2201      	movs	r2, #1
1a00076a:	fa02 f303 	lsl.w	r3, r2, r3
1a00076e:	78fa      	ldrb	r2, [r7, #3]
1a000770:	4619      	mov	r1, r3
1a000772:	687b      	ldr	r3, [r7, #4]
1a000774:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000778:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00077c:	bf00      	nop
1a00077e:	370c      	adds	r7, #12
1a000780:	46bd      	mov	sp, r7
1a000782:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000786:	4770      	bx	lr

1a000788 <Chip_PININT_SetPinModeEdge>:
1a000788:	b480      	push	{r7}
1a00078a:	b083      	sub	sp, #12
1a00078c:	af00      	add	r7, sp, #0
1a00078e:	6078      	str	r0, [r7, #4]
1a000790:	6039      	str	r1, [r7, #0]
1a000792:	687b      	ldr	r3, [r7, #4]
1a000794:	681a      	ldr	r2, [r3, #0]
1a000796:	683b      	ldr	r3, [r7, #0]
1a000798:	43db      	mvns	r3, r3
1a00079a:	401a      	ands	r2, r3
1a00079c:	687b      	ldr	r3, [r7, #4]
1a00079e:	601a      	str	r2, [r3, #0]
1a0007a0:	bf00      	nop
1a0007a2:	370c      	adds	r7, #12
1a0007a4:	46bd      	mov	sp, r7
1a0007a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007aa:	4770      	bx	lr

1a0007ac <Chip_PININT_EnableIntLow>:
1a0007ac:	b480      	push	{r7}
1a0007ae:	b083      	sub	sp, #12
1a0007b0:	af00      	add	r7, sp, #0
1a0007b2:	6078      	str	r0, [r7, #4]
1a0007b4:	6039      	str	r1, [r7, #0]
1a0007b6:	687b      	ldr	r3, [r7, #4]
1a0007b8:	683a      	ldr	r2, [r7, #0]
1a0007ba:	615a      	str	r2, [r3, #20]
1a0007bc:	bf00      	nop
1a0007be:	370c      	adds	r7, #12
1a0007c0:	46bd      	mov	sp, r7
1a0007c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007c6:	4770      	bx	lr

1a0007c8 <Chip_PININT_ClearIntStatus>:
1a0007c8:	b480      	push	{r7}
1a0007ca:	b083      	sub	sp, #12
1a0007cc:	af00      	add	r7, sp, #0
1a0007ce:	6078      	str	r0, [r7, #4]
1a0007d0:	6039      	str	r1, [r7, #0]
1a0007d2:	687b      	ldr	r3, [r7, #4]
1a0007d4:	683a      	ldr	r2, [r7, #0]
1a0007d6:	625a      	str	r2, [r3, #36]	; 0x24
1a0007d8:	bf00      	nop
1a0007da:	370c      	adds	r7, #12
1a0007dc:	46bd      	mov	sp, r7
1a0007de:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007e2:	4770      	bx	lr

1a0007e4 <Chip_UART_TXEnable>:
1a0007e4:	b480      	push	{r7}
1a0007e6:	b083      	sub	sp, #12
1a0007e8:	af00      	add	r7, sp, #0
1a0007ea:	6078      	str	r0, [r7, #4]
1a0007ec:	687b      	ldr	r3, [r7, #4]
1a0007ee:	2201      	movs	r2, #1
1a0007f0:	65da      	str	r2, [r3, #92]	; 0x5c
1a0007f2:	bf00      	nop
1a0007f4:	370c      	adds	r7, #12
1a0007f6:	46bd      	mov	sp, r7
1a0007f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007fc:	4770      	bx	lr

1a0007fe <Chip_UART_IntEnable>:
1a0007fe:	b480      	push	{r7}
1a000800:	b083      	sub	sp, #12
1a000802:	af00      	add	r7, sp, #0
1a000804:	6078      	str	r0, [r7, #4]
1a000806:	6039      	str	r1, [r7, #0]
1a000808:	687b      	ldr	r3, [r7, #4]
1a00080a:	685a      	ldr	r2, [r3, #4]
1a00080c:	683b      	ldr	r3, [r7, #0]
1a00080e:	431a      	orrs	r2, r3
1a000810:	687b      	ldr	r3, [r7, #4]
1a000812:	605a      	str	r2, [r3, #4]
1a000814:	bf00      	nop
1a000816:	370c      	adds	r7, #12
1a000818:	46bd      	mov	sp, r7
1a00081a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00081e:	4770      	bx	lr

1a000820 <Chip_UART_SetupFIFOS>:
1a000820:	b480      	push	{r7}
1a000822:	b083      	sub	sp, #12
1a000824:	af00      	add	r7, sp, #0
1a000826:	6078      	str	r0, [r7, #4]
1a000828:	6039      	str	r1, [r7, #0]
1a00082a:	687b      	ldr	r3, [r7, #4]
1a00082c:	683a      	ldr	r2, [r7, #0]
1a00082e:	609a      	str	r2, [r3, #8]
1a000830:	bf00      	nop
1a000832:	370c      	adds	r7, #12
1a000834:	46bd      	mov	sp, r7
1a000836:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00083a:	4770      	bx	lr

1a00083c <Chip_UART_ConfigData>:
1a00083c:	b480      	push	{r7}
1a00083e:	b083      	sub	sp, #12
1a000840:	af00      	add	r7, sp, #0
1a000842:	6078      	str	r0, [r7, #4]
1a000844:	6039      	str	r1, [r7, #0]
1a000846:	687b      	ldr	r3, [r7, #4]
1a000848:	683a      	ldr	r2, [r7, #0]
1a00084a:	60da      	str	r2, [r3, #12]
1a00084c:	bf00      	nop
1a00084e:	370c      	adds	r7, #12
1a000850:	46bd      	mov	sp, r7
1a000852:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000856:	4770      	bx	lr

1a000858 <sysInit>:
1a000858:	b590      	push	{r4, r7, lr}
1a00085a:	b083      	sub	sp, #12
1a00085c:	af00      	add	r7, sp, #0
1a00085e:	f000 fae5 	bl	1a000e2c <Chip_SetupXtalClocking>
1a000862:	f001 fad7 	bl	1a001e14 <SystemCoreClockUpdate>
1a000866:	f000 fd23 	bl	1a0012b0 <StopWatch_Init>
1a00086a:	f000 f9bb 	bl	1a000be4 <fpuInit>
1a00086e:	488c      	ldr	r0, [pc, #560]	; (1a000aa0 <sysInit+0x248>)
1a000870:	f001 fadc 	bl	1a001e2c <Chip_GPIO_Init>
1a000874:	2300      	movs	r3, #0
1a000876:	607b      	str	r3, [r7, #4]
1a000878:	e04e      	b.n	1a000918 <sysInit+0xc0>
1a00087a:	498a      	ldr	r1, [pc, #552]	; (1a000aa4 <sysInit+0x24c>)
1a00087c:	687a      	ldr	r2, [r7, #4]
1a00087e:	4613      	mov	r3, r2
1a000880:	005b      	lsls	r3, r3, #1
1a000882:	4413      	add	r3, r2
1a000884:	005b      	lsls	r3, r3, #1
1a000886:	440b      	add	r3, r1
1a000888:	7818      	ldrb	r0, [r3, #0]
1a00088a:	4986      	ldr	r1, [pc, #536]	; (1a000aa4 <sysInit+0x24c>)
1a00088c:	687a      	ldr	r2, [r7, #4]
1a00088e:	4613      	mov	r3, r2
1a000890:	005b      	lsls	r3, r3, #1
1a000892:	4413      	add	r3, r2
1a000894:	005b      	lsls	r3, r3, #1
1a000896:	440b      	add	r3, r1
1a000898:	3301      	adds	r3, #1
1a00089a:	781c      	ldrb	r4, [r3, #0]
1a00089c:	4981      	ldr	r1, [pc, #516]	; (1a000aa4 <sysInit+0x24c>)
1a00089e:	687a      	ldr	r2, [r7, #4]
1a0008a0:	4613      	mov	r3, r2
1a0008a2:	005b      	lsls	r3, r3, #1
1a0008a4:	4413      	add	r3, r2
1a0008a6:	005b      	lsls	r3, r3, #1
1a0008a8:	440b      	add	r3, r1
1a0008aa:	3304      	adds	r3, #4
1a0008ac:	881b      	ldrh	r3, [r3, #0]
1a0008ae:	461a      	mov	r2, r3
1a0008b0:	4621      	mov	r1, r4
1a0008b2:	f7ff febd 	bl	1a000630 <Chip_SCU_PinMuxSet>
1a0008b6:	497b      	ldr	r1, [pc, #492]	; (1a000aa4 <sysInit+0x24c>)
1a0008b8:	687a      	ldr	r2, [r7, #4]
1a0008ba:	4613      	mov	r3, r2
1a0008bc:	005b      	lsls	r3, r3, #1
1a0008be:	4413      	add	r3, r2
1a0008c0:	005b      	lsls	r3, r3, #1
1a0008c2:	440b      	add	r3, r1
1a0008c4:	3302      	adds	r3, #2
1a0008c6:	7818      	ldrb	r0, [r3, #0]
1a0008c8:	4976      	ldr	r1, [pc, #472]	; (1a000aa4 <sysInit+0x24c>)
1a0008ca:	687a      	ldr	r2, [r7, #4]
1a0008cc:	4613      	mov	r3, r2
1a0008ce:	005b      	lsls	r3, r3, #1
1a0008d0:	4413      	add	r3, r2
1a0008d2:	005b      	lsls	r3, r3, #1
1a0008d4:	440b      	add	r3, r1
1a0008d6:	3303      	adds	r3, #3
1a0008d8:	781b      	ldrb	r3, [r3, #0]
1a0008da:	461a      	mov	r2, r3
1a0008dc:	4601      	mov	r1, r0
1a0008de:	4870      	ldr	r0, [pc, #448]	; (1a000aa0 <sysInit+0x248>)
1a0008e0:	f7ff fefa 	bl	1a0006d8 <Chip_GPIO_SetPinDIROutput>
1a0008e4:	496f      	ldr	r1, [pc, #444]	; (1a000aa4 <sysInit+0x24c>)
1a0008e6:	687a      	ldr	r2, [r7, #4]
1a0008e8:	4613      	mov	r3, r2
1a0008ea:	005b      	lsls	r3, r3, #1
1a0008ec:	4413      	add	r3, r2
1a0008ee:	005b      	lsls	r3, r3, #1
1a0008f0:	440b      	add	r3, r1
1a0008f2:	3302      	adds	r3, #2
1a0008f4:	7818      	ldrb	r0, [r3, #0]
1a0008f6:	496b      	ldr	r1, [pc, #428]	; (1a000aa4 <sysInit+0x24c>)
1a0008f8:	687a      	ldr	r2, [r7, #4]
1a0008fa:	4613      	mov	r3, r2
1a0008fc:	005b      	lsls	r3, r3, #1
1a0008fe:	4413      	add	r3, r2
1a000900:	005b      	lsls	r3, r3, #1
1a000902:	440b      	add	r3, r1
1a000904:	3303      	adds	r3, #3
1a000906:	781b      	ldrb	r3, [r3, #0]
1a000908:	461a      	mov	r2, r3
1a00090a:	4601      	mov	r1, r0
1a00090c:	4864      	ldr	r0, [pc, #400]	; (1a000aa0 <sysInit+0x248>)
1a00090e:	f7ff ff22 	bl	1a000756 <Chip_GPIO_SetPinOutLow>
1a000912:	687b      	ldr	r3, [r7, #4]
1a000914:	3301      	adds	r3, #1
1a000916:	607b      	str	r3, [r7, #4]
1a000918:	687b      	ldr	r3, [r7, #4]
1a00091a:	2b05      	cmp	r3, #5
1a00091c:	d9ad      	bls.n	1a00087a <sysInit+0x22>
1a00091e:	2300      	movs	r3, #0
1a000920:	607b      	str	r3, [r7, #4]
1a000922:	e037      	b.n	1a000994 <sysInit+0x13c>
1a000924:	4960      	ldr	r1, [pc, #384]	; (1a000aa8 <sysInit+0x250>)
1a000926:	687a      	ldr	r2, [r7, #4]
1a000928:	4613      	mov	r3, r2
1a00092a:	005b      	lsls	r3, r3, #1
1a00092c:	4413      	add	r3, r2
1a00092e:	005b      	lsls	r3, r3, #1
1a000930:	440b      	add	r3, r1
1a000932:	7818      	ldrb	r0, [r3, #0]
1a000934:	495c      	ldr	r1, [pc, #368]	; (1a000aa8 <sysInit+0x250>)
1a000936:	687a      	ldr	r2, [r7, #4]
1a000938:	4613      	mov	r3, r2
1a00093a:	005b      	lsls	r3, r3, #1
1a00093c:	4413      	add	r3, r2
1a00093e:	005b      	lsls	r3, r3, #1
1a000940:	440b      	add	r3, r1
1a000942:	3301      	adds	r3, #1
1a000944:	781c      	ldrb	r4, [r3, #0]
1a000946:	4958      	ldr	r1, [pc, #352]	; (1a000aa8 <sysInit+0x250>)
1a000948:	687a      	ldr	r2, [r7, #4]
1a00094a:	4613      	mov	r3, r2
1a00094c:	005b      	lsls	r3, r3, #1
1a00094e:	4413      	add	r3, r2
1a000950:	005b      	lsls	r3, r3, #1
1a000952:	440b      	add	r3, r1
1a000954:	3304      	adds	r3, #4
1a000956:	881b      	ldrh	r3, [r3, #0]
1a000958:	461a      	mov	r2, r3
1a00095a:	4621      	mov	r1, r4
1a00095c:	f7ff fe68 	bl	1a000630 <Chip_SCU_PinMuxSet>
1a000960:	4951      	ldr	r1, [pc, #324]	; (1a000aa8 <sysInit+0x250>)
1a000962:	687a      	ldr	r2, [r7, #4]
1a000964:	4613      	mov	r3, r2
1a000966:	005b      	lsls	r3, r3, #1
1a000968:	4413      	add	r3, r2
1a00096a:	005b      	lsls	r3, r3, #1
1a00096c:	440b      	add	r3, r1
1a00096e:	3302      	adds	r3, #2
1a000970:	7818      	ldrb	r0, [r3, #0]
1a000972:	494d      	ldr	r1, [pc, #308]	; (1a000aa8 <sysInit+0x250>)
1a000974:	687a      	ldr	r2, [r7, #4]
1a000976:	4613      	mov	r3, r2
1a000978:	005b      	lsls	r3, r3, #1
1a00097a:	4413      	add	r3, r2
1a00097c:	005b      	lsls	r3, r3, #1
1a00097e:	440b      	add	r3, r1
1a000980:	3303      	adds	r3, #3
1a000982:	781b      	ldrb	r3, [r3, #0]
1a000984:	461a      	mov	r2, r3
1a000986:	4601      	mov	r1, r0
1a000988:	4845      	ldr	r0, [pc, #276]	; (1a000aa0 <sysInit+0x248>)
1a00098a:	f7ff fec4 	bl	1a000716 <Chip_GPIO_SetPinDIRInput>
1a00098e:	687b      	ldr	r3, [r7, #4]
1a000990:	3301      	adds	r3, #1
1a000992:	607b      	str	r3, [r7, #4]
1a000994:	687b      	ldr	r3, [r7, #4]
1a000996:	2b03      	cmp	r3, #3
1a000998:	d9c4      	bls.n	1a000924 <sysInit+0xcc>
1a00099a:	221e      	movs	r2, #30
1a00099c:	2101      	movs	r1, #1
1a00099e:	2007      	movs	r0, #7
1a0009a0:	f7ff fe46 	bl	1a000630 <Chip_SCU_PinMuxSet>
1a0009a4:	22d6      	movs	r2, #214	; 0xd6
1a0009a6:	2102      	movs	r1, #2
1a0009a8:	2007      	movs	r0, #7
1a0009aa:	f7ff fe41 	bl	1a000630 <Chip_SCU_PinMuxSet>
1a0009ae:	483f      	ldr	r0, [pc, #252]	; (1a000aac <sysInit+0x254>)
1a0009b0:	f000 fb78 	bl	1a0010a4 <Chip_UART_Init>
1a0009b4:	2103      	movs	r1, #3
1a0009b6:	483d      	ldr	r0, [pc, #244]	; (1a000aac <sysInit+0x254>)
1a0009b8:	f7ff ff40 	bl	1a00083c <Chip_UART_ConfigData>
1a0009bc:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0009c0:	483a      	ldr	r0, [pc, #232]	; (1a000aac <sysInit+0x254>)
1a0009c2:	f000 fbb3 	bl	1a00112c <Chip_UART_SetBaud>
1a0009c6:	21c7      	movs	r1, #199	; 0xc7
1a0009c8:	4838      	ldr	r0, [pc, #224]	; (1a000aac <sysInit+0x254>)
1a0009ca:	f7ff ff29 	bl	1a000820 <Chip_UART_SetupFIFOS>
1a0009ce:	2101      	movs	r1, #1
1a0009d0:	4836      	ldr	r0, [pc, #216]	; (1a000aac <sysInit+0x254>)
1a0009d2:	f7ff ff14 	bl	1a0007fe <Chip_UART_IntEnable>
1a0009d6:	2300      	movs	r3, #0
1a0009d8:	607b      	str	r3, [r7, #4]
1a0009da:	e032      	b.n	1a000a42 <sysInit+0x1ea>
1a0009dc:	687b      	ldr	r3, [r7, #4]
1a0009de:	b2d8      	uxtb	r0, r3
1a0009e0:	4931      	ldr	r1, [pc, #196]	; (1a000aa8 <sysInit+0x250>)
1a0009e2:	687a      	ldr	r2, [r7, #4]
1a0009e4:	4613      	mov	r3, r2
1a0009e6:	005b      	lsls	r3, r3, #1
1a0009e8:	4413      	add	r3, r2
1a0009ea:	005b      	lsls	r3, r3, #1
1a0009ec:	440b      	add	r3, r1
1a0009ee:	3302      	adds	r3, #2
1a0009f0:	781c      	ldrb	r4, [r3, #0]
1a0009f2:	492d      	ldr	r1, [pc, #180]	; (1a000aa8 <sysInit+0x250>)
1a0009f4:	687a      	ldr	r2, [r7, #4]
1a0009f6:	4613      	mov	r3, r2
1a0009f8:	005b      	lsls	r3, r3, #1
1a0009fa:	4413      	add	r3, r2
1a0009fc:	005b      	lsls	r3, r3, #1
1a0009fe:	440b      	add	r3, r1
1a000a00:	3303      	adds	r3, #3
1a000a02:	781b      	ldrb	r3, [r3, #0]
1a000a04:	461a      	mov	r2, r3
1a000a06:	4621      	mov	r1, r4
1a000a08:	f7ff fe2c 	bl	1a000664 <Chip_SCU_GPIOIntPinSel>
1a000a0c:	2201      	movs	r2, #1
1a000a0e:	687b      	ldr	r3, [r7, #4]
1a000a10:	fa02 f303 	lsl.w	r3, r2, r3
1a000a14:	4619      	mov	r1, r3
1a000a16:	4826      	ldr	r0, [pc, #152]	; (1a000ab0 <sysInit+0x258>)
1a000a18:	f7ff fed6 	bl	1a0007c8 <Chip_PININT_ClearIntStatus>
1a000a1c:	2201      	movs	r2, #1
1a000a1e:	687b      	ldr	r3, [r7, #4]
1a000a20:	fa02 f303 	lsl.w	r3, r2, r3
1a000a24:	4619      	mov	r1, r3
1a000a26:	4822      	ldr	r0, [pc, #136]	; (1a000ab0 <sysInit+0x258>)
1a000a28:	f7ff feae 	bl	1a000788 <Chip_PININT_SetPinModeEdge>
1a000a2c:	2201      	movs	r2, #1
1a000a2e:	687b      	ldr	r3, [r7, #4]
1a000a30:	fa02 f303 	lsl.w	r3, r2, r3
1a000a34:	4619      	mov	r1, r3
1a000a36:	481e      	ldr	r0, [pc, #120]	; (1a000ab0 <sysInit+0x258>)
1a000a38:	f7ff feb8 	bl	1a0007ac <Chip_PININT_EnableIntLow>
1a000a3c:	687b      	ldr	r3, [r7, #4]
1a000a3e:	3301      	adds	r3, #1
1a000a40:	607b      	str	r3, [r7, #4]
1a000a42:	687b      	ldr	r3, [r7, #4]
1a000a44:	2b03      	cmp	r3, #3
1a000a46:	ddc9      	ble.n	1a0009dc <sysInit+0x184>
1a000a48:	2020      	movs	r0, #32
1a000a4a:	f7ff fd8b 	bl	1a000564 <NVIC_ClearPendingIRQ>
1a000a4e:	2021      	movs	r0, #33	; 0x21
1a000a50:	f7ff fd88 	bl	1a000564 <NVIC_ClearPendingIRQ>
1a000a54:	2022      	movs	r0, #34	; 0x22
1a000a56:	f7ff fd85 	bl	1a000564 <NVIC_ClearPendingIRQ>
1a000a5a:	2023      	movs	r0, #35	; 0x23
1a000a5c:	f7ff fd82 	bl	1a000564 <NVIC_ClearPendingIRQ>
1a000a60:	2020      	movs	r0, #32
1a000a62:	f7ff fd65 	bl	1a000530 <NVIC_EnableIRQ>
1a000a66:	2021      	movs	r0, #33	; 0x21
1a000a68:	f7ff fd62 	bl	1a000530 <NVIC_EnableIRQ>
1a000a6c:	2022      	movs	r0, #34	; 0x22
1a000a6e:	f7ff fd5f 	bl	1a000530 <NVIC_EnableIRQ>
1a000a72:	2023      	movs	r0, #35	; 0x23
1a000a74:	f7ff fd5c 	bl	1a000530 <NVIC_EnableIRQ>
1a000a78:	201a      	movs	r0, #26
1a000a7a:	f7ff fd59 	bl	1a000530 <NVIC_EnableIRQ>
1a000a7e:	480b      	ldr	r0, [pc, #44]	; (1a000aac <sysInit+0x254>)
1a000a80:	f7ff feb0 	bl	1a0007e4 <Chip_UART_TXEnable>
1a000a84:	4b0b      	ldr	r3, [pc, #44]	; (1a000ab4 <sysInit+0x25c>)
1a000a86:	681b      	ldr	r3, [r3, #0]
1a000a88:	4a0b      	ldr	r2, [pc, #44]	; (1a000ab8 <sysInit+0x260>)
1a000a8a:	fba2 2303 	umull	r2, r3, r2, r3
1a000a8e:	099b      	lsrs	r3, r3, #6
1a000a90:	4618      	mov	r0, r3
1a000a92:	f7ff fdab 	bl	1a0005ec <SysTick_Config>
1a000a96:	bf00      	nop
1a000a98:	370c      	adds	r7, #12
1a000a9a:	46bd      	mov	sp, r7
1a000a9c:	bd90      	pop	{r4, r7, pc}
1a000a9e:	bf00      	nop
1a000aa0:	400f4000 	.word	0x400f4000
1a000aa4:	1a002960 	.word	0x1a002960
1a000aa8:	1a002984 	.word	0x1a002984
1a000aac:	400c1000 	.word	0x400c1000
1a000ab0:	40087000 	.word	0x40087000
1a000ab4:	100008dc 	.word	0x100008dc
1a000ab8:	10624dd3 	.word	0x10624dd3

1a000abc <SysTick_Handler>:
1a000abc:	b480      	push	{r7}
1a000abe:	af00      	add	r7, sp, #0
1a000ac0:	4b03      	ldr	r3, [pc, #12]	; (1a000ad0 <SysTick_Handler+0x14>)
1a000ac2:	2201      	movs	r2, #1
1a000ac4:	701a      	strb	r2, [r3, #0]
1a000ac6:	bf00      	nop
1a000ac8:	46bd      	mov	sp, r7
1a000aca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ace:	4770      	bx	lr
1a000ad0:	1000086d 	.word	0x1000086d

1a000ad4 <GPIO0_IRQHandler>:
1a000ad4:	b580      	push	{r7, lr}
1a000ad6:	af00      	add	r7, sp, #0
1a000ad8:	4b04      	ldr	r3, [pc, #16]	; (1a000aec <GPIO0_IRQHandler+0x18>)
1a000ada:	2201      	movs	r2, #1
1a000adc:	701a      	strb	r2, [r3, #0]
1a000ade:	2101      	movs	r1, #1
1a000ae0:	4803      	ldr	r0, [pc, #12]	; (1a000af0 <GPIO0_IRQHandler+0x1c>)
1a000ae2:	f7ff fe71 	bl	1a0007c8 <Chip_PININT_ClearIntStatus>
1a000ae6:	bf00      	nop
1a000ae8:	bd80      	pop	{r7, pc}
1a000aea:	bf00      	nop
1a000aec:	1000086c 	.word	0x1000086c
1a000af0:	40087000 	.word	0x40087000

1a000af4 <GPIO1_IRQHandler>:
1a000af4:	b580      	push	{r7, lr}
1a000af6:	af00      	add	r7, sp, #0
1a000af8:	4b04      	ldr	r3, [pc, #16]	; (1a000b0c <GPIO1_IRQHandler+0x18>)
1a000afa:	2202      	movs	r2, #2
1a000afc:	701a      	strb	r2, [r3, #0]
1a000afe:	2102      	movs	r1, #2
1a000b00:	4803      	ldr	r0, [pc, #12]	; (1a000b10 <GPIO1_IRQHandler+0x1c>)
1a000b02:	f7ff fe61 	bl	1a0007c8 <Chip_PININT_ClearIntStatus>
1a000b06:	bf00      	nop
1a000b08:	bd80      	pop	{r7, pc}
1a000b0a:	bf00      	nop
1a000b0c:	1000086c 	.word	0x1000086c
1a000b10:	40087000 	.word	0x40087000

1a000b14 <GPIO2_IRQHandler>:
1a000b14:	b580      	push	{r7, lr}
1a000b16:	af00      	add	r7, sp, #0
1a000b18:	4b04      	ldr	r3, [pc, #16]	; (1a000b2c <GPIO2_IRQHandler+0x18>)
1a000b1a:	2203      	movs	r2, #3
1a000b1c:	701a      	strb	r2, [r3, #0]
1a000b1e:	2104      	movs	r1, #4
1a000b20:	4803      	ldr	r0, [pc, #12]	; (1a000b30 <GPIO2_IRQHandler+0x1c>)
1a000b22:	f7ff fe51 	bl	1a0007c8 <Chip_PININT_ClearIntStatus>
1a000b26:	bf00      	nop
1a000b28:	bd80      	pop	{r7, pc}
1a000b2a:	bf00      	nop
1a000b2c:	1000086c 	.word	0x1000086c
1a000b30:	40087000 	.word	0x40087000

1a000b34 <GPIO3_IRQHandler>:
1a000b34:	b580      	push	{r7, lr}
1a000b36:	af00      	add	r7, sp, #0
1a000b38:	4b04      	ldr	r3, [pc, #16]	; (1a000b4c <GPIO3_IRQHandler+0x18>)
1a000b3a:	2204      	movs	r2, #4
1a000b3c:	701a      	strb	r2, [r3, #0]
1a000b3e:	2108      	movs	r1, #8
1a000b40:	4803      	ldr	r0, [pc, #12]	; (1a000b50 <GPIO3_IRQHandler+0x1c>)
1a000b42:	f7ff fe41 	bl	1a0007c8 <Chip_PININT_ClearIntStatus>
1a000b46:	bf00      	nop
1a000b48:	bd80      	pop	{r7, pc}
1a000b4a:	bf00      	nop
1a000b4c:	1000086c 	.word	0x1000086c
1a000b50:	40087000 	.word	0x40087000

1a000b54 <_sbrk>:
1a000b54:	b580      	push	{r7, lr}
1a000b56:	b084      	sub	sp, #16
1a000b58:	af00      	add	r7, sp, #0
1a000b5a:	6078      	str	r0, [r7, #4]
1a000b5c:	4b0d      	ldr	r3, [pc, #52]	; (1a000b94 <_sbrk+0x40>)
1a000b5e:	681b      	ldr	r3, [r3, #0]
1a000b60:	60fb      	str	r3, [r7, #12]
1a000b62:	4b0c      	ldr	r3, [pc, #48]	; (1a000b94 <_sbrk+0x40>)
1a000b64:	681a      	ldr	r2, [r3, #0]
1a000b66:	687b      	ldr	r3, [r7, #4]
1a000b68:	4413      	add	r3, r2
1a000b6a:	4a0a      	ldr	r2, [pc, #40]	; (1a000b94 <_sbrk+0x40>)
1a000b6c:	6013      	str	r3, [r2, #0]
1a000b6e:	4b09      	ldr	r3, [pc, #36]	; (1a000b94 <_sbrk+0x40>)
1a000b70:	681b      	ldr	r3, [r3, #0]
1a000b72:	4a09      	ldr	r2, [pc, #36]	; (1a000b98 <_sbrk+0x44>)
1a000b74:	4293      	cmp	r3, r2
1a000b76:	d307      	bcc.n	1a000b88 <_sbrk+0x34>
1a000b78:	4a06      	ldr	r2, [pc, #24]	; (1a000b94 <_sbrk+0x40>)
1a000b7a:	68fb      	ldr	r3, [r7, #12]
1a000b7c:	6013      	str	r3, [r2, #0]
1a000b7e:	4b07      	ldr	r3, [pc, #28]	; (1a000b9c <_sbrk+0x48>)
1a000b80:	220c      	movs	r2, #12
1a000b82:	601a      	str	r2, [r3, #0]
1a000b84:	f001 f998 	bl	1a001eb8 <abort>
1a000b88:	68fb      	ldr	r3, [r7, #12]
1a000b8a:	4618      	mov	r0, r3
1a000b8c:	3710      	adds	r7, #16
1a000b8e:	46bd      	mov	sp, r7
1a000b90:	bd80      	pop	{r7, pc}
1a000b92:	bf00      	nop
1a000b94:	10000430 	.word	0x10000430
1a000b98:	1008a000 	.word	0x1008a000
1a000b9c:	100008e0 	.word	0x100008e0

1a000ba0 <_kill>:
1a000ba0:	b480      	push	{r7}
1a000ba2:	b083      	sub	sp, #12
1a000ba4:	af00      	add	r7, sp, #0
1a000ba6:	6078      	str	r0, [r7, #4]
1a000ba8:	6039      	str	r1, [r7, #0]
1a000baa:	4b05      	ldr	r3, [pc, #20]	; (1a000bc0 <_kill+0x20>)
1a000bac:	2216      	movs	r2, #22
1a000bae:	601a      	str	r2, [r3, #0]
1a000bb0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a000bb4:	4618      	mov	r0, r3
1a000bb6:	370c      	adds	r7, #12
1a000bb8:	46bd      	mov	sp, r7
1a000bba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bbe:	4770      	bx	lr
1a000bc0:	100008e0 	.word	0x100008e0

1a000bc4 <_getpid>:
1a000bc4:	b480      	push	{r7}
1a000bc6:	af00      	add	r7, sp, #0
1a000bc8:	2301      	movs	r3, #1
1a000bca:	4618      	mov	r0, r3
1a000bcc:	46bd      	mov	sp, r7
1a000bce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bd2:	4770      	bx	lr

1a000bd4 <_exit>:
1a000bd4:	b580      	push	{r7, lr}
1a000bd6:	b082      	sub	sp, #8
1a000bd8:	af00      	add	r7, sp, #0
1a000bda:	6078      	str	r0, [r7, #4]
1a000bdc:	6878      	ldr	r0, [r7, #4]
1a000bde:	f001 f967 	bl	1a001eb0 <_Exit>
1a000be2:	Address 0x000000001a000be2 is out of bounds.


1a000be4 <fpuInit>:
1a000be4:	b480      	push	{r7}
1a000be6:	b089      	sub	sp, #36	; 0x24
1a000be8:	af00      	add	r7, sp, #0
1a000bea:	4b16      	ldr	r3, [pc, #88]	; (1a000c44 <fpuInit+0x60>)
1a000bec:	61fb      	str	r3, [r7, #28]
1a000bee:	4b16      	ldr	r3, [pc, #88]	; (1a000c48 <fpuInit+0x64>)
1a000bf0:	61bb      	str	r3, [r7, #24]
1a000bf2:	4b16      	ldr	r3, [pc, #88]	; (1a000c4c <fpuInit+0x68>)
1a000bf4:	617b      	str	r3, [r7, #20]
1a000bf6:	2300      	movs	r3, #0
1a000bf8:	74fb      	strb	r3, [r7, #19]
1a000bfa:	69bb      	ldr	r3, [r7, #24]
1a000bfc:	681b      	ldr	r3, [r3, #0]
1a000bfe:	60bb      	str	r3, [r7, #8]
1a000c00:	697b      	ldr	r3, [r7, #20]
1a000c02:	681b      	ldr	r3, [r3, #0]
1a000c04:	607b      	str	r3, [r7, #4]
1a000c06:	68bb      	ldr	r3, [r7, #8]
1a000c08:	4a11      	ldr	r2, [pc, #68]	; (1a000c50 <fpuInit+0x6c>)
1a000c0a:	4293      	cmp	r3, r2
1a000c0c:	d105      	bne.n	1a000c1a <fpuInit+0x36>
1a000c0e:	687b      	ldr	r3, [r7, #4]
1a000c10:	4a10      	ldr	r2, [pc, #64]	; (1a000c54 <fpuInit+0x70>)
1a000c12:	4293      	cmp	r3, r2
1a000c14:	d101      	bne.n	1a000c1a <fpuInit+0x36>
1a000c16:	2301      	movs	r3, #1
1a000c18:	e000      	b.n	1a000c1c <fpuInit+0x38>
1a000c1a:	2300      	movs	r3, #0
1a000c1c:	74fb      	strb	r3, [r7, #19]
1a000c1e:	7cfb      	ldrb	r3, [r7, #19]
1a000c20:	2b00      	cmp	r3, #0
1a000c22:	d009      	beq.n	1a000c38 <fpuInit+0x54>
1a000c24:	69fb      	ldr	r3, [r7, #28]
1a000c26:	681b      	ldr	r3, [r3, #0]
1a000c28:	60fb      	str	r3, [r7, #12]
1a000c2a:	68fb      	ldr	r3, [r7, #12]
1a000c2c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000c30:	60fb      	str	r3, [r7, #12]
1a000c32:	68fa      	ldr	r2, [r7, #12]
1a000c34:	69fb      	ldr	r3, [r7, #28]
1a000c36:	601a      	str	r2, [r3, #0]
1a000c38:	bf00      	nop
1a000c3a:	3724      	adds	r7, #36	; 0x24
1a000c3c:	46bd      	mov	sp, r7
1a000c3e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c42:	4770      	bx	lr
1a000c44:	e000ed88 	.word	0xe000ed88
1a000c48:	e000ef40 	.word	0xe000ef40
1a000c4c:	e000ef44 	.word	0xe000ef44
1a000c50:	10110021 	.word	0x10110021
1a000c54:	11000011 	.word	0x11000011

1a000c58 <Chip_Clock_DisableMainPLL>:
1a000c58:	b480      	push	{r7}
1a000c5a:	af00      	add	r7, sp, #0
1a000c5c:	4b05      	ldr	r3, [pc, #20]	; (1a000c74 <Chip_Clock_DisableMainPLL+0x1c>)
1a000c5e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000c60:	4a04      	ldr	r2, [pc, #16]	; (1a000c74 <Chip_Clock_DisableMainPLL+0x1c>)
1a000c62:	f043 0301 	orr.w	r3, r3, #1
1a000c66:	6453      	str	r3, [r2, #68]	; 0x44
1a000c68:	bf00      	nop
1a000c6a:	46bd      	mov	sp, r7
1a000c6c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c70:	4770      	bx	lr
1a000c72:	bf00      	nop
1a000c74:	40050000 	.word	0x40050000

1a000c78 <Chip_Clock_SetupMainPLL>:
1a000c78:	b480      	push	{r7}
1a000c7a:	b083      	sub	sp, #12
1a000c7c:	af00      	add	r7, sp, #0
1a000c7e:	6078      	str	r0, [r7, #4]
1a000c80:	687b      	ldr	r3, [r7, #4]
1a000c82:	681b      	ldr	r3, [r3, #0]
1a000c84:	461a      	mov	r2, r3
1a000c86:	687b      	ldr	r3, [r7, #4]
1a000c88:	791b      	ldrb	r3, [r3, #4]
1a000c8a:	061b      	lsls	r3, r3, #24
1a000c8c:	4313      	orrs	r3, r2
1a000c8e:	687a      	ldr	r2, [r7, #4]
1a000c90:	6912      	ldr	r2, [r2, #16]
1a000c92:	0412      	lsls	r2, r2, #16
1a000c94:	4313      	orrs	r3, r2
1a000c96:	687a      	ldr	r2, [r7, #4]
1a000c98:	6892      	ldr	r2, [r2, #8]
1a000c9a:	0312      	lsls	r2, r2, #12
1a000c9c:	4313      	orrs	r3, r2
1a000c9e:	687a      	ldr	r2, [r7, #4]
1a000ca0:	68d2      	ldr	r2, [r2, #12]
1a000ca2:	0212      	lsls	r2, r2, #8
1a000ca4:	4313      	orrs	r3, r2
1a000ca6:	4a05      	ldr	r2, [pc, #20]	; (1a000cbc <Chip_Clock_SetupMainPLL+0x44>)
1a000ca8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000cac:	6453      	str	r3, [r2, #68]	; 0x44
1a000cae:	bf00      	nop
1a000cb0:	370c      	adds	r7, #12
1a000cb2:	46bd      	mov	sp, r7
1a000cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cb8:	4770      	bx	lr
1a000cba:	bf00      	nop
1a000cbc:	40050000 	.word	0x40050000

1a000cc0 <Chip_Clock_MainPLLLocked>:
1a000cc0:	b480      	push	{r7}
1a000cc2:	af00      	add	r7, sp, #0
1a000cc4:	4b06      	ldr	r3, [pc, #24]	; (1a000ce0 <Chip_Clock_MainPLLLocked+0x20>)
1a000cc6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000cc8:	f003 0301 	and.w	r3, r3, #1
1a000ccc:	2b00      	cmp	r3, #0
1a000cce:	bf14      	ite	ne
1a000cd0:	2301      	movne	r3, #1
1a000cd2:	2300      	moveq	r3, #0
1a000cd4:	b2db      	uxtb	r3, r3
1a000cd6:	4618      	mov	r0, r3
1a000cd8:	46bd      	mov	sp, r7
1a000cda:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cde:	4770      	bx	lr
1a000ce0:	40050000 	.word	0x40050000

1a000ce4 <Chip_SetupCoreClock>:
1a000ce4:	b590      	push	{r4, r7, lr}
1a000ce6:	b08f      	sub	sp, #60	; 0x3c
1a000ce8:	af00      	add	r7, sp, #0
1a000cea:	4603      	mov	r3, r0
1a000cec:	6039      	str	r1, [r7, #0]
1a000cee:	71fb      	strb	r3, [r7, #7]
1a000cf0:	4613      	mov	r3, r2
1a000cf2:	71bb      	strb	r3, [r7, #6]
1a000cf4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000cf8:	62bb      	str	r3, [r7, #40]	; 0x28
1a000cfa:	2300      	movs	r3, #0
1a000cfc:	633b      	str	r3, [r7, #48]	; 0x30
1a000cfe:	2300      	movs	r3, #0
1a000d00:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000d02:	79fb      	ldrb	r3, [r7, #7]
1a000d04:	2b06      	cmp	r3, #6
1a000d06:	d101      	bne.n	1a000d0c <Chip_SetupCoreClock+0x28>
1a000d08:	f000 fd6c 	bl	1a0017e4 <Chip_Clock_EnableCrystal>
1a000d0c:	79f9      	ldrb	r1, [r7, #7]
1a000d0e:	2300      	movs	r3, #0
1a000d10:	2201      	movs	r2, #1
1a000d12:	2004      	movs	r0, #4
1a000d14:	f000 ff58 	bl	1a001bc8 <Chip_Clock_SetBaseClock>
1a000d18:	f7ff ff9e 	bl	1a000c58 <Chip_Clock_DisableMainPLL>
1a000d1c:	79fb      	ldrb	r3, [r7, #7]
1a000d1e:	733b      	strb	r3, [r7, #12]
1a000d20:	f107 0308 	add.w	r3, r7, #8
1a000d24:	4619      	mov	r1, r3
1a000d26:	6838      	ldr	r0, [r7, #0]
1a000d28:	f000 fd94 	bl	1a001854 <Chip_Clock_CalcMainPLLValue>
1a000d2c:	683b      	ldr	r3, [r7, #0]
1a000d2e:	4a3d      	ldr	r2, [pc, #244]	; (1a000e24 <Chip_SetupCoreClock+0x140>)
1a000d30:	4293      	cmp	r3, r2
1a000d32:	d916      	bls.n	1a000d62 <Chip_SetupCoreClock+0x7e>
1a000d34:	68bb      	ldr	r3, [r7, #8]
1a000d36:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000d3a:	2b00      	cmp	r3, #0
1a000d3c:	d000      	beq.n	1a000d40 <Chip_SetupCoreClock+0x5c>
1a000d3e:	e7fe      	b.n	1a000d3e <Chip_SetupCoreClock+0x5a>
1a000d40:	68bb      	ldr	r3, [r7, #8]
1a000d42:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000d46:	2b00      	cmp	r3, #0
1a000d48:	d006      	beq.n	1a000d58 <Chip_SetupCoreClock+0x74>
1a000d4a:	2301      	movs	r3, #1
1a000d4c:	633b      	str	r3, [r7, #48]	; 0x30
1a000d4e:	68bb      	ldr	r3, [r7, #8]
1a000d50:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000d54:	60bb      	str	r3, [r7, #8]
1a000d56:	e004      	b.n	1a000d62 <Chip_SetupCoreClock+0x7e>
1a000d58:	2301      	movs	r3, #1
1a000d5a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000d5c:	697b      	ldr	r3, [r7, #20]
1a000d5e:	3301      	adds	r3, #1
1a000d60:	617b      	str	r3, [r7, #20]
1a000d62:	f107 0308 	add.w	r3, r7, #8
1a000d66:	4618      	mov	r0, r3
1a000d68:	f7ff ff86 	bl	1a000c78 <Chip_Clock_SetupMainPLL>
1a000d6c:	bf00      	nop
1a000d6e:	f7ff ffa7 	bl	1a000cc0 <Chip_Clock_MainPLLLocked>
1a000d72:	4603      	mov	r3, r0
1a000d74:	2b00      	cmp	r3, #0
1a000d76:	d0fa      	beq.n	1a000d6e <Chip_SetupCoreClock+0x8a>
1a000d78:	2300      	movs	r3, #0
1a000d7a:	2201      	movs	r2, #1
1a000d7c:	2109      	movs	r1, #9
1a000d7e:	2004      	movs	r0, #4
1a000d80:	f000 ff22 	bl	1a001bc8 <Chip_Clock_SetBaseClock>
1a000d84:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000d86:	2b00      	cmp	r3, #0
1a000d88:	d012      	beq.n	1a000db0 <Chip_SetupCoreClock+0xcc>
1a000d8a:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000d8e:	62bb      	str	r3, [r7, #40]	; 0x28
1a000d90:	bf00      	nop
1a000d92:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000d94:	1e5a      	subs	r2, r3, #1
1a000d96:	62ba      	str	r2, [r7, #40]	; 0x28
1a000d98:	2b00      	cmp	r3, #0
1a000d9a:	d1fa      	bne.n	1a000d92 <Chip_SetupCoreClock+0xae>
1a000d9c:	68bb      	ldr	r3, [r7, #8]
1a000d9e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000da2:	60bb      	str	r3, [r7, #8]
1a000da4:	f107 0308 	add.w	r3, r7, #8
1a000da8:	4618      	mov	r0, r3
1a000daa:	f7ff ff65 	bl	1a000c78 <Chip_Clock_SetupMainPLL>
1a000dae:	e013      	b.n	1a000dd8 <Chip_SetupCoreClock+0xf4>
1a000db0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000db2:	2b00      	cmp	r3, #0
1a000db4:	d010      	beq.n	1a000dd8 <Chip_SetupCoreClock+0xf4>
1a000db6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000dba:	62bb      	str	r3, [r7, #40]	; 0x28
1a000dbc:	bf00      	nop
1a000dbe:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000dc0:	1e5a      	subs	r2, r3, #1
1a000dc2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000dc4:	2b00      	cmp	r3, #0
1a000dc6:	d1fa      	bne.n	1a000dbe <Chip_SetupCoreClock+0xda>
1a000dc8:	697b      	ldr	r3, [r7, #20]
1a000dca:	3b01      	subs	r3, #1
1a000dcc:	617b      	str	r3, [r7, #20]
1a000dce:	f107 0308 	add.w	r3, r7, #8
1a000dd2:	4618      	mov	r0, r3
1a000dd4:	f7ff ff50 	bl	1a000c78 <Chip_Clock_SetupMainPLL>
1a000dd8:	79bb      	ldrb	r3, [r7, #6]
1a000dda:	2b00      	cmp	r3, #0
1a000ddc:	d01e      	beq.n	1a000e1c <Chip_SetupCoreClock+0x138>
1a000dde:	2300      	movs	r3, #0
1a000de0:	637b      	str	r3, [r7, #52]	; 0x34
1a000de2:	e018      	b.n	1a000e16 <Chip_SetupCoreClock+0x132>
1a000de4:	4a10      	ldr	r2, [pc, #64]	; (1a000e28 <Chip_SetupCoreClock+0x144>)
1a000de6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000de8:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000dec:	4a0e      	ldr	r2, [pc, #56]	; (1a000e28 <Chip_SetupCoreClock+0x144>)
1a000dee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000df0:	009b      	lsls	r3, r3, #2
1a000df2:	4413      	add	r3, r2
1a000df4:	7859      	ldrb	r1, [r3, #1]
1a000df6:	4a0c      	ldr	r2, [pc, #48]	; (1a000e28 <Chip_SetupCoreClock+0x144>)
1a000df8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000dfa:	009b      	lsls	r3, r3, #2
1a000dfc:	4413      	add	r3, r2
1a000dfe:	789c      	ldrb	r4, [r3, #2]
1a000e00:	4a09      	ldr	r2, [pc, #36]	; (1a000e28 <Chip_SetupCoreClock+0x144>)
1a000e02:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e04:	009b      	lsls	r3, r3, #2
1a000e06:	4413      	add	r3, r2
1a000e08:	78db      	ldrb	r3, [r3, #3]
1a000e0a:	4622      	mov	r2, r4
1a000e0c:	f000 fedc 	bl	1a001bc8 <Chip_Clock_SetBaseClock>
1a000e10:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e12:	3301      	adds	r3, #1
1a000e14:	637b      	str	r3, [r7, #52]	; 0x34
1a000e16:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e18:	2b11      	cmp	r3, #17
1a000e1a:	d9e3      	bls.n	1a000de4 <Chip_SetupCoreClock+0x100>
1a000e1c:	bf00      	nop
1a000e1e:	373c      	adds	r7, #60	; 0x3c
1a000e20:	46bd      	mov	sp, r7
1a000e22:	bd90      	pop	{r4, r7, pc}
1a000e24:	068e7780 	.word	0x068e7780
1a000e28:	1a00299c 	.word	0x1a00299c

1a000e2c <Chip_SetupXtalClocking>:
1a000e2c:	b580      	push	{r7, lr}
1a000e2e:	af00      	add	r7, sp, #0
1a000e30:	2201      	movs	r2, #1
1a000e32:	4903      	ldr	r1, [pc, #12]	; (1a000e40 <Chip_SetupXtalClocking+0x14>)
1a000e34:	2006      	movs	r0, #6
1a000e36:	f7ff ff55 	bl	1a000ce4 <Chip_SetupCoreClock>
1a000e3a:	bf00      	nop
1a000e3c:	bd80      	pop	{r7, pc}
1a000e3e:	bf00      	nop
1a000e40:	0c28cb00 	.word	0x0c28cb00

1a000e44 <RingBuffer_IsEmpty>:
1a000e44:	b480      	push	{r7}
1a000e46:	b083      	sub	sp, #12
1a000e48:	af00      	add	r7, sp, #0
1a000e4a:	6078      	str	r0, [r7, #4]
1a000e4c:	687b      	ldr	r3, [r7, #4]
1a000e4e:	330c      	adds	r3, #12
1a000e50:	681a      	ldr	r2, [r3, #0]
1a000e52:	687b      	ldr	r3, [r7, #4]
1a000e54:	3310      	adds	r3, #16
1a000e56:	681b      	ldr	r3, [r3, #0]
1a000e58:	429a      	cmp	r2, r3
1a000e5a:	bf0c      	ite	eq
1a000e5c:	2301      	moveq	r3, #1
1a000e5e:	2300      	movne	r3, #0
1a000e60:	b2db      	uxtb	r3, r3
1a000e62:	4618      	mov	r0, r3
1a000e64:	370c      	adds	r7, #12
1a000e66:	46bd      	mov	sp, r7
1a000e68:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e6c:	4770      	bx	lr

1a000e6e <Chip_UART_TXDisable>:
1a000e6e:	b480      	push	{r7}
1a000e70:	b083      	sub	sp, #12
1a000e72:	af00      	add	r7, sp, #0
1a000e74:	6078      	str	r0, [r7, #4]
1a000e76:	687b      	ldr	r3, [r7, #4]
1a000e78:	2200      	movs	r2, #0
1a000e7a:	65da      	str	r2, [r3, #92]	; 0x5c
1a000e7c:	bf00      	nop
1a000e7e:	370c      	adds	r7, #12
1a000e80:	46bd      	mov	sp, r7
1a000e82:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e86:	4770      	bx	lr

1a000e88 <Chip_UART_SendByte>:
1a000e88:	b480      	push	{r7}
1a000e8a:	b083      	sub	sp, #12
1a000e8c:	af00      	add	r7, sp, #0
1a000e8e:	6078      	str	r0, [r7, #4]
1a000e90:	460b      	mov	r3, r1
1a000e92:	70fb      	strb	r3, [r7, #3]
1a000e94:	78fa      	ldrb	r2, [r7, #3]
1a000e96:	687b      	ldr	r3, [r7, #4]
1a000e98:	601a      	str	r2, [r3, #0]
1a000e9a:	bf00      	nop
1a000e9c:	370c      	adds	r7, #12
1a000e9e:	46bd      	mov	sp, r7
1a000ea0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ea4:	4770      	bx	lr

1a000ea6 <Chip_UART_ReadByte>:
1a000ea6:	b480      	push	{r7}
1a000ea8:	b083      	sub	sp, #12
1a000eaa:	af00      	add	r7, sp, #0
1a000eac:	6078      	str	r0, [r7, #4]
1a000eae:	687b      	ldr	r3, [r7, #4]
1a000eb0:	681b      	ldr	r3, [r3, #0]
1a000eb2:	b2db      	uxtb	r3, r3
1a000eb4:	4618      	mov	r0, r3
1a000eb6:	370c      	adds	r7, #12
1a000eb8:	46bd      	mov	sp, r7
1a000eba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ebe:	4770      	bx	lr

1a000ec0 <Chip_UART_IntDisable>:
1a000ec0:	b480      	push	{r7}
1a000ec2:	b083      	sub	sp, #12
1a000ec4:	af00      	add	r7, sp, #0
1a000ec6:	6078      	str	r0, [r7, #4]
1a000ec8:	6039      	str	r1, [r7, #0]
1a000eca:	687b      	ldr	r3, [r7, #4]
1a000ecc:	685a      	ldr	r2, [r3, #4]
1a000ece:	683b      	ldr	r3, [r7, #0]
1a000ed0:	43db      	mvns	r3, r3
1a000ed2:	401a      	ands	r2, r3
1a000ed4:	687b      	ldr	r3, [r7, #4]
1a000ed6:	605a      	str	r2, [r3, #4]
1a000ed8:	bf00      	nop
1a000eda:	370c      	adds	r7, #12
1a000edc:	46bd      	mov	sp, r7
1a000ede:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ee2:	4770      	bx	lr

1a000ee4 <Chip_UART_ReadIntIDReg>:
1a000ee4:	b480      	push	{r7}
1a000ee6:	b083      	sub	sp, #12
1a000ee8:	af00      	add	r7, sp, #0
1a000eea:	6078      	str	r0, [r7, #4]
1a000eec:	687b      	ldr	r3, [r7, #4]
1a000eee:	689b      	ldr	r3, [r3, #8]
1a000ef0:	4618      	mov	r0, r3
1a000ef2:	370c      	adds	r7, #12
1a000ef4:	46bd      	mov	sp, r7
1a000ef6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000efa:	4770      	bx	lr

1a000efc <Chip_UART_SetupFIFOS>:
1a000efc:	b480      	push	{r7}
1a000efe:	b083      	sub	sp, #12
1a000f00:	af00      	add	r7, sp, #0
1a000f02:	6078      	str	r0, [r7, #4]
1a000f04:	6039      	str	r1, [r7, #0]
1a000f06:	687b      	ldr	r3, [r7, #4]
1a000f08:	683a      	ldr	r2, [r7, #0]
1a000f0a:	609a      	str	r2, [r3, #8]
1a000f0c:	bf00      	nop
1a000f0e:	370c      	adds	r7, #12
1a000f10:	46bd      	mov	sp, r7
1a000f12:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f16:	4770      	bx	lr

1a000f18 <Chip_UART_ConfigData>:
1a000f18:	b480      	push	{r7}
1a000f1a:	b083      	sub	sp, #12
1a000f1c:	af00      	add	r7, sp, #0
1a000f1e:	6078      	str	r0, [r7, #4]
1a000f20:	6039      	str	r1, [r7, #0]
1a000f22:	687b      	ldr	r3, [r7, #4]
1a000f24:	683a      	ldr	r2, [r7, #0]
1a000f26:	60da      	str	r2, [r3, #12]
1a000f28:	bf00      	nop
1a000f2a:	370c      	adds	r7, #12
1a000f2c:	46bd      	mov	sp, r7
1a000f2e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f32:	4770      	bx	lr

1a000f34 <Chip_UART_EnableDivisorAccess>:
1a000f34:	b480      	push	{r7}
1a000f36:	b083      	sub	sp, #12
1a000f38:	af00      	add	r7, sp, #0
1a000f3a:	6078      	str	r0, [r7, #4]
1a000f3c:	687b      	ldr	r3, [r7, #4]
1a000f3e:	68db      	ldr	r3, [r3, #12]
1a000f40:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000f44:	687b      	ldr	r3, [r7, #4]
1a000f46:	60da      	str	r2, [r3, #12]
1a000f48:	bf00      	nop
1a000f4a:	370c      	adds	r7, #12
1a000f4c:	46bd      	mov	sp, r7
1a000f4e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f52:	4770      	bx	lr

1a000f54 <Chip_UART_DisableDivisorAccess>:
1a000f54:	b480      	push	{r7}
1a000f56:	b083      	sub	sp, #12
1a000f58:	af00      	add	r7, sp, #0
1a000f5a:	6078      	str	r0, [r7, #4]
1a000f5c:	687b      	ldr	r3, [r7, #4]
1a000f5e:	68db      	ldr	r3, [r3, #12]
1a000f60:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000f64:	687b      	ldr	r3, [r7, #4]
1a000f66:	60da      	str	r2, [r3, #12]
1a000f68:	bf00      	nop
1a000f6a:	370c      	adds	r7, #12
1a000f6c:	46bd      	mov	sp, r7
1a000f6e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f72:	4770      	bx	lr

1a000f74 <Chip_UART_SetDivisorLatches>:
1a000f74:	b480      	push	{r7}
1a000f76:	b083      	sub	sp, #12
1a000f78:	af00      	add	r7, sp, #0
1a000f7a:	6078      	str	r0, [r7, #4]
1a000f7c:	460b      	mov	r3, r1
1a000f7e:	70fb      	strb	r3, [r7, #3]
1a000f80:	4613      	mov	r3, r2
1a000f82:	70bb      	strb	r3, [r7, #2]
1a000f84:	78fa      	ldrb	r2, [r7, #3]
1a000f86:	687b      	ldr	r3, [r7, #4]
1a000f88:	601a      	str	r2, [r3, #0]
1a000f8a:	78ba      	ldrb	r2, [r7, #2]
1a000f8c:	687b      	ldr	r3, [r7, #4]
1a000f8e:	605a      	str	r2, [r3, #4]
1a000f90:	bf00      	nop
1a000f92:	370c      	adds	r7, #12
1a000f94:	46bd      	mov	sp, r7
1a000f96:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f9a:	4770      	bx	lr

1a000f9c <Chip_UART_ReadLineStatus>:
1a000f9c:	b480      	push	{r7}
1a000f9e:	b083      	sub	sp, #12
1a000fa0:	af00      	add	r7, sp, #0
1a000fa2:	6078      	str	r0, [r7, #4]
1a000fa4:	687b      	ldr	r3, [r7, #4]
1a000fa6:	695b      	ldr	r3, [r3, #20]
1a000fa8:	4618      	mov	r0, r3
1a000faa:	370c      	adds	r7, #12
1a000fac:	46bd      	mov	sp, r7
1a000fae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fb2:	4770      	bx	lr

1a000fb4 <Chip_UART_SetAutoBaudReg>:
1a000fb4:	b480      	push	{r7}
1a000fb6:	b083      	sub	sp, #12
1a000fb8:	af00      	add	r7, sp, #0
1a000fba:	6078      	str	r0, [r7, #4]
1a000fbc:	6039      	str	r1, [r7, #0]
1a000fbe:	687b      	ldr	r3, [r7, #4]
1a000fc0:	6a1a      	ldr	r2, [r3, #32]
1a000fc2:	683b      	ldr	r3, [r7, #0]
1a000fc4:	431a      	orrs	r2, r3
1a000fc6:	687b      	ldr	r3, [r7, #4]
1a000fc8:	621a      	str	r2, [r3, #32]
1a000fca:	bf00      	nop
1a000fcc:	370c      	adds	r7, #12
1a000fce:	46bd      	mov	sp, r7
1a000fd0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fd4:	4770      	bx	lr
1a000fd6:	Address 0x000000001a000fd6 is out of bounds.


1a000fd8 <Chip_UART_GetIndex>:
1a000fd8:	b480      	push	{r7}
1a000fda:	b085      	sub	sp, #20
1a000fdc:	af00      	add	r7, sp, #0
1a000fde:	6078      	str	r0, [r7, #4]
1a000fe0:	687b      	ldr	r3, [r7, #4]
1a000fe2:	60fb      	str	r3, [r7, #12]
1a000fe4:	68fb      	ldr	r3, [r7, #12]
1a000fe6:	4a10      	ldr	r2, [pc, #64]	; (1a001028 <Chip_UART_GetIndex+0x50>)
1a000fe8:	4293      	cmp	r3, r2
1a000fea:	d00f      	beq.n	1a00100c <Chip_UART_GetIndex+0x34>
1a000fec:	4a0e      	ldr	r2, [pc, #56]	; (1a001028 <Chip_UART_GetIndex+0x50>)
1a000fee:	4293      	cmp	r3, r2
1a000ff0:	d803      	bhi.n	1a000ffa <Chip_UART_GetIndex+0x22>
1a000ff2:	4a0e      	ldr	r2, [pc, #56]	; (1a00102c <Chip_UART_GetIndex+0x54>)
1a000ff4:	4293      	cmp	r3, r2
1a000ff6:	d007      	beq.n	1a001008 <Chip_UART_GetIndex+0x30>
1a000ff8:	e00e      	b.n	1a001018 <Chip_UART_GetIndex+0x40>
1a000ffa:	4a0d      	ldr	r2, [pc, #52]	; (1a001030 <Chip_UART_GetIndex+0x58>)
1a000ffc:	4293      	cmp	r3, r2
1a000ffe:	d007      	beq.n	1a001010 <Chip_UART_GetIndex+0x38>
1a001000:	4a0c      	ldr	r2, [pc, #48]	; (1a001034 <Chip_UART_GetIndex+0x5c>)
1a001002:	4293      	cmp	r3, r2
1a001004:	d006      	beq.n	1a001014 <Chip_UART_GetIndex+0x3c>
1a001006:	e007      	b.n	1a001018 <Chip_UART_GetIndex+0x40>
1a001008:	2300      	movs	r3, #0
1a00100a:	e006      	b.n	1a00101a <Chip_UART_GetIndex+0x42>
1a00100c:	2301      	movs	r3, #1
1a00100e:	e004      	b.n	1a00101a <Chip_UART_GetIndex+0x42>
1a001010:	2302      	movs	r3, #2
1a001012:	e002      	b.n	1a00101a <Chip_UART_GetIndex+0x42>
1a001014:	2303      	movs	r3, #3
1a001016:	e000      	b.n	1a00101a <Chip_UART_GetIndex+0x42>
1a001018:	2300      	movs	r3, #0
1a00101a:	4618      	mov	r0, r3
1a00101c:	3714      	adds	r7, #20
1a00101e:	46bd      	mov	sp, r7
1a001020:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001024:	4770      	bx	lr
1a001026:	bf00      	nop
1a001028:	40082000 	.word	0x40082000
1a00102c:	40081000 	.word	0x40081000
1a001030:	400c1000 	.word	0x400c1000
1a001034:	400c2000 	.word	0x400c2000

1a001038 <Chip_UART_ABIntHandler>:
1a001038:	b580      	push	{r7, lr}
1a00103a:	b082      	sub	sp, #8
1a00103c:	af00      	add	r7, sp, #0
1a00103e:	6078      	str	r0, [r7, #4]
1a001040:	6878      	ldr	r0, [r7, #4]
1a001042:	f7ff ff4f 	bl	1a000ee4 <Chip_UART_ReadIntIDReg>
1a001046:	4603      	mov	r3, r0
1a001048:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a00104c:	2b00      	cmp	r3, #0
1a00104e:	d011      	beq.n	1a001074 <Chip_UART_ABIntHandler+0x3c>
1a001050:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001054:	6878      	ldr	r0, [r7, #4]
1a001056:	f7ff ffad 	bl	1a000fb4 <Chip_UART_SetAutoBaudReg>
1a00105a:	f44f 7180 	mov.w	r1, #256	; 0x100
1a00105e:	6878      	ldr	r0, [r7, #4]
1a001060:	f7ff ff2e 	bl	1a000ec0 <Chip_UART_IntDisable>
1a001064:	4b0e      	ldr	r3, [pc, #56]	; (1a0010a0 <Chip_UART_ABIntHandler+0x68>)
1a001066:	781b      	ldrb	r3, [r3, #0]
1a001068:	b2db      	uxtb	r3, r3
1a00106a:	2b00      	cmp	r3, #0
1a00106c:	d102      	bne.n	1a001074 <Chip_UART_ABIntHandler+0x3c>
1a00106e:	4b0c      	ldr	r3, [pc, #48]	; (1a0010a0 <Chip_UART_ABIntHandler+0x68>)
1a001070:	2201      	movs	r2, #1
1a001072:	701a      	strb	r2, [r3, #0]
1a001074:	6878      	ldr	r0, [r7, #4]
1a001076:	f7ff ff35 	bl	1a000ee4 <Chip_UART_ReadIntIDReg>
1a00107a:	4603      	mov	r3, r0
1a00107c:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001080:	2b00      	cmp	r3, #0
1a001082:	d009      	beq.n	1a001098 <Chip_UART_ABIntHandler+0x60>
1a001084:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001088:	6878      	ldr	r0, [r7, #4]
1a00108a:	f7ff ff93 	bl	1a000fb4 <Chip_UART_SetAutoBaudReg>
1a00108e:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001092:	6878      	ldr	r0, [r7, #4]
1a001094:	f7ff ff14 	bl	1a000ec0 <Chip_UART_IntDisable>
1a001098:	bf00      	nop
1a00109a:	3708      	adds	r7, #8
1a00109c:	46bd      	mov	sp, r7
1a00109e:	bd80      	pop	{r7, pc}
1a0010a0:	1000086e 	.word	0x1000086e

1a0010a4 <Chip_UART_Init>:
1a0010a4:	b580      	push	{r7, lr}
1a0010a6:	b084      	sub	sp, #16
1a0010a8:	af00      	add	r7, sp, #0
1a0010aa:	6078      	str	r0, [r7, #4]
1a0010ac:	68fb      	ldr	r3, [r7, #12]
1a0010ae:	6878      	ldr	r0, [r7, #4]
1a0010b0:	f7ff ff92 	bl	1a000fd8 <Chip_UART_GetIndex>
1a0010b4:	4602      	mov	r2, r0
1a0010b6:	4b1b      	ldr	r3, [pc, #108]	; (1a001124 <Chip_UART_Init+0x80>)
1a0010b8:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0010bc:	2301      	movs	r3, #1
1a0010be:	2201      	movs	r2, #1
1a0010c0:	2101      	movs	r1, #1
1a0010c2:	f000 fdf5 	bl	1a001cb0 <Chip_Clock_EnableOpts>
1a0010c6:	2107      	movs	r1, #7
1a0010c8:	6878      	ldr	r0, [r7, #4]
1a0010ca:	f7ff ff17 	bl	1a000efc <Chip_UART_SetupFIFOS>
1a0010ce:	6878      	ldr	r0, [r7, #4]
1a0010d0:	f7ff fecd 	bl	1a000e6e <Chip_UART_TXDisable>
1a0010d4:	687b      	ldr	r3, [r7, #4]
1a0010d6:	2200      	movs	r2, #0
1a0010d8:	605a      	str	r2, [r3, #4]
1a0010da:	687b      	ldr	r3, [r7, #4]
1a0010dc:	2200      	movs	r2, #0
1a0010de:	60da      	str	r2, [r3, #12]
1a0010e0:	687b      	ldr	r3, [r7, #4]
1a0010e2:	2200      	movs	r2, #0
1a0010e4:	621a      	str	r2, [r3, #32]
1a0010e6:	687b      	ldr	r3, [r7, #4]
1a0010e8:	2200      	movs	r2, #0
1a0010ea:	64da      	str	r2, [r3, #76]	; 0x4c
1a0010ec:	687b      	ldr	r3, [r7, #4]
1a0010ee:	2200      	movs	r2, #0
1a0010f0:	655a      	str	r2, [r3, #84]	; 0x54
1a0010f2:	687b      	ldr	r3, [r7, #4]
1a0010f4:	2200      	movs	r2, #0
1a0010f6:	651a      	str	r2, [r3, #80]	; 0x50
1a0010f8:	687b      	ldr	r3, [r7, #4]
1a0010fa:	4a0b      	ldr	r2, [pc, #44]	; (1a001128 <Chip_UART_Init+0x84>)
1a0010fc:	4293      	cmp	r3, r2
1a0010fe:	d105      	bne.n	1a00110c <Chip_UART_Init+0x68>
1a001100:	687b      	ldr	r3, [r7, #4]
1a001102:	2200      	movs	r2, #0
1a001104:	611a      	str	r2, [r3, #16]
1a001106:	687b      	ldr	r3, [r7, #4]
1a001108:	699b      	ldr	r3, [r3, #24]
1a00110a:	60fb      	str	r3, [r7, #12]
1a00110c:	2103      	movs	r1, #3
1a00110e:	6878      	ldr	r0, [r7, #4]
1a001110:	f7ff ff02 	bl	1a000f18 <Chip_UART_ConfigData>
1a001114:	687b      	ldr	r3, [r7, #4]
1a001116:	2210      	movs	r2, #16
1a001118:	629a      	str	r2, [r3, #40]	; 0x28
1a00111a:	bf00      	nop
1a00111c:	3710      	adds	r7, #16
1a00111e:	46bd      	mov	sp, r7
1a001120:	bd80      	pop	{r7, pc}
1a001122:	bf00      	nop
1a001124:	1a0029e4 	.word	0x1a0029e4
1a001128:	40082000 	.word	0x40082000

1a00112c <Chip_UART_SetBaud>:
1a00112c:	b580      	push	{r7, lr}
1a00112e:	b086      	sub	sp, #24
1a001130:	af00      	add	r7, sp, #0
1a001132:	6078      	str	r0, [r7, #4]
1a001134:	6039      	str	r1, [r7, #0]
1a001136:	6878      	ldr	r0, [r7, #4]
1a001138:	f7ff ff4e 	bl	1a000fd8 <Chip_UART_GetIndex>
1a00113c:	4602      	mov	r2, r0
1a00113e:	4b16      	ldr	r3, [pc, #88]	; (1a001198 <Chip_UART_SetBaud+0x6c>)
1a001140:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001144:	4618      	mov	r0, r3
1a001146:	f000 fe21 	bl	1a001d8c <Chip_Clock_GetRate>
1a00114a:	6178      	str	r0, [r7, #20]
1a00114c:	683b      	ldr	r3, [r7, #0]
1a00114e:	011b      	lsls	r3, r3, #4
1a001150:	697a      	ldr	r2, [r7, #20]
1a001152:	fbb2 f3f3 	udiv	r3, r2, r3
1a001156:	613b      	str	r3, [r7, #16]
1a001158:	693b      	ldr	r3, [r7, #16]
1a00115a:	0a1b      	lsrs	r3, r3, #8
1a00115c:	60fb      	str	r3, [r7, #12]
1a00115e:	68fb      	ldr	r3, [r7, #12]
1a001160:	021b      	lsls	r3, r3, #8
1a001162:	693a      	ldr	r2, [r7, #16]
1a001164:	1ad3      	subs	r3, r2, r3
1a001166:	60bb      	str	r3, [r7, #8]
1a001168:	6878      	ldr	r0, [r7, #4]
1a00116a:	f7ff fee3 	bl	1a000f34 <Chip_UART_EnableDivisorAccess>
1a00116e:	68bb      	ldr	r3, [r7, #8]
1a001170:	b2db      	uxtb	r3, r3
1a001172:	68fa      	ldr	r2, [r7, #12]
1a001174:	b2d2      	uxtb	r2, r2
1a001176:	4619      	mov	r1, r3
1a001178:	6878      	ldr	r0, [r7, #4]
1a00117a:	f7ff fefb 	bl	1a000f74 <Chip_UART_SetDivisorLatches>
1a00117e:	6878      	ldr	r0, [r7, #4]
1a001180:	f7ff fee8 	bl	1a000f54 <Chip_UART_DisableDivisorAccess>
1a001184:	697a      	ldr	r2, [r7, #20]
1a001186:	693b      	ldr	r3, [r7, #16]
1a001188:	fbb2 f3f3 	udiv	r3, r2, r3
1a00118c:	091b      	lsrs	r3, r3, #4
1a00118e:	4618      	mov	r0, r3
1a001190:	3718      	adds	r7, #24
1a001192:	46bd      	mov	sp, r7
1a001194:	bd80      	pop	{r7, pc}
1a001196:	bf00      	nop
1a001198:	1a0029ec 	.word	0x1a0029ec

1a00119c <Chip_UART_RXIntHandlerRB>:
1a00119c:	b580      	push	{r7, lr}
1a00119e:	b084      	sub	sp, #16
1a0011a0:	af00      	add	r7, sp, #0
1a0011a2:	6078      	str	r0, [r7, #4]
1a0011a4:	6039      	str	r1, [r7, #0]
1a0011a6:	e00a      	b.n	1a0011be <Chip_UART_RXIntHandlerRB+0x22>
1a0011a8:	6878      	ldr	r0, [r7, #4]
1a0011aa:	f7ff fe7c 	bl	1a000ea6 <Chip_UART_ReadByte>
1a0011ae:	4603      	mov	r3, r0
1a0011b0:	73fb      	strb	r3, [r7, #15]
1a0011b2:	f107 030f 	add.w	r3, r7, #15
1a0011b6:	4619      	mov	r1, r3
1a0011b8:	6838      	ldr	r0, [r7, #0]
1a0011ba:	f000 f8ec 	bl	1a001396 <RingBuffer_Insert>
1a0011be:	6878      	ldr	r0, [r7, #4]
1a0011c0:	f7ff feec 	bl	1a000f9c <Chip_UART_ReadLineStatus>
1a0011c4:	4603      	mov	r3, r0
1a0011c6:	f003 0301 	and.w	r3, r3, #1
1a0011ca:	2b00      	cmp	r3, #0
1a0011cc:	d1ec      	bne.n	1a0011a8 <Chip_UART_RXIntHandlerRB+0xc>
1a0011ce:	bf00      	nop
1a0011d0:	3710      	adds	r7, #16
1a0011d2:	46bd      	mov	sp, r7
1a0011d4:	bd80      	pop	{r7, pc}

1a0011d6 <Chip_UART_TXIntHandlerRB>:
1a0011d6:	b580      	push	{r7, lr}
1a0011d8:	b084      	sub	sp, #16
1a0011da:	af00      	add	r7, sp, #0
1a0011dc:	6078      	str	r0, [r7, #4]
1a0011de:	6039      	str	r1, [r7, #0]
1a0011e0:	e004      	b.n	1a0011ec <Chip_UART_TXIntHandlerRB+0x16>
1a0011e2:	7bfb      	ldrb	r3, [r7, #15]
1a0011e4:	4619      	mov	r1, r3
1a0011e6:	6878      	ldr	r0, [r7, #4]
1a0011e8:	f7ff fe4e 	bl	1a000e88 <Chip_UART_SendByte>
1a0011ec:	6878      	ldr	r0, [r7, #4]
1a0011ee:	f7ff fed5 	bl	1a000f9c <Chip_UART_ReadLineStatus>
1a0011f2:	4603      	mov	r3, r0
1a0011f4:	f003 0320 	and.w	r3, r3, #32
1a0011f8:	2b00      	cmp	r3, #0
1a0011fa:	d008      	beq.n	1a00120e <Chip_UART_TXIntHandlerRB+0x38>
1a0011fc:	f107 030f 	add.w	r3, r7, #15
1a001200:	4619      	mov	r1, r3
1a001202:	6838      	ldr	r0, [r7, #0]
1a001204:	f000 f8f5 	bl	1a0013f2 <RingBuffer_Pop>
1a001208:	4603      	mov	r3, r0
1a00120a:	2b00      	cmp	r3, #0
1a00120c:	d1e9      	bne.n	1a0011e2 <Chip_UART_TXIntHandlerRB+0xc>
1a00120e:	6838      	ldr	r0, [r7, #0]
1a001210:	f7ff fe18 	bl	1a000e44 <RingBuffer_IsEmpty>
1a001214:	4603      	mov	r3, r0
1a001216:	2b00      	cmp	r3, #0
1a001218:	d003      	beq.n	1a001222 <Chip_UART_TXIntHandlerRB+0x4c>
1a00121a:	2102      	movs	r1, #2
1a00121c:	6878      	ldr	r0, [r7, #4]
1a00121e:	f7ff fe4f 	bl	1a000ec0 <Chip_UART_IntDisable>
1a001222:	bf00      	nop
1a001224:	3710      	adds	r7, #16
1a001226:	46bd      	mov	sp, r7
1a001228:	bd80      	pop	{r7, pc}

1a00122a <Chip_UART_IRQRBHandler>:
1a00122a:	b580      	push	{r7, lr}
1a00122c:	b084      	sub	sp, #16
1a00122e:	af00      	add	r7, sp, #0
1a001230:	60f8      	str	r0, [r7, #12]
1a001232:	60b9      	str	r1, [r7, #8]
1a001234:	607a      	str	r2, [r7, #4]
1a001236:	68fb      	ldr	r3, [r7, #12]
1a001238:	685b      	ldr	r3, [r3, #4]
1a00123a:	f003 0302 	and.w	r3, r3, #2
1a00123e:	2b00      	cmp	r3, #0
1a001240:	d00d      	beq.n	1a00125e <Chip_UART_IRQRBHandler+0x34>
1a001242:	6879      	ldr	r1, [r7, #4]
1a001244:	68f8      	ldr	r0, [r7, #12]
1a001246:	f7ff ffc6 	bl	1a0011d6 <Chip_UART_TXIntHandlerRB>
1a00124a:	6878      	ldr	r0, [r7, #4]
1a00124c:	f7ff fdfa 	bl	1a000e44 <RingBuffer_IsEmpty>
1a001250:	4603      	mov	r3, r0
1a001252:	2b00      	cmp	r3, #0
1a001254:	d003      	beq.n	1a00125e <Chip_UART_IRQRBHandler+0x34>
1a001256:	2102      	movs	r1, #2
1a001258:	68f8      	ldr	r0, [r7, #12]
1a00125a:	f7ff fe31 	bl	1a000ec0 <Chip_UART_IntDisable>
1a00125e:	68b9      	ldr	r1, [r7, #8]
1a001260:	68f8      	ldr	r0, [r7, #12]
1a001262:	f7ff ff9b 	bl	1a00119c <Chip_UART_RXIntHandlerRB>
1a001266:	68f8      	ldr	r0, [r7, #12]
1a001268:	f7ff fee6 	bl	1a001038 <Chip_UART_ABIntHandler>
1a00126c:	bf00      	nop
1a00126e:	3710      	adds	r7, #16
1a001270:	46bd      	mov	sp, r7
1a001272:	bd80      	pop	{r7, pc}

1a001274 <Chip_TIMER_Enable>:
1a001274:	b480      	push	{r7}
1a001276:	b083      	sub	sp, #12
1a001278:	af00      	add	r7, sp, #0
1a00127a:	6078      	str	r0, [r7, #4]
1a00127c:	687b      	ldr	r3, [r7, #4]
1a00127e:	685b      	ldr	r3, [r3, #4]
1a001280:	f043 0201 	orr.w	r2, r3, #1
1a001284:	687b      	ldr	r3, [r7, #4]
1a001286:	605a      	str	r2, [r3, #4]
1a001288:	bf00      	nop
1a00128a:	370c      	adds	r7, #12
1a00128c:	46bd      	mov	sp, r7
1a00128e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001292:	4770      	bx	lr

1a001294 <Chip_TIMER_PrescaleSet>:
1a001294:	b480      	push	{r7}
1a001296:	b083      	sub	sp, #12
1a001298:	af00      	add	r7, sp, #0
1a00129a:	6078      	str	r0, [r7, #4]
1a00129c:	6039      	str	r1, [r7, #0]
1a00129e:	687b      	ldr	r3, [r7, #4]
1a0012a0:	683a      	ldr	r2, [r7, #0]
1a0012a2:	60da      	str	r2, [r3, #12]
1a0012a4:	bf00      	nop
1a0012a6:	370c      	adds	r7, #12
1a0012a8:	46bd      	mov	sp, r7
1a0012aa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012ae:	4770      	bx	lr

1a0012b0 <StopWatch_Init>:
1a0012b0:	b580      	push	{r7, lr}
1a0012b2:	b082      	sub	sp, #8
1a0012b4:	af00      	add	r7, sp, #0
1a0012b6:	2308      	movs	r3, #8
1a0012b8:	607b      	str	r3, [r7, #4]
1a0012ba:	4814      	ldr	r0, [pc, #80]	; (1a00130c <StopWatch_Init+0x5c>)
1a0012bc:	f000 fde8 	bl	1a001e90 <Chip_TIMER_Init>
1a0012c0:	687b      	ldr	r3, [r7, #4]
1a0012c2:	3b01      	subs	r3, #1
1a0012c4:	4619      	mov	r1, r3
1a0012c6:	4811      	ldr	r0, [pc, #68]	; (1a00130c <StopWatch_Init+0x5c>)
1a0012c8:	f7ff ffe4 	bl	1a001294 <Chip_TIMER_PrescaleSet>
1a0012cc:	480f      	ldr	r0, [pc, #60]	; (1a00130c <StopWatch_Init+0x5c>)
1a0012ce:	f7ff ffd1 	bl	1a001274 <Chip_TIMER_Enable>
1a0012d2:	2084      	movs	r0, #132	; 0x84
1a0012d4:	f000 fd5a 	bl	1a001d8c <Chip_Clock_GetRate>
1a0012d8:	4602      	mov	r2, r0
1a0012da:	687b      	ldr	r3, [r7, #4]
1a0012dc:	fbb2 f3f3 	udiv	r3, r2, r3
1a0012e0:	4a0b      	ldr	r2, [pc, #44]	; (1a001310 <StopWatch_Init+0x60>)
1a0012e2:	6013      	str	r3, [r2, #0]
1a0012e4:	4b0a      	ldr	r3, [pc, #40]	; (1a001310 <StopWatch_Init+0x60>)
1a0012e6:	681b      	ldr	r3, [r3, #0]
1a0012e8:	4a0a      	ldr	r2, [pc, #40]	; (1a001314 <StopWatch_Init+0x64>)
1a0012ea:	fba2 2303 	umull	r2, r3, r2, r3
1a0012ee:	099b      	lsrs	r3, r3, #6
1a0012f0:	4a09      	ldr	r2, [pc, #36]	; (1a001318 <StopWatch_Init+0x68>)
1a0012f2:	6013      	str	r3, [r2, #0]
1a0012f4:	4b06      	ldr	r3, [pc, #24]	; (1a001310 <StopWatch_Init+0x60>)
1a0012f6:	681b      	ldr	r3, [r3, #0]
1a0012f8:	4a08      	ldr	r2, [pc, #32]	; (1a00131c <StopWatch_Init+0x6c>)
1a0012fa:	fba2 2303 	umull	r2, r3, r2, r3
1a0012fe:	0c9b      	lsrs	r3, r3, #18
1a001300:	4a07      	ldr	r2, [pc, #28]	; (1a001320 <StopWatch_Init+0x70>)
1a001302:	6013      	str	r3, [r2, #0]
1a001304:	bf00      	nop
1a001306:	3708      	adds	r7, #8
1a001308:	46bd      	mov	sp, r7
1a00130a:	bd80      	pop	{r7, pc}
1a00130c:	40084000 	.word	0x40084000
1a001310:	10000870 	.word	0x10000870
1a001314:	10624dd3 	.word	0x10624dd3
1a001318:	10000874 	.word	0x10000874
1a00131c:	431bde83 	.word	0x431bde83
1a001320:	10000878 	.word	0x10000878

1a001324 <RingBuffer_GetCount>:
1a001324:	b480      	push	{r7}
1a001326:	b083      	sub	sp, #12
1a001328:	af00      	add	r7, sp, #0
1a00132a:	6078      	str	r0, [r7, #4]
1a00132c:	687b      	ldr	r3, [r7, #4]
1a00132e:	330c      	adds	r3, #12
1a001330:	681a      	ldr	r2, [r3, #0]
1a001332:	687b      	ldr	r3, [r7, #4]
1a001334:	3310      	adds	r3, #16
1a001336:	681b      	ldr	r3, [r3, #0]
1a001338:	1ad3      	subs	r3, r2, r3
1a00133a:	4618      	mov	r0, r3
1a00133c:	370c      	adds	r7, #12
1a00133e:	46bd      	mov	sp, r7
1a001340:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001344:	4770      	bx	lr

1a001346 <RingBuffer_IsFull>:
1a001346:	b580      	push	{r7, lr}
1a001348:	b082      	sub	sp, #8
1a00134a:	af00      	add	r7, sp, #0
1a00134c:	6078      	str	r0, [r7, #4]
1a00134e:	6878      	ldr	r0, [r7, #4]
1a001350:	f7ff ffe8 	bl	1a001324 <RingBuffer_GetCount>
1a001354:	4602      	mov	r2, r0
1a001356:	687b      	ldr	r3, [r7, #4]
1a001358:	685b      	ldr	r3, [r3, #4]
1a00135a:	429a      	cmp	r2, r3
1a00135c:	bfac      	ite	ge
1a00135e:	2301      	movge	r3, #1
1a001360:	2300      	movlt	r3, #0
1a001362:	b2db      	uxtb	r3, r3
1a001364:	4618      	mov	r0, r3
1a001366:	3708      	adds	r7, #8
1a001368:	46bd      	mov	sp, r7
1a00136a:	bd80      	pop	{r7, pc}

1a00136c <RingBuffer_IsEmpty>:
1a00136c:	b480      	push	{r7}
1a00136e:	b083      	sub	sp, #12
1a001370:	af00      	add	r7, sp, #0
1a001372:	6078      	str	r0, [r7, #4]
1a001374:	687b      	ldr	r3, [r7, #4]
1a001376:	330c      	adds	r3, #12
1a001378:	681a      	ldr	r2, [r3, #0]
1a00137a:	687b      	ldr	r3, [r7, #4]
1a00137c:	3310      	adds	r3, #16
1a00137e:	681b      	ldr	r3, [r3, #0]
1a001380:	429a      	cmp	r2, r3
1a001382:	bf0c      	ite	eq
1a001384:	2301      	moveq	r3, #1
1a001386:	2300      	movne	r3, #0
1a001388:	b2db      	uxtb	r3, r3
1a00138a:	4618      	mov	r0, r3
1a00138c:	370c      	adds	r7, #12
1a00138e:	46bd      	mov	sp, r7
1a001390:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001394:	4770      	bx	lr

1a001396 <RingBuffer_Insert>:
1a001396:	b580      	push	{r7, lr}
1a001398:	b084      	sub	sp, #16
1a00139a:	af00      	add	r7, sp, #0
1a00139c:	6078      	str	r0, [r7, #4]
1a00139e:	6039      	str	r1, [r7, #0]
1a0013a0:	687b      	ldr	r3, [r7, #4]
1a0013a2:	681b      	ldr	r3, [r3, #0]
1a0013a4:	60fb      	str	r3, [r7, #12]
1a0013a6:	6878      	ldr	r0, [r7, #4]
1a0013a8:	f7ff ffcd 	bl	1a001346 <RingBuffer_IsFull>
1a0013ac:	4603      	mov	r3, r0
1a0013ae:	2b00      	cmp	r3, #0
1a0013b0:	d001      	beq.n	1a0013b6 <RingBuffer_Insert+0x20>
1a0013b2:	2300      	movs	r3, #0
1a0013b4:	e019      	b.n	1a0013ea <RingBuffer_Insert+0x54>
1a0013b6:	687b      	ldr	r3, [r7, #4]
1a0013b8:	68db      	ldr	r3, [r3, #12]
1a0013ba:	687a      	ldr	r2, [r7, #4]
1a0013bc:	6852      	ldr	r2, [r2, #4]
1a0013be:	3a01      	subs	r2, #1
1a0013c0:	4013      	ands	r3, r2
1a0013c2:	687a      	ldr	r2, [r7, #4]
1a0013c4:	6892      	ldr	r2, [r2, #8]
1a0013c6:	fb02 f303 	mul.w	r3, r2, r3
1a0013ca:	68fa      	ldr	r2, [r7, #12]
1a0013cc:	4413      	add	r3, r2
1a0013ce:	60fb      	str	r3, [r7, #12]
1a0013d0:	687b      	ldr	r3, [r7, #4]
1a0013d2:	689b      	ldr	r3, [r3, #8]
1a0013d4:	461a      	mov	r2, r3
1a0013d6:	6839      	ldr	r1, [r7, #0]
1a0013d8:	68f8      	ldr	r0, [r7, #12]
1a0013da:	f001 f829 	bl	1a002430 <memcpy>
1a0013de:	687b      	ldr	r3, [r7, #4]
1a0013e0:	68db      	ldr	r3, [r3, #12]
1a0013e2:	1c5a      	adds	r2, r3, #1
1a0013e4:	687b      	ldr	r3, [r7, #4]
1a0013e6:	60da      	str	r2, [r3, #12]
1a0013e8:	2301      	movs	r3, #1
1a0013ea:	4618      	mov	r0, r3
1a0013ec:	3710      	adds	r7, #16
1a0013ee:	46bd      	mov	sp, r7
1a0013f0:	bd80      	pop	{r7, pc}

1a0013f2 <RingBuffer_Pop>:
1a0013f2:	b580      	push	{r7, lr}
1a0013f4:	b084      	sub	sp, #16
1a0013f6:	af00      	add	r7, sp, #0
1a0013f8:	6078      	str	r0, [r7, #4]
1a0013fa:	6039      	str	r1, [r7, #0]
1a0013fc:	687b      	ldr	r3, [r7, #4]
1a0013fe:	681b      	ldr	r3, [r3, #0]
1a001400:	60fb      	str	r3, [r7, #12]
1a001402:	6878      	ldr	r0, [r7, #4]
1a001404:	f7ff ffb2 	bl	1a00136c <RingBuffer_IsEmpty>
1a001408:	4603      	mov	r3, r0
1a00140a:	2b00      	cmp	r3, #0
1a00140c:	d001      	beq.n	1a001412 <RingBuffer_Pop+0x20>
1a00140e:	2300      	movs	r3, #0
1a001410:	e019      	b.n	1a001446 <RingBuffer_Pop+0x54>
1a001412:	687b      	ldr	r3, [r7, #4]
1a001414:	691b      	ldr	r3, [r3, #16]
1a001416:	687a      	ldr	r2, [r7, #4]
1a001418:	6852      	ldr	r2, [r2, #4]
1a00141a:	3a01      	subs	r2, #1
1a00141c:	4013      	ands	r3, r2
1a00141e:	687a      	ldr	r2, [r7, #4]
1a001420:	6892      	ldr	r2, [r2, #8]
1a001422:	fb02 f303 	mul.w	r3, r2, r3
1a001426:	68fa      	ldr	r2, [r7, #12]
1a001428:	4413      	add	r3, r2
1a00142a:	60fb      	str	r3, [r7, #12]
1a00142c:	687b      	ldr	r3, [r7, #4]
1a00142e:	689b      	ldr	r3, [r3, #8]
1a001430:	461a      	mov	r2, r3
1a001432:	68f9      	ldr	r1, [r7, #12]
1a001434:	6838      	ldr	r0, [r7, #0]
1a001436:	f000 fffb 	bl	1a002430 <memcpy>
1a00143a:	687b      	ldr	r3, [r7, #4]
1a00143c:	691b      	ldr	r3, [r3, #16]
1a00143e:	1c5a      	adds	r2, r3, #1
1a001440:	687b      	ldr	r3, [r7, #4]
1a001442:	611a      	str	r2, [r3, #16]
1a001444:	2301      	movs	r3, #1
1a001446:	4618      	mov	r0, r3
1a001448:	3710      	adds	r7, #16
1a00144a:	46bd      	mov	sp, r7
1a00144c:	bd80      	pop	{r7, pc}

1a00144e <ABS>:
1a00144e:	b480      	push	{r7}
1a001450:	b083      	sub	sp, #12
1a001452:	af00      	add	r7, sp, #0
1a001454:	6078      	str	r0, [r7, #4]
1a001456:	687b      	ldr	r3, [r7, #4]
1a001458:	2b00      	cmp	r3, #0
1a00145a:	da02      	bge.n	1a001462 <ABS+0x14>
1a00145c:	687b      	ldr	r3, [r7, #4]
1a00145e:	425b      	negs	r3, r3
1a001460:	e000      	b.n	1a001464 <ABS+0x16>
1a001462:	687b      	ldr	r3, [r7, #4]
1a001464:	4618      	mov	r0, r3
1a001466:	370c      	adds	r7, #12
1a001468:	46bd      	mov	sp, r7
1a00146a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00146e:	4770      	bx	lr

1a001470 <pll_calc_divs>:
1a001470:	b580      	push	{r7, lr}
1a001472:	b088      	sub	sp, #32
1a001474:	af00      	add	r7, sp, #0
1a001476:	6078      	str	r0, [r7, #4]
1a001478:	6039      	str	r1, [r7, #0]
1a00147a:	687b      	ldr	r3, [r7, #4]
1a00147c:	61fb      	str	r3, [r7, #28]
1a00147e:	683b      	ldr	r3, [r7, #0]
1a001480:	681b      	ldr	r3, [r3, #0]
1a001482:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001486:	2b00      	cmp	r3, #0
1a001488:	d005      	beq.n	1a001496 <pll_calc_divs+0x26>
1a00148a:	683b      	ldr	r3, [r7, #0]
1a00148c:	681b      	ldr	r3, [r3, #0]
1a00148e:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001492:	683b      	ldr	r3, [r7, #0]
1a001494:	601a      	str	r2, [r3, #0]
1a001496:	2301      	movs	r3, #1
1a001498:	61bb      	str	r3, [r7, #24]
1a00149a:	e06f      	b.n	1a00157c <pll_calc_divs+0x10c>
1a00149c:	2300      	movs	r3, #0
1a00149e:	613b      	str	r3, [r7, #16]
1a0014a0:	e066      	b.n	1a001570 <pll_calc_divs+0x100>
1a0014a2:	2301      	movs	r3, #1
1a0014a4:	617b      	str	r3, [r7, #20]
1a0014a6:	e05a      	b.n	1a00155e <pll_calc_divs+0xee>
1a0014a8:	683b      	ldr	r3, [r7, #0]
1a0014aa:	681b      	ldr	r3, [r3, #0]
1a0014ac:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0014b0:	2b00      	cmp	r3, #0
1a0014b2:	d00e      	beq.n	1a0014d2 <pll_calc_divs+0x62>
1a0014b4:	693b      	ldr	r3, [r7, #16]
1a0014b6:	3301      	adds	r3, #1
1a0014b8:	697a      	ldr	r2, [r7, #20]
1a0014ba:	fa02 f303 	lsl.w	r3, r2, r3
1a0014be:	461a      	mov	r2, r3
1a0014c0:	683b      	ldr	r3, [r7, #0]
1a0014c2:	695b      	ldr	r3, [r3, #20]
1a0014c4:	fb03 f202 	mul.w	r2, r3, r2
1a0014c8:	69bb      	ldr	r3, [r7, #24]
1a0014ca:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014ce:	60fb      	str	r3, [r7, #12]
1a0014d0:	e008      	b.n	1a0014e4 <pll_calc_divs+0x74>
1a0014d2:	683b      	ldr	r3, [r7, #0]
1a0014d4:	695b      	ldr	r3, [r3, #20]
1a0014d6:	697a      	ldr	r2, [r7, #20]
1a0014d8:	fb02 f203 	mul.w	r2, r2, r3
1a0014dc:	69bb      	ldr	r3, [r7, #24]
1a0014de:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014e2:	60fb      	str	r3, [r7, #12]
1a0014e4:	68fb      	ldr	r3, [r7, #12]
1a0014e6:	4a29      	ldr	r2, [pc, #164]	; (1a00158c <pll_calc_divs+0x11c>)
1a0014e8:	4293      	cmp	r3, r2
1a0014ea:	d934      	bls.n	1a001556 <pll_calc_divs+0xe6>
1a0014ec:	68fb      	ldr	r3, [r7, #12]
1a0014ee:	4a28      	ldr	r2, [pc, #160]	; (1a001590 <pll_calc_divs+0x120>)
1a0014f0:	4293      	cmp	r3, r2
1a0014f2:	d839      	bhi.n	1a001568 <pll_calc_divs+0xf8>
1a0014f4:	683b      	ldr	r3, [r7, #0]
1a0014f6:	681b      	ldr	r3, [r3, #0]
1a0014f8:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0014fc:	2b00      	cmp	r3, #0
1a0014fe:	d002      	beq.n	1a001506 <pll_calc_divs+0x96>
1a001500:	68fb      	ldr	r3, [r7, #12]
1a001502:	60bb      	str	r3, [r7, #8]
1a001504:	e005      	b.n	1a001512 <pll_calc_divs+0xa2>
1a001506:	693b      	ldr	r3, [r7, #16]
1a001508:	3301      	adds	r3, #1
1a00150a:	68fa      	ldr	r2, [r7, #12]
1a00150c:	fa22 f303 	lsr.w	r3, r2, r3
1a001510:	60bb      	str	r3, [r7, #8]
1a001512:	687a      	ldr	r2, [r7, #4]
1a001514:	68bb      	ldr	r3, [r7, #8]
1a001516:	1ad3      	subs	r3, r2, r3
1a001518:	4618      	mov	r0, r3
1a00151a:	f7ff ff98 	bl	1a00144e <ABS>
1a00151e:	4602      	mov	r2, r0
1a001520:	69fb      	ldr	r3, [r7, #28]
1a001522:	4293      	cmp	r3, r2
1a001524:	d918      	bls.n	1a001558 <pll_calc_divs+0xe8>
1a001526:	683b      	ldr	r3, [r7, #0]
1a001528:	69ba      	ldr	r2, [r7, #24]
1a00152a:	609a      	str	r2, [r3, #8]
1a00152c:	693b      	ldr	r3, [r7, #16]
1a00152e:	1c5a      	adds	r2, r3, #1
1a001530:	683b      	ldr	r3, [r7, #0]
1a001532:	60da      	str	r2, [r3, #12]
1a001534:	683b      	ldr	r3, [r7, #0]
1a001536:	697a      	ldr	r2, [r7, #20]
1a001538:	611a      	str	r2, [r3, #16]
1a00153a:	683b      	ldr	r3, [r7, #0]
1a00153c:	68ba      	ldr	r2, [r7, #8]
1a00153e:	619a      	str	r2, [r3, #24]
1a001540:	683b      	ldr	r3, [r7, #0]
1a001542:	68fa      	ldr	r2, [r7, #12]
1a001544:	61da      	str	r2, [r3, #28]
1a001546:	687a      	ldr	r2, [r7, #4]
1a001548:	68bb      	ldr	r3, [r7, #8]
1a00154a:	1ad3      	subs	r3, r2, r3
1a00154c:	4618      	mov	r0, r3
1a00154e:	f7ff ff7e 	bl	1a00144e <ABS>
1a001552:	61f8      	str	r0, [r7, #28]
1a001554:	e000      	b.n	1a001558 <pll_calc_divs+0xe8>
1a001556:	bf00      	nop
1a001558:	697b      	ldr	r3, [r7, #20]
1a00155a:	3301      	adds	r3, #1
1a00155c:	617b      	str	r3, [r7, #20]
1a00155e:	697b      	ldr	r3, [r7, #20]
1a001560:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001564:	dda0      	ble.n	1a0014a8 <pll_calc_divs+0x38>
1a001566:	e000      	b.n	1a00156a <pll_calc_divs+0xfa>
1a001568:	bf00      	nop
1a00156a:	693b      	ldr	r3, [r7, #16]
1a00156c:	3301      	adds	r3, #1
1a00156e:	613b      	str	r3, [r7, #16]
1a001570:	693b      	ldr	r3, [r7, #16]
1a001572:	2b03      	cmp	r3, #3
1a001574:	dd95      	ble.n	1a0014a2 <pll_calc_divs+0x32>
1a001576:	69bb      	ldr	r3, [r7, #24]
1a001578:	3301      	adds	r3, #1
1a00157a:	61bb      	str	r3, [r7, #24]
1a00157c:	69bb      	ldr	r3, [r7, #24]
1a00157e:	2b04      	cmp	r3, #4
1a001580:	dd8c      	ble.n	1a00149c <pll_calc_divs+0x2c>
1a001582:	bf00      	nop
1a001584:	3720      	adds	r7, #32
1a001586:	46bd      	mov	sp, r7
1a001588:	bd80      	pop	{r7, pc}
1a00158a:	bf00      	nop
1a00158c:	094c5eff 	.word	0x094c5eff
1a001590:	1312d000 	.word	0x1312d000

1a001594 <pll_get_frac>:
1a001594:	b5b0      	push	{r4, r5, r7, lr}
1a001596:	b09e      	sub	sp, #120	; 0x78
1a001598:	af00      	add	r7, sp, #0
1a00159a:	6078      	str	r0, [r7, #4]
1a00159c:	6039      	str	r1, [r7, #0]
1a00159e:	f107 030c 	add.w	r3, r7, #12
1a0015a2:	2260      	movs	r2, #96	; 0x60
1a0015a4:	2100      	movs	r1, #0
1a0015a6:	4618      	mov	r0, r3
1a0015a8:	f7fe feaa 	bl	1a000300 <memset>
1a0015ac:	68fb      	ldr	r3, [r7, #12]
1a0015ae:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0015b2:	60fb      	str	r3, [r7, #12]
1a0015b4:	683b      	ldr	r3, [r7, #0]
1a0015b6:	695b      	ldr	r3, [r3, #20]
1a0015b8:	623b      	str	r3, [r7, #32]
1a0015ba:	683b      	ldr	r3, [r7, #0]
1a0015bc:	791b      	ldrb	r3, [r3, #4]
1a0015be:	743b      	strb	r3, [r7, #16]
1a0015c0:	f107 030c 	add.w	r3, r7, #12
1a0015c4:	4619      	mov	r1, r3
1a0015c6:	6878      	ldr	r0, [r7, #4]
1a0015c8:	f7ff ff52 	bl	1a001470 <pll_calc_divs>
1a0015cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0015ce:	687a      	ldr	r2, [r7, #4]
1a0015d0:	429a      	cmp	r2, r3
1a0015d2:	d10a      	bne.n	1a0015ea <pll_get_frac+0x56>
1a0015d4:	683b      	ldr	r3, [r7, #0]
1a0015d6:	461d      	mov	r5, r3
1a0015d8:	f107 040c 	add.w	r4, r7, #12
1a0015dc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0015de:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0015e0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0015e4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0015e8:	e08e      	b.n	1a001708 <pll_get_frac+0x174>
1a0015ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0015ec:	687a      	ldr	r2, [r7, #4]
1a0015ee:	1ad3      	subs	r3, r2, r3
1a0015f0:	4618      	mov	r0, r3
1a0015f2:	f7ff ff2c 	bl	1a00144e <ABS>
1a0015f6:	4603      	mov	r3, r0
1a0015f8:	66fb      	str	r3, [r7, #108]	; 0x6c
1a0015fa:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a0015fc:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001600:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001602:	683b      	ldr	r3, [r7, #0]
1a001604:	695b      	ldr	r3, [r3, #20]
1a001606:	663b      	str	r3, [r7, #96]	; 0x60
1a001608:	683b      	ldr	r3, [r7, #0]
1a00160a:	791b      	ldrb	r3, [r3, #4]
1a00160c:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001610:	f107 030c 	add.w	r3, r7, #12
1a001614:	3340      	adds	r3, #64	; 0x40
1a001616:	4619      	mov	r1, r3
1a001618:	6878      	ldr	r0, [r7, #4]
1a00161a:	f7ff ff29 	bl	1a001470 <pll_calc_divs>
1a00161e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001620:	687a      	ldr	r2, [r7, #4]
1a001622:	429a      	cmp	r2, r3
1a001624:	d10a      	bne.n	1a00163c <pll_get_frac+0xa8>
1a001626:	683b      	ldr	r3, [r7, #0]
1a001628:	461d      	mov	r5, r3
1a00162a:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00162e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001630:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001632:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001636:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00163a:	e065      	b.n	1a001708 <pll_get_frac+0x174>
1a00163c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00163e:	687a      	ldr	r2, [r7, #4]
1a001640:	1ad3      	subs	r3, r2, r3
1a001642:	4618      	mov	r0, r3
1a001644:	f7ff ff03 	bl	1a00144e <ABS>
1a001648:	4603      	mov	r3, r0
1a00164a:	677b      	str	r3, [r7, #116]	; 0x74
1a00164c:	687b      	ldr	r3, [r7, #4]
1a00164e:	4a30      	ldr	r2, [pc, #192]	; (1a001710 <pll_get_frac+0x17c>)
1a001650:	4293      	cmp	r3, r2
1a001652:	d81a      	bhi.n	1a00168a <pll_get_frac+0xf6>
1a001654:	2340      	movs	r3, #64	; 0x40
1a001656:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001658:	683b      	ldr	r3, [r7, #0]
1a00165a:	695b      	ldr	r3, [r3, #20]
1a00165c:	643b      	str	r3, [r7, #64]	; 0x40
1a00165e:	f107 030c 	add.w	r3, r7, #12
1a001662:	3320      	adds	r3, #32
1a001664:	4619      	mov	r1, r3
1a001666:	6878      	ldr	r0, [r7, #4]
1a001668:	f7ff ff02 	bl	1a001470 <pll_calc_divs>
1a00166c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00166e:	687a      	ldr	r2, [r7, #4]
1a001670:	429a      	cmp	r2, r3
1a001672:	d10a      	bne.n	1a00168a <pll_get_frac+0xf6>
1a001674:	683b      	ldr	r3, [r7, #0]
1a001676:	461d      	mov	r5, r3
1a001678:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00167c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00167e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001680:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001684:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001688:	e03e      	b.n	1a001708 <pll_get_frac+0x174>
1a00168a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00168c:	687a      	ldr	r2, [r7, #4]
1a00168e:	1ad3      	subs	r3, r2, r3
1a001690:	4618      	mov	r0, r3
1a001692:	f7ff fedc 	bl	1a00144e <ABS>
1a001696:	4603      	mov	r3, r0
1a001698:	673b      	str	r3, [r7, #112]	; 0x70
1a00169a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a00169c:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a00169e:	429a      	cmp	r2, r3
1a0016a0:	dc19      	bgt.n	1a0016d6 <pll_get_frac+0x142>
1a0016a2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0016a4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0016a6:	429a      	cmp	r2, r3
1a0016a8:	dc0a      	bgt.n	1a0016c0 <pll_get_frac+0x12c>
1a0016aa:	683b      	ldr	r3, [r7, #0]
1a0016ac:	461d      	mov	r5, r3
1a0016ae:	f107 040c 	add.w	r4, r7, #12
1a0016b2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016b4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016b6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016ba:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016be:	e023      	b.n	1a001708 <pll_get_frac+0x174>
1a0016c0:	683b      	ldr	r3, [r7, #0]
1a0016c2:	461d      	mov	r5, r3
1a0016c4:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0016c8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016ca:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016cc:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016d0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016d4:	e018      	b.n	1a001708 <pll_get_frac+0x174>
1a0016d6:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0016d8:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0016da:	429a      	cmp	r2, r3
1a0016dc:	dc0a      	bgt.n	1a0016f4 <pll_get_frac+0x160>
1a0016de:	683b      	ldr	r3, [r7, #0]
1a0016e0:	461d      	mov	r5, r3
1a0016e2:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0016e6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016e8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016ea:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016ee:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016f2:	e009      	b.n	1a001708 <pll_get_frac+0x174>
1a0016f4:	683b      	ldr	r3, [r7, #0]
1a0016f6:	461d      	mov	r5, r3
1a0016f8:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0016fc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016fe:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001700:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001704:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001708:	3778      	adds	r7, #120	; 0x78
1a00170a:	46bd      	mov	sp, r7
1a00170c:	bdb0      	pop	{r4, r5, r7, pc}
1a00170e:	bf00      	nop
1a001710:	068e7780 	.word	0x068e7780

1a001714 <Chip_Clock_GetDivRate>:
1a001714:	b580      	push	{r7, lr}
1a001716:	b084      	sub	sp, #16
1a001718:	af00      	add	r7, sp, #0
1a00171a:	4603      	mov	r3, r0
1a00171c:	460a      	mov	r2, r1
1a00171e:	71fb      	strb	r3, [r7, #7]
1a001720:	4613      	mov	r3, r2
1a001722:	71bb      	strb	r3, [r7, #6]
1a001724:	79bb      	ldrb	r3, [r7, #6]
1a001726:	4618      	mov	r0, r3
1a001728:	f000 f960 	bl	1a0019ec <Chip_Clock_GetDividerSource>
1a00172c:	4603      	mov	r3, r0
1a00172e:	73fb      	strb	r3, [r7, #15]
1a001730:	79bb      	ldrb	r3, [r7, #6]
1a001732:	4618      	mov	r0, r3
1a001734:	f000 f97a 	bl	1a001a2c <Chip_Clock_GetDividerDivisor>
1a001738:	60b8      	str	r0, [r7, #8]
1a00173a:	7bfb      	ldrb	r3, [r7, #15]
1a00173c:	4618      	mov	r0, r3
1a00173e:	f000 f991 	bl	1a001a64 <Chip_Clock_GetClockInputHz>
1a001742:	4602      	mov	r2, r0
1a001744:	68bb      	ldr	r3, [r7, #8]
1a001746:	3301      	adds	r3, #1
1a001748:	fbb2 f3f3 	udiv	r3, r2, r3
1a00174c:	4618      	mov	r0, r3
1a00174e:	3710      	adds	r7, #16
1a001750:	46bd      	mov	sp, r7
1a001752:	bd80      	pop	{r7, pc}

1a001754 <Chip_Clock_FindBaseClock>:
1a001754:	b480      	push	{r7}
1a001756:	b085      	sub	sp, #20
1a001758:	af00      	add	r7, sp, #0
1a00175a:	4603      	mov	r3, r0
1a00175c:	80fb      	strh	r3, [r7, #6]
1a00175e:	231c      	movs	r3, #28
1a001760:	73fb      	strb	r3, [r7, #15]
1a001762:	2300      	movs	r3, #0
1a001764:	60bb      	str	r3, [r7, #8]
1a001766:	e024      	b.n	1a0017b2 <Chip_Clock_FindBaseClock+0x5e>
1a001768:	491d      	ldr	r1, [pc, #116]	; (1a0017e0 <Chip_Clock_FindBaseClock+0x8c>)
1a00176a:	68ba      	ldr	r2, [r7, #8]
1a00176c:	4613      	mov	r3, r2
1a00176e:	005b      	lsls	r3, r3, #1
1a001770:	4413      	add	r3, r2
1a001772:	005b      	lsls	r3, r3, #1
1a001774:	440b      	add	r3, r1
1a001776:	881b      	ldrh	r3, [r3, #0]
1a001778:	88fa      	ldrh	r2, [r7, #6]
1a00177a:	429a      	cmp	r2, r3
1a00177c:	d316      	bcc.n	1a0017ac <Chip_Clock_FindBaseClock+0x58>
1a00177e:	4918      	ldr	r1, [pc, #96]	; (1a0017e0 <Chip_Clock_FindBaseClock+0x8c>)
1a001780:	68ba      	ldr	r2, [r7, #8]
1a001782:	4613      	mov	r3, r2
1a001784:	005b      	lsls	r3, r3, #1
1a001786:	4413      	add	r3, r2
1a001788:	005b      	lsls	r3, r3, #1
1a00178a:	440b      	add	r3, r1
1a00178c:	3302      	adds	r3, #2
1a00178e:	881b      	ldrh	r3, [r3, #0]
1a001790:	88fa      	ldrh	r2, [r7, #6]
1a001792:	429a      	cmp	r2, r3
1a001794:	d80a      	bhi.n	1a0017ac <Chip_Clock_FindBaseClock+0x58>
1a001796:	4912      	ldr	r1, [pc, #72]	; (1a0017e0 <Chip_Clock_FindBaseClock+0x8c>)
1a001798:	68ba      	ldr	r2, [r7, #8]
1a00179a:	4613      	mov	r3, r2
1a00179c:	005b      	lsls	r3, r3, #1
1a00179e:	4413      	add	r3, r2
1a0017a0:	005b      	lsls	r3, r3, #1
1a0017a2:	440b      	add	r3, r1
1a0017a4:	3304      	adds	r3, #4
1a0017a6:	781b      	ldrb	r3, [r3, #0]
1a0017a8:	73fb      	strb	r3, [r7, #15]
1a0017aa:	e002      	b.n	1a0017b2 <Chip_Clock_FindBaseClock+0x5e>
1a0017ac:	68bb      	ldr	r3, [r7, #8]
1a0017ae:	3301      	adds	r3, #1
1a0017b0:	60bb      	str	r3, [r7, #8]
1a0017b2:	7bfb      	ldrb	r3, [r7, #15]
1a0017b4:	2b1c      	cmp	r3, #28
1a0017b6:	d10b      	bne.n	1a0017d0 <Chip_Clock_FindBaseClock+0x7c>
1a0017b8:	4909      	ldr	r1, [pc, #36]	; (1a0017e0 <Chip_Clock_FindBaseClock+0x8c>)
1a0017ba:	68ba      	ldr	r2, [r7, #8]
1a0017bc:	4613      	mov	r3, r2
1a0017be:	005b      	lsls	r3, r3, #1
1a0017c0:	4413      	add	r3, r2
1a0017c2:	005b      	lsls	r3, r3, #1
1a0017c4:	440b      	add	r3, r1
1a0017c6:	3304      	adds	r3, #4
1a0017c8:	781b      	ldrb	r3, [r3, #0]
1a0017ca:	7bfa      	ldrb	r2, [r7, #15]
1a0017cc:	429a      	cmp	r2, r3
1a0017ce:	d1cb      	bne.n	1a001768 <Chip_Clock_FindBaseClock+0x14>
1a0017d0:	7bfb      	ldrb	r3, [r7, #15]
1a0017d2:	4618      	mov	r0, r3
1a0017d4:	3714      	adds	r7, #20
1a0017d6:	46bd      	mov	sp, r7
1a0017d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017dc:	4770      	bx	lr
1a0017de:	bf00      	nop
1a0017e0:	1a0029f4 	.word	0x1a0029f4

1a0017e4 <Chip_Clock_EnableCrystal>:
1a0017e4:	b480      	push	{r7}
1a0017e6:	b083      	sub	sp, #12
1a0017e8:	af00      	add	r7, sp, #0
1a0017ea:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0017ee:	603b      	str	r3, [r7, #0]
1a0017f0:	4b15      	ldr	r3, [pc, #84]	; (1a001848 <Chip_Clock_EnableCrystal+0x64>)
1a0017f2:	699b      	ldr	r3, [r3, #24]
1a0017f4:	607b      	str	r3, [r7, #4]
1a0017f6:	687b      	ldr	r3, [r7, #4]
1a0017f8:	f023 0302 	bic.w	r3, r3, #2
1a0017fc:	607b      	str	r3, [r7, #4]
1a0017fe:	4b12      	ldr	r3, [pc, #72]	; (1a001848 <Chip_Clock_EnableCrystal+0x64>)
1a001800:	699b      	ldr	r3, [r3, #24]
1a001802:	687a      	ldr	r2, [r7, #4]
1a001804:	429a      	cmp	r2, r3
1a001806:	d002      	beq.n	1a00180e <Chip_Clock_EnableCrystal+0x2a>
1a001808:	4a0f      	ldr	r2, [pc, #60]	; (1a001848 <Chip_Clock_EnableCrystal+0x64>)
1a00180a:	687b      	ldr	r3, [r7, #4]
1a00180c:	6193      	str	r3, [r2, #24]
1a00180e:	687b      	ldr	r3, [r7, #4]
1a001810:	f023 0301 	bic.w	r3, r3, #1
1a001814:	607b      	str	r3, [r7, #4]
1a001816:	4b0d      	ldr	r3, [pc, #52]	; (1a00184c <Chip_Clock_EnableCrystal+0x68>)
1a001818:	681b      	ldr	r3, [r3, #0]
1a00181a:	4a0d      	ldr	r2, [pc, #52]	; (1a001850 <Chip_Clock_EnableCrystal+0x6c>)
1a00181c:	4293      	cmp	r3, r2
1a00181e:	d903      	bls.n	1a001828 <Chip_Clock_EnableCrystal+0x44>
1a001820:	687b      	ldr	r3, [r7, #4]
1a001822:	f043 0304 	orr.w	r3, r3, #4
1a001826:	607b      	str	r3, [r7, #4]
1a001828:	4a07      	ldr	r2, [pc, #28]	; (1a001848 <Chip_Clock_EnableCrystal+0x64>)
1a00182a:	687b      	ldr	r3, [r7, #4]
1a00182c:	6193      	str	r3, [r2, #24]
1a00182e:	bf00      	nop
1a001830:	683b      	ldr	r3, [r7, #0]
1a001832:	1e5a      	subs	r2, r3, #1
1a001834:	603a      	str	r2, [r7, #0]
1a001836:	2b00      	cmp	r3, #0
1a001838:	d1fa      	bne.n	1a001830 <Chip_Clock_EnableCrystal+0x4c>
1a00183a:	bf00      	nop
1a00183c:	370c      	adds	r7, #12
1a00183e:	46bd      	mov	sp, r7
1a001840:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001844:	4770      	bx	lr
1a001846:	bf00      	nop
1a001848:	40050000 	.word	0x40050000
1a00184c:	1a00295c 	.word	0x1a00295c
1a001850:	01312cff 	.word	0x01312cff

1a001854 <Chip_Clock_CalcMainPLLValue>:
1a001854:	b580      	push	{r7, lr}
1a001856:	b082      	sub	sp, #8
1a001858:	af00      	add	r7, sp, #0
1a00185a:	6078      	str	r0, [r7, #4]
1a00185c:	6039      	str	r1, [r7, #0]
1a00185e:	683b      	ldr	r3, [r7, #0]
1a001860:	791b      	ldrb	r3, [r3, #4]
1a001862:	4618      	mov	r0, r3
1a001864:	f000 f8fe 	bl	1a001a64 <Chip_Clock_GetClockInputHz>
1a001868:	4602      	mov	r2, r0
1a00186a:	683b      	ldr	r3, [r7, #0]
1a00186c:	615a      	str	r2, [r3, #20]
1a00186e:	687b      	ldr	r3, [r7, #4]
1a001870:	4a2b      	ldr	r2, [pc, #172]	; (1a001920 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001872:	4293      	cmp	r3, r2
1a001874:	d807      	bhi.n	1a001886 <Chip_Clock_CalcMainPLLValue+0x32>
1a001876:	687b      	ldr	r3, [r7, #4]
1a001878:	4a2a      	ldr	r2, [pc, #168]	; (1a001924 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a00187a:	4293      	cmp	r3, r2
1a00187c:	d903      	bls.n	1a001886 <Chip_Clock_CalcMainPLLValue+0x32>
1a00187e:	683b      	ldr	r3, [r7, #0]
1a001880:	695b      	ldr	r3, [r3, #20]
1a001882:	2b00      	cmp	r3, #0
1a001884:	d102      	bne.n	1a00188c <Chip_Clock_CalcMainPLLValue+0x38>
1a001886:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00188a:	e044      	b.n	1a001916 <Chip_Clock_CalcMainPLLValue+0xc2>
1a00188c:	683b      	ldr	r3, [r7, #0]
1a00188e:	2280      	movs	r2, #128	; 0x80
1a001890:	601a      	str	r2, [r3, #0]
1a001892:	683b      	ldr	r3, [r7, #0]
1a001894:	2200      	movs	r2, #0
1a001896:	609a      	str	r2, [r3, #8]
1a001898:	683b      	ldr	r3, [r7, #0]
1a00189a:	2200      	movs	r2, #0
1a00189c:	60da      	str	r2, [r3, #12]
1a00189e:	683b      	ldr	r3, [r7, #0]
1a0018a0:	695b      	ldr	r3, [r3, #20]
1a0018a2:	687a      	ldr	r2, [r7, #4]
1a0018a4:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018a8:	461a      	mov	r2, r3
1a0018aa:	683b      	ldr	r3, [r7, #0]
1a0018ac:	611a      	str	r2, [r3, #16]
1a0018ae:	687b      	ldr	r3, [r7, #4]
1a0018b0:	4a1d      	ldr	r2, [pc, #116]	; (1a001928 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0018b2:	4293      	cmp	r3, r2
1a0018b4:	d909      	bls.n	1a0018ca <Chip_Clock_CalcMainPLLValue+0x76>
1a0018b6:	683b      	ldr	r3, [r7, #0]
1a0018b8:	691b      	ldr	r3, [r3, #16]
1a0018ba:	461a      	mov	r2, r3
1a0018bc:	683b      	ldr	r3, [r7, #0]
1a0018be:	695b      	ldr	r3, [r3, #20]
1a0018c0:	fb03 f302 	mul.w	r3, r3, r2
1a0018c4:	687a      	ldr	r2, [r7, #4]
1a0018c6:	429a      	cmp	r2, r3
1a0018c8:	d00f      	beq.n	1a0018ea <Chip_Clock_CalcMainPLLValue+0x96>
1a0018ca:	6839      	ldr	r1, [r7, #0]
1a0018cc:	6878      	ldr	r0, [r7, #4]
1a0018ce:	f7ff fe61 	bl	1a001594 <pll_get_frac>
1a0018d2:	683b      	ldr	r3, [r7, #0]
1a0018d4:	689b      	ldr	r3, [r3, #8]
1a0018d6:	2b00      	cmp	r3, #0
1a0018d8:	d102      	bne.n	1a0018e0 <Chip_Clock_CalcMainPLLValue+0x8c>
1a0018da:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0018de:	e01a      	b.n	1a001916 <Chip_Clock_CalcMainPLLValue+0xc2>
1a0018e0:	683b      	ldr	r3, [r7, #0]
1a0018e2:	689b      	ldr	r3, [r3, #8]
1a0018e4:	1e5a      	subs	r2, r3, #1
1a0018e6:	683b      	ldr	r3, [r7, #0]
1a0018e8:	609a      	str	r2, [r3, #8]
1a0018ea:	683b      	ldr	r3, [r7, #0]
1a0018ec:	691b      	ldr	r3, [r3, #16]
1a0018ee:	2b00      	cmp	r3, #0
1a0018f0:	d102      	bne.n	1a0018f8 <Chip_Clock_CalcMainPLLValue+0xa4>
1a0018f2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0018f6:	e00e      	b.n	1a001916 <Chip_Clock_CalcMainPLLValue+0xc2>
1a0018f8:	683b      	ldr	r3, [r7, #0]
1a0018fa:	68db      	ldr	r3, [r3, #12]
1a0018fc:	2b00      	cmp	r3, #0
1a0018fe:	d004      	beq.n	1a00190a <Chip_Clock_CalcMainPLLValue+0xb6>
1a001900:	683b      	ldr	r3, [r7, #0]
1a001902:	68db      	ldr	r3, [r3, #12]
1a001904:	1e5a      	subs	r2, r3, #1
1a001906:	683b      	ldr	r3, [r7, #0]
1a001908:	60da      	str	r2, [r3, #12]
1a00190a:	683b      	ldr	r3, [r7, #0]
1a00190c:	691b      	ldr	r3, [r3, #16]
1a00190e:	1e5a      	subs	r2, r3, #1
1a001910:	683b      	ldr	r3, [r7, #0]
1a001912:	611a      	str	r2, [r3, #16]
1a001914:	2300      	movs	r3, #0
1a001916:	4618      	mov	r0, r3
1a001918:	3708      	adds	r7, #8
1a00191a:	46bd      	mov	sp, r7
1a00191c:	bd80      	pop	{r7, pc}
1a00191e:	bf00      	nop
1a001920:	0c28cb00 	.word	0x0c28cb00
1a001924:	0094c5ef 	.word	0x0094c5ef
1a001928:	094c5eff 	.word	0x094c5eff

1a00192c <Chip_Clock_GetMainPLLHz>:
1a00192c:	b580      	push	{r7, lr}
1a00192e:	b08c      	sub	sp, #48	; 0x30
1a001930:	af00      	add	r7, sp, #0
1a001932:	4b2c      	ldr	r3, [pc, #176]	; (1a0019e4 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001934:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001936:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001938:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00193a:	0e1b      	lsrs	r3, r3, #24
1a00193c:	b2db      	uxtb	r3, r3
1a00193e:	f003 030f 	and.w	r3, r3, #15
1a001942:	b2db      	uxtb	r3, r3
1a001944:	4618      	mov	r0, r3
1a001946:	f000 f88d 	bl	1a001a64 <Chip_Clock_GetClockInputHz>
1a00194a:	62b8      	str	r0, [r7, #40]	; 0x28
1a00194c:	4b26      	ldr	r3, [pc, #152]	; (1a0019e8 <Chip_Clock_GetMainPLLHz+0xbc>)
1a00194e:	681b      	ldr	r3, [r3, #0]
1a001950:	607b      	str	r3, [r7, #4]
1a001952:	4b24      	ldr	r3, [pc, #144]	; (1a0019e4 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001954:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001956:	f003 0301 	and.w	r3, r3, #1
1a00195a:	2b00      	cmp	r3, #0
1a00195c:	d101      	bne.n	1a001962 <Chip_Clock_GetMainPLLHz+0x36>
1a00195e:	2300      	movs	r3, #0
1a001960:	e03b      	b.n	1a0019da <Chip_Clock_GetMainPLLHz+0xae>
1a001962:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001964:	0c1b      	lsrs	r3, r3, #16
1a001966:	b2db      	uxtb	r3, r3
1a001968:	627b      	str	r3, [r7, #36]	; 0x24
1a00196a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00196c:	0b1b      	lsrs	r3, r3, #12
1a00196e:	f003 0303 	and.w	r3, r3, #3
1a001972:	623b      	str	r3, [r7, #32]
1a001974:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001976:	0a1b      	lsrs	r3, r3, #8
1a001978:	f003 0303 	and.w	r3, r3, #3
1a00197c:	61fb      	str	r3, [r7, #28]
1a00197e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001980:	09db      	lsrs	r3, r3, #7
1a001982:	f003 0301 	and.w	r3, r3, #1
1a001986:	61bb      	str	r3, [r7, #24]
1a001988:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00198a:	099b      	lsrs	r3, r3, #6
1a00198c:	f003 0301 	and.w	r3, r3, #1
1a001990:	617b      	str	r3, [r7, #20]
1a001992:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001994:	3301      	adds	r3, #1
1a001996:	613b      	str	r3, [r7, #16]
1a001998:	6a3b      	ldr	r3, [r7, #32]
1a00199a:	3301      	adds	r3, #1
1a00199c:	60fb      	str	r3, [r7, #12]
1a00199e:	1d3a      	adds	r2, r7, #4
1a0019a0:	69fb      	ldr	r3, [r7, #28]
1a0019a2:	4413      	add	r3, r2
1a0019a4:	781b      	ldrb	r3, [r3, #0]
1a0019a6:	60bb      	str	r3, [r7, #8]
1a0019a8:	69bb      	ldr	r3, [r7, #24]
1a0019aa:	2b00      	cmp	r3, #0
1a0019ac:	d102      	bne.n	1a0019b4 <Chip_Clock_GetMainPLLHz+0x88>
1a0019ae:	697b      	ldr	r3, [r7, #20]
1a0019b0:	2b00      	cmp	r3, #0
1a0019b2:	d007      	beq.n	1a0019c4 <Chip_Clock_GetMainPLLHz+0x98>
1a0019b4:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0019b6:	68fb      	ldr	r3, [r7, #12]
1a0019b8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019bc:	693a      	ldr	r2, [r7, #16]
1a0019be:	fb02 f303 	mul.w	r3, r2, r3
1a0019c2:	e00a      	b.n	1a0019da <Chip_Clock_GetMainPLLHz+0xae>
1a0019c4:	68bb      	ldr	r3, [r7, #8]
1a0019c6:	005b      	lsls	r3, r3, #1
1a0019c8:	693a      	ldr	r2, [r7, #16]
1a0019ca:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019ce:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a0019d0:	68fa      	ldr	r2, [r7, #12]
1a0019d2:	fbb1 f2f2 	udiv	r2, r1, r2
1a0019d6:	fb02 f303 	mul.w	r3, r2, r3
1a0019da:	4618      	mov	r0, r3
1a0019dc:	3730      	adds	r7, #48	; 0x30
1a0019de:	46bd      	mov	sp, r7
1a0019e0:	bd80      	pop	{r7, pc}
1a0019e2:	bf00      	nop
1a0019e4:	40050000 	.word	0x40050000
1a0019e8:	1a002a60 	.word	0x1a002a60

1a0019ec <Chip_Clock_GetDividerSource>:
1a0019ec:	b480      	push	{r7}
1a0019ee:	b085      	sub	sp, #20
1a0019f0:	af00      	add	r7, sp, #0
1a0019f2:	4603      	mov	r3, r0
1a0019f4:	71fb      	strb	r3, [r7, #7]
1a0019f6:	4a0c      	ldr	r2, [pc, #48]	; (1a001a28 <Chip_Clock_GetDividerSource+0x3c>)
1a0019f8:	79fb      	ldrb	r3, [r7, #7]
1a0019fa:	3312      	adds	r3, #18
1a0019fc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a00:	60fb      	str	r3, [r7, #12]
1a001a02:	68fb      	ldr	r3, [r7, #12]
1a001a04:	f003 0301 	and.w	r3, r3, #1
1a001a08:	2b00      	cmp	r3, #0
1a001a0a:	d001      	beq.n	1a001a10 <Chip_Clock_GetDividerSource+0x24>
1a001a0c:	2311      	movs	r3, #17
1a001a0e:	e005      	b.n	1a001a1c <Chip_Clock_GetDividerSource+0x30>
1a001a10:	68fb      	ldr	r3, [r7, #12]
1a001a12:	0e1b      	lsrs	r3, r3, #24
1a001a14:	b2db      	uxtb	r3, r3
1a001a16:	f003 031f 	and.w	r3, r3, #31
1a001a1a:	b2db      	uxtb	r3, r3
1a001a1c:	4618      	mov	r0, r3
1a001a1e:	3714      	adds	r7, #20
1a001a20:	46bd      	mov	sp, r7
1a001a22:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a26:	4770      	bx	lr
1a001a28:	40050000 	.word	0x40050000

1a001a2c <Chip_Clock_GetDividerDivisor>:
1a001a2c:	b480      	push	{r7}
1a001a2e:	b083      	sub	sp, #12
1a001a30:	af00      	add	r7, sp, #0
1a001a32:	4603      	mov	r3, r0
1a001a34:	71fb      	strb	r3, [r7, #7]
1a001a36:	4a09      	ldr	r2, [pc, #36]	; (1a001a5c <Chip_Clock_GetDividerDivisor+0x30>)
1a001a38:	79fb      	ldrb	r3, [r7, #7]
1a001a3a:	3312      	adds	r3, #18
1a001a3c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a40:	089b      	lsrs	r3, r3, #2
1a001a42:	b2da      	uxtb	r2, r3
1a001a44:	79fb      	ldrb	r3, [r7, #7]
1a001a46:	4906      	ldr	r1, [pc, #24]	; (1a001a60 <Chip_Clock_GetDividerDivisor+0x34>)
1a001a48:	5ccb      	ldrb	r3, [r1, r3]
1a001a4a:	4013      	ands	r3, r2
1a001a4c:	b2db      	uxtb	r3, r3
1a001a4e:	4618      	mov	r0, r3
1a001a50:	370c      	adds	r7, #12
1a001a52:	46bd      	mov	sp, r7
1a001a54:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a58:	4770      	bx	lr
1a001a5a:	bf00      	nop
1a001a5c:	40050000 	.word	0x40050000
1a001a60:	1a002a64 	.word	0x1a002a64

1a001a64 <Chip_Clock_GetClockInputHz>:
1a001a64:	b580      	push	{r7, lr}
1a001a66:	b084      	sub	sp, #16
1a001a68:	af00      	add	r7, sp, #0
1a001a6a:	4603      	mov	r3, r0
1a001a6c:	71fb      	strb	r3, [r7, #7]
1a001a6e:	2300      	movs	r3, #0
1a001a70:	60fb      	str	r3, [r7, #12]
1a001a72:	79fb      	ldrb	r3, [r7, #7]
1a001a74:	2b11      	cmp	r3, #17
1a001a76:	d87f      	bhi.n	1a001b78 <Chip_Clock_GetClockInputHz+0x114>
1a001a78:	a201      	add	r2, pc, #4	; (adr r2, 1a001a80 <Chip_Clock_GetClockInputHz+0x1c>)
1a001a7a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001a7e:	bf00      	nop
1a001a80:	1a001ac9 	.word	0x1a001ac9
1a001a84:	1a001ad1 	.word	0x1a001ad1
1a001a88:	1a001ad7 	.word	0x1a001ad7
1a001a8c:	1a001aeb 	.word	0x1a001aeb
1a001a90:	1a001b05 	.word	0x1a001b05
1a001a94:	1a001b79 	.word	0x1a001b79
1a001a98:	1a001b0d 	.word	0x1a001b0d
1a001a9c:	1a001b15 	.word	0x1a001b15
1a001aa0:	1a001b1d 	.word	0x1a001b1d
1a001aa4:	1a001b25 	.word	0x1a001b25
1a001aa8:	1a001b79 	.word	0x1a001b79
1a001aac:	1a001b79 	.word	0x1a001b79
1a001ab0:	1a001b2d 	.word	0x1a001b2d
1a001ab4:	1a001b3b 	.word	0x1a001b3b
1a001ab8:	1a001b49 	.word	0x1a001b49
1a001abc:	1a001b57 	.word	0x1a001b57
1a001ac0:	1a001b65 	.word	0x1a001b65
1a001ac4:	1a001b73 	.word	0x1a001b73
1a001ac8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001acc:	60fb      	str	r3, [r7, #12]
1a001ace:	e056      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001ad0:	4b2d      	ldr	r3, [pc, #180]	; (1a001b88 <Chip_Clock_GetClockInputHz+0x124>)
1a001ad2:	60fb      	str	r3, [r7, #12]
1a001ad4:	e053      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001ad6:	4b2d      	ldr	r3, [pc, #180]	; (1a001b8c <Chip_Clock_GetClockInputHz+0x128>)
1a001ad8:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001adc:	f003 0307 	and.w	r3, r3, #7
1a001ae0:	2b04      	cmp	r3, #4
1a001ae2:	d04b      	beq.n	1a001b7c <Chip_Clock_GetClockInputHz+0x118>
1a001ae4:	4b2a      	ldr	r3, [pc, #168]	; (1a001b90 <Chip_Clock_GetClockInputHz+0x12c>)
1a001ae6:	60fb      	str	r3, [r7, #12]
1a001ae8:	e048      	b.n	1a001b7c <Chip_Clock_GetClockInputHz+0x118>
1a001aea:	4b28      	ldr	r3, [pc, #160]	; (1a001b8c <Chip_Clock_GetClockInputHz+0x128>)
1a001aec:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001af0:	f003 0307 	and.w	r3, r3, #7
1a001af4:	2b04      	cmp	r3, #4
1a001af6:	d002      	beq.n	1a001afe <Chip_Clock_GetClockInputHz+0x9a>
1a001af8:	4b25      	ldr	r3, [pc, #148]	; (1a001b90 <Chip_Clock_GetClockInputHz+0x12c>)
1a001afa:	60fb      	str	r3, [r7, #12]
1a001afc:	e03f      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001afe:	4b25      	ldr	r3, [pc, #148]	; (1a001b94 <Chip_Clock_GetClockInputHz+0x130>)
1a001b00:	60fb      	str	r3, [r7, #12]
1a001b02:	e03c      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b04:	4b24      	ldr	r3, [pc, #144]	; (1a001b98 <Chip_Clock_GetClockInputHz+0x134>)
1a001b06:	681b      	ldr	r3, [r3, #0]
1a001b08:	60fb      	str	r3, [r7, #12]
1a001b0a:	e038      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b0c:	4b23      	ldr	r3, [pc, #140]	; (1a001b9c <Chip_Clock_GetClockInputHz+0x138>)
1a001b0e:	681b      	ldr	r3, [r3, #0]
1a001b10:	60fb      	str	r3, [r7, #12]
1a001b12:	e034      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b14:	4b22      	ldr	r3, [pc, #136]	; (1a001ba0 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b16:	681b      	ldr	r3, [r3, #0]
1a001b18:	60fb      	str	r3, [r7, #12]
1a001b1a:	e030      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b1c:	4b20      	ldr	r3, [pc, #128]	; (1a001ba0 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b1e:	685b      	ldr	r3, [r3, #4]
1a001b20:	60fb      	str	r3, [r7, #12]
1a001b22:	e02c      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b24:	f7ff ff02 	bl	1a00192c <Chip_Clock_GetMainPLLHz>
1a001b28:	60f8      	str	r0, [r7, #12]
1a001b2a:	e028      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b2c:	79fb      	ldrb	r3, [r7, #7]
1a001b2e:	2100      	movs	r1, #0
1a001b30:	4618      	mov	r0, r3
1a001b32:	f7ff fdef 	bl	1a001714 <Chip_Clock_GetDivRate>
1a001b36:	60f8      	str	r0, [r7, #12]
1a001b38:	e021      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b3a:	79fb      	ldrb	r3, [r7, #7]
1a001b3c:	2101      	movs	r1, #1
1a001b3e:	4618      	mov	r0, r3
1a001b40:	f7ff fde8 	bl	1a001714 <Chip_Clock_GetDivRate>
1a001b44:	60f8      	str	r0, [r7, #12]
1a001b46:	e01a      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b48:	79fb      	ldrb	r3, [r7, #7]
1a001b4a:	2102      	movs	r1, #2
1a001b4c:	4618      	mov	r0, r3
1a001b4e:	f7ff fde1 	bl	1a001714 <Chip_Clock_GetDivRate>
1a001b52:	60f8      	str	r0, [r7, #12]
1a001b54:	e013      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b56:	79fb      	ldrb	r3, [r7, #7]
1a001b58:	2103      	movs	r1, #3
1a001b5a:	4618      	mov	r0, r3
1a001b5c:	f7ff fdda 	bl	1a001714 <Chip_Clock_GetDivRate>
1a001b60:	60f8      	str	r0, [r7, #12]
1a001b62:	e00c      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b64:	79fb      	ldrb	r3, [r7, #7]
1a001b66:	2104      	movs	r1, #4
1a001b68:	4618      	mov	r0, r3
1a001b6a:	f7ff fdd3 	bl	1a001714 <Chip_Clock_GetDivRate>
1a001b6e:	60f8      	str	r0, [r7, #12]
1a001b70:	e005      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b72:	2300      	movs	r3, #0
1a001b74:	60fb      	str	r3, [r7, #12]
1a001b76:	e002      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b78:	bf00      	nop
1a001b7a:	e000      	b.n	1a001b7e <Chip_Clock_GetClockInputHz+0x11a>
1a001b7c:	bf00      	nop
1a001b7e:	68fb      	ldr	r3, [r7, #12]
1a001b80:	4618      	mov	r0, r3
1a001b82:	3710      	adds	r7, #16
1a001b84:	46bd      	mov	sp, r7
1a001b86:	bd80      	pop	{r7, pc}
1a001b88:	00b71b00 	.word	0x00b71b00
1a001b8c:	40043000 	.word	0x40043000
1a001b90:	017d7840 	.word	0x017d7840
1a001b94:	02faf080 	.word	0x02faf080
1a001b98:	1a002958 	.word	0x1a002958
1a001b9c:	1a00295c 	.word	0x1a00295c
1a001ba0:	1000087c 	.word	0x1000087c

1a001ba4 <Chip_Clock_GetBaseClocktHz>:
1a001ba4:	b580      	push	{r7, lr}
1a001ba6:	b082      	sub	sp, #8
1a001ba8:	af00      	add	r7, sp, #0
1a001baa:	4603      	mov	r3, r0
1a001bac:	71fb      	strb	r3, [r7, #7]
1a001bae:	79fb      	ldrb	r3, [r7, #7]
1a001bb0:	4618      	mov	r0, r3
1a001bb2:	f000 f857 	bl	1a001c64 <Chip_Clock_GetBaseClock>
1a001bb6:	4603      	mov	r3, r0
1a001bb8:	4618      	mov	r0, r3
1a001bba:	f7ff ff53 	bl	1a001a64 <Chip_Clock_GetClockInputHz>
1a001bbe:	4603      	mov	r3, r0
1a001bc0:	4618      	mov	r0, r3
1a001bc2:	3708      	adds	r7, #8
1a001bc4:	46bd      	mov	sp, r7
1a001bc6:	bd80      	pop	{r7, pc}

1a001bc8 <Chip_Clock_SetBaseClock>:
1a001bc8:	b490      	push	{r4, r7}
1a001bca:	b084      	sub	sp, #16
1a001bcc:	af00      	add	r7, sp, #0
1a001bce:	4604      	mov	r4, r0
1a001bd0:	4608      	mov	r0, r1
1a001bd2:	4611      	mov	r1, r2
1a001bd4:	461a      	mov	r2, r3
1a001bd6:	4623      	mov	r3, r4
1a001bd8:	71fb      	strb	r3, [r7, #7]
1a001bda:	4603      	mov	r3, r0
1a001bdc:	71bb      	strb	r3, [r7, #6]
1a001bde:	460b      	mov	r3, r1
1a001be0:	717b      	strb	r3, [r7, #5]
1a001be2:	4613      	mov	r3, r2
1a001be4:	713b      	strb	r3, [r7, #4]
1a001be6:	4a1d      	ldr	r2, [pc, #116]	; (1a001c5c <Chip_Clock_SetBaseClock+0x94>)
1a001be8:	79fb      	ldrb	r3, [r7, #7]
1a001bea:	3316      	adds	r3, #22
1a001bec:	009b      	lsls	r3, r3, #2
1a001bee:	4413      	add	r3, r2
1a001bf0:	685b      	ldr	r3, [r3, #4]
1a001bf2:	60fb      	str	r3, [r7, #12]
1a001bf4:	79fb      	ldrb	r3, [r7, #7]
1a001bf6:	2b1b      	cmp	r3, #27
1a001bf8:	d822      	bhi.n	1a001c40 <Chip_Clock_SetBaseClock+0x78>
1a001bfa:	79bb      	ldrb	r3, [r7, #6]
1a001bfc:	2b11      	cmp	r3, #17
1a001bfe:	d028      	beq.n	1a001c52 <Chip_Clock_SetBaseClock+0x8a>
1a001c00:	68fa      	ldr	r2, [r7, #12]
1a001c02:	4b17      	ldr	r3, [pc, #92]	; (1a001c60 <Chip_Clock_SetBaseClock+0x98>)
1a001c04:	4013      	ands	r3, r2
1a001c06:	60fb      	str	r3, [r7, #12]
1a001c08:	797b      	ldrb	r3, [r7, #5]
1a001c0a:	2b00      	cmp	r3, #0
1a001c0c:	d003      	beq.n	1a001c16 <Chip_Clock_SetBaseClock+0x4e>
1a001c0e:	68fb      	ldr	r3, [r7, #12]
1a001c10:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001c14:	60fb      	str	r3, [r7, #12]
1a001c16:	793b      	ldrb	r3, [r7, #4]
1a001c18:	2b00      	cmp	r3, #0
1a001c1a:	d003      	beq.n	1a001c24 <Chip_Clock_SetBaseClock+0x5c>
1a001c1c:	68fb      	ldr	r3, [r7, #12]
1a001c1e:	f043 0301 	orr.w	r3, r3, #1
1a001c22:	60fb      	str	r3, [r7, #12]
1a001c24:	79bb      	ldrb	r3, [r7, #6]
1a001c26:	061b      	lsls	r3, r3, #24
1a001c28:	461a      	mov	r2, r3
1a001c2a:	68fb      	ldr	r3, [r7, #12]
1a001c2c:	4313      	orrs	r3, r2
1a001c2e:	60fb      	str	r3, [r7, #12]
1a001c30:	4a0a      	ldr	r2, [pc, #40]	; (1a001c5c <Chip_Clock_SetBaseClock+0x94>)
1a001c32:	79fb      	ldrb	r3, [r7, #7]
1a001c34:	3316      	adds	r3, #22
1a001c36:	009b      	lsls	r3, r3, #2
1a001c38:	4413      	add	r3, r2
1a001c3a:	68fa      	ldr	r2, [r7, #12]
1a001c3c:	605a      	str	r2, [r3, #4]
1a001c3e:	e008      	b.n	1a001c52 <Chip_Clock_SetBaseClock+0x8a>
1a001c40:	4906      	ldr	r1, [pc, #24]	; (1a001c5c <Chip_Clock_SetBaseClock+0x94>)
1a001c42:	79fb      	ldrb	r3, [r7, #7]
1a001c44:	68fa      	ldr	r2, [r7, #12]
1a001c46:	f042 0201 	orr.w	r2, r2, #1
1a001c4a:	3316      	adds	r3, #22
1a001c4c:	009b      	lsls	r3, r3, #2
1a001c4e:	440b      	add	r3, r1
1a001c50:	605a      	str	r2, [r3, #4]
1a001c52:	bf00      	nop
1a001c54:	3710      	adds	r7, #16
1a001c56:	46bd      	mov	sp, r7
1a001c58:	bc90      	pop	{r4, r7}
1a001c5a:	4770      	bx	lr
1a001c5c:	40050000 	.word	0x40050000
1a001c60:	e0fff7fe 	.word	0xe0fff7fe

1a001c64 <Chip_Clock_GetBaseClock>:
1a001c64:	b480      	push	{r7}
1a001c66:	b085      	sub	sp, #20
1a001c68:	af00      	add	r7, sp, #0
1a001c6a:	4603      	mov	r3, r0
1a001c6c:	71fb      	strb	r3, [r7, #7]
1a001c6e:	79fb      	ldrb	r3, [r7, #7]
1a001c70:	2b1b      	cmp	r3, #27
1a001c72:	d901      	bls.n	1a001c78 <Chip_Clock_GetBaseClock+0x14>
1a001c74:	2311      	movs	r3, #17
1a001c76:	e013      	b.n	1a001ca0 <Chip_Clock_GetBaseClock+0x3c>
1a001c78:	4a0c      	ldr	r2, [pc, #48]	; (1a001cac <Chip_Clock_GetBaseClock+0x48>)
1a001c7a:	79fb      	ldrb	r3, [r7, #7]
1a001c7c:	3316      	adds	r3, #22
1a001c7e:	009b      	lsls	r3, r3, #2
1a001c80:	4413      	add	r3, r2
1a001c82:	685b      	ldr	r3, [r3, #4]
1a001c84:	60fb      	str	r3, [r7, #12]
1a001c86:	68fb      	ldr	r3, [r7, #12]
1a001c88:	f003 0301 	and.w	r3, r3, #1
1a001c8c:	2b00      	cmp	r3, #0
1a001c8e:	d001      	beq.n	1a001c94 <Chip_Clock_GetBaseClock+0x30>
1a001c90:	2311      	movs	r3, #17
1a001c92:	e005      	b.n	1a001ca0 <Chip_Clock_GetBaseClock+0x3c>
1a001c94:	68fb      	ldr	r3, [r7, #12]
1a001c96:	0e1b      	lsrs	r3, r3, #24
1a001c98:	b2db      	uxtb	r3, r3
1a001c9a:	f003 031f 	and.w	r3, r3, #31
1a001c9e:	b2db      	uxtb	r3, r3
1a001ca0:	4618      	mov	r0, r3
1a001ca2:	3714      	adds	r7, #20
1a001ca4:	46bd      	mov	sp, r7
1a001ca6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001caa:	4770      	bx	lr
1a001cac:	40050000 	.word	0x40050000

1a001cb0 <Chip_Clock_EnableOpts>:
1a001cb0:	b480      	push	{r7}
1a001cb2:	b085      	sub	sp, #20
1a001cb4:	af00      	add	r7, sp, #0
1a001cb6:	603b      	str	r3, [r7, #0]
1a001cb8:	4603      	mov	r3, r0
1a001cba:	80fb      	strh	r3, [r7, #6]
1a001cbc:	460b      	mov	r3, r1
1a001cbe:	717b      	strb	r3, [r7, #5]
1a001cc0:	4613      	mov	r3, r2
1a001cc2:	713b      	strb	r3, [r7, #4]
1a001cc4:	2301      	movs	r3, #1
1a001cc6:	60fb      	str	r3, [r7, #12]
1a001cc8:	797b      	ldrb	r3, [r7, #5]
1a001cca:	2b00      	cmp	r3, #0
1a001ccc:	d003      	beq.n	1a001cd6 <Chip_Clock_EnableOpts+0x26>
1a001cce:	68fb      	ldr	r3, [r7, #12]
1a001cd0:	f043 0302 	orr.w	r3, r3, #2
1a001cd4:	60fb      	str	r3, [r7, #12]
1a001cd6:	793b      	ldrb	r3, [r7, #4]
1a001cd8:	2b00      	cmp	r3, #0
1a001cda:	d003      	beq.n	1a001ce4 <Chip_Clock_EnableOpts+0x34>
1a001cdc:	68fb      	ldr	r3, [r7, #12]
1a001cde:	f043 0304 	orr.w	r3, r3, #4
1a001ce2:	60fb      	str	r3, [r7, #12]
1a001ce4:	683b      	ldr	r3, [r7, #0]
1a001ce6:	2b02      	cmp	r3, #2
1a001ce8:	d103      	bne.n	1a001cf2 <Chip_Clock_EnableOpts+0x42>
1a001cea:	68fb      	ldr	r3, [r7, #12]
1a001cec:	f043 0320 	orr.w	r3, r3, #32
1a001cf0:	60fb      	str	r3, [r7, #12]
1a001cf2:	88fb      	ldrh	r3, [r7, #6]
1a001cf4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001cf8:	d308      	bcc.n	1a001d0c <Chip_Clock_EnableOpts+0x5c>
1a001cfa:	490a      	ldr	r1, [pc, #40]	; (1a001d24 <Chip_Clock_EnableOpts+0x74>)
1a001cfc:	88fb      	ldrh	r3, [r7, #6]
1a001cfe:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d02:	3320      	adds	r3, #32
1a001d04:	68fa      	ldr	r2, [r7, #12]
1a001d06:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d0a:	e005      	b.n	1a001d18 <Chip_Clock_EnableOpts+0x68>
1a001d0c:	4906      	ldr	r1, [pc, #24]	; (1a001d28 <Chip_Clock_EnableOpts+0x78>)
1a001d0e:	88fb      	ldrh	r3, [r7, #6]
1a001d10:	3320      	adds	r3, #32
1a001d12:	68fa      	ldr	r2, [r7, #12]
1a001d14:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d18:	bf00      	nop
1a001d1a:	3714      	adds	r7, #20
1a001d1c:	46bd      	mov	sp, r7
1a001d1e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d22:	4770      	bx	lr
1a001d24:	40052000 	.word	0x40052000
1a001d28:	40051000 	.word	0x40051000

1a001d2c <Chip_Clock_Enable>:
1a001d2c:	b480      	push	{r7}
1a001d2e:	b083      	sub	sp, #12
1a001d30:	af00      	add	r7, sp, #0
1a001d32:	4603      	mov	r3, r0
1a001d34:	80fb      	strh	r3, [r7, #6]
1a001d36:	88fb      	ldrh	r3, [r7, #6]
1a001d38:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d3c:	d310      	bcc.n	1a001d60 <Chip_Clock_Enable+0x34>
1a001d3e:	4a11      	ldr	r2, [pc, #68]	; (1a001d84 <Chip_Clock_Enable+0x58>)
1a001d40:	88fb      	ldrh	r3, [r7, #6]
1a001d42:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d46:	3320      	adds	r3, #32
1a001d48:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d4c:	490d      	ldr	r1, [pc, #52]	; (1a001d84 <Chip_Clock_Enable+0x58>)
1a001d4e:	88fb      	ldrh	r3, [r7, #6]
1a001d50:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d54:	f042 0201 	orr.w	r2, r2, #1
1a001d58:	3320      	adds	r3, #32
1a001d5a:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d5e:	e00b      	b.n	1a001d78 <Chip_Clock_Enable+0x4c>
1a001d60:	4a09      	ldr	r2, [pc, #36]	; (1a001d88 <Chip_Clock_Enable+0x5c>)
1a001d62:	88fb      	ldrh	r3, [r7, #6]
1a001d64:	3320      	adds	r3, #32
1a001d66:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d6a:	4907      	ldr	r1, [pc, #28]	; (1a001d88 <Chip_Clock_Enable+0x5c>)
1a001d6c:	88fb      	ldrh	r3, [r7, #6]
1a001d6e:	f042 0201 	orr.w	r2, r2, #1
1a001d72:	3320      	adds	r3, #32
1a001d74:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d78:	bf00      	nop
1a001d7a:	370c      	adds	r7, #12
1a001d7c:	46bd      	mov	sp, r7
1a001d7e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d82:	4770      	bx	lr
1a001d84:	40052000 	.word	0x40052000
1a001d88:	40051000 	.word	0x40051000

1a001d8c <Chip_Clock_GetRate>:
1a001d8c:	b580      	push	{r7, lr}
1a001d8e:	b086      	sub	sp, #24
1a001d90:	af00      	add	r7, sp, #0
1a001d92:	4603      	mov	r3, r0
1a001d94:	80fb      	strh	r3, [r7, #6]
1a001d96:	88fb      	ldrh	r3, [r7, #6]
1a001d98:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d9c:	d308      	bcc.n	1a001db0 <Chip_Clock_GetRate+0x24>
1a001d9e:	4a1b      	ldr	r2, [pc, #108]	; (1a001e0c <Chip_Clock_GetRate+0x80>)
1a001da0:	88fb      	ldrh	r3, [r7, #6]
1a001da2:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001da6:	3320      	adds	r3, #32
1a001da8:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001dac:	617b      	str	r3, [r7, #20]
1a001dae:	e005      	b.n	1a001dbc <Chip_Clock_GetRate+0x30>
1a001db0:	4a17      	ldr	r2, [pc, #92]	; (1a001e10 <Chip_Clock_GetRate+0x84>)
1a001db2:	88fb      	ldrh	r3, [r7, #6]
1a001db4:	3320      	adds	r3, #32
1a001db6:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001dba:	617b      	str	r3, [r7, #20]
1a001dbc:	697b      	ldr	r3, [r7, #20]
1a001dbe:	f003 0301 	and.w	r3, r3, #1
1a001dc2:	2b00      	cmp	r3, #0
1a001dc4:	d01b      	beq.n	1a001dfe <Chip_Clock_GetRate+0x72>
1a001dc6:	88fb      	ldrh	r3, [r7, #6]
1a001dc8:	4618      	mov	r0, r3
1a001dca:	f7ff fcc3 	bl	1a001754 <Chip_Clock_FindBaseClock>
1a001dce:	4603      	mov	r3, r0
1a001dd0:	72fb      	strb	r3, [r7, #11]
1a001dd2:	7afb      	ldrb	r3, [r7, #11]
1a001dd4:	4618      	mov	r0, r3
1a001dd6:	f7ff fee5 	bl	1a001ba4 <Chip_Clock_GetBaseClocktHz>
1a001dda:	60f8      	str	r0, [r7, #12]
1a001ddc:	697b      	ldr	r3, [r7, #20]
1a001dde:	095b      	lsrs	r3, r3, #5
1a001de0:	f003 0307 	and.w	r3, r3, #7
1a001de4:	2b00      	cmp	r3, #0
1a001de6:	d102      	bne.n	1a001dee <Chip_Clock_GetRate+0x62>
1a001de8:	2301      	movs	r3, #1
1a001dea:	613b      	str	r3, [r7, #16]
1a001dec:	e001      	b.n	1a001df2 <Chip_Clock_GetRate+0x66>
1a001dee:	2302      	movs	r3, #2
1a001df0:	613b      	str	r3, [r7, #16]
1a001df2:	68fa      	ldr	r2, [r7, #12]
1a001df4:	693b      	ldr	r3, [r7, #16]
1a001df6:	fbb2 f3f3 	udiv	r3, r2, r3
1a001dfa:	60fb      	str	r3, [r7, #12]
1a001dfc:	e001      	b.n	1a001e02 <Chip_Clock_GetRate+0x76>
1a001dfe:	2300      	movs	r3, #0
1a001e00:	60fb      	str	r3, [r7, #12]
1a001e02:	68fb      	ldr	r3, [r7, #12]
1a001e04:	4618      	mov	r0, r3
1a001e06:	3718      	adds	r7, #24
1a001e08:	46bd      	mov	sp, r7
1a001e0a:	bd80      	pop	{r7, pc}
1a001e0c:	40052000 	.word	0x40052000
1a001e10:	40051000 	.word	0x40051000

1a001e14 <SystemCoreClockUpdate>:
1a001e14:	b580      	push	{r7, lr}
1a001e16:	af00      	add	r7, sp, #0
1a001e18:	2069      	movs	r0, #105	; 0x69
1a001e1a:	f7ff ffb7 	bl	1a001d8c <Chip_Clock_GetRate>
1a001e1e:	4602      	mov	r2, r0
1a001e20:	4b01      	ldr	r3, [pc, #4]	; (1a001e28 <SystemCoreClockUpdate+0x14>)
1a001e22:	601a      	str	r2, [r3, #0]
1a001e24:	bf00      	nop
1a001e26:	bd80      	pop	{r7, pc}
1a001e28:	100008dc 	.word	0x100008dc

1a001e2c <Chip_GPIO_Init>:
1a001e2c:	b480      	push	{r7}
1a001e2e:	b083      	sub	sp, #12
1a001e30:	af00      	add	r7, sp, #0
1a001e32:	6078      	str	r0, [r7, #4]
1a001e34:	bf00      	nop
1a001e36:	370c      	adds	r7, #12
1a001e38:	46bd      	mov	sp, r7
1a001e3a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e3e:	4770      	bx	lr

1a001e40 <Chip_TIMER_GetClockIndex>:
1a001e40:	b480      	push	{r7}
1a001e42:	b085      	sub	sp, #20
1a001e44:	af00      	add	r7, sp, #0
1a001e46:	6078      	str	r0, [r7, #4]
1a001e48:	687b      	ldr	r3, [r7, #4]
1a001e4a:	4a0e      	ldr	r2, [pc, #56]	; (1a001e84 <Chip_TIMER_GetClockIndex+0x44>)
1a001e4c:	4293      	cmp	r3, r2
1a001e4e:	d102      	bne.n	1a001e56 <Chip_TIMER_GetClockIndex+0x16>
1a001e50:	23a4      	movs	r3, #164	; 0xa4
1a001e52:	81fb      	strh	r3, [r7, #14]
1a001e54:	e00f      	b.n	1a001e76 <Chip_TIMER_GetClockIndex+0x36>
1a001e56:	687b      	ldr	r3, [r7, #4]
1a001e58:	4a0b      	ldr	r2, [pc, #44]	; (1a001e88 <Chip_TIMER_GetClockIndex+0x48>)
1a001e5a:	4293      	cmp	r3, r2
1a001e5c:	d102      	bne.n	1a001e64 <Chip_TIMER_GetClockIndex+0x24>
1a001e5e:	23a3      	movs	r3, #163	; 0xa3
1a001e60:	81fb      	strh	r3, [r7, #14]
1a001e62:	e008      	b.n	1a001e76 <Chip_TIMER_GetClockIndex+0x36>
1a001e64:	687b      	ldr	r3, [r7, #4]
1a001e66:	4a09      	ldr	r2, [pc, #36]	; (1a001e8c <Chip_TIMER_GetClockIndex+0x4c>)
1a001e68:	4293      	cmp	r3, r2
1a001e6a:	d102      	bne.n	1a001e72 <Chip_TIMER_GetClockIndex+0x32>
1a001e6c:	2385      	movs	r3, #133	; 0x85
1a001e6e:	81fb      	strh	r3, [r7, #14]
1a001e70:	e001      	b.n	1a001e76 <Chip_TIMER_GetClockIndex+0x36>
1a001e72:	2384      	movs	r3, #132	; 0x84
1a001e74:	81fb      	strh	r3, [r7, #14]
1a001e76:	89fb      	ldrh	r3, [r7, #14]
1a001e78:	4618      	mov	r0, r3
1a001e7a:	3714      	adds	r7, #20
1a001e7c:	46bd      	mov	sp, r7
1a001e7e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e82:	4770      	bx	lr
1a001e84:	400c4000 	.word	0x400c4000
1a001e88:	400c3000 	.word	0x400c3000
1a001e8c:	40085000 	.word	0x40085000

1a001e90 <Chip_TIMER_Init>:
1a001e90:	b580      	push	{r7, lr}
1a001e92:	b082      	sub	sp, #8
1a001e94:	af00      	add	r7, sp, #0
1a001e96:	6078      	str	r0, [r7, #4]
1a001e98:	6878      	ldr	r0, [r7, #4]
1a001e9a:	f7ff ffd1 	bl	1a001e40 <Chip_TIMER_GetClockIndex>
1a001e9e:	4603      	mov	r3, r0
1a001ea0:	4618      	mov	r0, r3
1a001ea2:	f7ff ff43 	bl	1a001d2c <Chip_Clock_Enable>
1a001ea6:	bf00      	nop
1a001ea8:	3708      	adds	r7, #8
1a001eaa:	46bd      	mov	sp, r7
1a001eac:	bd80      	pop	{r7, pc}
1a001eae:	Address 0x000000001a001eae is out of bounds.


1a001eb0 <_Exit>:
1a001eb0:	b508      	push	{r3, lr}
1a001eb2:	f7fe fe8f 	bl	1a000bd4 <_exit>
1a001eb6:	bf00      	nop

1a001eb8 <abort>:
1a001eb8:	b508      	push	{r3, lr}
1a001eba:	2006      	movs	r0, #6
1a001ebc:	f000 fba6 	bl	1a00260c <raise>
1a001ec0:	2001      	movs	r0, #1
1a001ec2:	f7fe fe87 	bl	1a000bd4 <_exit>
1a001ec6:	bf00      	nop

1a001ec8 <malloc>:
1a001ec8:	4b02      	ldr	r3, [pc, #8]	; (1a001ed4 <malloc+0xc>)
1a001eca:	4601      	mov	r1, r0
1a001ecc:	6818      	ldr	r0, [r3, #0]
1a001ece:	f000 b80b 	b.w	1a001ee8 <_malloc_r>
1a001ed2:	bf00      	nop
1a001ed4:	10000000 	.word	0x10000000

1a001ed8 <free>:
1a001ed8:	4b02      	ldr	r3, [pc, #8]	; (1a001ee4 <free+0xc>)
1a001eda:	4601      	mov	r1, r0
1a001edc:	6818      	ldr	r0, [r3, #0]
1a001ede:	f000 bc03 	b.w	1a0026e8 <_free_r>
1a001ee2:	bf00      	nop
1a001ee4:	10000000 	.word	0x10000000

1a001ee8 <_malloc_r>:
1a001ee8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a001eec:	f101 050b 	add.w	r5, r1, #11
1a001ef0:	2d16      	cmp	r5, #22
1a001ef2:	b083      	sub	sp, #12
1a001ef4:	4606      	mov	r6, r0
1a001ef6:	d823      	bhi.n	1a001f40 <_malloc_r+0x58>
1a001ef8:	2910      	cmp	r1, #16
1a001efa:	f200 80b9 	bhi.w	1a002070 <_malloc_r+0x188>
1a001efe:	f000 fb31 	bl	1a002564 <__malloc_lock>
1a001f02:	2510      	movs	r5, #16
1a001f04:	2318      	movs	r3, #24
1a001f06:	2002      	movs	r0, #2
1a001f08:	4fc5      	ldr	r7, [pc, #788]	; (1a002220 <_malloc_r+0x338>)
1a001f0a:	443b      	add	r3, r7
1a001f0c:	f1a3 0208 	sub.w	r2, r3, #8
1a001f10:	685c      	ldr	r4, [r3, #4]
1a001f12:	4294      	cmp	r4, r2
1a001f14:	f000 8166 	beq.w	1a0021e4 <_malloc_r+0x2fc>
1a001f18:	6863      	ldr	r3, [r4, #4]
1a001f1a:	f023 0303 	bic.w	r3, r3, #3
1a001f1e:	4423      	add	r3, r4
1a001f20:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
1a001f24:	685a      	ldr	r2, [r3, #4]
1a001f26:	60e9      	str	r1, [r5, #12]
1a001f28:	f042 0201 	orr.w	r2, r2, #1
1a001f2c:	608d      	str	r5, [r1, #8]
1a001f2e:	4630      	mov	r0, r6
1a001f30:	605a      	str	r2, [r3, #4]
1a001f32:	f000 fb1d 	bl	1a002570 <__malloc_unlock>
1a001f36:	3408      	adds	r4, #8
1a001f38:	4620      	mov	r0, r4
1a001f3a:	b003      	add	sp, #12
1a001f3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a001f40:	f035 0507 	bics.w	r5, r5, #7
1a001f44:	f100 8094 	bmi.w	1a002070 <_malloc_r+0x188>
1a001f48:	42a9      	cmp	r1, r5
1a001f4a:	f200 8091 	bhi.w	1a002070 <_malloc_r+0x188>
1a001f4e:	f000 fb09 	bl	1a002564 <__malloc_lock>
1a001f52:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
1a001f56:	f0c0 8183 	bcc.w	1a002260 <_malloc_r+0x378>
1a001f5a:	0a6b      	lsrs	r3, r5, #9
1a001f5c:	f000 808f 	beq.w	1a00207e <_malloc_r+0x196>
1a001f60:	2b04      	cmp	r3, #4
1a001f62:	f200 8146 	bhi.w	1a0021f2 <_malloc_r+0x30a>
1a001f66:	09ab      	lsrs	r3, r5, #6
1a001f68:	f103 0039 	add.w	r0, r3, #57	; 0x39
1a001f6c:	f103 0c38 	add.w	ip, r3, #56	; 0x38
1a001f70:	00c3      	lsls	r3, r0, #3
1a001f72:	4fab      	ldr	r7, [pc, #684]	; (1a002220 <_malloc_r+0x338>)
1a001f74:	443b      	add	r3, r7
1a001f76:	f1a3 0108 	sub.w	r1, r3, #8
1a001f7a:	685c      	ldr	r4, [r3, #4]
1a001f7c:	42a1      	cmp	r1, r4
1a001f7e:	d106      	bne.n	1a001f8e <_malloc_r+0xa6>
1a001f80:	e00c      	b.n	1a001f9c <_malloc_r+0xb4>
1a001f82:	2a00      	cmp	r2, #0
1a001f84:	f280 811d 	bge.w	1a0021c2 <_malloc_r+0x2da>
1a001f88:	68e4      	ldr	r4, [r4, #12]
1a001f8a:	42a1      	cmp	r1, r4
1a001f8c:	d006      	beq.n	1a001f9c <_malloc_r+0xb4>
1a001f8e:	6863      	ldr	r3, [r4, #4]
1a001f90:	f023 0303 	bic.w	r3, r3, #3
1a001f94:	1b5a      	subs	r2, r3, r5
1a001f96:	2a0f      	cmp	r2, #15
1a001f98:	ddf3      	ble.n	1a001f82 <_malloc_r+0x9a>
1a001f9a:	4660      	mov	r0, ip
1a001f9c:	693c      	ldr	r4, [r7, #16]
1a001f9e:	f8df c294 	ldr.w	ip, [pc, #660]	; 1a002234 <_malloc_r+0x34c>
1a001fa2:	4564      	cmp	r4, ip
1a001fa4:	d071      	beq.n	1a00208a <_malloc_r+0x1a2>
1a001fa6:	6863      	ldr	r3, [r4, #4]
1a001fa8:	f023 0303 	bic.w	r3, r3, #3
1a001fac:	1b5a      	subs	r2, r3, r5
1a001fae:	2a0f      	cmp	r2, #15
1a001fb0:	f300 8144 	bgt.w	1a00223c <_malloc_r+0x354>
1a001fb4:	2a00      	cmp	r2, #0
1a001fb6:	e9c7 cc04 	strd	ip, ip, [r7, #16]
1a001fba:	f280 8126 	bge.w	1a00220a <_malloc_r+0x322>
1a001fbe:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
1a001fc2:	f080 8169 	bcs.w	1a002298 <_malloc_r+0x3b0>
1a001fc6:	08db      	lsrs	r3, r3, #3
1a001fc8:	1c59      	adds	r1, r3, #1
1a001fca:	687a      	ldr	r2, [r7, #4]
1a001fcc:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
1a001fd0:	f8c4 8008 	str.w	r8, [r4, #8]
1a001fd4:	f04f 0e01 	mov.w	lr, #1
1a001fd8:	109b      	asrs	r3, r3, #2
1a001fda:	fa0e f303 	lsl.w	r3, lr, r3
1a001fde:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
1a001fe2:	4313      	orrs	r3, r2
1a001fe4:	f1ae 0208 	sub.w	r2, lr, #8
1a001fe8:	60e2      	str	r2, [r4, #12]
1a001fea:	607b      	str	r3, [r7, #4]
1a001fec:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
1a001ff0:	f8c8 400c 	str.w	r4, [r8, #12]
1a001ff4:	1082      	asrs	r2, r0, #2
1a001ff6:	2401      	movs	r4, #1
1a001ff8:	4094      	lsls	r4, r2
1a001ffa:	429c      	cmp	r4, r3
1a001ffc:	d84b      	bhi.n	1a002096 <_malloc_r+0x1ae>
1a001ffe:	421c      	tst	r4, r3
1a002000:	d106      	bne.n	1a002010 <_malloc_r+0x128>
1a002002:	f020 0003 	bic.w	r0, r0, #3
1a002006:	0064      	lsls	r4, r4, #1
1a002008:	421c      	tst	r4, r3
1a00200a:	f100 0004 	add.w	r0, r0, #4
1a00200e:	d0fa      	beq.n	1a002006 <_malloc_r+0x11e>
1a002010:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
1a002014:	46ce      	mov	lr, r9
1a002016:	4680      	mov	r8, r0
1a002018:	f8de 300c 	ldr.w	r3, [lr, #12]
1a00201c:	459e      	cmp	lr, r3
1a00201e:	d107      	bne.n	1a002030 <_malloc_r+0x148>
1a002020:	e122      	b.n	1a002268 <_malloc_r+0x380>
1a002022:	2a00      	cmp	r2, #0
1a002024:	f280 8129 	bge.w	1a00227a <_malloc_r+0x392>
1a002028:	68db      	ldr	r3, [r3, #12]
1a00202a:	459e      	cmp	lr, r3
1a00202c:	f000 811c 	beq.w	1a002268 <_malloc_r+0x380>
1a002030:	6859      	ldr	r1, [r3, #4]
1a002032:	f021 0103 	bic.w	r1, r1, #3
1a002036:	1b4a      	subs	r2, r1, r5
1a002038:	2a0f      	cmp	r2, #15
1a00203a:	ddf2      	ble.n	1a002022 <_malloc_r+0x13a>
1a00203c:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
1a002040:	195c      	adds	r4, r3, r5
1a002042:	f045 0501 	orr.w	r5, r5, #1
1a002046:	605d      	str	r5, [r3, #4]
1a002048:	f042 0501 	orr.w	r5, r2, #1
1a00204c:	f8c8 e00c 	str.w	lr, [r8, #12]
1a002050:	4630      	mov	r0, r6
1a002052:	f8ce 8008 	str.w	r8, [lr, #8]
1a002056:	e9c7 4404 	strd	r4, r4, [r7, #16]
1a00205a:	e9c4 cc02 	strd	ip, ip, [r4, #8]
1a00205e:	6065      	str	r5, [r4, #4]
1a002060:	505a      	str	r2, [r3, r1]
1a002062:	9301      	str	r3, [sp, #4]
1a002064:	f000 fa84 	bl	1a002570 <__malloc_unlock>
1a002068:	9b01      	ldr	r3, [sp, #4]
1a00206a:	f103 0408 	add.w	r4, r3, #8
1a00206e:	e763      	b.n	1a001f38 <_malloc_r+0x50>
1a002070:	2400      	movs	r4, #0
1a002072:	230c      	movs	r3, #12
1a002074:	4620      	mov	r0, r4
1a002076:	6033      	str	r3, [r6, #0]
1a002078:	b003      	add	sp, #12
1a00207a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a00207e:	f44f 7300 	mov.w	r3, #512	; 0x200
1a002082:	2040      	movs	r0, #64	; 0x40
1a002084:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
1a002088:	e773      	b.n	1a001f72 <_malloc_r+0x8a>
1a00208a:	687b      	ldr	r3, [r7, #4]
1a00208c:	1082      	asrs	r2, r0, #2
1a00208e:	2401      	movs	r4, #1
1a002090:	4094      	lsls	r4, r2
1a002092:	429c      	cmp	r4, r3
1a002094:	d9b3      	bls.n	1a001ffe <_malloc_r+0x116>
1a002096:	68bc      	ldr	r4, [r7, #8]
1a002098:	6863      	ldr	r3, [r4, #4]
1a00209a:	f023 0903 	bic.w	r9, r3, #3
1a00209e:	45a9      	cmp	r9, r5
1a0020a0:	d303      	bcc.n	1a0020aa <_malloc_r+0x1c2>
1a0020a2:	eba9 0305 	sub.w	r3, r9, r5
1a0020a6:	2b0f      	cmp	r3, #15
1a0020a8:	dc7b      	bgt.n	1a0021a2 <_malloc_r+0x2ba>
1a0020aa:	4b5e      	ldr	r3, [pc, #376]	; (1a002224 <_malloc_r+0x33c>)
1a0020ac:	f8df a188 	ldr.w	sl, [pc, #392]	; 1a002238 <_malloc_r+0x350>
1a0020b0:	681a      	ldr	r2, [r3, #0]
1a0020b2:	f8da 3000 	ldr.w	r3, [sl]
1a0020b6:	3301      	adds	r3, #1
1a0020b8:	eb05 0802 	add.w	r8, r5, r2
1a0020bc:	f000 8148 	beq.w	1a002350 <_malloc_r+0x468>
1a0020c0:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
1a0020c4:	f108 080f 	add.w	r8, r8, #15
1a0020c8:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
1a0020cc:	f028 080f 	bic.w	r8, r8, #15
1a0020d0:	4641      	mov	r1, r8
1a0020d2:	4630      	mov	r0, r6
1a0020d4:	f000 fa5c 	bl	1a002590 <_sbrk_r>
1a0020d8:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
1a0020dc:	4683      	mov	fp, r0
1a0020de:	f000 8104 	beq.w	1a0022ea <_malloc_r+0x402>
1a0020e2:	eb04 0009 	add.w	r0, r4, r9
1a0020e6:	4558      	cmp	r0, fp
1a0020e8:	f200 80fd 	bhi.w	1a0022e6 <_malloc_r+0x3fe>
1a0020ec:	4a4e      	ldr	r2, [pc, #312]	; (1a002228 <_malloc_r+0x340>)
1a0020ee:	6813      	ldr	r3, [r2, #0]
1a0020f0:	4443      	add	r3, r8
1a0020f2:	6013      	str	r3, [r2, #0]
1a0020f4:	f000 814d 	beq.w	1a002392 <_malloc_r+0x4aa>
1a0020f8:	f8da 1000 	ldr.w	r1, [sl]
1a0020fc:	3101      	adds	r1, #1
1a0020fe:	bf1b      	ittet	ne
1a002100:	ebab 0000 	subne.w	r0, fp, r0
1a002104:	181b      	addne	r3, r3, r0
1a002106:	f8ca b000 	streq.w	fp, [sl]
1a00210a:	6013      	strne	r3, [r2, #0]
1a00210c:	f01b 0307 	ands.w	r3, fp, #7
1a002110:	f000 8134 	beq.w	1a00237c <_malloc_r+0x494>
1a002114:	f1c3 0108 	rsb	r1, r3, #8
1a002118:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
1a00211c:	448b      	add	fp, r1
1a00211e:	3308      	adds	r3, #8
1a002120:	44d8      	add	r8, fp
1a002122:	f3c8 080b 	ubfx	r8, r8, #0, #12
1a002126:	eba3 0808 	sub.w	r8, r3, r8
1a00212a:	4641      	mov	r1, r8
1a00212c:	4630      	mov	r0, r6
1a00212e:	9201      	str	r2, [sp, #4]
1a002130:	f000 fa2e 	bl	1a002590 <_sbrk_r>
1a002134:	1c43      	adds	r3, r0, #1
1a002136:	9a01      	ldr	r2, [sp, #4]
1a002138:	f000 8146 	beq.w	1a0023c8 <_malloc_r+0x4e0>
1a00213c:	eba0 010b 	sub.w	r1, r0, fp
1a002140:	4441      	add	r1, r8
1a002142:	f041 0101 	orr.w	r1, r1, #1
1a002146:	6813      	ldr	r3, [r2, #0]
1a002148:	f8c7 b008 	str.w	fp, [r7, #8]
1a00214c:	4443      	add	r3, r8
1a00214e:	42bc      	cmp	r4, r7
1a002150:	f8cb 1004 	str.w	r1, [fp, #4]
1a002154:	6013      	str	r3, [r2, #0]
1a002156:	d015      	beq.n	1a002184 <_malloc_r+0x29c>
1a002158:	f1b9 0f0f 	cmp.w	r9, #15
1a00215c:	f240 8130 	bls.w	1a0023c0 <_malloc_r+0x4d8>
1a002160:	6860      	ldr	r0, [r4, #4]
1a002162:	f1a9 010c 	sub.w	r1, r9, #12
1a002166:	f021 0107 	bic.w	r1, r1, #7
1a00216a:	f000 0001 	and.w	r0, r0, #1
1a00216e:	eb04 0c01 	add.w	ip, r4, r1
1a002172:	4308      	orrs	r0, r1
1a002174:	f04f 0e05 	mov.w	lr, #5
1a002178:	290f      	cmp	r1, #15
1a00217a:	6060      	str	r0, [r4, #4]
1a00217c:	e9cc ee01 	strd	lr, lr, [ip, #4]
1a002180:	f200 813a 	bhi.w	1a0023f8 <_malloc_r+0x510>
1a002184:	4a29      	ldr	r2, [pc, #164]	; (1a00222c <_malloc_r+0x344>)
1a002186:	482a      	ldr	r0, [pc, #168]	; (1a002230 <_malloc_r+0x348>)
1a002188:	6811      	ldr	r1, [r2, #0]
1a00218a:	68bc      	ldr	r4, [r7, #8]
1a00218c:	428b      	cmp	r3, r1
1a00218e:	6801      	ldr	r1, [r0, #0]
1a002190:	bf88      	it	hi
1a002192:	6013      	strhi	r3, [r2, #0]
1a002194:	6862      	ldr	r2, [r4, #4]
1a002196:	428b      	cmp	r3, r1
1a002198:	f022 0203 	bic.w	r2, r2, #3
1a00219c:	bf88      	it	hi
1a00219e:	6003      	strhi	r3, [r0, #0]
1a0021a0:	e0a7      	b.n	1a0022f2 <_malloc_r+0x40a>
1a0021a2:	1962      	adds	r2, r4, r5
1a0021a4:	f043 0301 	orr.w	r3, r3, #1
1a0021a8:	f045 0501 	orr.w	r5, r5, #1
1a0021ac:	6065      	str	r5, [r4, #4]
1a0021ae:	4630      	mov	r0, r6
1a0021b0:	60ba      	str	r2, [r7, #8]
1a0021b2:	6053      	str	r3, [r2, #4]
1a0021b4:	f000 f9dc 	bl	1a002570 <__malloc_unlock>
1a0021b8:	3408      	adds	r4, #8
1a0021ba:	4620      	mov	r0, r4
1a0021bc:	b003      	add	sp, #12
1a0021be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0021c2:	4423      	add	r3, r4
1a0021c4:	68e1      	ldr	r1, [r4, #12]
1a0021c6:	685a      	ldr	r2, [r3, #4]
1a0021c8:	68a5      	ldr	r5, [r4, #8]
1a0021ca:	f042 0201 	orr.w	r2, r2, #1
1a0021ce:	60e9      	str	r1, [r5, #12]
1a0021d0:	4630      	mov	r0, r6
1a0021d2:	608d      	str	r5, [r1, #8]
1a0021d4:	605a      	str	r2, [r3, #4]
1a0021d6:	f000 f9cb 	bl	1a002570 <__malloc_unlock>
1a0021da:	3408      	adds	r4, #8
1a0021dc:	4620      	mov	r0, r4
1a0021de:	b003      	add	sp, #12
1a0021e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0021e4:	68dc      	ldr	r4, [r3, #12]
1a0021e6:	42a3      	cmp	r3, r4
1a0021e8:	bf08      	it	eq
1a0021ea:	3002      	addeq	r0, #2
1a0021ec:	f43f aed6 	beq.w	1a001f9c <_malloc_r+0xb4>
1a0021f0:	e692      	b.n	1a001f18 <_malloc_r+0x30>
1a0021f2:	2b14      	cmp	r3, #20
1a0021f4:	d971      	bls.n	1a0022da <_malloc_r+0x3f2>
1a0021f6:	2b54      	cmp	r3, #84	; 0x54
1a0021f8:	f200 80ad 	bhi.w	1a002356 <_malloc_r+0x46e>
1a0021fc:	0b2b      	lsrs	r3, r5, #12
1a0021fe:	f103 006f 	add.w	r0, r3, #111	; 0x6f
1a002202:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
1a002206:	00c3      	lsls	r3, r0, #3
1a002208:	e6b3      	b.n	1a001f72 <_malloc_r+0x8a>
1a00220a:	4423      	add	r3, r4
1a00220c:	4630      	mov	r0, r6
1a00220e:	685a      	ldr	r2, [r3, #4]
1a002210:	f042 0201 	orr.w	r2, r2, #1
1a002214:	605a      	str	r2, [r3, #4]
1a002216:	3408      	adds	r4, #8
1a002218:	f000 f9aa 	bl	1a002570 <__malloc_unlock>
1a00221c:	e68c      	b.n	1a001f38 <_malloc_r+0x50>
1a00221e:	bf00      	nop
1a002220:	10000434 	.word	0x10000434
1a002224:	100008b4 	.word	0x100008b4
1a002228:	10000884 	.word	0x10000884
1a00222c:	100008ac 	.word	0x100008ac
1a002230:	100008b0 	.word	0x100008b0
1a002234:	1000043c 	.word	0x1000043c
1a002238:	1000083c 	.word	0x1000083c
1a00223c:	1961      	adds	r1, r4, r5
1a00223e:	f045 0e01 	orr.w	lr, r5, #1
1a002242:	f042 0501 	orr.w	r5, r2, #1
1a002246:	f8c4 e004 	str.w	lr, [r4, #4]
1a00224a:	4630      	mov	r0, r6
1a00224c:	e9c7 1104 	strd	r1, r1, [r7, #16]
1a002250:	e9c1 cc02 	strd	ip, ip, [r1, #8]
1a002254:	604d      	str	r5, [r1, #4]
1a002256:	50e2      	str	r2, [r4, r3]
1a002258:	f000 f98a 	bl	1a002570 <__malloc_unlock>
1a00225c:	3408      	adds	r4, #8
1a00225e:	e66b      	b.n	1a001f38 <_malloc_r+0x50>
1a002260:	08e8      	lsrs	r0, r5, #3
1a002262:	f105 0308 	add.w	r3, r5, #8
1a002266:	e64f      	b.n	1a001f08 <_malloc_r+0x20>
1a002268:	f108 0801 	add.w	r8, r8, #1
1a00226c:	f018 0f03 	tst.w	r8, #3
1a002270:	f10e 0e08 	add.w	lr, lr, #8
1a002274:	f47f aed0 	bne.w	1a002018 <_malloc_r+0x130>
1a002278:	e052      	b.n	1a002320 <_malloc_r+0x438>
1a00227a:	4419      	add	r1, r3
1a00227c:	461c      	mov	r4, r3
1a00227e:	684a      	ldr	r2, [r1, #4]
1a002280:	68db      	ldr	r3, [r3, #12]
1a002282:	f854 5f08 	ldr.w	r5, [r4, #8]!
1a002286:	f042 0201 	orr.w	r2, r2, #1
1a00228a:	604a      	str	r2, [r1, #4]
1a00228c:	4630      	mov	r0, r6
1a00228e:	60eb      	str	r3, [r5, #12]
1a002290:	609d      	str	r5, [r3, #8]
1a002292:	f000 f96d 	bl	1a002570 <__malloc_unlock>
1a002296:	e64f      	b.n	1a001f38 <_malloc_r+0x50>
1a002298:	0a5a      	lsrs	r2, r3, #9
1a00229a:	2a04      	cmp	r2, #4
1a00229c:	d935      	bls.n	1a00230a <_malloc_r+0x422>
1a00229e:	2a14      	cmp	r2, #20
1a0022a0:	d86f      	bhi.n	1a002382 <_malloc_r+0x49a>
1a0022a2:	f102 015c 	add.w	r1, r2, #92	; 0x5c
1a0022a6:	00c9      	lsls	r1, r1, #3
1a0022a8:	325b      	adds	r2, #91	; 0x5b
1a0022aa:	eb07 0e01 	add.w	lr, r7, r1
1a0022ae:	5879      	ldr	r1, [r7, r1]
1a0022b0:	f1ae 0e08 	sub.w	lr, lr, #8
1a0022b4:	458e      	cmp	lr, r1
1a0022b6:	d058      	beq.n	1a00236a <_malloc_r+0x482>
1a0022b8:	684a      	ldr	r2, [r1, #4]
1a0022ba:	f022 0203 	bic.w	r2, r2, #3
1a0022be:	429a      	cmp	r2, r3
1a0022c0:	d902      	bls.n	1a0022c8 <_malloc_r+0x3e0>
1a0022c2:	6889      	ldr	r1, [r1, #8]
1a0022c4:	458e      	cmp	lr, r1
1a0022c6:	d1f7      	bne.n	1a0022b8 <_malloc_r+0x3d0>
1a0022c8:	f8d1 e00c 	ldr.w	lr, [r1, #12]
1a0022cc:	687b      	ldr	r3, [r7, #4]
1a0022ce:	e9c4 1e02 	strd	r1, lr, [r4, #8]
1a0022d2:	f8ce 4008 	str.w	r4, [lr, #8]
1a0022d6:	60cc      	str	r4, [r1, #12]
1a0022d8:	e68c      	b.n	1a001ff4 <_malloc_r+0x10c>
1a0022da:	f103 005c 	add.w	r0, r3, #92	; 0x5c
1a0022de:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
1a0022e2:	00c3      	lsls	r3, r0, #3
1a0022e4:	e645      	b.n	1a001f72 <_malloc_r+0x8a>
1a0022e6:	42bc      	cmp	r4, r7
1a0022e8:	d072      	beq.n	1a0023d0 <_malloc_r+0x4e8>
1a0022ea:	68bc      	ldr	r4, [r7, #8]
1a0022ec:	6862      	ldr	r2, [r4, #4]
1a0022ee:	f022 0203 	bic.w	r2, r2, #3
1a0022f2:	4295      	cmp	r5, r2
1a0022f4:	eba2 0305 	sub.w	r3, r2, r5
1a0022f8:	d802      	bhi.n	1a002300 <_malloc_r+0x418>
1a0022fa:	2b0f      	cmp	r3, #15
1a0022fc:	f73f af51 	bgt.w	1a0021a2 <_malloc_r+0x2ba>
1a002300:	4630      	mov	r0, r6
1a002302:	f000 f935 	bl	1a002570 <__malloc_unlock>
1a002306:	2400      	movs	r4, #0
1a002308:	e616      	b.n	1a001f38 <_malloc_r+0x50>
1a00230a:	099a      	lsrs	r2, r3, #6
1a00230c:	f102 0139 	add.w	r1, r2, #57	; 0x39
1a002310:	00c9      	lsls	r1, r1, #3
1a002312:	3238      	adds	r2, #56	; 0x38
1a002314:	e7c9      	b.n	1a0022aa <_malloc_r+0x3c2>
1a002316:	f8d9 9000 	ldr.w	r9, [r9]
1a00231a:	4599      	cmp	r9, r3
1a00231c:	f040 8083 	bne.w	1a002426 <_malloc_r+0x53e>
1a002320:	f010 0f03 	tst.w	r0, #3
1a002324:	f1a9 0308 	sub.w	r3, r9, #8
1a002328:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
1a00232c:	d1f3      	bne.n	1a002316 <_malloc_r+0x42e>
1a00232e:	687b      	ldr	r3, [r7, #4]
1a002330:	ea23 0304 	bic.w	r3, r3, r4
1a002334:	607b      	str	r3, [r7, #4]
1a002336:	0064      	lsls	r4, r4, #1
1a002338:	429c      	cmp	r4, r3
1a00233a:	f63f aeac 	bhi.w	1a002096 <_malloc_r+0x1ae>
1a00233e:	b91c      	cbnz	r4, 1a002348 <_malloc_r+0x460>
1a002340:	e6a9      	b.n	1a002096 <_malloc_r+0x1ae>
1a002342:	0064      	lsls	r4, r4, #1
1a002344:	f108 0804 	add.w	r8, r8, #4
1a002348:	421c      	tst	r4, r3
1a00234a:	d0fa      	beq.n	1a002342 <_malloc_r+0x45a>
1a00234c:	4640      	mov	r0, r8
1a00234e:	e65f      	b.n	1a002010 <_malloc_r+0x128>
1a002350:	f108 0810 	add.w	r8, r8, #16
1a002354:	e6bc      	b.n	1a0020d0 <_malloc_r+0x1e8>
1a002356:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a00235a:	d826      	bhi.n	1a0023aa <_malloc_r+0x4c2>
1a00235c:	0beb      	lsrs	r3, r5, #15
1a00235e:	f103 0078 	add.w	r0, r3, #120	; 0x78
1a002362:	f103 0c77 	add.w	ip, r3, #119	; 0x77
1a002366:	00c3      	lsls	r3, r0, #3
1a002368:	e603      	b.n	1a001f72 <_malloc_r+0x8a>
1a00236a:	687b      	ldr	r3, [r7, #4]
1a00236c:	1092      	asrs	r2, r2, #2
1a00236e:	f04f 0801 	mov.w	r8, #1
1a002372:	fa08 f202 	lsl.w	r2, r8, r2
1a002376:	4313      	orrs	r3, r2
1a002378:	607b      	str	r3, [r7, #4]
1a00237a:	e7a8      	b.n	1a0022ce <_malloc_r+0x3e6>
1a00237c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
1a002380:	e6ce      	b.n	1a002120 <_malloc_r+0x238>
1a002382:	2a54      	cmp	r2, #84	; 0x54
1a002384:	d829      	bhi.n	1a0023da <_malloc_r+0x4f2>
1a002386:	0b1a      	lsrs	r2, r3, #12
1a002388:	f102 016f 	add.w	r1, r2, #111	; 0x6f
1a00238c:	00c9      	lsls	r1, r1, #3
1a00238e:	326e      	adds	r2, #110	; 0x6e
1a002390:	e78b      	b.n	1a0022aa <_malloc_r+0x3c2>
1a002392:	f3c0 010b 	ubfx	r1, r0, #0, #12
1a002396:	2900      	cmp	r1, #0
1a002398:	f47f aeae 	bne.w	1a0020f8 <_malloc_r+0x210>
1a00239c:	eb09 0208 	add.w	r2, r9, r8
1a0023a0:	68b9      	ldr	r1, [r7, #8]
1a0023a2:	f042 0201 	orr.w	r2, r2, #1
1a0023a6:	604a      	str	r2, [r1, #4]
1a0023a8:	e6ec      	b.n	1a002184 <_malloc_r+0x29c>
1a0023aa:	f240 5254 	movw	r2, #1364	; 0x554
1a0023ae:	4293      	cmp	r3, r2
1a0023b0:	d81c      	bhi.n	1a0023ec <_malloc_r+0x504>
1a0023b2:	0cab      	lsrs	r3, r5, #18
1a0023b4:	f103 007d 	add.w	r0, r3, #125	; 0x7d
1a0023b8:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
1a0023bc:	00c3      	lsls	r3, r0, #3
1a0023be:	e5d8      	b.n	1a001f72 <_malloc_r+0x8a>
1a0023c0:	2301      	movs	r3, #1
1a0023c2:	f8cb 3004 	str.w	r3, [fp, #4]
1a0023c6:	e79b      	b.n	1a002300 <_malloc_r+0x418>
1a0023c8:	2101      	movs	r1, #1
1a0023ca:	f04f 0800 	mov.w	r8, #0
1a0023ce:	e6ba      	b.n	1a002146 <_malloc_r+0x25e>
1a0023d0:	4a16      	ldr	r2, [pc, #88]	; (1a00242c <_malloc_r+0x544>)
1a0023d2:	6813      	ldr	r3, [r2, #0]
1a0023d4:	4443      	add	r3, r8
1a0023d6:	6013      	str	r3, [r2, #0]
1a0023d8:	e68e      	b.n	1a0020f8 <_malloc_r+0x210>
1a0023da:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
1a0023de:	d814      	bhi.n	1a00240a <_malloc_r+0x522>
1a0023e0:	0bda      	lsrs	r2, r3, #15
1a0023e2:	f102 0178 	add.w	r1, r2, #120	; 0x78
1a0023e6:	00c9      	lsls	r1, r1, #3
1a0023e8:	3277      	adds	r2, #119	; 0x77
1a0023ea:	e75e      	b.n	1a0022aa <_malloc_r+0x3c2>
1a0023ec:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
1a0023f0:	207f      	movs	r0, #127	; 0x7f
1a0023f2:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
1a0023f6:	e5bc      	b.n	1a001f72 <_malloc_r+0x8a>
1a0023f8:	f104 0108 	add.w	r1, r4, #8
1a0023fc:	4630      	mov	r0, r6
1a0023fe:	9201      	str	r2, [sp, #4]
1a002400:	f000 f972 	bl	1a0026e8 <_free_r>
1a002404:	9a01      	ldr	r2, [sp, #4]
1a002406:	6813      	ldr	r3, [r2, #0]
1a002408:	e6bc      	b.n	1a002184 <_malloc_r+0x29c>
1a00240a:	f240 5154 	movw	r1, #1364	; 0x554
1a00240e:	428a      	cmp	r2, r1
1a002410:	d805      	bhi.n	1a00241e <_malloc_r+0x536>
1a002412:	0c9a      	lsrs	r2, r3, #18
1a002414:	f102 017d 	add.w	r1, r2, #125	; 0x7d
1a002418:	00c9      	lsls	r1, r1, #3
1a00241a:	327c      	adds	r2, #124	; 0x7c
1a00241c:	e745      	b.n	1a0022aa <_malloc_r+0x3c2>
1a00241e:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
1a002422:	227e      	movs	r2, #126	; 0x7e
1a002424:	e741      	b.n	1a0022aa <_malloc_r+0x3c2>
1a002426:	687b      	ldr	r3, [r7, #4]
1a002428:	e785      	b.n	1a002336 <_malloc_r+0x44e>
1a00242a:	bf00      	nop
1a00242c:	10000884 	.word	0x10000884

1a002430 <memcpy>:
1a002430:	4684      	mov	ip, r0
1a002432:	ea41 0300 	orr.w	r3, r1, r0
1a002436:	f013 0303 	ands.w	r3, r3, #3
1a00243a:	d16d      	bne.n	1a002518 <memcpy+0xe8>
1a00243c:	3a40      	subs	r2, #64	; 0x40
1a00243e:	d341      	bcc.n	1a0024c4 <memcpy+0x94>
1a002440:	f851 3b04 	ldr.w	r3, [r1], #4
1a002444:	f840 3b04 	str.w	r3, [r0], #4
1a002448:	f851 3b04 	ldr.w	r3, [r1], #4
1a00244c:	f840 3b04 	str.w	r3, [r0], #4
1a002450:	f851 3b04 	ldr.w	r3, [r1], #4
1a002454:	f840 3b04 	str.w	r3, [r0], #4
1a002458:	f851 3b04 	ldr.w	r3, [r1], #4
1a00245c:	f840 3b04 	str.w	r3, [r0], #4
1a002460:	f851 3b04 	ldr.w	r3, [r1], #4
1a002464:	f840 3b04 	str.w	r3, [r0], #4
1a002468:	f851 3b04 	ldr.w	r3, [r1], #4
1a00246c:	f840 3b04 	str.w	r3, [r0], #4
1a002470:	f851 3b04 	ldr.w	r3, [r1], #4
1a002474:	f840 3b04 	str.w	r3, [r0], #4
1a002478:	f851 3b04 	ldr.w	r3, [r1], #4
1a00247c:	f840 3b04 	str.w	r3, [r0], #4
1a002480:	f851 3b04 	ldr.w	r3, [r1], #4
1a002484:	f840 3b04 	str.w	r3, [r0], #4
1a002488:	f851 3b04 	ldr.w	r3, [r1], #4
1a00248c:	f840 3b04 	str.w	r3, [r0], #4
1a002490:	f851 3b04 	ldr.w	r3, [r1], #4
1a002494:	f840 3b04 	str.w	r3, [r0], #4
1a002498:	f851 3b04 	ldr.w	r3, [r1], #4
1a00249c:	f840 3b04 	str.w	r3, [r0], #4
1a0024a0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024a4:	f840 3b04 	str.w	r3, [r0], #4
1a0024a8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024ac:	f840 3b04 	str.w	r3, [r0], #4
1a0024b0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024b4:	f840 3b04 	str.w	r3, [r0], #4
1a0024b8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024bc:	f840 3b04 	str.w	r3, [r0], #4
1a0024c0:	3a40      	subs	r2, #64	; 0x40
1a0024c2:	d2bd      	bcs.n	1a002440 <memcpy+0x10>
1a0024c4:	3230      	adds	r2, #48	; 0x30
1a0024c6:	d311      	bcc.n	1a0024ec <memcpy+0xbc>
1a0024c8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024cc:	f840 3b04 	str.w	r3, [r0], #4
1a0024d0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024d4:	f840 3b04 	str.w	r3, [r0], #4
1a0024d8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024dc:	f840 3b04 	str.w	r3, [r0], #4
1a0024e0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024e4:	f840 3b04 	str.w	r3, [r0], #4
1a0024e8:	3a10      	subs	r2, #16
1a0024ea:	d2ed      	bcs.n	1a0024c8 <memcpy+0x98>
1a0024ec:	320c      	adds	r2, #12
1a0024ee:	d305      	bcc.n	1a0024fc <memcpy+0xcc>
1a0024f0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024f4:	f840 3b04 	str.w	r3, [r0], #4
1a0024f8:	3a04      	subs	r2, #4
1a0024fa:	d2f9      	bcs.n	1a0024f0 <memcpy+0xc0>
1a0024fc:	3204      	adds	r2, #4
1a0024fe:	d008      	beq.n	1a002512 <memcpy+0xe2>
1a002500:	07d2      	lsls	r2, r2, #31
1a002502:	bf1c      	itt	ne
1a002504:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002508:	f800 3b01 	strbne.w	r3, [r0], #1
1a00250c:	d301      	bcc.n	1a002512 <memcpy+0xe2>
1a00250e:	880b      	ldrh	r3, [r1, #0]
1a002510:	8003      	strh	r3, [r0, #0]
1a002512:	4660      	mov	r0, ip
1a002514:	4770      	bx	lr
1a002516:	bf00      	nop
1a002518:	2a08      	cmp	r2, #8
1a00251a:	d313      	bcc.n	1a002544 <memcpy+0x114>
1a00251c:	078b      	lsls	r3, r1, #30
1a00251e:	d08d      	beq.n	1a00243c <memcpy+0xc>
1a002520:	f010 0303 	ands.w	r3, r0, #3
1a002524:	d08a      	beq.n	1a00243c <memcpy+0xc>
1a002526:	f1c3 0304 	rsb	r3, r3, #4
1a00252a:	1ad2      	subs	r2, r2, r3
1a00252c:	07db      	lsls	r3, r3, #31
1a00252e:	bf1c      	itt	ne
1a002530:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002534:	f800 3b01 	strbne.w	r3, [r0], #1
1a002538:	d380      	bcc.n	1a00243c <memcpy+0xc>
1a00253a:	f831 3b02 	ldrh.w	r3, [r1], #2
1a00253e:	f820 3b02 	strh.w	r3, [r0], #2
1a002542:	e77b      	b.n	1a00243c <memcpy+0xc>
1a002544:	3a04      	subs	r2, #4
1a002546:	d3d9      	bcc.n	1a0024fc <memcpy+0xcc>
1a002548:	3a01      	subs	r2, #1
1a00254a:	f811 3b01 	ldrb.w	r3, [r1], #1
1a00254e:	f800 3b01 	strb.w	r3, [r0], #1
1a002552:	d2f9      	bcs.n	1a002548 <memcpy+0x118>
1a002554:	780b      	ldrb	r3, [r1, #0]
1a002556:	7003      	strb	r3, [r0, #0]
1a002558:	784b      	ldrb	r3, [r1, #1]
1a00255a:	7043      	strb	r3, [r0, #1]
1a00255c:	788b      	ldrb	r3, [r1, #2]
1a00255e:	7083      	strb	r3, [r0, #2]
1a002560:	4660      	mov	r0, ip
1a002562:	4770      	bx	lr

1a002564 <__malloc_lock>:
1a002564:	4801      	ldr	r0, [pc, #4]	; (1a00256c <__malloc_lock+0x8>)
1a002566:	f7fd bf15 	b.w	1a000394 <__retarget_lock_acquire_recursive>
1a00256a:	bf00      	nop
1a00256c:	100008c8 	.word	0x100008c8

1a002570 <__malloc_unlock>:
1a002570:	4801      	ldr	r0, [pc, #4]	; (1a002578 <__malloc_unlock+0x8>)
1a002572:	f7fd bf11 	b.w	1a000398 <__retarget_lock_release_recursive>
1a002576:	bf00      	nop
1a002578:	100008c8 	.word	0x100008c8

1a00257c <mallinfo>:
1a00257c:	b510      	push	{r4, lr}
1a00257e:	4b03      	ldr	r3, [pc, #12]	; (1a00258c <mallinfo+0x10>)
1a002580:	4604      	mov	r4, r0
1a002582:	6819      	ldr	r1, [r3, #0]
1a002584:	f000 f9ce 	bl	1a002924 <_mallinfo_r>
1a002588:	4620      	mov	r0, r4
1a00258a:	bd10      	pop	{r4, pc}
1a00258c:	10000000 	.word	0x10000000

1a002590 <_sbrk_r>:
1a002590:	b538      	push	{r3, r4, r5, lr}
1a002592:	4c07      	ldr	r4, [pc, #28]	; (1a0025b0 <_sbrk_r+0x20>)
1a002594:	2300      	movs	r3, #0
1a002596:	4605      	mov	r5, r0
1a002598:	4608      	mov	r0, r1
1a00259a:	6023      	str	r3, [r4, #0]
1a00259c:	f7fe fada 	bl	1a000b54 <_sbrk>
1a0025a0:	1c43      	adds	r3, r0, #1
1a0025a2:	d000      	beq.n	1a0025a6 <_sbrk_r+0x16>
1a0025a4:	bd38      	pop	{r3, r4, r5, pc}
1a0025a6:	6823      	ldr	r3, [r4, #0]
1a0025a8:	2b00      	cmp	r3, #0
1a0025aa:	d0fb      	beq.n	1a0025a4 <_sbrk_r+0x14>
1a0025ac:	602b      	str	r3, [r5, #0]
1a0025ae:	bd38      	pop	{r3, r4, r5, pc}
1a0025b0:	100008e0 	.word	0x100008e0

1a0025b4 <_raise_r>:
1a0025b4:	291f      	cmp	r1, #31
1a0025b6:	b538      	push	{r3, r4, r5, lr}
1a0025b8:	d822      	bhi.n	1a002600 <_raise_r+0x4c>
1a0025ba:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
1a0025be:	4605      	mov	r5, r0
1a0025c0:	460c      	mov	r4, r1
1a0025c2:	b16b      	cbz	r3, 1a0025e0 <_raise_r+0x2c>
1a0025c4:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
1a0025c8:	b152      	cbz	r2, 1a0025e0 <_raise_r+0x2c>
1a0025ca:	2a01      	cmp	r2, #1
1a0025cc:	d012      	beq.n	1a0025f4 <_raise_r+0x40>
1a0025ce:	1c51      	adds	r1, r2, #1
1a0025d0:	d012      	beq.n	1a0025f8 <_raise_r+0x44>
1a0025d2:	2500      	movs	r5, #0
1a0025d4:	4620      	mov	r0, r4
1a0025d6:	f843 5024 	str.w	r5, [r3, r4, lsl #2]
1a0025da:	4790      	blx	r2
1a0025dc:	4628      	mov	r0, r5
1a0025de:	bd38      	pop	{r3, r4, r5, pc}
1a0025e0:	4628      	mov	r0, r5
1a0025e2:	f000 f82f 	bl	1a002644 <_getpid_r>
1a0025e6:	4622      	mov	r2, r4
1a0025e8:	4601      	mov	r1, r0
1a0025ea:	4628      	mov	r0, r5
1a0025ec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a0025f0:	f000 b814 	b.w	1a00261c <_kill_r>
1a0025f4:	2000      	movs	r0, #0
1a0025f6:	bd38      	pop	{r3, r4, r5, pc}
1a0025f8:	2316      	movs	r3, #22
1a0025fa:	6003      	str	r3, [r0, #0]
1a0025fc:	2001      	movs	r0, #1
1a0025fe:	bd38      	pop	{r3, r4, r5, pc}
1a002600:	2316      	movs	r3, #22
1a002602:	6003      	str	r3, [r0, #0]
1a002604:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a002608:	bd38      	pop	{r3, r4, r5, pc}
1a00260a:	bf00      	nop

1a00260c <raise>:
1a00260c:	4b02      	ldr	r3, [pc, #8]	; (1a002618 <raise+0xc>)
1a00260e:	4601      	mov	r1, r0
1a002610:	6818      	ldr	r0, [r3, #0]
1a002612:	f7ff bfcf 	b.w	1a0025b4 <_raise_r>
1a002616:	bf00      	nop
1a002618:	10000000 	.word	0x10000000

1a00261c <_kill_r>:
1a00261c:	b538      	push	{r3, r4, r5, lr}
1a00261e:	460b      	mov	r3, r1
1a002620:	4c07      	ldr	r4, [pc, #28]	; (1a002640 <_kill_r+0x24>)
1a002622:	4605      	mov	r5, r0
1a002624:	4611      	mov	r1, r2
1a002626:	4618      	mov	r0, r3
1a002628:	2300      	movs	r3, #0
1a00262a:	6023      	str	r3, [r4, #0]
1a00262c:	f7fe fab8 	bl	1a000ba0 <_kill>
1a002630:	1c43      	adds	r3, r0, #1
1a002632:	d000      	beq.n	1a002636 <_kill_r+0x1a>
1a002634:	bd38      	pop	{r3, r4, r5, pc}
1a002636:	6823      	ldr	r3, [r4, #0]
1a002638:	2b00      	cmp	r3, #0
1a00263a:	d0fb      	beq.n	1a002634 <_kill_r+0x18>
1a00263c:	602b      	str	r3, [r5, #0]
1a00263e:	bd38      	pop	{r3, r4, r5, pc}
1a002640:	100008e0 	.word	0x100008e0

1a002644 <_getpid_r>:
1a002644:	f7fe babe 	b.w	1a000bc4 <_getpid>

1a002648 <_malloc_trim_r>:
1a002648:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00264a:	4f24      	ldr	r7, [pc, #144]	; (1a0026dc <_malloc_trim_r+0x94>)
1a00264c:	460c      	mov	r4, r1
1a00264e:	4606      	mov	r6, r0
1a002650:	f7ff ff88 	bl	1a002564 <__malloc_lock>
1a002654:	68bb      	ldr	r3, [r7, #8]
1a002656:	685d      	ldr	r5, [r3, #4]
1a002658:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
1a00265c:	310f      	adds	r1, #15
1a00265e:	f025 0503 	bic.w	r5, r5, #3
1a002662:	4429      	add	r1, r5
1a002664:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
1a002668:	f021 010f 	bic.w	r1, r1, #15
1a00266c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
1a002670:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
1a002674:	db07      	blt.n	1a002686 <_malloc_trim_r+0x3e>
1a002676:	2100      	movs	r1, #0
1a002678:	4630      	mov	r0, r6
1a00267a:	f7ff ff89 	bl	1a002590 <_sbrk_r>
1a00267e:	68bb      	ldr	r3, [r7, #8]
1a002680:	442b      	add	r3, r5
1a002682:	4298      	cmp	r0, r3
1a002684:	d004      	beq.n	1a002690 <_malloc_trim_r+0x48>
1a002686:	4630      	mov	r0, r6
1a002688:	f7ff ff72 	bl	1a002570 <__malloc_unlock>
1a00268c:	2000      	movs	r0, #0
1a00268e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a002690:	4261      	negs	r1, r4
1a002692:	4630      	mov	r0, r6
1a002694:	f7ff ff7c 	bl	1a002590 <_sbrk_r>
1a002698:	3001      	adds	r0, #1
1a00269a:	d00d      	beq.n	1a0026b8 <_malloc_trim_r+0x70>
1a00269c:	4b10      	ldr	r3, [pc, #64]	; (1a0026e0 <_malloc_trim_r+0x98>)
1a00269e:	68ba      	ldr	r2, [r7, #8]
1a0026a0:	6819      	ldr	r1, [r3, #0]
1a0026a2:	1b2d      	subs	r5, r5, r4
1a0026a4:	f045 0501 	orr.w	r5, r5, #1
1a0026a8:	4630      	mov	r0, r6
1a0026aa:	1b09      	subs	r1, r1, r4
1a0026ac:	6055      	str	r5, [r2, #4]
1a0026ae:	6019      	str	r1, [r3, #0]
1a0026b0:	f7ff ff5e 	bl	1a002570 <__malloc_unlock>
1a0026b4:	2001      	movs	r0, #1
1a0026b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a0026b8:	2100      	movs	r1, #0
1a0026ba:	4630      	mov	r0, r6
1a0026bc:	f7ff ff68 	bl	1a002590 <_sbrk_r>
1a0026c0:	68ba      	ldr	r2, [r7, #8]
1a0026c2:	1a83      	subs	r3, r0, r2
1a0026c4:	2b0f      	cmp	r3, #15
1a0026c6:	ddde      	ble.n	1a002686 <_malloc_trim_r+0x3e>
1a0026c8:	4c06      	ldr	r4, [pc, #24]	; (1a0026e4 <_malloc_trim_r+0x9c>)
1a0026ca:	4905      	ldr	r1, [pc, #20]	; (1a0026e0 <_malloc_trim_r+0x98>)
1a0026cc:	6824      	ldr	r4, [r4, #0]
1a0026ce:	f043 0301 	orr.w	r3, r3, #1
1a0026d2:	1b00      	subs	r0, r0, r4
1a0026d4:	6053      	str	r3, [r2, #4]
1a0026d6:	6008      	str	r0, [r1, #0]
1a0026d8:	e7d5      	b.n	1a002686 <_malloc_trim_r+0x3e>
1a0026da:	bf00      	nop
1a0026dc:	10000434 	.word	0x10000434
1a0026e0:	10000884 	.word	0x10000884
1a0026e4:	1000083c 	.word	0x1000083c

1a0026e8 <_free_r>:
1a0026e8:	2900      	cmp	r1, #0
1a0026ea:	d053      	beq.n	1a002794 <_free_r+0xac>
1a0026ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0026ee:	460c      	mov	r4, r1
1a0026f0:	4606      	mov	r6, r0
1a0026f2:	f7ff ff37 	bl	1a002564 <__malloc_lock>
1a0026f6:	f854 cc04 	ldr.w	ip, [r4, #-4]
1a0026fa:	4f71      	ldr	r7, [pc, #452]	; (1a0028c0 <_free_r+0x1d8>)
1a0026fc:	f02c 0101 	bic.w	r1, ip, #1
1a002700:	f1a4 0508 	sub.w	r5, r4, #8
1a002704:	186b      	adds	r3, r5, r1
1a002706:	68b8      	ldr	r0, [r7, #8]
1a002708:	685a      	ldr	r2, [r3, #4]
1a00270a:	4298      	cmp	r0, r3
1a00270c:	f022 0203 	bic.w	r2, r2, #3
1a002710:	d053      	beq.n	1a0027ba <_free_r+0xd2>
1a002712:	f01c 0f01 	tst.w	ip, #1
1a002716:	605a      	str	r2, [r3, #4]
1a002718:	eb03 0002 	add.w	r0, r3, r2
1a00271c:	d13b      	bne.n	1a002796 <_free_r+0xae>
1a00271e:	f854 cc08 	ldr.w	ip, [r4, #-8]
1a002722:	6840      	ldr	r0, [r0, #4]
1a002724:	eba5 050c 	sub.w	r5, r5, ip
1a002728:	f107 0e08 	add.w	lr, r7, #8
1a00272c:	68ac      	ldr	r4, [r5, #8]
1a00272e:	4574      	cmp	r4, lr
1a002730:	4461      	add	r1, ip
1a002732:	f000 0001 	and.w	r0, r0, #1
1a002736:	d075      	beq.n	1a002824 <_free_r+0x13c>
1a002738:	f8d5 c00c 	ldr.w	ip, [r5, #12]
1a00273c:	f8c4 c00c 	str.w	ip, [r4, #12]
1a002740:	f8cc 4008 	str.w	r4, [ip, #8]
1a002744:	b360      	cbz	r0, 1a0027a0 <_free_r+0xb8>
1a002746:	f041 0301 	orr.w	r3, r1, #1
1a00274a:	606b      	str	r3, [r5, #4]
1a00274c:	5069      	str	r1, [r5, r1]
1a00274e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
1a002752:	d350      	bcc.n	1a0027f6 <_free_r+0x10e>
1a002754:	0a4b      	lsrs	r3, r1, #9
1a002756:	2b04      	cmp	r3, #4
1a002758:	d870      	bhi.n	1a00283c <_free_r+0x154>
1a00275a:	098b      	lsrs	r3, r1, #6
1a00275c:	f103 0439 	add.w	r4, r3, #57	; 0x39
1a002760:	00e4      	lsls	r4, r4, #3
1a002762:	f103 0238 	add.w	r2, r3, #56	; 0x38
1a002766:	1938      	adds	r0, r7, r4
1a002768:	593b      	ldr	r3, [r7, r4]
1a00276a:	3808      	subs	r0, #8
1a00276c:	4298      	cmp	r0, r3
1a00276e:	d078      	beq.n	1a002862 <_free_r+0x17a>
1a002770:	685a      	ldr	r2, [r3, #4]
1a002772:	f022 0203 	bic.w	r2, r2, #3
1a002776:	428a      	cmp	r2, r1
1a002778:	d971      	bls.n	1a00285e <_free_r+0x176>
1a00277a:	689b      	ldr	r3, [r3, #8]
1a00277c:	4298      	cmp	r0, r3
1a00277e:	d1f7      	bne.n	1a002770 <_free_r+0x88>
1a002780:	68c3      	ldr	r3, [r0, #12]
1a002782:	e9c5 0302 	strd	r0, r3, [r5, #8]
1a002786:	609d      	str	r5, [r3, #8]
1a002788:	60c5      	str	r5, [r0, #12]
1a00278a:	4630      	mov	r0, r6
1a00278c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a002790:	f7ff beee 	b.w	1a002570 <__malloc_unlock>
1a002794:	4770      	bx	lr
1a002796:	6840      	ldr	r0, [r0, #4]
1a002798:	f000 0001 	and.w	r0, r0, #1
1a00279c:	2800      	cmp	r0, #0
1a00279e:	d1d2      	bne.n	1a002746 <_free_r+0x5e>
1a0027a0:	6898      	ldr	r0, [r3, #8]
1a0027a2:	4c48      	ldr	r4, [pc, #288]	; (1a0028c4 <_free_r+0x1dc>)
1a0027a4:	4411      	add	r1, r2
1a0027a6:	42a0      	cmp	r0, r4
1a0027a8:	f041 0201 	orr.w	r2, r1, #1
1a0027ac:	d062      	beq.n	1a002874 <_free_r+0x18c>
1a0027ae:	68db      	ldr	r3, [r3, #12]
1a0027b0:	60c3      	str	r3, [r0, #12]
1a0027b2:	6098      	str	r0, [r3, #8]
1a0027b4:	606a      	str	r2, [r5, #4]
1a0027b6:	5069      	str	r1, [r5, r1]
1a0027b8:	e7c9      	b.n	1a00274e <_free_r+0x66>
1a0027ba:	f01c 0f01 	tst.w	ip, #1
1a0027be:	440a      	add	r2, r1
1a0027c0:	d107      	bne.n	1a0027d2 <_free_r+0xea>
1a0027c2:	f854 3c08 	ldr.w	r3, [r4, #-8]
1a0027c6:	1aed      	subs	r5, r5, r3
1a0027c8:	441a      	add	r2, r3
1a0027ca:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
1a0027ce:	60cb      	str	r3, [r1, #12]
1a0027d0:	6099      	str	r1, [r3, #8]
1a0027d2:	4b3d      	ldr	r3, [pc, #244]	; (1a0028c8 <_free_r+0x1e0>)
1a0027d4:	681b      	ldr	r3, [r3, #0]
1a0027d6:	f042 0101 	orr.w	r1, r2, #1
1a0027da:	4293      	cmp	r3, r2
1a0027dc:	6069      	str	r1, [r5, #4]
1a0027de:	60bd      	str	r5, [r7, #8]
1a0027e0:	d804      	bhi.n	1a0027ec <_free_r+0x104>
1a0027e2:	4b3a      	ldr	r3, [pc, #232]	; (1a0028cc <_free_r+0x1e4>)
1a0027e4:	4630      	mov	r0, r6
1a0027e6:	6819      	ldr	r1, [r3, #0]
1a0027e8:	f7ff ff2e 	bl	1a002648 <_malloc_trim_r>
1a0027ec:	4630      	mov	r0, r6
1a0027ee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a0027f2:	f7ff bebd 	b.w	1a002570 <__malloc_unlock>
1a0027f6:	08c9      	lsrs	r1, r1, #3
1a0027f8:	6878      	ldr	r0, [r7, #4]
1a0027fa:	1c4a      	adds	r2, r1, #1
1a0027fc:	2301      	movs	r3, #1
1a0027fe:	1089      	asrs	r1, r1, #2
1a002800:	408b      	lsls	r3, r1
1a002802:	4303      	orrs	r3, r0
1a002804:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
1a002808:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
1a00280c:	607b      	str	r3, [r7, #4]
1a00280e:	3908      	subs	r1, #8
1a002810:	e9c5 0102 	strd	r0, r1, [r5, #8]
1a002814:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
1a002818:	60c5      	str	r5, [r0, #12]
1a00281a:	4630      	mov	r0, r6
1a00281c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a002820:	f7ff bea6 	b.w	1a002570 <__malloc_unlock>
1a002824:	2800      	cmp	r0, #0
1a002826:	d145      	bne.n	1a0028b4 <_free_r+0x1cc>
1a002828:	440a      	add	r2, r1
1a00282a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
1a00282e:	f042 0001 	orr.w	r0, r2, #1
1a002832:	60cb      	str	r3, [r1, #12]
1a002834:	6099      	str	r1, [r3, #8]
1a002836:	6068      	str	r0, [r5, #4]
1a002838:	50aa      	str	r2, [r5, r2]
1a00283a:	e7d7      	b.n	1a0027ec <_free_r+0x104>
1a00283c:	2b14      	cmp	r3, #20
1a00283e:	d908      	bls.n	1a002852 <_free_r+0x16a>
1a002840:	2b54      	cmp	r3, #84	; 0x54
1a002842:	d81e      	bhi.n	1a002882 <_free_r+0x19a>
1a002844:	0b0b      	lsrs	r3, r1, #12
1a002846:	f103 046f 	add.w	r4, r3, #111	; 0x6f
1a00284a:	00e4      	lsls	r4, r4, #3
1a00284c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
1a002850:	e789      	b.n	1a002766 <_free_r+0x7e>
1a002852:	f103 045c 	add.w	r4, r3, #92	; 0x5c
1a002856:	00e4      	lsls	r4, r4, #3
1a002858:	f103 025b 	add.w	r2, r3, #91	; 0x5b
1a00285c:	e783      	b.n	1a002766 <_free_r+0x7e>
1a00285e:	4618      	mov	r0, r3
1a002860:	e78e      	b.n	1a002780 <_free_r+0x98>
1a002862:	1093      	asrs	r3, r2, #2
1a002864:	6879      	ldr	r1, [r7, #4]
1a002866:	2201      	movs	r2, #1
1a002868:	fa02 f303 	lsl.w	r3, r2, r3
1a00286c:	430b      	orrs	r3, r1
1a00286e:	607b      	str	r3, [r7, #4]
1a002870:	4603      	mov	r3, r0
1a002872:	e786      	b.n	1a002782 <_free_r+0x9a>
1a002874:	e9c7 5504 	strd	r5, r5, [r7, #16]
1a002878:	e9c5 0002 	strd	r0, r0, [r5, #8]
1a00287c:	606a      	str	r2, [r5, #4]
1a00287e:	5069      	str	r1, [r5, r1]
1a002880:	e7b4      	b.n	1a0027ec <_free_r+0x104>
1a002882:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a002886:	d806      	bhi.n	1a002896 <_free_r+0x1ae>
1a002888:	0bcb      	lsrs	r3, r1, #15
1a00288a:	f103 0478 	add.w	r4, r3, #120	; 0x78
1a00288e:	00e4      	lsls	r4, r4, #3
1a002890:	f103 0277 	add.w	r2, r3, #119	; 0x77
1a002894:	e767      	b.n	1a002766 <_free_r+0x7e>
1a002896:	f240 5254 	movw	r2, #1364	; 0x554
1a00289a:	4293      	cmp	r3, r2
1a00289c:	d806      	bhi.n	1a0028ac <_free_r+0x1c4>
1a00289e:	0c8b      	lsrs	r3, r1, #18
1a0028a0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
1a0028a4:	00e4      	lsls	r4, r4, #3
1a0028a6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
1a0028aa:	e75c      	b.n	1a002766 <_free_r+0x7e>
1a0028ac:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
1a0028b0:	227e      	movs	r2, #126	; 0x7e
1a0028b2:	e758      	b.n	1a002766 <_free_r+0x7e>
1a0028b4:	f041 0201 	orr.w	r2, r1, #1
1a0028b8:	606a      	str	r2, [r5, #4]
1a0028ba:	6019      	str	r1, [r3, #0]
1a0028bc:	e796      	b.n	1a0027ec <_free_r+0x104>
1a0028be:	bf00      	nop
1a0028c0:	10000434 	.word	0x10000434
1a0028c4:	1000043c 	.word	0x1000043c
1a0028c8:	10000840 	.word	0x10000840
1a0028cc:	100008b4 	.word	0x100008b4

1a0028d0 <__malloc_update_mallinfo>:
1a0028d0:	b470      	push	{r4, r5, r6}
1a0028d2:	4c12      	ldr	r4, [pc, #72]	; (1a00291c <__malloc_update_mallinfo+0x4c>)
1a0028d4:	f504 6580 	add.w	r5, r4, #1024	; 0x400
1a0028d8:	f854 3f08 	ldr.w	r3, [r4, #8]!
1a0028dc:	685e      	ldr	r6, [r3, #4]
1a0028de:	f026 0603 	bic.w	r6, r6, #3
1a0028e2:	2e0f      	cmp	r6, #15
1a0028e4:	4631      	mov	r1, r6
1a0028e6:	bfd4      	ite	le
1a0028e8:	2000      	movle	r0, #0
1a0028ea:	2001      	movgt	r0, #1
1a0028ec:	68e3      	ldr	r3, [r4, #12]
1a0028ee:	429c      	cmp	r4, r3
1a0028f0:	d008      	beq.n	1a002904 <__malloc_update_mallinfo+0x34>
1a0028f2:	685a      	ldr	r2, [r3, #4]
1a0028f4:	68db      	ldr	r3, [r3, #12]
1a0028f6:	f022 0203 	bic.w	r2, r2, #3
1a0028fa:	429c      	cmp	r4, r3
1a0028fc:	f100 0001 	add.w	r0, r0, #1
1a002900:	4411      	add	r1, r2
1a002902:	d1f6      	bne.n	1a0028f2 <__malloc_update_mallinfo+0x22>
1a002904:	3408      	adds	r4, #8
1a002906:	42a5      	cmp	r5, r4
1a002908:	d1f0      	bne.n	1a0028ec <__malloc_update_mallinfo+0x1c>
1a00290a:	4b05      	ldr	r3, [pc, #20]	; (1a002920 <__malloc_update_mallinfo+0x50>)
1a00290c:	681a      	ldr	r2, [r3, #0]
1a00290e:	6058      	str	r0, [r3, #4]
1a002910:	1a52      	subs	r2, r2, r1
1a002912:	e9c3 1608 	strd	r1, r6, [r3, #32]
1a002916:	61da      	str	r2, [r3, #28]
1a002918:	bc70      	pop	{r4, r5, r6}
1a00291a:	4770      	bx	lr
1a00291c:	10000434 	.word	0x10000434
1a002920:	10000884 	.word	0x10000884

1a002924 <_mallinfo_r>:
1a002924:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002926:	4d0b      	ldr	r5, [pc, #44]	; (1a002954 <_mallinfo_r+0x30>)
1a002928:	4606      	mov	r6, r0
1a00292a:	4608      	mov	r0, r1
1a00292c:	460f      	mov	r7, r1
1a00292e:	f7ff fe19 	bl	1a002564 <__malloc_lock>
1a002932:	f7ff ffcd 	bl	1a0028d0 <__malloc_update_mallinfo>
1a002936:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a002938:	4634      	mov	r4, r6
1a00293a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a00293c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a00293e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a002940:	e895 0003 	ldmia.w	r5, {r0, r1}
1a002944:	e884 0003 	stmia.w	r4, {r0, r1}
1a002948:	4638      	mov	r0, r7
1a00294a:	f7ff fe11 	bl	1a002570 <__malloc_unlock>
1a00294e:	4630      	mov	r0, r6
1a002950:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a002952:	bf00      	nop
1a002954:	10000884 	.word	0x10000884

1a002958 <ExtRateIn>:
1a002958:	00000000                                ....

1a00295c <OscRateIn>:
1a00295c:	00b71b00                                ....

1a002960 <leds>:
1a002960:	02050202 0a020014 00100e00 0b010b02     ................
1a002970:	0c020010 00100c01 00050002 01020014     ................
1a002980:	00140105                                ....

1a002984 <keys>:
1a002984:	04000001 01010050 00500800 09000201     ....P.....P.....
1a002994:	06010050 00500901                       P.....P.

1a00299c <InitClkStates>:
1a00299c:	00010100 00010909 0001090a 01010701     ................
1a0029ac:	00010902 00010906 0101090c 0001090d     ................
1a0029bc:	0001090e 0001090f 00010910 00010911     ................
1a0029cc:	00010912 00010913 00011114 00011119     ................
1a0029dc:	0001111a 0001111b                       ........

1a0029e4 <UART_PClock>:
1a0029e4:	00820081 00a200a1                       ........

1a0029ec <UART_BClock>:
1a0029ec:	01a201c2 01620182                       ......b.

1a0029f4 <periph_to_base>:
1a0029f4:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a002a04:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a002a14:	000100e0 01000100 01200003 00060120     .......... . ...
1a002a24:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a002a34:	01820013 00120182 01a201a2 01c20011     ................
1a002a44:	001001c2 01e201e2 0202000f 000e0202     ................
1a002a54:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a002a64:	0f0f0f03 ffff00ff                       ........

Disassembly of section .init:

1a002a6c <_init>:
1a002a6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002a6e:	bf00      	nop

Disassembly of section .fini:

1a002a70 <_fini>:
1a002a70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002a72:	bf00      	nop
