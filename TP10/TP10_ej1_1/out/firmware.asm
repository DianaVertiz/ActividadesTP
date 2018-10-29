
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 c5 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	91 0b 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a a5 03 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a a9 0b 00 1a c9 0b 00 1a e9 0b 00 1a     ................
1a0000cc:	09 0c 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a007ed8 	.word	0x1a007ed8
1a000118:	10000000 	.word	0x10000000
1a00011c:	000009b0 	.word	0x000009b0

1a000120 <__bss_section_table_>:
1a000120:	100009b0 	.word	0x100009b0
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

1a000394 <__retarget_lock_init_recursive>:
1a000394:	4770      	bx	lr
1a000396:	bf00      	nop

1a000398 <__retarget_lock_close_recursive>:
1a000398:	4770      	bx	lr
1a00039a:	bf00      	nop

1a00039c <__retarget_lock_acquire_recursive>:
1a00039c:	4770      	bx	lr
1a00039e:	bf00      	nop

1a0003a0 <__retarget_lock_release_recursive>:
1a0003a0:	4770      	bx	lr
1a0003a2:	bf00      	nop

1a0003a4 <UART2_IRQHandler>:
1a0003a4:	b580      	push	{r7, lr}
1a0003a6:	af00      	add	r7, sp, #0
1a0003a8:	4a03      	ldr	r2, [pc, #12]	; (1a0003b8 <UART2_IRQHandler+0x14>)
1a0003aa:	4904      	ldr	r1, [pc, #16]	; (1a0003bc <UART2_IRQHandler+0x18>)
1a0003ac:	4804      	ldr	r0, [pc, #16]	; (1a0003c0 <UART2_IRQHandler+0x1c>)
1a0003ae:	f001 f842 	bl	1a001436 <Chip_UART_IRQRBHandler>
1a0003b2:	bf00      	nop
1a0003b4:	bd80      	pop	{r7, pc}
1a0003b6:	bf00      	nop
1a0003b8:	100009b0 	.word	0x100009b0
1a0003bc:	100009c4 	.word	0x100009c4
1a0003c0:	400c1000 	.word	0x400c1000

1a0003c4 <ResetISR>:
1a0003c4:	b580      	push	{r7, lr}
1a0003c6:	b088      	sub	sp, #32
1a0003c8:	af00      	add	r7, sp, #0
1a0003ca:	b672      	cpsid	i
1a0003cc:	4b26      	ldr	r3, [pc, #152]	; (1a000468 <ResetISR+0xa4>)
1a0003ce:	617b      	str	r3, [r7, #20]
1a0003d0:	697b      	ldr	r3, [r7, #20]
1a0003d2:	4a26      	ldr	r2, [pc, #152]	; (1a00046c <ResetISR+0xa8>)
1a0003d4:	601a      	str	r2, [r3, #0]
1a0003d6:	697b      	ldr	r3, [r7, #20]
1a0003d8:	3304      	adds	r3, #4
1a0003da:	4a25      	ldr	r2, [pc, #148]	; (1a000470 <ResetISR+0xac>)
1a0003dc:	601a      	str	r2, [r3, #0]
1a0003de:	4b25      	ldr	r3, [pc, #148]	; (1a000474 <ResetISR+0xb0>)
1a0003e0:	613b      	str	r3, [r7, #16]
1a0003e2:	2300      	movs	r3, #0
1a0003e4:	61fb      	str	r3, [r7, #28]
1a0003e6:	e009      	b.n	1a0003fc <ResetISR+0x38>
1a0003e8:	69fb      	ldr	r3, [r7, #28]
1a0003ea:	009b      	lsls	r3, r3, #2
1a0003ec:	693a      	ldr	r2, [r7, #16]
1a0003ee:	4413      	add	r3, r2
1a0003f0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0003f4:	601a      	str	r2, [r3, #0]
1a0003f6:	69fb      	ldr	r3, [r7, #28]
1a0003f8:	3301      	adds	r3, #1
1a0003fa:	61fb      	str	r3, [r7, #28]
1a0003fc:	69fb      	ldr	r3, [r7, #28]
1a0003fe:	2b07      	cmp	r3, #7
1a000400:	d9f2      	bls.n	1a0003e8 <ResetISR+0x24>
1a000402:	b662      	cpsie	i
1a000404:	4b1c      	ldr	r3, [pc, #112]	; (1a000478 <ResetISR+0xb4>)
1a000406:	61bb      	str	r3, [r7, #24]
1a000408:	e013      	b.n	1a000432 <ResetISR+0x6e>
1a00040a:	69bb      	ldr	r3, [r7, #24]
1a00040c:	1d1a      	adds	r2, r3, #4
1a00040e:	61ba      	str	r2, [r7, #24]
1a000410:	681b      	ldr	r3, [r3, #0]
1a000412:	607b      	str	r3, [r7, #4]
1a000414:	69bb      	ldr	r3, [r7, #24]
1a000416:	1d1a      	adds	r2, r3, #4
1a000418:	61ba      	str	r2, [r7, #24]
1a00041a:	681b      	ldr	r3, [r3, #0]
1a00041c:	60fb      	str	r3, [r7, #12]
1a00041e:	69bb      	ldr	r3, [r7, #24]
1a000420:	1d1a      	adds	r2, r3, #4
1a000422:	61ba      	str	r2, [r7, #24]
1a000424:	681b      	ldr	r3, [r3, #0]
1a000426:	60bb      	str	r3, [r7, #8]
1a000428:	68ba      	ldr	r2, [r7, #8]
1a00042a:	68f9      	ldr	r1, [r7, #12]
1a00042c:	6878      	ldr	r0, [r7, #4]
1a00042e:	f7ff fe7b 	bl	1a000128 <data_init>
1a000432:	69bb      	ldr	r3, [r7, #24]
1a000434:	4a11      	ldr	r2, [pc, #68]	; (1a00047c <ResetISR+0xb8>)
1a000436:	4293      	cmp	r3, r2
1a000438:	d3e7      	bcc.n	1a00040a <ResetISR+0x46>
1a00043a:	e00d      	b.n	1a000458 <ResetISR+0x94>
1a00043c:	69bb      	ldr	r3, [r7, #24]
1a00043e:	1d1a      	adds	r2, r3, #4
1a000440:	61ba      	str	r2, [r7, #24]
1a000442:	681b      	ldr	r3, [r3, #0]
1a000444:	60fb      	str	r3, [r7, #12]
1a000446:	69bb      	ldr	r3, [r7, #24]
1a000448:	1d1a      	adds	r2, r3, #4
1a00044a:	61ba      	str	r2, [r7, #24]
1a00044c:	681b      	ldr	r3, [r3, #0]
1a00044e:	60bb      	str	r3, [r7, #8]
1a000450:	68b9      	ldr	r1, [r7, #8]
1a000452:	68f8      	ldr	r0, [r7, #12]
1a000454:	f7ff fe8a 	bl	1a00016c <bss_init>
1a000458:	69bb      	ldr	r3, [r7, #24]
1a00045a:	4a09      	ldr	r2, [pc, #36]	; (1a000480 <ResetISR+0xbc>)
1a00045c:	4293      	cmp	r3, r2
1a00045e:	d3ed      	bcc.n	1a00043c <ResetISR+0x78>
1a000460:	f000 f8be 	bl	1a0005e0 <main>
1a000464:	e7fe      	b.n	1a000464 <ResetISR+0xa0>
1a000466:	bf00      	nop
1a000468:	40053100 	.word	0x40053100
1a00046c:	10df1000 	.word	0x10df1000
1a000470:	01dff7ff 	.word	0x01dff7ff
1a000474:	e000e280 	.word	0xe000e280
1a000478:	1a000114 	.word	0x1a000114
1a00047c:	1a000120 	.word	0x1a000120
1a000480:	1a000128 	.word	0x1a000128

1a000484 <_fstat>:
1a000484:	b480      	push	{r7}
1a000486:	b083      	sub	sp, #12
1a000488:	af00      	add	r7, sp, #0
1a00048a:	6078      	str	r0, [r7, #4]
1a00048c:	6039      	str	r1, [r7, #0]
1a00048e:	683b      	ldr	r3, [r7, #0]
1a000490:	f44f 5200 	mov.w	r2, #8192	; 0x2000
1a000494:	605a      	str	r2, [r3, #4]
1a000496:	2300      	movs	r3, #0
1a000498:	4618      	mov	r0, r3
1a00049a:	370c      	adds	r7, #12
1a00049c:	46bd      	mov	sp, r7
1a00049e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004a2:	4770      	bx	lr

1a0004a4 <_isatty>:
1a0004a4:	b480      	push	{r7}
1a0004a6:	b083      	sub	sp, #12
1a0004a8:	af00      	add	r7, sp, #0
1a0004aa:	6078      	str	r0, [r7, #4]
1a0004ac:	2301      	movs	r3, #1
1a0004ae:	4618      	mov	r0, r3
1a0004b0:	370c      	adds	r7, #12
1a0004b2:	46bd      	mov	sp, r7
1a0004b4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004b8:	4770      	bx	lr

1a0004ba <_lseek>:
1a0004ba:	b480      	push	{r7}
1a0004bc:	b085      	sub	sp, #20
1a0004be:	af00      	add	r7, sp, #0
1a0004c0:	60f8      	str	r0, [r7, #12]
1a0004c2:	60b9      	str	r1, [r7, #8]
1a0004c4:	607a      	str	r2, [r7, #4]
1a0004c6:	2300      	movs	r3, #0
1a0004c8:	4618      	mov	r0, r3
1a0004ca:	3714      	adds	r7, #20
1a0004cc:	46bd      	mov	sp, r7
1a0004ce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004d2:	4770      	bx	lr

1a0004d4 <_read>:
1a0004d4:	b580      	push	{r7, lr}
1a0004d6:	b086      	sub	sp, #24
1a0004d8:	af00      	add	r7, sp, #0
1a0004da:	60f8      	str	r0, [r7, #12]
1a0004dc:	60b9      	str	r1, [r7, #8]
1a0004de:	607a      	str	r2, [r7, #4]
1a0004e0:	4b28      	ldr	r3, [pc, #160]	; (1a000584 <_read+0xb0>)
1a0004e2:	881b      	ldrh	r3, [r3, #0]
1a0004e4:	823b      	strh	r3, [r7, #16]
1a0004e6:	2300      	movs	r3, #0
1a0004e8:	617b      	str	r3, [r7, #20]
1a0004ea:	2300      	movs	r3, #0
1a0004ec:	74fb      	strb	r3, [r7, #19]
1a0004ee:	68fb      	ldr	r3, [r7, #12]
1a0004f0:	2b00      	cmp	r3, #0
1a0004f2:	d13f      	bne.n	1a000574 <_read+0xa0>
1a0004f4:	e031      	b.n	1a00055a <_read+0x86>
1a0004f6:	697b      	ldr	r3, [r7, #20]
1a0004f8:	68ba      	ldr	r2, [r7, #8]
1a0004fa:	4413      	add	r3, r2
1a0004fc:	2201      	movs	r2, #1
1a0004fe:	4619      	mov	r1, r3
1a000500:	4821      	ldr	r0, [pc, #132]	; (1a000588 <_read+0xb4>)
1a000502:	f000 fef3 	bl	1a0012ec <Chip_UART_ReadBlocking>
1a000506:	697b      	ldr	r3, [r7, #20]
1a000508:	68ba      	ldr	r2, [r7, #8]
1a00050a:	4413      	add	r3, r2
1a00050c:	781b      	ldrb	r3, [r3, #0]
1a00050e:	2b0a      	cmp	r3, #10
1a000510:	d005      	beq.n	1a00051e <_read+0x4a>
1a000512:	697b      	ldr	r3, [r7, #20]
1a000514:	68ba      	ldr	r2, [r7, #8]
1a000516:	4413      	add	r3, r2
1a000518:	781b      	ldrb	r3, [r3, #0]
1a00051a:	2b0d      	cmp	r3, #13
1a00051c:	d101      	bne.n	1a000522 <_read+0x4e>
1a00051e:	2301      	movs	r3, #1
1a000520:	e000      	b.n	1a000524 <_read+0x50>
1a000522:	2300      	movs	r3, #0
1a000524:	74fb      	strb	r3, [r7, #19]
1a000526:	7cfb      	ldrb	r3, [r7, #19]
1a000528:	f003 0301 	and.w	r3, r3, #1
1a00052c:	74fb      	strb	r3, [r7, #19]
1a00052e:	7cfb      	ldrb	r3, [r7, #19]
1a000530:	2b00      	cmp	r3, #0
1a000532:	d007      	beq.n	1a000544 <_read+0x70>
1a000534:	f107 0310 	add.w	r3, r7, #16
1a000538:	2202      	movs	r2, #2
1a00053a:	4619      	mov	r1, r3
1a00053c:	4812      	ldr	r0, [pc, #72]	; (1a000588 <_read+0xb4>)
1a00053e:	f000 fe87 	bl	1a001250 <Chip_UART_SendBlocking>
1a000542:	e007      	b.n	1a000554 <_read+0x80>
1a000544:	697b      	ldr	r3, [r7, #20]
1a000546:	68ba      	ldr	r2, [r7, #8]
1a000548:	4413      	add	r3, r2
1a00054a:	2201      	movs	r2, #1
1a00054c:	4619      	mov	r1, r3
1a00054e:	480e      	ldr	r0, [pc, #56]	; (1a000588 <_read+0xb4>)
1a000550:	f000 fe7e 	bl	1a001250 <Chip_UART_SendBlocking>
1a000554:	697b      	ldr	r3, [r7, #20]
1a000556:	3301      	adds	r3, #1
1a000558:	617b      	str	r3, [r7, #20]
1a00055a:	697a      	ldr	r2, [r7, #20]
1a00055c:	687b      	ldr	r3, [r7, #4]
1a00055e:	429a      	cmp	r2, r3
1a000560:	da05      	bge.n	1a00056e <_read+0x9a>
1a000562:	7cfb      	ldrb	r3, [r7, #19]
1a000564:	f083 0301 	eor.w	r3, r3, #1
1a000568:	b2db      	uxtb	r3, r3
1a00056a:	2b00      	cmp	r3, #0
1a00056c:	d1c3      	bne.n	1a0004f6 <_read+0x22>
1a00056e:	697b      	ldr	r3, [r7, #20]
1a000570:	607b      	str	r3, [r7, #4]
1a000572:	e001      	b.n	1a000578 <_read+0xa4>
1a000574:	2300      	movs	r3, #0
1a000576:	607b      	str	r3, [r7, #4]
1a000578:	687b      	ldr	r3, [r7, #4]
1a00057a:	4618      	mov	r0, r3
1a00057c:	3718      	adds	r7, #24
1a00057e:	46bd      	mov	sp, r7
1a000580:	bd80      	pop	{r7, pc}
1a000582:	bf00      	nop
1a000584:	1a007b10 	.word	0x1a007b10
1a000588:	400c1000 	.word	0x400c1000

1a00058c <_write>:
1a00058c:	b580      	push	{r7, lr}
1a00058e:	b084      	sub	sp, #16
1a000590:	af00      	add	r7, sp, #0
1a000592:	60f8      	str	r0, [r7, #12]
1a000594:	60b9      	str	r1, [r7, #8]
1a000596:	607a      	str	r2, [r7, #4]
1a000598:	68fb      	ldr	r3, [r7, #12]
1a00059a:	2b01      	cmp	r3, #1
1a00059c:	d002      	beq.n	1a0005a4 <_write+0x18>
1a00059e:	68fb      	ldr	r3, [r7, #12]
1a0005a0:	2b02      	cmp	r3, #2
1a0005a2:	d105      	bne.n	1a0005b0 <_write+0x24>
1a0005a4:	687a      	ldr	r2, [r7, #4]
1a0005a6:	68b9      	ldr	r1, [r7, #8]
1a0005a8:	4805      	ldr	r0, [pc, #20]	; (1a0005c0 <_write+0x34>)
1a0005aa:	f000 fe51 	bl	1a001250 <Chip_UART_SendBlocking>
1a0005ae:	e001      	b.n	1a0005b4 <_write+0x28>
1a0005b0:	2300      	movs	r3, #0
1a0005b2:	607b      	str	r3, [r7, #4]
1a0005b4:	687b      	ldr	r3, [r7, #4]
1a0005b6:	4618      	mov	r0, r3
1a0005b8:	3710      	adds	r7, #16
1a0005ba:	46bd      	mov	sp, r7
1a0005bc:	bd80      	pop	{r7, pc}
1a0005be:	bf00      	nop
1a0005c0:	400c1000 	.word	0x400c1000

1a0005c4 <_close>:
1a0005c4:	b480      	push	{r7}
1a0005c6:	b083      	sub	sp, #12
1a0005c8:	af00      	add	r7, sp, #0
1a0005ca:	6078      	str	r0, [r7, #4]
1a0005cc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0005d0:	4618      	mov	r0, r3
1a0005d2:	370c      	adds	r7, #12
1a0005d4:	46bd      	mov	sp, r7
1a0005d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005da:	4770      	bx	lr
1a0005dc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0005e0 <main>:
1a0005e0:	b580      	push	{r7, lr}
1a0005e2:	af00      	add	r7, sp, #0
1a0005e4:	f000 f9a2 	bl	1a00092c <sysInit>
1a0005e8:	a304      	add	r3, pc, #16	; (adr r3, 1a0005fc <main+0x1c>)
1a0005ea:	e9d3 2300 	ldrd	r2, r3, [r3]
1a0005ee:	4802      	ldr	r0, [pc, #8]	; (1a0005f8 <main+0x18>)
1a0005f0:	f001 fe0a 	bl	1a002208 <printf>
1a0005f4:	e7fe      	b.n	1a0005f4 <main+0x14>
1a0005f6:	bf00      	nop
1a0005f8:	1a007b14 	.word	0x1a007b14
1a0005fc:	22d5edde 	.word	0x22d5edde
1a000600:	400921fd 	.word	0x400921fd

1a000604 <NVIC_EnableIRQ>:
1a000604:	b480      	push	{r7}
1a000606:	b083      	sub	sp, #12
1a000608:	af00      	add	r7, sp, #0
1a00060a:	4603      	mov	r3, r0
1a00060c:	71fb      	strb	r3, [r7, #7]
1a00060e:	79fb      	ldrb	r3, [r7, #7]
1a000610:	f003 031f 	and.w	r3, r3, #31
1a000614:	2201      	movs	r2, #1
1a000616:	fa02 f103 	lsl.w	r1, r2, r3
1a00061a:	4a06      	ldr	r2, [pc, #24]	; (1a000634 <NVIC_EnableIRQ+0x30>)
1a00061c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000620:	095b      	lsrs	r3, r3, #5
1a000622:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000626:	bf00      	nop
1a000628:	370c      	adds	r7, #12
1a00062a:	46bd      	mov	sp, r7
1a00062c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000630:	4770      	bx	lr
1a000632:	bf00      	nop
1a000634:	e000e100 	.word	0xe000e100

1a000638 <NVIC_ClearPendingIRQ>:
1a000638:	b480      	push	{r7}
1a00063a:	b083      	sub	sp, #12
1a00063c:	af00      	add	r7, sp, #0
1a00063e:	4603      	mov	r3, r0
1a000640:	71fb      	strb	r3, [r7, #7]
1a000642:	79fb      	ldrb	r3, [r7, #7]
1a000644:	f003 031f 	and.w	r3, r3, #31
1a000648:	2201      	movs	r2, #1
1a00064a:	fa02 f103 	lsl.w	r1, r2, r3
1a00064e:	4a06      	ldr	r2, [pc, #24]	; (1a000668 <NVIC_ClearPendingIRQ+0x30>)
1a000650:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000654:	095b      	lsrs	r3, r3, #5
1a000656:	3360      	adds	r3, #96	; 0x60
1a000658:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00065c:	bf00      	nop
1a00065e:	370c      	adds	r7, #12
1a000660:	46bd      	mov	sp, r7
1a000662:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000666:	4770      	bx	lr
1a000668:	e000e100 	.word	0xe000e100

1a00066c <NVIC_SetPriority>:
1a00066c:	b480      	push	{r7}
1a00066e:	b083      	sub	sp, #12
1a000670:	af00      	add	r7, sp, #0
1a000672:	4603      	mov	r3, r0
1a000674:	6039      	str	r1, [r7, #0]
1a000676:	71fb      	strb	r3, [r7, #7]
1a000678:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00067c:	2b00      	cmp	r3, #0
1a00067e:	da0b      	bge.n	1a000698 <NVIC_SetPriority+0x2c>
1a000680:	683b      	ldr	r3, [r7, #0]
1a000682:	b2da      	uxtb	r2, r3
1a000684:	490c      	ldr	r1, [pc, #48]	; (1a0006b8 <NVIC_SetPriority+0x4c>)
1a000686:	79fb      	ldrb	r3, [r7, #7]
1a000688:	f003 030f 	and.w	r3, r3, #15
1a00068c:	3b04      	subs	r3, #4
1a00068e:	0152      	lsls	r2, r2, #5
1a000690:	b2d2      	uxtb	r2, r2
1a000692:	440b      	add	r3, r1
1a000694:	761a      	strb	r2, [r3, #24]
1a000696:	e009      	b.n	1a0006ac <NVIC_SetPriority+0x40>
1a000698:	683b      	ldr	r3, [r7, #0]
1a00069a:	b2da      	uxtb	r2, r3
1a00069c:	4907      	ldr	r1, [pc, #28]	; (1a0006bc <NVIC_SetPriority+0x50>)
1a00069e:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0006a2:	0152      	lsls	r2, r2, #5
1a0006a4:	b2d2      	uxtb	r2, r2
1a0006a6:	440b      	add	r3, r1
1a0006a8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0006ac:	bf00      	nop
1a0006ae:	370c      	adds	r7, #12
1a0006b0:	46bd      	mov	sp, r7
1a0006b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006b6:	4770      	bx	lr
1a0006b8:	e000ed00 	.word	0xe000ed00
1a0006bc:	e000e100 	.word	0xe000e100

1a0006c0 <SysTick_Config>:
1a0006c0:	b580      	push	{r7, lr}
1a0006c2:	b082      	sub	sp, #8
1a0006c4:	af00      	add	r7, sp, #0
1a0006c6:	6078      	str	r0, [r7, #4]
1a0006c8:	687b      	ldr	r3, [r7, #4]
1a0006ca:	3b01      	subs	r3, #1
1a0006cc:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a0006d0:	d301      	bcc.n	1a0006d6 <SysTick_Config+0x16>
1a0006d2:	2301      	movs	r3, #1
1a0006d4:	e00f      	b.n	1a0006f6 <SysTick_Config+0x36>
1a0006d6:	4a0a      	ldr	r2, [pc, #40]	; (1a000700 <SysTick_Config+0x40>)
1a0006d8:	687b      	ldr	r3, [r7, #4]
1a0006da:	3b01      	subs	r3, #1
1a0006dc:	6053      	str	r3, [r2, #4]
1a0006de:	2107      	movs	r1, #7
1a0006e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a0006e4:	f7ff ffc2 	bl	1a00066c <NVIC_SetPriority>
1a0006e8:	4b05      	ldr	r3, [pc, #20]	; (1a000700 <SysTick_Config+0x40>)
1a0006ea:	2200      	movs	r2, #0
1a0006ec:	609a      	str	r2, [r3, #8]
1a0006ee:	4b04      	ldr	r3, [pc, #16]	; (1a000700 <SysTick_Config+0x40>)
1a0006f0:	2207      	movs	r2, #7
1a0006f2:	601a      	str	r2, [r3, #0]
1a0006f4:	2300      	movs	r3, #0
1a0006f6:	4618      	mov	r0, r3
1a0006f8:	3708      	adds	r7, #8
1a0006fa:	46bd      	mov	sp, r7
1a0006fc:	bd80      	pop	{r7, pc}
1a0006fe:	bf00      	nop
1a000700:	e000e010 	.word	0xe000e010

1a000704 <Chip_SCU_PinMuxSet>:
1a000704:	b480      	push	{r7}
1a000706:	b083      	sub	sp, #12
1a000708:	af00      	add	r7, sp, #0
1a00070a:	4603      	mov	r3, r0
1a00070c:	71fb      	strb	r3, [r7, #7]
1a00070e:	460b      	mov	r3, r1
1a000710:	71bb      	strb	r3, [r7, #6]
1a000712:	4613      	mov	r3, r2
1a000714:	80bb      	strh	r3, [r7, #4]
1a000716:	4807      	ldr	r0, [pc, #28]	; (1a000734 <Chip_SCU_PinMuxSet+0x30>)
1a000718:	79f9      	ldrb	r1, [r7, #7]
1a00071a:	79bb      	ldrb	r3, [r7, #6]
1a00071c:	88ba      	ldrh	r2, [r7, #4]
1a00071e:	0149      	lsls	r1, r1, #5
1a000720:	440b      	add	r3, r1
1a000722:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000726:	bf00      	nop
1a000728:	370c      	adds	r7, #12
1a00072a:	46bd      	mov	sp, r7
1a00072c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000730:	4770      	bx	lr
1a000732:	bf00      	nop
1a000734:	40086000 	.word	0x40086000

1a000738 <Chip_SCU_GPIOIntPinSel>:
1a000738:	b480      	push	{r7}
1a00073a:	b085      	sub	sp, #20
1a00073c:	af00      	add	r7, sp, #0
1a00073e:	4603      	mov	r3, r0
1a000740:	71fb      	strb	r3, [r7, #7]
1a000742:	460b      	mov	r3, r1
1a000744:	71bb      	strb	r3, [r7, #6]
1a000746:	4613      	mov	r3, r2
1a000748:	717b      	strb	r3, [r7, #5]
1a00074a:	79fb      	ldrb	r3, [r7, #7]
1a00074c:	00db      	lsls	r3, r3, #3
1a00074e:	f003 0318 	and.w	r3, r3, #24
1a000752:	60fb      	str	r3, [r7, #12]
1a000754:	79bb      	ldrb	r3, [r7, #6]
1a000756:	015b      	lsls	r3, r3, #5
1a000758:	b2da      	uxtb	r2, r3
1a00075a:	797b      	ldrb	r3, [r7, #5]
1a00075c:	f003 031f 	and.w	r3, r3, #31
1a000760:	431a      	orrs	r2, r3
1a000762:	68fb      	ldr	r3, [r7, #12]
1a000764:	fa02 f303 	lsl.w	r3, r2, r3
1a000768:	60bb      	str	r3, [r7, #8]
1a00076a:	4a0f      	ldr	r2, [pc, #60]	; (1a0007a8 <Chip_SCU_GPIOIntPinSel+0x70>)
1a00076c:	79fb      	ldrb	r3, [r7, #7]
1a00076e:	089b      	lsrs	r3, r3, #2
1a000770:	b2db      	uxtb	r3, r3
1a000772:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000776:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00077a:	21ff      	movs	r1, #255	; 0xff
1a00077c:	68fa      	ldr	r2, [r7, #12]
1a00077e:	fa01 f202 	lsl.w	r2, r1, r2
1a000782:	43d2      	mvns	r2, r2
1a000784:	401a      	ands	r2, r3
1a000786:	4908      	ldr	r1, [pc, #32]	; (1a0007a8 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000788:	79fb      	ldrb	r3, [r7, #7]
1a00078a:	089b      	lsrs	r3, r3, #2
1a00078c:	b2db      	uxtb	r3, r3
1a00078e:	4618      	mov	r0, r3
1a000790:	68bb      	ldr	r3, [r7, #8]
1a000792:	431a      	orrs	r2, r3
1a000794:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000798:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a00079c:	bf00      	nop
1a00079e:	3714      	adds	r7, #20
1a0007a0:	46bd      	mov	sp, r7
1a0007a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007a6:	4770      	bx	lr
1a0007a8:	40086000 	.word	0x40086000

1a0007ac <Chip_GPIO_SetPinDIROutput>:
1a0007ac:	b480      	push	{r7}
1a0007ae:	b083      	sub	sp, #12
1a0007b0:	af00      	add	r7, sp, #0
1a0007b2:	6078      	str	r0, [r7, #4]
1a0007b4:	460b      	mov	r3, r1
1a0007b6:	70fb      	strb	r3, [r7, #3]
1a0007b8:	4613      	mov	r3, r2
1a0007ba:	70bb      	strb	r3, [r7, #2]
1a0007bc:	78fa      	ldrb	r2, [r7, #3]
1a0007be:	687b      	ldr	r3, [r7, #4]
1a0007c0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0007c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0007c8:	78bb      	ldrb	r3, [r7, #2]
1a0007ca:	2201      	movs	r2, #1
1a0007cc:	fa02 f303 	lsl.w	r3, r2, r3
1a0007d0:	78fa      	ldrb	r2, [r7, #3]
1a0007d2:	4319      	orrs	r1, r3
1a0007d4:	687b      	ldr	r3, [r7, #4]
1a0007d6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0007da:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0007de:	bf00      	nop
1a0007e0:	370c      	adds	r7, #12
1a0007e2:	46bd      	mov	sp, r7
1a0007e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007e8:	4770      	bx	lr

1a0007ea <Chip_GPIO_SetPinDIRInput>:
1a0007ea:	b480      	push	{r7}
1a0007ec:	b083      	sub	sp, #12
1a0007ee:	af00      	add	r7, sp, #0
1a0007f0:	6078      	str	r0, [r7, #4]
1a0007f2:	460b      	mov	r3, r1
1a0007f4:	70fb      	strb	r3, [r7, #3]
1a0007f6:	4613      	mov	r3, r2
1a0007f8:	70bb      	strb	r3, [r7, #2]
1a0007fa:	78fa      	ldrb	r2, [r7, #3]
1a0007fc:	687b      	ldr	r3, [r7, #4]
1a0007fe:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000802:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000806:	78bb      	ldrb	r3, [r7, #2]
1a000808:	2201      	movs	r2, #1
1a00080a:	fa02 f303 	lsl.w	r3, r2, r3
1a00080e:	43db      	mvns	r3, r3
1a000810:	78fa      	ldrb	r2, [r7, #3]
1a000812:	4019      	ands	r1, r3
1a000814:	687b      	ldr	r3, [r7, #4]
1a000816:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00081a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00081e:	bf00      	nop
1a000820:	370c      	adds	r7, #12
1a000822:	46bd      	mov	sp, r7
1a000824:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000828:	4770      	bx	lr

1a00082a <Chip_GPIO_SetPinOutLow>:
1a00082a:	b480      	push	{r7}
1a00082c:	b083      	sub	sp, #12
1a00082e:	af00      	add	r7, sp, #0
1a000830:	6078      	str	r0, [r7, #4]
1a000832:	460b      	mov	r3, r1
1a000834:	70fb      	strb	r3, [r7, #3]
1a000836:	4613      	mov	r3, r2
1a000838:	70bb      	strb	r3, [r7, #2]
1a00083a:	78bb      	ldrb	r3, [r7, #2]
1a00083c:	2201      	movs	r2, #1
1a00083e:	fa02 f303 	lsl.w	r3, r2, r3
1a000842:	78fa      	ldrb	r2, [r7, #3]
1a000844:	4619      	mov	r1, r3
1a000846:	687b      	ldr	r3, [r7, #4]
1a000848:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a00084c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000850:	bf00      	nop
1a000852:	370c      	adds	r7, #12
1a000854:	46bd      	mov	sp, r7
1a000856:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00085a:	4770      	bx	lr

1a00085c <Chip_PININT_SetPinModeEdge>:
1a00085c:	b480      	push	{r7}
1a00085e:	b083      	sub	sp, #12
1a000860:	af00      	add	r7, sp, #0
1a000862:	6078      	str	r0, [r7, #4]
1a000864:	6039      	str	r1, [r7, #0]
1a000866:	687b      	ldr	r3, [r7, #4]
1a000868:	681a      	ldr	r2, [r3, #0]
1a00086a:	683b      	ldr	r3, [r7, #0]
1a00086c:	43db      	mvns	r3, r3
1a00086e:	401a      	ands	r2, r3
1a000870:	687b      	ldr	r3, [r7, #4]
1a000872:	601a      	str	r2, [r3, #0]
1a000874:	bf00      	nop
1a000876:	370c      	adds	r7, #12
1a000878:	46bd      	mov	sp, r7
1a00087a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00087e:	4770      	bx	lr

1a000880 <Chip_PININT_EnableIntLow>:
1a000880:	b480      	push	{r7}
1a000882:	b083      	sub	sp, #12
1a000884:	af00      	add	r7, sp, #0
1a000886:	6078      	str	r0, [r7, #4]
1a000888:	6039      	str	r1, [r7, #0]
1a00088a:	687b      	ldr	r3, [r7, #4]
1a00088c:	683a      	ldr	r2, [r7, #0]
1a00088e:	615a      	str	r2, [r3, #20]
1a000890:	bf00      	nop
1a000892:	370c      	adds	r7, #12
1a000894:	46bd      	mov	sp, r7
1a000896:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00089a:	4770      	bx	lr

1a00089c <Chip_PININT_ClearIntStatus>:
1a00089c:	b480      	push	{r7}
1a00089e:	b083      	sub	sp, #12
1a0008a0:	af00      	add	r7, sp, #0
1a0008a2:	6078      	str	r0, [r7, #4]
1a0008a4:	6039      	str	r1, [r7, #0]
1a0008a6:	687b      	ldr	r3, [r7, #4]
1a0008a8:	683a      	ldr	r2, [r7, #0]
1a0008aa:	625a      	str	r2, [r3, #36]	; 0x24
1a0008ac:	bf00      	nop
1a0008ae:	370c      	adds	r7, #12
1a0008b0:	46bd      	mov	sp, r7
1a0008b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008b6:	4770      	bx	lr

1a0008b8 <Chip_UART_TXEnable>:
1a0008b8:	b480      	push	{r7}
1a0008ba:	b083      	sub	sp, #12
1a0008bc:	af00      	add	r7, sp, #0
1a0008be:	6078      	str	r0, [r7, #4]
1a0008c0:	687b      	ldr	r3, [r7, #4]
1a0008c2:	2201      	movs	r2, #1
1a0008c4:	65da      	str	r2, [r3, #92]	; 0x5c
1a0008c6:	bf00      	nop
1a0008c8:	370c      	adds	r7, #12
1a0008ca:	46bd      	mov	sp, r7
1a0008cc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008d0:	4770      	bx	lr

1a0008d2 <Chip_UART_IntEnable>:
1a0008d2:	b480      	push	{r7}
1a0008d4:	b083      	sub	sp, #12
1a0008d6:	af00      	add	r7, sp, #0
1a0008d8:	6078      	str	r0, [r7, #4]
1a0008da:	6039      	str	r1, [r7, #0]
1a0008dc:	687b      	ldr	r3, [r7, #4]
1a0008de:	685a      	ldr	r2, [r3, #4]
1a0008e0:	683b      	ldr	r3, [r7, #0]
1a0008e2:	431a      	orrs	r2, r3
1a0008e4:	687b      	ldr	r3, [r7, #4]
1a0008e6:	605a      	str	r2, [r3, #4]
1a0008e8:	bf00      	nop
1a0008ea:	370c      	adds	r7, #12
1a0008ec:	46bd      	mov	sp, r7
1a0008ee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008f2:	4770      	bx	lr

1a0008f4 <Chip_UART_SetupFIFOS>:
1a0008f4:	b480      	push	{r7}
1a0008f6:	b083      	sub	sp, #12
1a0008f8:	af00      	add	r7, sp, #0
1a0008fa:	6078      	str	r0, [r7, #4]
1a0008fc:	6039      	str	r1, [r7, #0]
1a0008fe:	687b      	ldr	r3, [r7, #4]
1a000900:	683a      	ldr	r2, [r7, #0]
1a000902:	609a      	str	r2, [r3, #8]
1a000904:	bf00      	nop
1a000906:	370c      	adds	r7, #12
1a000908:	46bd      	mov	sp, r7
1a00090a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00090e:	4770      	bx	lr

1a000910 <Chip_UART_ConfigData>:
1a000910:	b480      	push	{r7}
1a000912:	b083      	sub	sp, #12
1a000914:	af00      	add	r7, sp, #0
1a000916:	6078      	str	r0, [r7, #4]
1a000918:	6039      	str	r1, [r7, #0]
1a00091a:	687b      	ldr	r3, [r7, #4]
1a00091c:	683a      	ldr	r2, [r7, #0]
1a00091e:	60da      	str	r2, [r3, #12]
1a000920:	bf00      	nop
1a000922:	370c      	adds	r7, #12
1a000924:	46bd      	mov	sp, r7
1a000926:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00092a:	4770      	bx	lr

1a00092c <sysInit>:
1a00092c:	b590      	push	{r4, r7, lr}
1a00092e:	b083      	sub	sp, #12
1a000930:	af00      	add	r7, sp, #0
1a000932:	f000 fae5 	bl	1a000f00 <Chip_SetupXtalClocking>
1a000936:	f001 fb73 	bl	1a002020 <SystemCoreClockUpdate>
1a00093a:	f000 fdbf 	bl	1a0014bc <StopWatch_Init>
1a00093e:	f000 f9bb 	bl	1a000cb8 <fpuInit>
1a000942:	488c      	ldr	r0, [pc, #560]	; (1a000b74 <sysInit+0x248>)
1a000944:	f001 fb78 	bl	1a002038 <Chip_GPIO_Init>
1a000948:	2300      	movs	r3, #0
1a00094a:	607b      	str	r3, [r7, #4]
1a00094c:	e04e      	b.n	1a0009ec <sysInit+0xc0>
1a00094e:	498a      	ldr	r1, [pc, #552]	; (1a000b78 <sysInit+0x24c>)
1a000950:	687a      	ldr	r2, [r7, #4]
1a000952:	4613      	mov	r3, r2
1a000954:	005b      	lsls	r3, r3, #1
1a000956:	4413      	add	r3, r2
1a000958:	005b      	lsls	r3, r3, #1
1a00095a:	440b      	add	r3, r1
1a00095c:	7818      	ldrb	r0, [r3, #0]
1a00095e:	4986      	ldr	r1, [pc, #536]	; (1a000b78 <sysInit+0x24c>)
1a000960:	687a      	ldr	r2, [r7, #4]
1a000962:	4613      	mov	r3, r2
1a000964:	005b      	lsls	r3, r3, #1
1a000966:	4413      	add	r3, r2
1a000968:	005b      	lsls	r3, r3, #1
1a00096a:	440b      	add	r3, r1
1a00096c:	3301      	adds	r3, #1
1a00096e:	781c      	ldrb	r4, [r3, #0]
1a000970:	4981      	ldr	r1, [pc, #516]	; (1a000b78 <sysInit+0x24c>)
1a000972:	687a      	ldr	r2, [r7, #4]
1a000974:	4613      	mov	r3, r2
1a000976:	005b      	lsls	r3, r3, #1
1a000978:	4413      	add	r3, r2
1a00097a:	005b      	lsls	r3, r3, #1
1a00097c:	440b      	add	r3, r1
1a00097e:	3304      	adds	r3, #4
1a000980:	881b      	ldrh	r3, [r3, #0]
1a000982:	461a      	mov	r2, r3
1a000984:	4621      	mov	r1, r4
1a000986:	f7ff febd 	bl	1a000704 <Chip_SCU_PinMuxSet>
1a00098a:	497b      	ldr	r1, [pc, #492]	; (1a000b78 <sysInit+0x24c>)
1a00098c:	687a      	ldr	r2, [r7, #4]
1a00098e:	4613      	mov	r3, r2
1a000990:	005b      	lsls	r3, r3, #1
1a000992:	4413      	add	r3, r2
1a000994:	005b      	lsls	r3, r3, #1
1a000996:	440b      	add	r3, r1
1a000998:	3302      	adds	r3, #2
1a00099a:	7818      	ldrb	r0, [r3, #0]
1a00099c:	4976      	ldr	r1, [pc, #472]	; (1a000b78 <sysInit+0x24c>)
1a00099e:	687a      	ldr	r2, [r7, #4]
1a0009a0:	4613      	mov	r3, r2
1a0009a2:	005b      	lsls	r3, r3, #1
1a0009a4:	4413      	add	r3, r2
1a0009a6:	005b      	lsls	r3, r3, #1
1a0009a8:	440b      	add	r3, r1
1a0009aa:	3303      	adds	r3, #3
1a0009ac:	781b      	ldrb	r3, [r3, #0]
1a0009ae:	461a      	mov	r2, r3
1a0009b0:	4601      	mov	r1, r0
1a0009b2:	4870      	ldr	r0, [pc, #448]	; (1a000b74 <sysInit+0x248>)
1a0009b4:	f7ff fefa 	bl	1a0007ac <Chip_GPIO_SetPinDIROutput>
1a0009b8:	496f      	ldr	r1, [pc, #444]	; (1a000b78 <sysInit+0x24c>)
1a0009ba:	687a      	ldr	r2, [r7, #4]
1a0009bc:	4613      	mov	r3, r2
1a0009be:	005b      	lsls	r3, r3, #1
1a0009c0:	4413      	add	r3, r2
1a0009c2:	005b      	lsls	r3, r3, #1
1a0009c4:	440b      	add	r3, r1
1a0009c6:	3302      	adds	r3, #2
1a0009c8:	7818      	ldrb	r0, [r3, #0]
1a0009ca:	496b      	ldr	r1, [pc, #428]	; (1a000b78 <sysInit+0x24c>)
1a0009cc:	687a      	ldr	r2, [r7, #4]
1a0009ce:	4613      	mov	r3, r2
1a0009d0:	005b      	lsls	r3, r3, #1
1a0009d2:	4413      	add	r3, r2
1a0009d4:	005b      	lsls	r3, r3, #1
1a0009d6:	440b      	add	r3, r1
1a0009d8:	3303      	adds	r3, #3
1a0009da:	781b      	ldrb	r3, [r3, #0]
1a0009dc:	461a      	mov	r2, r3
1a0009de:	4601      	mov	r1, r0
1a0009e0:	4864      	ldr	r0, [pc, #400]	; (1a000b74 <sysInit+0x248>)
1a0009e2:	f7ff ff22 	bl	1a00082a <Chip_GPIO_SetPinOutLow>
1a0009e6:	687b      	ldr	r3, [r7, #4]
1a0009e8:	3301      	adds	r3, #1
1a0009ea:	607b      	str	r3, [r7, #4]
1a0009ec:	687b      	ldr	r3, [r7, #4]
1a0009ee:	2b05      	cmp	r3, #5
1a0009f0:	d9ad      	bls.n	1a00094e <sysInit+0x22>
1a0009f2:	2300      	movs	r3, #0
1a0009f4:	607b      	str	r3, [r7, #4]
1a0009f6:	e037      	b.n	1a000a68 <sysInit+0x13c>
1a0009f8:	4960      	ldr	r1, [pc, #384]	; (1a000b7c <sysInit+0x250>)
1a0009fa:	687a      	ldr	r2, [r7, #4]
1a0009fc:	4613      	mov	r3, r2
1a0009fe:	005b      	lsls	r3, r3, #1
1a000a00:	4413      	add	r3, r2
1a000a02:	005b      	lsls	r3, r3, #1
1a000a04:	440b      	add	r3, r1
1a000a06:	7818      	ldrb	r0, [r3, #0]
1a000a08:	495c      	ldr	r1, [pc, #368]	; (1a000b7c <sysInit+0x250>)
1a000a0a:	687a      	ldr	r2, [r7, #4]
1a000a0c:	4613      	mov	r3, r2
1a000a0e:	005b      	lsls	r3, r3, #1
1a000a10:	4413      	add	r3, r2
1a000a12:	005b      	lsls	r3, r3, #1
1a000a14:	440b      	add	r3, r1
1a000a16:	3301      	adds	r3, #1
1a000a18:	781c      	ldrb	r4, [r3, #0]
1a000a1a:	4958      	ldr	r1, [pc, #352]	; (1a000b7c <sysInit+0x250>)
1a000a1c:	687a      	ldr	r2, [r7, #4]
1a000a1e:	4613      	mov	r3, r2
1a000a20:	005b      	lsls	r3, r3, #1
1a000a22:	4413      	add	r3, r2
1a000a24:	005b      	lsls	r3, r3, #1
1a000a26:	440b      	add	r3, r1
1a000a28:	3304      	adds	r3, #4
1a000a2a:	881b      	ldrh	r3, [r3, #0]
1a000a2c:	461a      	mov	r2, r3
1a000a2e:	4621      	mov	r1, r4
1a000a30:	f7ff fe68 	bl	1a000704 <Chip_SCU_PinMuxSet>
1a000a34:	4951      	ldr	r1, [pc, #324]	; (1a000b7c <sysInit+0x250>)
1a000a36:	687a      	ldr	r2, [r7, #4]
1a000a38:	4613      	mov	r3, r2
1a000a3a:	005b      	lsls	r3, r3, #1
1a000a3c:	4413      	add	r3, r2
1a000a3e:	005b      	lsls	r3, r3, #1
1a000a40:	440b      	add	r3, r1
1a000a42:	3302      	adds	r3, #2
1a000a44:	7818      	ldrb	r0, [r3, #0]
1a000a46:	494d      	ldr	r1, [pc, #308]	; (1a000b7c <sysInit+0x250>)
1a000a48:	687a      	ldr	r2, [r7, #4]
1a000a4a:	4613      	mov	r3, r2
1a000a4c:	005b      	lsls	r3, r3, #1
1a000a4e:	4413      	add	r3, r2
1a000a50:	005b      	lsls	r3, r3, #1
1a000a52:	440b      	add	r3, r1
1a000a54:	3303      	adds	r3, #3
1a000a56:	781b      	ldrb	r3, [r3, #0]
1a000a58:	461a      	mov	r2, r3
1a000a5a:	4601      	mov	r1, r0
1a000a5c:	4845      	ldr	r0, [pc, #276]	; (1a000b74 <sysInit+0x248>)
1a000a5e:	f7ff fec4 	bl	1a0007ea <Chip_GPIO_SetPinDIRInput>
1a000a62:	687b      	ldr	r3, [r7, #4]
1a000a64:	3301      	adds	r3, #1
1a000a66:	607b      	str	r3, [r7, #4]
1a000a68:	687b      	ldr	r3, [r7, #4]
1a000a6a:	2b03      	cmp	r3, #3
1a000a6c:	d9c4      	bls.n	1a0009f8 <sysInit+0xcc>
1a000a6e:	221e      	movs	r2, #30
1a000a70:	2101      	movs	r1, #1
1a000a72:	2007      	movs	r0, #7
1a000a74:	f7ff fe46 	bl	1a000704 <Chip_SCU_PinMuxSet>
1a000a78:	22d6      	movs	r2, #214	; 0xd6
1a000a7a:	2102      	movs	r1, #2
1a000a7c:	2007      	movs	r0, #7
1a000a7e:	f7ff fe41 	bl	1a000704 <Chip_SCU_PinMuxSet>
1a000a82:	483f      	ldr	r0, [pc, #252]	; (1a000b80 <sysInit+0x254>)
1a000a84:	f000 fb78 	bl	1a001178 <Chip_UART_Init>
1a000a88:	2103      	movs	r1, #3
1a000a8a:	483d      	ldr	r0, [pc, #244]	; (1a000b80 <sysInit+0x254>)
1a000a8c:	f7ff ff40 	bl	1a000910 <Chip_UART_ConfigData>
1a000a90:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000a94:	483a      	ldr	r0, [pc, #232]	; (1a000b80 <sysInit+0x254>)
1a000a96:	f000 fc4f 	bl	1a001338 <Chip_UART_SetBaud>
1a000a9a:	21c7      	movs	r1, #199	; 0xc7
1a000a9c:	4838      	ldr	r0, [pc, #224]	; (1a000b80 <sysInit+0x254>)
1a000a9e:	f7ff ff29 	bl	1a0008f4 <Chip_UART_SetupFIFOS>
1a000aa2:	2101      	movs	r1, #1
1a000aa4:	4836      	ldr	r0, [pc, #216]	; (1a000b80 <sysInit+0x254>)
1a000aa6:	f7ff ff14 	bl	1a0008d2 <Chip_UART_IntEnable>
1a000aaa:	2300      	movs	r3, #0
1a000aac:	607b      	str	r3, [r7, #4]
1a000aae:	e032      	b.n	1a000b16 <sysInit+0x1ea>
1a000ab0:	687b      	ldr	r3, [r7, #4]
1a000ab2:	b2d8      	uxtb	r0, r3
1a000ab4:	4931      	ldr	r1, [pc, #196]	; (1a000b7c <sysInit+0x250>)
1a000ab6:	687a      	ldr	r2, [r7, #4]
1a000ab8:	4613      	mov	r3, r2
1a000aba:	005b      	lsls	r3, r3, #1
1a000abc:	4413      	add	r3, r2
1a000abe:	005b      	lsls	r3, r3, #1
1a000ac0:	440b      	add	r3, r1
1a000ac2:	3302      	adds	r3, #2
1a000ac4:	781c      	ldrb	r4, [r3, #0]
1a000ac6:	492d      	ldr	r1, [pc, #180]	; (1a000b7c <sysInit+0x250>)
1a000ac8:	687a      	ldr	r2, [r7, #4]
1a000aca:	4613      	mov	r3, r2
1a000acc:	005b      	lsls	r3, r3, #1
1a000ace:	4413      	add	r3, r2
1a000ad0:	005b      	lsls	r3, r3, #1
1a000ad2:	440b      	add	r3, r1
1a000ad4:	3303      	adds	r3, #3
1a000ad6:	781b      	ldrb	r3, [r3, #0]
1a000ad8:	461a      	mov	r2, r3
1a000ada:	4621      	mov	r1, r4
1a000adc:	f7ff fe2c 	bl	1a000738 <Chip_SCU_GPIOIntPinSel>
1a000ae0:	2201      	movs	r2, #1
1a000ae2:	687b      	ldr	r3, [r7, #4]
1a000ae4:	fa02 f303 	lsl.w	r3, r2, r3
1a000ae8:	4619      	mov	r1, r3
1a000aea:	4826      	ldr	r0, [pc, #152]	; (1a000b84 <sysInit+0x258>)
1a000aec:	f7ff fed6 	bl	1a00089c <Chip_PININT_ClearIntStatus>
1a000af0:	2201      	movs	r2, #1
1a000af2:	687b      	ldr	r3, [r7, #4]
1a000af4:	fa02 f303 	lsl.w	r3, r2, r3
1a000af8:	4619      	mov	r1, r3
1a000afa:	4822      	ldr	r0, [pc, #136]	; (1a000b84 <sysInit+0x258>)
1a000afc:	f7ff feae 	bl	1a00085c <Chip_PININT_SetPinModeEdge>
1a000b00:	2201      	movs	r2, #1
1a000b02:	687b      	ldr	r3, [r7, #4]
1a000b04:	fa02 f303 	lsl.w	r3, r2, r3
1a000b08:	4619      	mov	r1, r3
1a000b0a:	481e      	ldr	r0, [pc, #120]	; (1a000b84 <sysInit+0x258>)
1a000b0c:	f7ff feb8 	bl	1a000880 <Chip_PININT_EnableIntLow>
1a000b10:	687b      	ldr	r3, [r7, #4]
1a000b12:	3301      	adds	r3, #1
1a000b14:	607b      	str	r3, [r7, #4]
1a000b16:	687b      	ldr	r3, [r7, #4]
1a000b18:	2b03      	cmp	r3, #3
1a000b1a:	ddc9      	ble.n	1a000ab0 <sysInit+0x184>
1a000b1c:	2020      	movs	r0, #32
1a000b1e:	f7ff fd8b 	bl	1a000638 <NVIC_ClearPendingIRQ>
1a000b22:	2021      	movs	r0, #33	; 0x21
1a000b24:	f7ff fd88 	bl	1a000638 <NVIC_ClearPendingIRQ>
1a000b28:	2022      	movs	r0, #34	; 0x22
1a000b2a:	f7ff fd85 	bl	1a000638 <NVIC_ClearPendingIRQ>
1a000b2e:	2023      	movs	r0, #35	; 0x23
1a000b30:	f7ff fd82 	bl	1a000638 <NVIC_ClearPendingIRQ>
1a000b34:	2020      	movs	r0, #32
1a000b36:	f7ff fd65 	bl	1a000604 <NVIC_EnableIRQ>
1a000b3a:	2021      	movs	r0, #33	; 0x21
1a000b3c:	f7ff fd62 	bl	1a000604 <NVIC_EnableIRQ>
1a000b40:	2022      	movs	r0, #34	; 0x22
1a000b42:	f7ff fd5f 	bl	1a000604 <NVIC_EnableIRQ>
1a000b46:	2023      	movs	r0, #35	; 0x23
1a000b48:	f7ff fd5c 	bl	1a000604 <NVIC_EnableIRQ>
1a000b4c:	201a      	movs	r0, #26
1a000b4e:	f7ff fd59 	bl	1a000604 <NVIC_EnableIRQ>
1a000b52:	480b      	ldr	r0, [pc, #44]	; (1a000b80 <sysInit+0x254>)
1a000b54:	f7ff feb0 	bl	1a0008b8 <Chip_UART_TXEnable>
1a000b58:	4b0b      	ldr	r3, [pc, #44]	; (1a000b88 <sysInit+0x25c>)
1a000b5a:	681b      	ldr	r3, [r3, #0]
1a000b5c:	4a0b      	ldr	r2, [pc, #44]	; (1a000b8c <sysInit+0x260>)
1a000b5e:	fba2 2303 	umull	r2, r3, r2, r3
1a000b62:	099b      	lsrs	r3, r3, #6
1a000b64:	4618      	mov	r0, r3
1a000b66:	f7ff fdab 	bl	1a0006c0 <SysTick_Config>
1a000b6a:	bf00      	nop
1a000b6c:	370c      	adds	r7, #12
1a000b6e:	46bd      	mov	sp, r7
1a000b70:	bd90      	pop	{r4, r7, pc}
1a000b72:	bf00      	nop
1a000b74:	400f4000 	.word	0x400f4000
1a000b78:	1a007b34 	.word	0x1a007b34
1a000b7c:	1a007b58 	.word	0x1a007b58
1a000b80:	400c1000 	.word	0x400c1000
1a000b84:	40087000 	.word	0x40087000
1a000b88:	10000a48 	.word	0x10000a48
1a000b8c:	10624dd3 	.word	0x10624dd3

1a000b90 <SysTick_Handler>:
1a000b90:	b480      	push	{r7}
1a000b92:	af00      	add	r7, sp, #0
1a000b94:	4b03      	ldr	r3, [pc, #12]	; (1a000ba4 <SysTick_Handler+0x14>)
1a000b96:	2201      	movs	r2, #1
1a000b98:	701a      	strb	r2, [r3, #0]
1a000b9a:	bf00      	nop
1a000b9c:	46bd      	mov	sp, r7
1a000b9e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ba2:	4770      	bx	lr
1a000ba4:	100009d9 	.word	0x100009d9

1a000ba8 <GPIO0_IRQHandler>:
1a000ba8:	b580      	push	{r7, lr}
1a000baa:	af00      	add	r7, sp, #0
1a000bac:	4b04      	ldr	r3, [pc, #16]	; (1a000bc0 <GPIO0_IRQHandler+0x18>)
1a000bae:	2201      	movs	r2, #1
1a000bb0:	701a      	strb	r2, [r3, #0]
1a000bb2:	2101      	movs	r1, #1
1a000bb4:	4803      	ldr	r0, [pc, #12]	; (1a000bc4 <GPIO0_IRQHandler+0x1c>)
1a000bb6:	f7ff fe71 	bl	1a00089c <Chip_PININT_ClearIntStatus>
1a000bba:	bf00      	nop
1a000bbc:	bd80      	pop	{r7, pc}
1a000bbe:	bf00      	nop
1a000bc0:	100009d8 	.word	0x100009d8
1a000bc4:	40087000 	.word	0x40087000

1a000bc8 <GPIO1_IRQHandler>:
1a000bc8:	b580      	push	{r7, lr}
1a000bca:	af00      	add	r7, sp, #0
1a000bcc:	4b04      	ldr	r3, [pc, #16]	; (1a000be0 <GPIO1_IRQHandler+0x18>)
1a000bce:	2202      	movs	r2, #2
1a000bd0:	701a      	strb	r2, [r3, #0]
1a000bd2:	2102      	movs	r1, #2
1a000bd4:	4803      	ldr	r0, [pc, #12]	; (1a000be4 <GPIO1_IRQHandler+0x1c>)
1a000bd6:	f7ff fe61 	bl	1a00089c <Chip_PININT_ClearIntStatus>
1a000bda:	bf00      	nop
1a000bdc:	bd80      	pop	{r7, pc}
1a000bde:	bf00      	nop
1a000be0:	100009d8 	.word	0x100009d8
1a000be4:	40087000 	.word	0x40087000

1a000be8 <GPIO2_IRQHandler>:
1a000be8:	b580      	push	{r7, lr}
1a000bea:	af00      	add	r7, sp, #0
1a000bec:	4b04      	ldr	r3, [pc, #16]	; (1a000c00 <GPIO2_IRQHandler+0x18>)
1a000bee:	2203      	movs	r2, #3
1a000bf0:	701a      	strb	r2, [r3, #0]
1a000bf2:	2104      	movs	r1, #4
1a000bf4:	4803      	ldr	r0, [pc, #12]	; (1a000c04 <GPIO2_IRQHandler+0x1c>)
1a000bf6:	f7ff fe51 	bl	1a00089c <Chip_PININT_ClearIntStatus>
1a000bfa:	bf00      	nop
1a000bfc:	bd80      	pop	{r7, pc}
1a000bfe:	bf00      	nop
1a000c00:	100009d8 	.word	0x100009d8
1a000c04:	40087000 	.word	0x40087000

1a000c08 <GPIO3_IRQHandler>:
1a000c08:	b580      	push	{r7, lr}
1a000c0a:	af00      	add	r7, sp, #0
1a000c0c:	4b04      	ldr	r3, [pc, #16]	; (1a000c20 <GPIO3_IRQHandler+0x18>)
1a000c0e:	2204      	movs	r2, #4
1a000c10:	701a      	strb	r2, [r3, #0]
1a000c12:	2108      	movs	r1, #8
1a000c14:	4803      	ldr	r0, [pc, #12]	; (1a000c24 <GPIO3_IRQHandler+0x1c>)
1a000c16:	f7ff fe41 	bl	1a00089c <Chip_PININT_ClearIntStatus>
1a000c1a:	bf00      	nop
1a000c1c:	bd80      	pop	{r7, pc}
1a000c1e:	bf00      	nop
1a000c20:	100009d8 	.word	0x100009d8
1a000c24:	40087000 	.word	0x40087000

1a000c28 <_sbrk>:
1a000c28:	b580      	push	{r7, lr}
1a000c2a:	b084      	sub	sp, #16
1a000c2c:	af00      	add	r7, sp, #0
1a000c2e:	6078      	str	r0, [r7, #4]
1a000c30:	4b0d      	ldr	r3, [pc, #52]	; (1a000c68 <_sbrk+0x40>)
1a000c32:	681b      	ldr	r3, [r3, #0]
1a000c34:	60fb      	str	r3, [r7, #12]
1a000c36:	4b0c      	ldr	r3, [pc, #48]	; (1a000c68 <_sbrk+0x40>)
1a000c38:	681a      	ldr	r2, [r3, #0]
1a000c3a:	687b      	ldr	r3, [r7, #4]
1a000c3c:	4413      	add	r3, r2
1a000c3e:	4a0a      	ldr	r2, [pc, #40]	; (1a000c68 <_sbrk+0x40>)
1a000c40:	6013      	str	r3, [r2, #0]
1a000c42:	4b09      	ldr	r3, [pc, #36]	; (1a000c68 <_sbrk+0x40>)
1a000c44:	681b      	ldr	r3, [r3, #0]
1a000c46:	4a09      	ldr	r2, [pc, #36]	; (1a000c6c <_sbrk+0x44>)
1a000c48:	4293      	cmp	r3, r2
1a000c4a:	d307      	bcc.n	1a000c5c <_sbrk+0x34>
1a000c4c:	4a06      	ldr	r2, [pc, #24]	; (1a000c68 <_sbrk+0x40>)
1a000c4e:	68fb      	ldr	r3, [r7, #12]
1a000c50:	6013      	str	r3, [r2, #0]
1a000c52:	4b07      	ldr	r3, [pc, #28]	; (1a000c70 <_sbrk+0x48>)
1a000c54:	220c      	movs	r2, #12
1a000c56:	601a      	str	r2, [r3, #0]
1a000c58:	f001 fa34 	bl	1a0020c4 <abort>
1a000c5c:	68fb      	ldr	r3, [r7, #12]
1a000c5e:	4618      	mov	r0, r3
1a000c60:	3710      	adds	r7, #16
1a000c62:	46bd      	mov	sp, r7
1a000c64:	bd80      	pop	{r7, pc}
1a000c66:	bf00      	nop
1a000c68:	10000430 	.word	0x10000430
1a000c6c:	1008a000 	.word	0x1008a000
1a000c70:	10000a4c 	.word	0x10000a4c

1a000c74 <_kill>:
1a000c74:	b480      	push	{r7}
1a000c76:	b083      	sub	sp, #12
1a000c78:	af00      	add	r7, sp, #0
1a000c7a:	6078      	str	r0, [r7, #4]
1a000c7c:	6039      	str	r1, [r7, #0]
1a000c7e:	4b05      	ldr	r3, [pc, #20]	; (1a000c94 <_kill+0x20>)
1a000c80:	2216      	movs	r2, #22
1a000c82:	601a      	str	r2, [r3, #0]
1a000c84:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a000c88:	4618      	mov	r0, r3
1a000c8a:	370c      	adds	r7, #12
1a000c8c:	46bd      	mov	sp, r7
1a000c8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c92:	4770      	bx	lr
1a000c94:	10000a4c 	.word	0x10000a4c

1a000c98 <_getpid>:
1a000c98:	b480      	push	{r7}
1a000c9a:	af00      	add	r7, sp, #0
1a000c9c:	2301      	movs	r3, #1
1a000c9e:	4618      	mov	r0, r3
1a000ca0:	46bd      	mov	sp, r7
1a000ca2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ca6:	4770      	bx	lr

1a000ca8 <_exit>:
1a000ca8:	b580      	push	{r7, lr}
1a000caa:	b082      	sub	sp, #8
1a000cac:	af00      	add	r7, sp, #0
1a000cae:	6078      	str	r0, [r7, #4]
1a000cb0:	6878      	ldr	r0, [r7, #4]
1a000cb2:	f001 fa03 	bl	1a0020bc <_Exit>
1a000cb6:	Address 0x000000001a000cb6 is out of bounds.


1a000cb8 <fpuInit>:
1a000cb8:	b480      	push	{r7}
1a000cba:	b089      	sub	sp, #36	; 0x24
1a000cbc:	af00      	add	r7, sp, #0
1a000cbe:	4b16      	ldr	r3, [pc, #88]	; (1a000d18 <fpuInit+0x60>)
1a000cc0:	61fb      	str	r3, [r7, #28]
1a000cc2:	4b16      	ldr	r3, [pc, #88]	; (1a000d1c <fpuInit+0x64>)
1a000cc4:	61bb      	str	r3, [r7, #24]
1a000cc6:	4b16      	ldr	r3, [pc, #88]	; (1a000d20 <fpuInit+0x68>)
1a000cc8:	617b      	str	r3, [r7, #20]
1a000cca:	2300      	movs	r3, #0
1a000ccc:	74fb      	strb	r3, [r7, #19]
1a000cce:	69bb      	ldr	r3, [r7, #24]
1a000cd0:	681b      	ldr	r3, [r3, #0]
1a000cd2:	60bb      	str	r3, [r7, #8]
1a000cd4:	697b      	ldr	r3, [r7, #20]
1a000cd6:	681b      	ldr	r3, [r3, #0]
1a000cd8:	607b      	str	r3, [r7, #4]
1a000cda:	68bb      	ldr	r3, [r7, #8]
1a000cdc:	4a11      	ldr	r2, [pc, #68]	; (1a000d24 <fpuInit+0x6c>)
1a000cde:	4293      	cmp	r3, r2
1a000ce0:	d105      	bne.n	1a000cee <fpuInit+0x36>
1a000ce2:	687b      	ldr	r3, [r7, #4]
1a000ce4:	4a10      	ldr	r2, [pc, #64]	; (1a000d28 <fpuInit+0x70>)
1a000ce6:	4293      	cmp	r3, r2
1a000ce8:	d101      	bne.n	1a000cee <fpuInit+0x36>
1a000cea:	2301      	movs	r3, #1
1a000cec:	e000      	b.n	1a000cf0 <fpuInit+0x38>
1a000cee:	2300      	movs	r3, #0
1a000cf0:	74fb      	strb	r3, [r7, #19]
1a000cf2:	7cfb      	ldrb	r3, [r7, #19]
1a000cf4:	2b00      	cmp	r3, #0
1a000cf6:	d009      	beq.n	1a000d0c <fpuInit+0x54>
1a000cf8:	69fb      	ldr	r3, [r7, #28]
1a000cfa:	681b      	ldr	r3, [r3, #0]
1a000cfc:	60fb      	str	r3, [r7, #12]
1a000cfe:	68fb      	ldr	r3, [r7, #12]
1a000d00:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000d04:	60fb      	str	r3, [r7, #12]
1a000d06:	68fa      	ldr	r2, [r7, #12]
1a000d08:	69fb      	ldr	r3, [r7, #28]
1a000d0a:	601a      	str	r2, [r3, #0]
1a000d0c:	bf00      	nop
1a000d0e:	3724      	adds	r7, #36	; 0x24
1a000d10:	46bd      	mov	sp, r7
1a000d12:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d16:	4770      	bx	lr
1a000d18:	e000ed88 	.word	0xe000ed88
1a000d1c:	e000ef40 	.word	0xe000ef40
1a000d20:	e000ef44 	.word	0xe000ef44
1a000d24:	10110021 	.word	0x10110021
1a000d28:	11000011 	.word	0x11000011

1a000d2c <Chip_Clock_DisableMainPLL>:
1a000d2c:	b480      	push	{r7}
1a000d2e:	af00      	add	r7, sp, #0
1a000d30:	4b05      	ldr	r3, [pc, #20]	; (1a000d48 <Chip_Clock_DisableMainPLL+0x1c>)
1a000d32:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000d34:	4a04      	ldr	r2, [pc, #16]	; (1a000d48 <Chip_Clock_DisableMainPLL+0x1c>)
1a000d36:	f043 0301 	orr.w	r3, r3, #1
1a000d3a:	6453      	str	r3, [r2, #68]	; 0x44
1a000d3c:	bf00      	nop
1a000d3e:	46bd      	mov	sp, r7
1a000d40:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d44:	4770      	bx	lr
1a000d46:	bf00      	nop
1a000d48:	40050000 	.word	0x40050000

1a000d4c <Chip_Clock_SetupMainPLL>:
1a000d4c:	b480      	push	{r7}
1a000d4e:	b083      	sub	sp, #12
1a000d50:	af00      	add	r7, sp, #0
1a000d52:	6078      	str	r0, [r7, #4]
1a000d54:	687b      	ldr	r3, [r7, #4]
1a000d56:	681b      	ldr	r3, [r3, #0]
1a000d58:	461a      	mov	r2, r3
1a000d5a:	687b      	ldr	r3, [r7, #4]
1a000d5c:	791b      	ldrb	r3, [r3, #4]
1a000d5e:	061b      	lsls	r3, r3, #24
1a000d60:	4313      	orrs	r3, r2
1a000d62:	687a      	ldr	r2, [r7, #4]
1a000d64:	6912      	ldr	r2, [r2, #16]
1a000d66:	0412      	lsls	r2, r2, #16
1a000d68:	4313      	orrs	r3, r2
1a000d6a:	687a      	ldr	r2, [r7, #4]
1a000d6c:	6892      	ldr	r2, [r2, #8]
1a000d6e:	0312      	lsls	r2, r2, #12
1a000d70:	4313      	orrs	r3, r2
1a000d72:	687a      	ldr	r2, [r7, #4]
1a000d74:	68d2      	ldr	r2, [r2, #12]
1a000d76:	0212      	lsls	r2, r2, #8
1a000d78:	4313      	orrs	r3, r2
1a000d7a:	4a05      	ldr	r2, [pc, #20]	; (1a000d90 <Chip_Clock_SetupMainPLL+0x44>)
1a000d7c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000d80:	6453      	str	r3, [r2, #68]	; 0x44
1a000d82:	bf00      	nop
1a000d84:	370c      	adds	r7, #12
1a000d86:	46bd      	mov	sp, r7
1a000d88:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d8c:	4770      	bx	lr
1a000d8e:	bf00      	nop
1a000d90:	40050000 	.word	0x40050000

1a000d94 <Chip_Clock_MainPLLLocked>:
1a000d94:	b480      	push	{r7}
1a000d96:	af00      	add	r7, sp, #0
1a000d98:	4b06      	ldr	r3, [pc, #24]	; (1a000db4 <Chip_Clock_MainPLLLocked+0x20>)
1a000d9a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000d9c:	f003 0301 	and.w	r3, r3, #1
1a000da0:	2b00      	cmp	r3, #0
1a000da2:	bf14      	ite	ne
1a000da4:	2301      	movne	r3, #1
1a000da6:	2300      	moveq	r3, #0
1a000da8:	b2db      	uxtb	r3, r3
1a000daa:	4618      	mov	r0, r3
1a000dac:	46bd      	mov	sp, r7
1a000dae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000db2:	4770      	bx	lr
1a000db4:	40050000 	.word	0x40050000

1a000db8 <Chip_SetupCoreClock>:
1a000db8:	b590      	push	{r4, r7, lr}
1a000dba:	b08f      	sub	sp, #60	; 0x3c
1a000dbc:	af00      	add	r7, sp, #0
1a000dbe:	4603      	mov	r3, r0
1a000dc0:	6039      	str	r1, [r7, #0]
1a000dc2:	71fb      	strb	r3, [r7, #7]
1a000dc4:	4613      	mov	r3, r2
1a000dc6:	71bb      	strb	r3, [r7, #6]
1a000dc8:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000dcc:	62bb      	str	r3, [r7, #40]	; 0x28
1a000dce:	2300      	movs	r3, #0
1a000dd0:	633b      	str	r3, [r7, #48]	; 0x30
1a000dd2:	2300      	movs	r3, #0
1a000dd4:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000dd6:	79fb      	ldrb	r3, [r7, #7]
1a000dd8:	2b06      	cmp	r3, #6
1a000dda:	d101      	bne.n	1a000de0 <Chip_SetupCoreClock+0x28>
1a000ddc:	f000 fe08 	bl	1a0019f0 <Chip_Clock_EnableCrystal>
1a000de0:	79f9      	ldrb	r1, [r7, #7]
1a000de2:	2300      	movs	r3, #0
1a000de4:	2201      	movs	r2, #1
1a000de6:	2004      	movs	r0, #4
1a000de8:	f000 fff4 	bl	1a001dd4 <Chip_Clock_SetBaseClock>
1a000dec:	f7ff ff9e 	bl	1a000d2c <Chip_Clock_DisableMainPLL>
1a000df0:	79fb      	ldrb	r3, [r7, #7]
1a000df2:	733b      	strb	r3, [r7, #12]
1a000df4:	f107 0308 	add.w	r3, r7, #8
1a000df8:	4619      	mov	r1, r3
1a000dfa:	6838      	ldr	r0, [r7, #0]
1a000dfc:	f000 fe30 	bl	1a001a60 <Chip_Clock_CalcMainPLLValue>
1a000e00:	683b      	ldr	r3, [r7, #0]
1a000e02:	4a3d      	ldr	r2, [pc, #244]	; (1a000ef8 <Chip_SetupCoreClock+0x140>)
1a000e04:	4293      	cmp	r3, r2
1a000e06:	d916      	bls.n	1a000e36 <Chip_SetupCoreClock+0x7e>
1a000e08:	68bb      	ldr	r3, [r7, #8]
1a000e0a:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000e0e:	2b00      	cmp	r3, #0
1a000e10:	d000      	beq.n	1a000e14 <Chip_SetupCoreClock+0x5c>
1a000e12:	e7fe      	b.n	1a000e12 <Chip_SetupCoreClock+0x5a>
1a000e14:	68bb      	ldr	r3, [r7, #8]
1a000e16:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000e1a:	2b00      	cmp	r3, #0
1a000e1c:	d006      	beq.n	1a000e2c <Chip_SetupCoreClock+0x74>
1a000e1e:	2301      	movs	r3, #1
1a000e20:	633b      	str	r3, [r7, #48]	; 0x30
1a000e22:	68bb      	ldr	r3, [r7, #8]
1a000e24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000e28:	60bb      	str	r3, [r7, #8]
1a000e2a:	e004      	b.n	1a000e36 <Chip_SetupCoreClock+0x7e>
1a000e2c:	2301      	movs	r3, #1
1a000e2e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000e30:	697b      	ldr	r3, [r7, #20]
1a000e32:	3301      	adds	r3, #1
1a000e34:	617b      	str	r3, [r7, #20]
1a000e36:	f107 0308 	add.w	r3, r7, #8
1a000e3a:	4618      	mov	r0, r3
1a000e3c:	f7ff ff86 	bl	1a000d4c <Chip_Clock_SetupMainPLL>
1a000e40:	bf00      	nop
1a000e42:	f7ff ffa7 	bl	1a000d94 <Chip_Clock_MainPLLLocked>
1a000e46:	4603      	mov	r3, r0
1a000e48:	2b00      	cmp	r3, #0
1a000e4a:	d0fa      	beq.n	1a000e42 <Chip_SetupCoreClock+0x8a>
1a000e4c:	2300      	movs	r3, #0
1a000e4e:	2201      	movs	r2, #1
1a000e50:	2109      	movs	r1, #9
1a000e52:	2004      	movs	r0, #4
1a000e54:	f000 ffbe 	bl	1a001dd4 <Chip_Clock_SetBaseClock>
1a000e58:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000e5a:	2b00      	cmp	r3, #0
1a000e5c:	d012      	beq.n	1a000e84 <Chip_SetupCoreClock+0xcc>
1a000e5e:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000e62:	62bb      	str	r3, [r7, #40]	; 0x28
1a000e64:	bf00      	nop
1a000e66:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000e68:	1e5a      	subs	r2, r3, #1
1a000e6a:	62ba      	str	r2, [r7, #40]	; 0x28
1a000e6c:	2b00      	cmp	r3, #0
1a000e6e:	d1fa      	bne.n	1a000e66 <Chip_SetupCoreClock+0xae>
1a000e70:	68bb      	ldr	r3, [r7, #8]
1a000e72:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000e76:	60bb      	str	r3, [r7, #8]
1a000e78:	f107 0308 	add.w	r3, r7, #8
1a000e7c:	4618      	mov	r0, r3
1a000e7e:	f7ff ff65 	bl	1a000d4c <Chip_Clock_SetupMainPLL>
1a000e82:	e013      	b.n	1a000eac <Chip_SetupCoreClock+0xf4>
1a000e84:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000e86:	2b00      	cmp	r3, #0
1a000e88:	d010      	beq.n	1a000eac <Chip_SetupCoreClock+0xf4>
1a000e8a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000e8e:	62bb      	str	r3, [r7, #40]	; 0x28
1a000e90:	bf00      	nop
1a000e92:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000e94:	1e5a      	subs	r2, r3, #1
1a000e96:	62ba      	str	r2, [r7, #40]	; 0x28
1a000e98:	2b00      	cmp	r3, #0
1a000e9a:	d1fa      	bne.n	1a000e92 <Chip_SetupCoreClock+0xda>
1a000e9c:	697b      	ldr	r3, [r7, #20]
1a000e9e:	3b01      	subs	r3, #1
1a000ea0:	617b      	str	r3, [r7, #20]
1a000ea2:	f107 0308 	add.w	r3, r7, #8
1a000ea6:	4618      	mov	r0, r3
1a000ea8:	f7ff ff50 	bl	1a000d4c <Chip_Clock_SetupMainPLL>
1a000eac:	79bb      	ldrb	r3, [r7, #6]
1a000eae:	2b00      	cmp	r3, #0
1a000eb0:	d01e      	beq.n	1a000ef0 <Chip_SetupCoreClock+0x138>
1a000eb2:	2300      	movs	r3, #0
1a000eb4:	637b      	str	r3, [r7, #52]	; 0x34
1a000eb6:	e018      	b.n	1a000eea <Chip_SetupCoreClock+0x132>
1a000eb8:	4a10      	ldr	r2, [pc, #64]	; (1a000efc <Chip_SetupCoreClock+0x144>)
1a000eba:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ebc:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000ec0:	4a0e      	ldr	r2, [pc, #56]	; (1a000efc <Chip_SetupCoreClock+0x144>)
1a000ec2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ec4:	009b      	lsls	r3, r3, #2
1a000ec6:	4413      	add	r3, r2
1a000ec8:	7859      	ldrb	r1, [r3, #1]
1a000eca:	4a0c      	ldr	r2, [pc, #48]	; (1a000efc <Chip_SetupCoreClock+0x144>)
1a000ecc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ece:	009b      	lsls	r3, r3, #2
1a000ed0:	4413      	add	r3, r2
1a000ed2:	789c      	ldrb	r4, [r3, #2]
1a000ed4:	4a09      	ldr	r2, [pc, #36]	; (1a000efc <Chip_SetupCoreClock+0x144>)
1a000ed6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ed8:	009b      	lsls	r3, r3, #2
1a000eda:	4413      	add	r3, r2
1a000edc:	78db      	ldrb	r3, [r3, #3]
1a000ede:	4622      	mov	r2, r4
1a000ee0:	f000 ff78 	bl	1a001dd4 <Chip_Clock_SetBaseClock>
1a000ee4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ee6:	3301      	adds	r3, #1
1a000ee8:	637b      	str	r3, [r7, #52]	; 0x34
1a000eea:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000eec:	2b11      	cmp	r3, #17
1a000eee:	d9e3      	bls.n	1a000eb8 <Chip_SetupCoreClock+0x100>
1a000ef0:	bf00      	nop
1a000ef2:	373c      	adds	r7, #60	; 0x3c
1a000ef4:	46bd      	mov	sp, r7
1a000ef6:	bd90      	pop	{r4, r7, pc}
1a000ef8:	068e7780 	.word	0x068e7780
1a000efc:	1a007b70 	.word	0x1a007b70

1a000f00 <Chip_SetupXtalClocking>:
1a000f00:	b580      	push	{r7, lr}
1a000f02:	af00      	add	r7, sp, #0
1a000f04:	2201      	movs	r2, #1
1a000f06:	4903      	ldr	r1, [pc, #12]	; (1a000f14 <Chip_SetupXtalClocking+0x14>)
1a000f08:	2006      	movs	r0, #6
1a000f0a:	f7ff ff55 	bl	1a000db8 <Chip_SetupCoreClock>
1a000f0e:	bf00      	nop
1a000f10:	bd80      	pop	{r7, pc}
1a000f12:	bf00      	nop
1a000f14:	0c28cb00 	.word	0x0c28cb00

1a000f18 <RingBuffer_IsEmpty>:
1a000f18:	b480      	push	{r7}
1a000f1a:	b083      	sub	sp, #12
1a000f1c:	af00      	add	r7, sp, #0
1a000f1e:	6078      	str	r0, [r7, #4]
1a000f20:	687b      	ldr	r3, [r7, #4]
1a000f22:	330c      	adds	r3, #12
1a000f24:	681a      	ldr	r2, [r3, #0]
1a000f26:	687b      	ldr	r3, [r7, #4]
1a000f28:	3310      	adds	r3, #16
1a000f2a:	681b      	ldr	r3, [r3, #0]
1a000f2c:	429a      	cmp	r2, r3
1a000f2e:	bf0c      	ite	eq
1a000f30:	2301      	moveq	r3, #1
1a000f32:	2300      	movne	r3, #0
1a000f34:	b2db      	uxtb	r3, r3
1a000f36:	4618      	mov	r0, r3
1a000f38:	370c      	adds	r7, #12
1a000f3a:	46bd      	mov	sp, r7
1a000f3c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f40:	4770      	bx	lr

1a000f42 <Chip_UART_TXDisable>:
1a000f42:	b480      	push	{r7}
1a000f44:	b083      	sub	sp, #12
1a000f46:	af00      	add	r7, sp, #0
1a000f48:	6078      	str	r0, [r7, #4]
1a000f4a:	687b      	ldr	r3, [r7, #4]
1a000f4c:	2200      	movs	r2, #0
1a000f4e:	65da      	str	r2, [r3, #92]	; 0x5c
1a000f50:	bf00      	nop
1a000f52:	370c      	adds	r7, #12
1a000f54:	46bd      	mov	sp, r7
1a000f56:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f5a:	4770      	bx	lr

1a000f5c <Chip_UART_SendByte>:
1a000f5c:	b480      	push	{r7}
1a000f5e:	b083      	sub	sp, #12
1a000f60:	af00      	add	r7, sp, #0
1a000f62:	6078      	str	r0, [r7, #4]
1a000f64:	460b      	mov	r3, r1
1a000f66:	70fb      	strb	r3, [r7, #3]
1a000f68:	78fa      	ldrb	r2, [r7, #3]
1a000f6a:	687b      	ldr	r3, [r7, #4]
1a000f6c:	601a      	str	r2, [r3, #0]
1a000f6e:	bf00      	nop
1a000f70:	370c      	adds	r7, #12
1a000f72:	46bd      	mov	sp, r7
1a000f74:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f78:	4770      	bx	lr

1a000f7a <Chip_UART_ReadByte>:
1a000f7a:	b480      	push	{r7}
1a000f7c:	b083      	sub	sp, #12
1a000f7e:	af00      	add	r7, sp, #0
1a000f80:	6078      	str	r0, [r7, #4]
1a000f82:	687b      	ldr	r3, [r7, #4]
1a000f84:	681b      	ldr	r3, [r3, #0]
1a000f86:	b2db      	uxtb	r3, r3
1a000f88:	4618      	mov	r0, r3
1a000f8a:	370c      	adds	r7, #12
1a000f8c:	46bd      	mov	sp, r7
1a000f8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f92:	4770      	bx	lr

1a000f94 <Chip_UART_IntDisable>:
1a000f94:	b480      	push	{r7}
1a000f96:	b083      	sub	sp, #12
1a000f98:	af00      	add	r7, sp, #0
1a000f9a:	6078      	str	r0, [r7, #4]
1a000f9c:	6039      	str	r1, [r7, #0]
1a000f9e:	687b      	ldr	r3, [r7, #4]
1a000fa0:	685a      	ldr	r2, [r3, #4]
1a000fa2:	683b      	ldr	r3, [r7, #0]
1a000fa4:	43db      	mvns	r3, r3
1a000fa6:	401a      	ands	r2, r3
1a000fa8:	687b      	ldr	r3, [r7, #4]
1a000faa:	605a      	str	r2, [r3, #4]
1a000fac:	bf00      	nop
1a000fae:	370c      	adds	r7, #12
1a000fb0:	46bd      	mov	sp, r7
1a000fb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fb6:	4770      	bx	lr

1a000fb8 <Chip_UART_ReadIntIDReg>:
1a000fb8:	b480      	push	{r7}
1a000fba:	b083      	sub	sp, #12
1a000fbc:	af00      	add	r7, sp, #0
1a000fbe:	6078      	str	r0, [r7, #4]
1a000fc0:	687b      	ldr	r3, [r7, #4]
1a000fc2:	689b      	ldr	r3, [r3, #8]
1a000fc4:	4618      	mov	r0, r3
1a000fc6:	370c      	adds	r7, #12
1a000fc8:	46bd      	mov	sp, r7
1a000fca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fce:	4770      	bx	lr

1a000fd0 <Chip_UART_SetupFIFOS>:
1a000fd0:	b480      	push	{r7}
1a000fd2:	b083      	sub	sp, #12
1a000fd4:	af00      	add	r7, sp, #0
1a000fd6:	6078      	str	r0, [r7, #4]
1a000fd8:	6039      	str	r1, [r7, #0]
1a000fda:	687b      	ldr	r3, [r7, #4]
1a000fdc:	683a      	ldr	r2, [r7, #0]
1a000fde:	609a      	str	r2, [r3, #8]
1a000fe0:	bf00      	nop
1a000fe2:	370c      	adds	r7, #12
1a000fe4:	46bd      	mov	sp, r7
1a000fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fea:	4770      	bx	lr

1a000fec <Chip_UART_ConfigData>:
1a000fec:	b480      	push	{r7}
1a000fee:	b083      	sub	sp, #12
1a000ff0:	af00      	add	r7, sp, #0
1a000ff2:	6078      	str	r0, [r7, #4]
1a000ff4:	6039      	str	r1, [r7, #0]
1a000ff6:	687b      	ldr	r3, [r7, #4]
1a000ff8:	683a      	ldr	r2, [r7, #0]
1a000ffa:	60da      	str	r2, [r3, #12]
1a000ffc:	bf00      	nop
1a000ffe:	370c      	adds	r7, #12
1a001000:	46bd      	mov	sp, r7
1a001002:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001006:	4770      	bx	lr

1a001008 <Chip_UART_EnableDivisorAccess>:
1a001008:	b480      	push	{r7}
1a00100a:	b083      	sub	sp, #12
1a00100c:	af00      	add	r7, sp, #0
1a00100e:	6078      	str	r0, [r7, #4]
1a001010:	687b      	ldr	r3, [r7, #4]
1a001012:	68db      	ldr	r3, [r3, #12]
1a001014:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a001018:	687b      	ldr	r3, [r7, #4]
1a00101a:	60da      	str	r2, [r3, #12]
1a00101c:	bf00      	nop
1a00101e:	370c      	adds	r7, #12
1a001020:	46bd      	mov	sp, r7
1a001022:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001026:	4770      	bx	lr

1a001028 <Chip_UART_DisableDivisorAccess>:
1a001028:	b480      	push	{r7}
1a00102a:	b083      	sub	sp, #12
1a00102c:	af00      	add	r7, sp, #0
1a00102e:	6078      	str	r0, [r7, #4]
1a001030:	687b      	ldr	r3, [r7, #4]
1a001032:	68db      	ldr	r3, [r3, #12]
1a001034:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a001038:	687b      	ldr	r3, [r7, #4]
1a00103a:	60da      	str	r2, [r3, #12]
1a00103c:	bf00      	nop
1a00103e:	370c      	adds	r7, #12
1a001040:	46bd      	mov	sp, r7
1a001042:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001046:	4770      	bx	lr

1a001048 <Chip_UART_SetDivisorLatches>:
1a001048:	b480      	push	{r7}
1a00104a:	b083      	sub	sp, #12
1a00104c:	af00      	add	r7, sp, #0
1a00104e:	6078      	str	r0, [r7, #4]
1a001050:	460b      	mov	r3, r1
1a001052:	70fb      	strb	r3, [r7, #3]
1a001054:	4613      	mov	r3, r2
1a001056:	70bb      	strb	r3, [r7, #2]
1a001058:	78fa      	ldrb	r2, [r7, #3]
1a00105a:	687b      	ldr	r3, [r7, #4]
1a00105c:	601a      	str	r2, [r3, #0]
1a00105e:	78ba      	ldrb	r2, [r7, #2]
1a001060:	687b      	ldr	r3, [r7, #4]
1a001062:	605a      	str	r2, [r3, #4]
1a001064:	bf00      	nop
1a001066:	370c      	adds	r7, #12
1a001068:	46bd      	mov	sp, r7
1a00106a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00106e:	4770      	bx	lr

1a001070 <Chip_UART_ReadLineStatus>:
1a001070:	b480      	push	{r7}
1a001072:	b083      	sub	sp, #12
1a001074:	af00      	add	r7, sp, #0
1a001076:	6078      	str	r0, [r7, #4]
1a001078:	687b      	ldr	r3, [r7, #4]
1a00107a:	695b      	ldr	r3, [r3, #20]
1a00107c:	4618      	mov	r0, r3
1a00107e:	370c      	adds	r7, #12
1a001080:	46bd      	mov	sp, r7
1a001082:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001086:	4770      	bx	lr

1a001088 <Chip_UART_SetAutoBaudReg>:
1a001088:	b480      	push	{r7}
1a00108a:	b083      	sub	sp, #12
1a00108c:	af00      	add	r7, sp, #0
1a00108e:	6078      	str	r0, [r7, #4]
1a001090:	6039      	str	r1, [r7, #0]
1a001092:	687b      	ldr	r3, [r7, #4]
1a001094:	6a1a      	ldr	r2, [r3, #32]
1a001096:	683b      	ldr	r3, [r7, #0]
1a001098:	431a      	orrs	r2, r3
1a00109a:	687b      	ldr	r3, [r7, #4]
1a00109c:	621a      	str	r2, [r3, #32]
1a00109e:	bf00      	nop
1a0010a0:	370c      	adds	r7, #12
1a0010a2:	46bd      	mov	sp, r7
1a0010a4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010a8:	4770      	bx	lr
1a0010aa:	Address 0x000000001a0010aa is out of bounds.


1a0010ac <Chip_UART_GetIndex>:
1a0010ac:	b480      	push	{r7}
1a0010ae:	b085      	sub	sp, #20
1a0010b0:	af00      	add	r7, sp, #0
1a0010b2:	6078      	str	r0, [r7, #4]
1a0010b4:	687b      	ldr	r3, [r7, #4]
1a0010b6:	60fb      	str	r3, [r7, #12]
1a0010b8:	68fb      	ldr	r3, [r7, #12]
1a0010ba:	4a10      	ldr	r2, [pc, #64]	; (1a0010fc <Chip_UART_GetIndex+0x50>)
1a0010bc:	4293      	cmp	r3, r2
1a0010be:	d00f      	beq.n	1a0010e0 <Chip_UART_GetIndex+0x34>
1a0010c0:	4a0e      	ldr	r2, [pc, #56]	; (1a0010fc <Chip_UART_GetIndex+0x50>)
1a0010c2:	4293      	cmp	r3, r2
1a0010c4:	d803      	bhi.n	1a0010ce <Chip_UART_GetIndex+0x22>
1a0010c6:	4a0e      	ldr	r2, [pc, #56]	; (1a001100 <Chip_UART_GetIndex+0x54>)
1a0010c8:	4293      	cmp	r3, r2
1a0010ca:	d007      	beq.n	1a0010dc <Chip_UART_GetIndex+0x30>
1a0010cc:	e00e      	b.n	1a0010ec <Chip_UART_GetIndex+0x40>
1a0010ce:	4a0d      	ldr	r2, [pc, #52]	; (1a001104 <Chip_UART_GetIndex+0x58>)
1a0010d0:	4293      	cmp	r3, r2
1a0010d2:	d007      	beq.n	1a0010e4 <Chip_UART_GetIndex+0x38>
1a0010d4:	4a0c      	ldr	r2, [pc, #48]	; (1a001108 <Chip_UART_GetIndex+0x5c>)
1a0010d6:	4293      	cmp	r3, r2
1a0010d8:	d006      	beq.n	1a0010e8 <Chip_UART_GetIndex+0x3c>
1a0010da:	e007      	b.n	1a0010ec <Chip_UART_GetIndex+0x40>
1a0010dc:	2300      	movs	r3, #0
1a0010de:	e006      	b.n	1a0010ee <Chip_UART_GetIndex+0x42>
1a0010e0:	2301      	movs	r3, #1
1a0010e2:	e004      	b.n	1a0010ee <Chip_UART_GetIndex+0x42>
1a0010e4:	2302      	movs	r3, #2
1a0010e6:	e002      	b.n	1a0010ee <Chip_UART_GetIndex+0x42>
1a0010e8:	2303      	movs	r3, #3
1a0010ea:	e000      	b.n	1a0010ee <Chip_UART_GetIndex+0x42>
1a0010ec:	2300      	movs	r3, #0
1a0010ee:	4618      	mov	r0, r3
1a0010f0:	3714      	adds	r7, #20
1a0010f2:	46bd      	mov	sp, r7
1a0010f4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010f8:	4770      	bx	lr
1a0010fa:	bf00      	nop
1a0010fc:	40082000 	.word	0x40082000
1a001100:	40081000 	.word	0x40081000
1a001104:	400c1000 	.word	0x400c1000
1a001108:	400c2000 	.word	0x400c2000

1a00110c <Chip_UART_ABIntHandler>:
1a00110c:	b580      	push	{r7, lr}
1a00110e:	b082      	sub	sp, #8
1a001110:	af00      	add	r7, sp, #0
1a001112:	6078      	str	r0, [r7, #4]
1a001114:	6878      	ldr	r0, [r7, #4]
1a001116:	f7ff ff4f 	bl	1a000fb8 <Chip_UART_ReadIntIDReg>
1a00111a:	4603      	mov	r3, r0
1a00111c:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a001120:	2b00      	cmp	r3, #0
1a001122:	d011      	beq.n	1a001148 <Chip_UART_ABIntHandler+0x3c>
1a001124:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001128:	6878      	ldr	r0, [r7, #4]
1a00112a:	f7ff ffad 	bl	1a001088 <Chip_UART_SetAutoBaudReg>
1a00112e:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001132:	6878      	ldr	r0, [r7, #4]
1a001134:	f7ff ff2e 	bl	1a000f94 <Chip_UART_IntDisable>
1a001138:	4b0e      	ldr	r3, [pc, #56]	; (1a001174 <Chip_UART_ABIntHandler+0x68>)
1a00113a:	781b      	ldrb	r3, [r3, #0]
1a00113c:	b2db      	uxtb	r3, r3
1a00113e:	2b00      	cmp	r3, #0
1a001140:	d102      	bne.n	1a001148 <Chip_UART_ABIntHandler+0x3c>
1a001142:	4b0c      	ldr	r3, [pc, #48]	; (1a001174 <Chip_UART_ABIntHandler+0x68>)
1a001144:	2201      	movs	r2, #1
1a001146:	701a      	strb	r2, [r3, #0]
1a001148:	6878      	ldr	r0, [r7, #4]
1a00114a:	f7ff ff35 	bl	1a000fb8 <Chip_UART_ReadIntIDReg>
1a00114e:	4603      	mov	r3, r0
1a001150:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001154:	2b00      	cmp	r3, #0
1a001156:	d009      	beq.n	1a00116c <Chip_UART_ABIntHandler+0x60>
1a001158:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00115c:	6878      	ldr	r0, [r7, #4]
1a00115e:	f7ff ff93 	bl	1a001088 <Chip_UART_SetAutoBaudReg>
1a001162:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001166:	6878      	ldr	r0, [r7, #4]
1a001168:	f7ff ff14 	bl	1a000f94 <Chip_UART_IntDisable>
1a00116c:	bf00      	nop
1a00116e:	3708      	adds	r7, #8
1a001170:	46bd      	mov	sp, r7
1a001172:	bd80      	pop	{r7, pc}
1a001174:	100009da 	.word	0x100009da

1a001178 <Chip_UART_Init>:
1a001178:	b580      	push	{r7, lr}
1a00117a:	b084      	sub	sp, #16
1a00117c:	af00      	add	r7, sp, #0
1a00117e:	6078      	str	r0, [r7, #4]
1a001180:	68fb      	ldr	r3, [r7, #12]
1a001182:	6878      	ldr	r0, [r7, #4]
1a001184:	f7ff ff92 	bl	1a0010ac <Chip_UART_GetIndex>
1a001188:	4602      	mov	r2, r0
1a00118a:	4b1b      	ldr	r3, [pc, #108]	; (1a0011f8 <Chip_UART_Init+0x80>)
1a00118c:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001190:	2301      	movs	r3, #1
1a001192:	2201      	movs	r2, #1
1a001194:	2101      	movs	r1, #1
1a001196:	f000 fe91 	bl	1a001ebc <Chip_Clock_EnableOpts>
1a00119a:	2107      	movs	r1, #7
1a00119c:	6878      	ldr	r0, [r7, #4]
1a00119e:	f7ff ff17 	bl	1a000fd0 <Chip_UART_SetupFIFOS>
1a0011a2:	6878      	ldr	r0, [r7, #4]
1a0011a4:	f7ff fecd 	bl	1a000f42 <Chip_UART_TXDisable>
1a0011a8:	687b      	ldr	r3, [r7, #4]
1a0011aa:	2200      	movs	r2, #0
1a0011ac:	605a      	str	r2, [r3, #4]
1a0011ae:	687b      	ldr	r3, [r7, #4]
1a0011b0:	2200      	movs	r2, #0
1a0011b2:	60da      	str	r2, [r3, #12]
1a0011b4:	687b      	ldr	r3, [r7, #4]
1a0011b6:	2200      	movs	r2, #0
1a0011b8:	621a      	str	r2, [r3, #32]
1a0011ba:	687b      	ldr	r3, [r7, #4]
1a0011bc:	2200      	movs	r2, #0
1a0011be:	64da      	str	r2, [r3, #76]	; 0x4c
1a0011c0:	687b      	ldr	r3, [r7, #4]
1a0011c2:	2200      	movs	r2, #0
1a0011c4:	655a      	str	r2, [r3, #84]	; 0x54
1a0011c6:	687b      	ldr	r3, [r7, #4]
1a0011c8:	2200      	movs	r2, #0
1a0011ca:	651a      	str	r2, [r3, #80]	; 0x50
1a0011cc:	687b      	ldr	r3, [r7, #4]
1a0011ce:	4a0b      	ldr	r2, [pc, #44]	; (1a0011fc <Chip_UART_Init+0x84>)
1a0011d0:	4293      	cmp	r3, r2
1a0011d2:	d105      	bne.n	1a0011e0 <Chip_UART_Init+0x68>
1a0011d4:	687b      	ldr	r3, [r7, #4]
1a0011d6:	2200      	movs	r2, #0
1a0011d8:	611a      	str	r2, [r3, #16]
1a0011da:	687b      	ldr	r3, [r7, #4]
1a0011dc:	699b      	ldr	r3, [r3, #24]
1a0011de:	60fb      	str	r3, [r7, #12]
1a0011e0:	2103      	movs	r1, #3
1a0011e2:	6878      	ldr	r0, [r7, #4]
1a0011e4:	f7ff ff02 	bl	1a000fec <Chip_UART_ConfigData>
1a0011e8:	687b      	ldr	r3, [r7, #4]
1a0011ea:	2210      	movs	r2, #16
1a0011ec:	629a      	str	r2, [r3, #40]	; 0x28
1a0011ee:	bf00      	nop
1a0011f0:	3710      	adds	r7, #16
1a0011f2:	46bd      	mov	sp, r7
1a0011f4:	bd80      	pop	{r7, pc}
1a0011f6:	bf00      	nop
1a0011f8:	1a007bb8 	.word	0x1a007bb8
1a0011fc:	40082000 	.word	0x40082000

1a001200 <Chip_UART_Send>:
1a001200:	b580      	push	{r7, lr}
1a001202:	b086      	sub	sp, #24
1a001204:	af00      	add	r7, sp, #0
1a001206:	60f8      	str	r0, [r7, #12]
1a001208:	60b9      	str	r1, [r7, #8]
1a00120a:	607a      	str	r2, [r7, #4]
1a00120c:	2300      	movs	r3, #0
1a00120e:	617b      	str	r3, [r7, #20]
1a001210:	68bb      	ldr	r3, [r7, #8]
1a001212:	613b      	str	r3, [r7, #16]
1a001214:	e00b      	b.n	1a00122e <Chip_UART_Send+0x2e>
1a001216:	693b      	ldr	r3, [r7, #16]
1a001218:	781b      	ldrb	r3, [r3, #0]
1a00121a:	4619      	mov	r1, r3
1a00121c:	68f8      	ldr	r0, [r7, #12]
1a00121e:	f7ff fe9d 	bl	1a000f5c <Chip_UART_SendByte>
1a001222:	693b      	ldr	r3, [r7, #16]
1a001224:	3301      	adds	r3, #1
1a001226:	613b      	str	r3, [r7, #16]
1a001228:	697b      	ldr	r3, [r7, #20]
1a00122a:	3301      	adds	r3, #1
1a00122c:	617b      	str	r3, [r7, #20]
1a00122e:	697a      	ldr	r2, [r7, #20]
1a001230:	687b      	ldr	r3, [r7, #4]
1a001232:	429a      	cmp	r2, r3
1a001234:	da07      	bge.n	1a001246 <Chip_UART_Send+0x46>
1a001236:	68f8      	ldr	r0, [r7, #12]
1a001238:	f7ff ff1a 	bl	1a001070 <Chip_UART_ReadLineStatus>
1a00123c:	4603      	mov	r3, r0
1a00123e:	f003 0320 	and.w	r3, r3, #32
1a001242:	2b00      	cmp	r3, #0
1a001244:	d1e7      	bne.n	1a001216 <Chip_UART_Send+0x16>
1a001246:	697b      	ldr	r3, [r7, #20]
1a001248:	4618      	mov	r0, r3
1a00124a:	3718      	adds	r7, #24
1a00124c:	46bd      	mov	sp, r7
1a00124e:	bd80      	pop	{r7, pc}

1a001250 <Chip_UART_SendBlocking>:
1a001250:	b580      	push	{r7, lr}
1a001252:	b088      	sub	sp, #32
1a001254:	af00      	add	r7, sp, #0
1a001256:	60f8      	str	r0, [r7, #12]
1a001258:	60b9      	str	r1, [r7, #8]
1a00125a:	607a      	str	r2, [r7, #4]
1a00125c:	2300      	movs	r3, #0
1a00125e:	61fb      	str	r3, [r7, #28]
1a001260:	68bb      	ldr	r3, [r7, #8]
1a001262:	61bb      	str	r3, [r7, #24]
1a001264:	e011      	b.n	1a00128a <Chip_UART_SendBlocking+0x3a>
1a001266:	687a      	ldr	r2, [r7, #4]
1a001268:	69b9      	ldr	r1, [r7, #24]
1a00126a:	68f8      	ldr	r0, [r7, #12]
1a00126c:	f7ff ffc8 	bl	1a001200 <Chip_UART_Send>
1a001270:	6178      	str	r0, [r7, #20]
1a001272:	687a      	ldr	r2, [r7, #4]
1a001274:	697b      	ldr	r3, [r7, #20]
1a001276:	1ad3      	subs	r3, r2, r3
1a001278:	607b      	str	r3, [r7, #4]
1a00127a:	69fa      	ldr	r2, [r7, #28]
1a00127c:	697b      	ldr	r3, [r7, #20]
1a00127e:	4413      	add	r3, r2
1a001280:	61fb      	str	r3, [r7, #28]
1a001282:	697b      	ldr	r3, [r7, #20]
1a001284:	69ba      	ldr	r2, [r7, #24]
1a001286:	4413      	add	r3, r2
1a001288:	61bb      	str	r3, [r7, #24]
1a00128a:	687b      	ldr	r3, [r7, #4]
1a00128c:	2b00      	cmp	r3, #0
1a00128e:	dcea      	bgt.n	1a001266 <Chip_UART_SendBlocking+0x16>
1a001290:	69fb      	ldr	r3, [r7, #28]
1a001292:	4618      	mov	r0, r3
1a001294:	3720      	adds	r7, #32
1a001296:	46bd      	mov	sp, r7
1a001298:	bd80      	pop	{r7, pc}

1a00129a <Chip_UART_Read>:
1a00129a:	b580      	push	{r7, lr}
1a00129c:	b086      	sub	sp, #24
1a00129e:	af00      	add	r7, sp, #0
1a0012a0:	60f8      	str	r0, [r7, #12]
1a0012a2:	60b9      	str	r1, [r7, #8]
1a0012a4:	607a      	str	r2, [r7, #4]
1a0012a6:	2300      	movs	r3, #0
1a0012a8:	617b      	str	r3, [r7, #20]
1a0012aa:	68bb      	ldr	r3, [r7, #8]
1a0012ac:	613b      	str	r3, [r7, #16]
1a0012ae:	e00c      	b.n	1a0012ca <Chip_UART_Read+0x30>
1a0012b0:	68f8      	ldr	r0, [r7, #12]
1a0012b2:	f7ff fe62 	bl	1a000f7a <Chip_UART_ReadByte>
1a0012b6:	4603      	mov	r3, r0
1a0012b8:	461a      	mov	r2, r3
1a0012ba:	693b      	ldr	r3, [r7, #16]
1a0012bc:	701a      	strb	r2, [r3, #0]
1a0012be:	693b      	ldr	r3, [r7, #16]
1a0012c0:	3301      	adds	r3, #1
1a0012c2:	613b      	str	r3, [r7, #16]
1a0012c4:	697b      	ldr	r3, [r7, #20]
1a0012c6:	3301      	adds	r3, #1
1a0012c8:	617b      	str	r3, [r7, #20]
1a0012ca:	697a      	ldr	r2, [r7, #20]
1a0012cc:	687b      	ldr	r3, [r7, #4]
1a0012ce:	429a      	cmp	r2, r3
1a0012d0:	da07      	bge.n	1a0012e2 <Chip_UART_Read+0x48>
1a0012d2:	68f8      	ldr	r0, [r7, #12]
1a0012d4:	f7ff fecc 	bl	1a001070 <Chip_UART_ReadLineStatus>
1a0012d8:	4603      	mov	r3, r0
1a0012da:	f003 0301 	and.w	r3, r3, #1
1a0012de:	2b00      	cmp	r3, #0
1a0012e0:	d1e6      	bne.n	1a0012b0 <Chip_UART_Read+0x16>
1a0012e2:	697b      	ldr	r3, [r7, #20]
1a0012e4:	4618      	mov	r0, r3
1a0012e6:	3718      	adds	r7, #24
1a0012e8:	46bd      	mov	sp, r7
1a0012ea:	bd80      	pop	{r7, pc}

1a0012ec <Chip_UART_ReadBlocking>:
1a0012ec:	b580      	push	{r7, lr}
1a0012ee:	b088      	sub	sp, #32
1a0012f0:	af00      	add	r7, sp, #0
1a0012f2:	60f8      	str	r0, [r7, #12]
1a0012f4:	60b9      	str	r1, [r7, #8]
1a0012f6:	607a      	str	r2, [r7, #4]
1a0012f8:	2300      	movs	r3, #0
1a0012fa:	61fb      	str	r3, [r7, #28]
1a0012fc:	68bb      	ldr	r3, [r7, #8]
1a0012fe:	61bb      	str	r3, [r7, #24]
1a001300:	e011      	b.n	1a001326 <Chip_UART_ReadBlocking+0x3a>
1a001302:	687a      	ldr	r2, [r7, #4]
1a001304:	69b9      	ldr	r1, [r7, #24]
1a001306:	68f8      	ldr	r0, [r7, #12]
1a001308:	f7ff ffc7 	bl	1a00129a <Chip_UART_Read>
1a00130c:	6178      	str	r0, [r7, #20]
1a00130e:	687a      	ldr	r2, [r7, #4]
1a001310:	697b      	ldr	r3, [r7, #20]
1a001312:	1ad3      	subs	r3, r2, r3
1a001314:	607b      	str	r3, [r7, #4]
1a001316:	69fa      	ldr	r2, [r7, #28]
1a001318:	697b      	ldr	r3, [r7, #20]
1a00131a:	4413      	add	r3, r2
1a00131c:	61fb      	str	r3, [r7, #28]
1a00131e:	697b      	ldr	r3, [r7, #20]
1a001320:	69ba      	ldr	r2, [r7, #24]
1a001322:	4413      	add	r3, r2
1a001324:	61bb      	str	r3, [r7, #24]
1a001326:	687b      	ldr	r3, [r7, #4]
1a001328:	2b00      	cmp	r3, #0
1a00132a:	dcea      	bgt.n	1a001302 <Chip_UART_ReadBlocking+0x16>
1a00132c:	69fb      	ldr	r3, [r7, #28]
1a00132e:	4618      	mov	r0, r3
1a001330:	3720      	adds	r7, #32
1a001332:	46bd      	mov	sp, r7
1a001334:	bd80      	pop	{r7, pc}
1a001336:	Address 0x000000001a001336 is out of bounds.


1a001338 <Chip_UART_SetBaud>:
1a001338:	b580      	push	{r7, lr}
1a00133a:	b086      	sub	sp, #24
1a00133c:	af00      	add	r7, sp, #0
1a00133e:	6078      	str	r0, [r7, #4]
1a001340:	6039      	str	r1, [r7, #0]
1a001342:	6878      	ldr	r0, [r7, #4]
1a001344:	f7ff feb2 	bl	1a0010ac <Chip_UART_GetIndex>
1a001348:	4602      	mov	r2, r0
1a00134a:	4b16      	ldr	r3, [pc, #88]	; (1a0013a4 <Chip_UART_SetBaud+0x6c>)
1a00134c:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001350:	4618      	mov	r0, r3
1a001352:	f000 fe21 	bl	1a001f98 <Chip_Clock_GetRate>
1a001356:	6178      	str	r0, [r7, #20]
1a001358:	683b      	ldr	r3, [r7, #0]
1a00135a:	011b      	lsls	r3, r3, #4
1a00135c:	697a      	ldr	r2, [r7, #20]
1a00135e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001362:	613b      	str	r3, [r7, #16]
1a001364:	693b      	ldr	r3, [r7, #16]
1a001366:	0a1b      	lsrs	r3, r3, #8
1a001368:	60fb      	str	r3, [r7, #12]
1a00136a:	68fb      	ldr	r3, [r7, #12]
1a00136c:	021b      	lsls	r3, r3, #8
1a00136e:	693a      	ldr	r2, [r7, #16]
1a001370:	1ad3      	subs	r3, r2, r3
1a001372:	60bb      	str	r3, [r7, #8]
1a001374:	6878      	ldr	r0, [r7, #4]
1a001376:	f7ff fe47 	bl	1a001008 <Chip_UART_EnableDivisorAccess>
1a00137a:	68bb      	ldr	r3, [r7, #8]
1a00137c:	b2db      	uxtb	r3, r3
1a00137e:	68fa      	ldr	r2, [r7, #12]
1a001380:	b2d2      	uxtb	r2, r2
1a001382:	4619      	mov	r1, r3
1a001384:	6878      	ldr	r0, [r7, #4]
1a001386:	f7ff fe5f 	bl	1a001048 <Chip_UART_SetDivisorLatches>
1a00138a:	6878      	ldr	r0, [r7, #4]
1a00138c:	f7ff fe4c 	bl	1a001028 <Chip_UART_DisableDivisorAccess>
1a001390:	697a      	ldr	r2, [r7, #20]
1a001392:	693b      	ldr	r3, [r7, #16]
1a001394:	fbb2 f3f3 	udiv	r3, r2, r3
1a001398:	091b      	lsrs	r3, r3, #4
1a00139a:	4618      	mov	r0, r3
1a00139c:	3718      	adds	r7, #24
1a00139e:	46bd      	mov	sp, r7
1a0013a0:	bd80      	pop	{r7, pc}
1a0013a2:	bf00      	nop
1a0013a4:	1a007bc0 	.word	0x1a007bc0

1a0013a8 <Chip_UART_RXIntHandlerRB>:
1a0013a8:	b580      	push	{r7, lr}
1a0013aa:	b084      	sub	sp, #16
1a0013ac:	af00      	add	r7, sp, #0
1a0013ae:	6078      	str	r0, [r7, #4]
1a0013b0:	6039      	str	r1, [r7, #0]
1a0013b2:	e00a      	b.n	1a0013ca <Chip_UART_RXIntHandlerRB+0x22>
1a0013b4:	6878      	ldr	r0, [r7, #4]
1a0013b6:	f7ff fde0 	bl	1a000f7a <Chip_UART_ReadByte>
1a0013ba:	4603      	mov	r3, r0
1a0013bc:	73fb      	strb	r3, [r7, #15]
1a0013be:	f107 030f 	add.w	r3, r7, #15
1a0013c2:	4619      	mov	r1, r3
1a0013c4:	6838      	ldr	r0, [r7, #0]
1a0013c6:	f000 f8ec 	bl	1a0015a2 <RingBuffer_Insert>
1a0013ca:	6878      	ldr	r0, [r7, #4]
1a0013cc:	f7ff fe50 	bl	1a001070 <Chip_UART_ReadLineStatus>
1a0013d0:	4603      	mov	r3, r0
1a0013d2:	f003 0301 	and.w	r3, r3, #1
1a0013d6:	2b00      	cmp	r3, #0
1a0013d8:	d1ec      	bne.n	1a0013b4 <Chip_UART_RXIntHandlerRB+0xc>
1a0013da:	bf00      	nop
1a0013dc:	3710      	adds	r7, #16
1a0013de:	46bd      	mov	sp, r7
1a0013e0:	bd80      	pop	{r7, pc}

1a0013e2 <Chip_UART_TXIntHandlerRB>:
1a0013e2:	b580      	push	{r7, lr}
1a0013e4:	b084      	sub	sp, #16
1a0013e6:	af00      	add	r7, sp, #0
1a0013e8:	6078      	str	r0, [r7, #4]
1a0013ea:	6039      	str	r1, [r7, #0]
1a0013ec:	e004      	b.n	1a0013f8 <Chip_UART_TXIntHandlerRB+0x16>
1a0013ee:	7bfb      	ldrb	r3, [r7, #15]
1a0013f0:	4619      	mov	r1, r3
1a0013f2:	6878      	ldr	r0, [r7, #4]
1a0013f4:	f7ff fdb2 	bl	1a000f5c <Chip_UART_SendByte>
1a0013f8:	6878      	ldr	r0, [r7, #4]
1a0013fa:	f7ff fe39 	bl	1a001070 <Chip_UART_ReadLineStatus>
1a0013fe:	4603      	mov	r3, r0
1a001400:	f003 0320 	and.w	r3, r3, #32
1a001404:	2b00      	cmp	r3, #0
1a001406:	d008      	beq.n	1a00141a <Chip_UART_TXIntHandlerRB+0x38>
1a001408:	f107 030f 	add.w	r3, r7, #15
1a00140c:	4619      	mov	r1, r3
1a00140e:	6838      	ldr	r0, [r7, #0]
1a001410:	f000 f8f5 	bl	1a0015fe <RingBuffer_Pop>
1a001414:	4603      	mov	r3, r0
1a001416:	2b00      	cmp	r3, #0
1a001418:	d1e9      	bne.n	1a0013ee <Chip_UART_TXIntHandlerRB+0xc>
1a00141a:	6838      	ldr	r0, [r7, #0]
1a00141c:	f7ff fd7c 	bl	1a000f18 <RingBuffer_IsEmpty>
1a001420:	4603      	mov	r3, r0
1a001422:	2b00      	cmp	r3, #0
1a001424:	d003      	beq.n	1a00142e <Chip_UART_TXIntHandlerRB+0x4c>
1a001426:	2102      	movs	r1, #2
1a001428:	6878      	ldr	r0, [r7, #4]
1a00142a:	f7ff fdb3 	bl	1a000f94 <Chip_UART_IntDisable>
1a00142e:	bf00      	nop
1a001430:	3710      	adds	r7, #16
1a001432:	46bd      	mov	sp, r7
1a001434:	bd80      	pop	{r7, pc}

1a001436 <Chip_UART_IRQRBHandler>:
1a001436:	b580      	push	{r7, lr}
1a001438:	b084      	sub	sp, #16
1a00143a:	af00      	add	r7, sp, #0
1a00143c:	60f8      	str	r0, [r7, #12]
1a00143e:	60b9      	str	r1, [r7, #8]
1a001440:	607a      	str	r2, [r7, #4]
1a001442:	68fb      	ldr	r3, [r7, #12]
1a001444:	685b      	ldr	r3, [r3, #4]
1a001446:	f003 0302 	and.w	r3, r3, #2
1a00144a:	2b00      	cmp	r3, #0
1a00144c:	d00d      	beq.n	1a00146a <Chip_UART_IRQRBHandler+0x34>
1a00144e:	6879      	ldr	r1, [r7, #4]
1a001450:	68f8      	ldr	r0, [r7, #12]
1a001452:	f7ff ffc6 	bl	1a0013e2 <Chip_UART_TXIntHandlerRB>
1a001456:	6878      	ldr	r0, [r7, #4]
1a001458:	f7ff fd5e 	bl	1a000f18 <RingBuffer_IsEmpty>
1a00145c:	4603      	mov	r3, r0
1a00145e:	2b00      	cmp	r3, #0
1a001460:	d003      	beq.n	1a00146a <Chip_UART_IRQRBHandler+0x34>
1a001462:	2102      	movs	r1, #2
1a001464:	68f8      	ldr	r0, [r7, #12]
1a001466:	f7ff fd95 	bl	1a000f94 <Chip_UART_IntDisable>
1a00146a:	68b9      	ldr	r1, [r7, #8]
1a00146c:	68f8      	ldr	r0, [r7, #12]
1a00146e:	f7ff ff9b 	bl	1a0013a8 <Chip_UART_RXIntHandlerRB>
1a001472:	68f8      	ldr	r0, [r7, #12]
1a001474:	f7ff fe4a 	bl	1a00110c <Chip_UART_ABIntHandler>
1a001478:	bf00      	nop
1a00147a:	3710      	adds	r7, #16
1a00147c:	46bd      	mov	sp, r7
1a00147e:	bd80      	pop	{r7, pc}

1a001480 <Chip_TIMER_Enable>:
1a001480:	b480      	push	{r7}
1a001482:	b083      	sub	sp, #12
1a001484:	af00      	add	r7, sp, #0
1a001486:	6078      	str	r0, [r7, #4]
1a001488:	687b      	ldr	r3, [r7, #4]
1a00148a:	685b      	ldr	r3, [r3, #4]
1a00148c:	f043 0201 	orr.w	r2, r3, #1
1a001490:	687b      	ldr	r3, [r7, #4]
1a001492:	605a      	str	r2, [r3, #4]
1a001494:	bf00      	nop
1a001496:	370c      	adds	r7, #12
1a001498:	46bd      	mov	sp, r7
1a00149a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00149e:	4770      	bx	lr

1a0014a0 <Chip_TIMER_PrescaleSet>:
1a0014a0:	b480      	push	{r7}
1a0014a2:	b083      	sub	sp, #12
1a0014a4:	af00      	add	r7, sp, #0
1a0014a6:	6078      	str	r0, [r7, #4]
1a0014a8:	6039      	str	r1, [r7, #0]
1a0014aa:	687b      	ldr	r3, [r7, #4]
1a0014ac:	683a      	ldr	r2, [r7, #0]
1a0014ae:	60da      	str	r2, [r3, #12]
1a0014b0:	bf00      	nop
1a0014b2:	370c      	adds	r7, #12
1a0014b4:	46bd      	mov	sp, r7
1a0014b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014ba:	4770      	bx	lr

1a0014bc <StopWatch_Init>:
1a0014bc:	b580      	push	{r7, lr}
1a0014be:	b082      	sub	sp, #8
1a0014c0:	af00      	add	r7, sp, #0
1a0014c2:	2308      	movs	r3, #8
1a0014c4:	607b      	str	r3, [r7, #4]
1a0014c6:	4814      	ldr	r0, [pc, #80]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014c8:	f000 fde8 	bl	1a00209c <Chip_TIMER_Init>
1a0014cc:	687b      	ldr	r3, [r7, #4]
1a0014ce:	3b01      	subs	r3, #1
1a0014d0:	4619      	mov	r1, r3
1a0014d2:	4811      	ldr	r0, [pc, #68]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014d4:	f7ff ffe4 	bl	1a0014a0 <Chip_TIMER_PrescaleSet>
1a0014d8:	480f      	ldr	r0, [pc, #60]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014da:	f7ff ffd1 	bl	1a001480 <Chip_TIMER_Enable>
1a0014de:	2084      	movs	r0, #132	; 0x84
1a0014e0:	f000 fd5a 	bl	1a001f98 <Chip_Clock_GetRate>
1a0014e4:	4602      	mov	r2, r0
1a0014e6:	687b      	ldr	r3, [r7, #4]
1a0014e8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014ec:	4a0b      	ldr	r2, [pc, #44]	; (1a00151c <StopWatch_Init+0x60>)
1a0014ee:	6013      	str	r3, [r2, #0]
1a0014f0:	4b0a      	ldr	r3, [pc, #40]	; (1a00151c <StopWatch_Init+0x60>)
1a0014f2:	681b      	ldr	r3, [r3, #0]
1a0014f4:	4a0a      	ldr	r2, [pc, #40]	; (1a001520 <StopWatch_Init+0x64>)
1a0014f6:	fba2 2303 	umull	r2, r3, r2, r3
1a0014fa:	099b      	lsrs	r3, r3, #6
1a0014fc:	4a09      	ldr	r2, [pc, #36]	; (1a001524 <StopWatch_Init+0x68>)
1a0014fe:	6013      	str	r3, [r2, #0]
1a001500:	4b06      	ldr	r3, [pc, #24]	; (1a00151c <StopWatch_Init+0x60>)
1a001502:	681b      	ldr	r3, [r3, #0]
1a001504:	4a08      	ldr	r2, [pc, #32]	; (1a001528 <StopWatch_Init+0x6c>)
1a001506:	fba2 2303 	umull	r2, r3, r2, r3
1a00150a:	0c9b      	lsrs	r3, r3, #18
1a00150c:	4a07      	ldr	r2, [pc, #28]	; (1a00152c <StopWatch_Init+0x70>)
1a00150e:	6013      	str	r3, [r2, #0]
1a001510:	bf00      	nop
1a001512:	3708      	adds	r7, #8
1a001514:	46bd      	mov	sp, r7
1a001516:	bd80      	pop	{r7, pc}
1a001518:	40084000 	.word	0x40084000
1a00151c:	100009dc 	.word	0x100009dc
1a001520:	10624dd3 	.word	0x10624dd3
1a001524:	100009e0 	.word	0x100009e0
1a001528:	431bde83 	.word	0x431bde83
1a00152c:	100009e4 	.word	0x100009e4

1a001530 <RingBuffer_GetCount>:
1a001530:	b480      	push	{r7}
1a001532:	b083      	sub	sp, #12
1a001534:	af00      	add	r7, sp, #0
1a001536:	6078      	str	r0, [r7, #4]
1a001538:	687b      	ldr	r3, [r7, #4]
1a00153a:	330c      	adds	r3, #12
1a00153c:	681a      	ldr	r2, [r3, #0]
1a00153e:	687b      	ldr	r3, [r7, #4]
1a001540:	3310      	adds	r3, #16
1a001542:	681b      	ldr	r3, [r3, #0]
1a001544:	1ad3      	subs	r3, r2, r3
1a001546:	4618      	mov	r0, r3
1a001548:	370c      	adds	r7, #12
1a00154a:	46bd      	mov	sp, r7
1a00154c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001550:	4770      	bx	lr

1a001552 <RingBuffer_IsFull>:
1a001552:	b580      	push	{r7, lr}
1a001554:	b082      	sub	sp, #8
1a001556:	af00      	add	r7, sp, #0
1a001558:	6078      	str	r0, [r7, #4]
1a00155a:	6878      	ldr	r0, [r7, #4]
1a00155c:	f7ff ffe8 	bl	1a001530 <RingBuffer_GetCount>
1a001560:	4602      	mov	r2, r0
1a001562:	687b      	ldr	r3, [r7, #4]
1a001564:	685b      	ldr	r3, [r3, #4]
1a001566:	429a      	cmp	r2, r3
1a001568:	bfac      	ite	ge
1a00156a:	2301      	movge	r3, #1
1a00156c:	2300      	movlt	r3, #0
1a00156e:	b2db      	uxtb	r3, r3
1a001570:	4618      	mov	r0, r3
1a001572:	3708      	adds	r7, #8
1a001574:	46bd      	mov	sp, r7
1a001576:	bd80      	pop	{r7, pc}

1a001578 <RingBuffer_IsEmpty>:
1a001578:	b480      	push	{r7}
1a00157a:	b083      	sub	sp, #12
1a00157c:	af00      	add	r7, sp, #0
1a00157e:	6078      	str	r0, [r7, #4]
1a001580:	687b      	ldr	r3, [r7, #4]
1a001582:	330c      	adds	r3, #12
1a001584:	681a      	ldr	r2, [r3, #0]
1a001586:	687b      	ldr	r3, [r7, #4]
1a001588:	3310      	adds	r3, #16
1a00158a:	681b      	ldr	r3, [r3, #0]
1a00158c:	429a      	cmp	r2, r3
1a00158e:	bf0c      	ite	eq
1a001590:	2301      	moveq	r3, #1
1a001592:	2300      	movne	r3, #0
1a001594:	b2db      	uxtb	r3, r3
1a001596:	4618      	mov	r0, r3
1a001598:	370c      	adds	r7, #12
1a00159a:	46bd      	mov	sp, r7
1a00159c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015a0:	4770      	bx	lr

1a0015a2 <RingBuffer_Insert>:
1a0015a2:	b580      	push	{r7, lr}
1a0015a4:	b084      	sub	sp, #16
1a0015a6:	af00      	add	r7, sp, #0
1a0015a8:	6078      	str	r0, [r7, #4]
1a0015aa:	6039      	str	r1, [r7, #0]
1a0015ac:	687b      	ldr	r3, [r7, #4]
1a0015ae:	681b      	ldr	r3, [r3, #0]
1a0015b0:	60fb      	str	r3, [r7, #12]
1a0015b2:	6878      	ldr	r0, [r7, #4]
1a0015b4:	f7ff ffcd 	bl	1a001552 <RingBuffer_IsFull>
1a0015b8:	4603      	mov	r3, r0
1a0015ba:	2b00      	cmp	r3, #0
1a0015bc:	d001      	beq.n	1a0015c2 <RingBuffer_Insert+0x20>
1a0015be:	2300      	movs	r3, #0
1a0015c0:	e019      	b.n	1a0015f6 <RingBuffer_Insert+0x54>
1a0015c2:	687b      	ldr	r3, [r7, #4]
1a0015c4:	68db      	ldr	r3, [r3, #12]
1a0015c6:	687a      	ldr	r2, [r7, #4]
1a0015c8:	6852      	ldr	r2, [r2, #4]
1a0015ca:	3a01      	subs	r2, #1
1a0015cc:	4013      	ands	r3, r2
1a0015ce:	687a      	ldr	r2, [r7, #4]
1a0015d0:	6892      	ldr	r2, [r2, #8]
1a0015d2:	fb02 f303 	mul.w	r3, r2, r3
1a0015d6:	68fa      	ldr	r2, [r7, #12]
1a0015d8:	4413      	add	r3, r2
1a0015da:	60fb      	str	r3, [r7, #12]
1a0015dc:	687b      	ldr	r3, [r7, #4]
1a0015de:	689b      	ldr	r3, [r3, #8]
1a0015e0:	461a      	mov	r2, r3
1a0015e2:	6839      	ldr	r1, [r7, #0]
1a0015e4:	68f8      	ldr	r0, [r7, #12]
1a0015e6:	f000 fd75 	bl	1a0020d4 <memcpy>
1a0015ea:	687b      	ldr	r3, [r7, #4]
1a0015ec:	68db      	ldr	r3, [r3, #12]
1a0015ee:	1c5a      	adds	r2, r3, #1
1a0015f0:	687b      	ldr	r3, [r7, #4]
1a0015f2:	60da      	str	r2, [r3, #12]
1a0015f4:	2301      	movs	r3, #1
1a0015f6:	4618      	mov	r0, r3
1a0015f8:	3710      	adds	r7, #16
1a0015fa:	46bd      	mov	sp, r7
1a0015fc:	bd80      	pop	{r7, pc}

1a0015fe <RingBuffer_Pop>:
1a0015fe:	b580      	push	{r7, lr}
1a001600:	b084      	sub	sp, #16
1a001602:	af00      	add	r7, sp, #0
1a001604:	6078      	str	r0, [r7, #4]
1a001606:	6039      	str	r1, [r7, #0]
1a001608:	687b      	ldr	r3, [r7, #4]
1a00160a:	681b      	ldr	r3, [r3, #0]
1a00160c:	60fb      	str	r3, [r7, #12]
1a00160e:	6878      	ldr	r0, [r7, #4]
1a001610:	f7ff ffb2 	bl	1a001578 <RingBuffer_IsEmpty>
1a001614:	4603      	mov	r3, r0
1a001616:	2b00      	cmp	r3, #0
1a001618:	d001      	beq.n	1a00161e <RingBuffer_Pop+0x20>
1a00161a:	2300      	movs	r3, #0
1a00161c:	e019      	b.n	1a001652 <RingBuffer_Pop+0x54>
1a00161e:	687b      	ldr	r3, [r7, #4]
1a001620:	691b      	ldr	r3, [r3, #16]
1a001622:	687a      	ldr	r2, [r7, #4]
1a001624:	6852      	ldr	r2, [r2, #4]
1a001626:	3a01      	subs	r2, #1
1a001628:	4013      	ands	r3, r2
1a00162a:	687a      	ldr	r2, [r7, #4]
1a00162c:	6892      	ldr	r2, [r2, #8]
1a00162e:	fb02 f303 	mul.w	r3, r2, r3
1a001632:	68fa      	ldr	r2, [r7, #12]
1a001634:	4413      	add	r3, r2
1a001636:	60fb      	str	r3, [r7, #12]
1a001638:	687b      	ldr	r3, [r7, #4]
1a00163a:	689b      	ldr	r3, [r3, #8]
1a00163c:	461a      	mov	r2, r3
1a00163e:	68f9      	ldr	r1, [r7, #12]
1a001640:	6838      	ldr	r0, [r7, #0]
1a001642:	f000 fd47 	bl	1a0020d4 <memcpy>
1a001646:	687b      	ldr	r3, [r7, #4]
1a001648:	691b      	ldr	r3, [r3, #16]
1a00164a:	1c5a      	adds	r2, r3, #1
1a00164c:	687b      	ldr	r3, [r7, #4]
1a00164e:	611a      	str	r2, [r3, #16]
1a001650:	2301      	movs	r3, #1
1a001652:	4618      	mov	r0, r3
1a001654:	3710      	adds	r7, #16
1a001656:	46bd      	mov	sp, r7
1a001658:	bd80      	pop	{r7, pc}

1a00165a <ABS>:
1a00165a:	b480      	push	{r7}
1a00165c:	b083      	sub	sp, #12
1a00165e:	af00      	add	r7, sp, #0
1a001660:	6078      	str	r0, [r7, #4]
1a001662:	687b      	ldr	r3, [r7, #4]
1a001664:	2b00      	cmp	r3, #0
1a001666:	da02      	bge.n	1a00166e <ABS+0x14>
1a001668:	687b      	ldr	r3, [r7, #4]
1a00166a:	425b      	negs	r3, r3
1a00166c:	e000      	b.n	1a001670 <ABS+0x16>
1a00166e:	687b      	ldr	r3, [r7, #4]
1a001670:	4618      	mov	r0, r3
1a001672:	370c      	adds	r7, #12
1a001674:	46bd      	mov	sp, r7
1a001676:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00167a:	4770      	bx	lr

1a00167c <pll_calc_divs>:
1a00167c:	b580      	push	{r7, lr}
1a00167e:	b088      	sub	sp, #32
1a001680:	af00      	add	r7, sp, #0
1a001682:	6078      	str	r0, [r7, #4]
1a001684:	6039      	str	r1, [r7, #0]
1a001686:	687b      	ldr	r3, [r7, #4]
1a001688:	61fb      	str	r3, [r7, #28]
1a00168a:	683b      	ldr	r3, [r7, #0]
1a00168c:	681b      	ldr	r3, [r3, #0]
1a00168e:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001692:	2b00      	cmp	r3, #0
1a001694:	d005      	beq.n	1a0016a2 <pll_calc_divs+0x26>
1a001696:	683b      	ldr	r3, [r7, #0]
1a001698:	681b      	ldr	r3, [r3, #0]
1a00169a:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a00169e:	683b      	ldr	r3, [r7, #0]
1a0016a0:	601a      	str	r2, [r3, #0]
1a0016a2:	2301      	movs	r3, #1
1a0016a4:	61bb      	str	r3, [r7, #24]
1a0016a6:	e06f      	b.n	1a001788 <pll_calc_divs+0x10c>
1a0016a8:	2300      	movs	r3, #0
1a0016aa:	613b      	str	r3, [r7, #16]
1a0016ac:	e066      	b.n	1a00177c <pll_calc_divs+0x100>
1a0016ae:	2301      	movs	r3, #1
1a0016b0:	617b      	str	r3, [r7, #20]
1a0016b2:	e05a      	b.n	1a00176a <pll_calc_divs+0xee>
1a0016b4:	683b      	ldr	r3, [r7, #0]
1a0016b6:	681b      	ldr	r3, [r3, #0]
1a0016b8:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0016bc:	2b00      	cmp	r3, #0
1a0016be:	d00e      	beq.n	1a0016de <pll_calc_divs+0x62>
1a0016c0:	693b      	ldr	r3, [r7, #16]
1a0016c2:	3301      	adds	r3, #1
1a0016c4:	697a      	ldr	r2, [r7, #20]
1a0016c6:	fa02 f303 	lsl.w	r3, r2, r3
1a0016ca:	461a      	mov	r2, r3
1a0016cc:	683b      	ldr	r3, [r7, #0]
1a0016ce:	695b      	ldr	r3, [r3, #20]
1a0016d0:	fb03 f202 	mul.w	r2, r3, r2
1a0016d4:	69bb      	ldr	r3, [r7, #24]
1a0016d6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0016da:	60fb      	str	r3, [r7, #12]
1a0016dc:	e008      	b.n	1a0016f0 <pll_calc_divs+0x74>
1a0016de:	683b      	ldr	r3, [r7, #0]
1a0016e0:	695b      	ldr	r3, [r3, #20]
1a0016e2:	697a      	ldr	r2, [r7, #20]
1a0016e4:	fb02 f203 	mul.w	r2, r2, r3
1a0016e8:	69bb      	ldr	r3, [r7, #24]
1a0016ea:	fbb2 f3f3 	udiv	r3, r2, r3
1a0016ee:	60fb      	str	r3, [r7, #12]
1a0016f0:	68fb      	ldr	r3, [r7, #12]
1a0016f2:	4a29      	ldr	r2, [pc, #164]	; (1a001798 <pll_calc_divs+0x11c>)
1a0016f4:	4293      	cmp	r3, r2
1a0016f6:	d934      	bls.n	1a001762 <pll_calc_divs+0xe6>
1a0016f8:	68fb      	ldr	r3, [r7, #12]
1a0016fa:	4a28      	ldr	r2, [pc, #160]	; (1a00179c <pll_calc_divs+0x120>)
1a0016fc:	4293      	cmp	r3, r2
1a0016fe:	d839      	bhi.n	1a001774 <pll_calc_divs+0xf8>
1a001700:	683b      	ldr	r3, [r7, #0]
1a001702:	681b      	ldr	r3, [r3, #0]
1a001704:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001708:	2b00      	cmp	r3, #0
1a00170a:	d002      	beq.n	1a001712 <pll_calc_divs+0x96>
1a00170c:	68fb      	ldr	r3, [r7, #12]
1a00170e:	60bb      	str	r3, [r7, #8]
1a001710:	e005      	b.n	1a00171e <pll_calc_divs+0xa2>
1a001712:	693b      	ldr	r3, [r7, #16]
1a001714:	3301      	adds	r3, #1
1a001716:	68fa      	ldr	r2, [r7, #12]
1a001718:	fa22 f303 	lsr.w	r3, r2, r3
1a00171c:	60bb      	str	r3, [r7, #8]
1a00171e:	687a      	ldr	r2, [r7, #4]
1a001720:	68bb      	ldr	r3, [r7, #8]
1a001722:	1ad3      	subs	r3, r2, r3
1a001724:	4618      	mov	r0, r3
1a001726:	f7ff ff98 	bl	1a00165a <ABS>
1a00172a:	4602      	mov	r2, r0
1a00172c:	69fb      	ldr	r3, [r7, #28]
1a00172e:	4293      	cmp	r3, r2
1a001730:	d918      	bls.n	1a001764 <pll_calc_divs+0xe8>
1a001732:	683b      	ldr	r3, [r7, #0]
1a001734:	69ba      	ldr	r2, [r7, #24]
1a001736:	609a      	str	r2, [r3, #8]
1a001738:	693b      	ldr	r3, [r7, #16]
1a00173a:	1c5a      	adds	r2, r3, #1
1a00173c:	683b      	ldr	r3, [r7, #0]
1a00173e:	60da      	str	r2, [r3, #12]
1a001740:	683b      	ldr	r3, [r7, #0]
1a001742:	697a      	ldr	r2, [r7, #20]
1a001744:	611a      	str	r2, [r3, #16]
1a001746:	683b      	ldr	r3, [r7, #0]
1a001748:	68ba      	ldr	r2, [r7, #8]
1a00174a:	619a      	str	r2, [r3, #24]
1a00174c:	683b      	ldr	r3, [r7, #0]
1a00174e:	68fa      	ldr	r2, [r7, #12]
1a001750:	61da      	str	r2, [r3, #28]
1a001752:	687a      	ldr	r2, [r7, #4]
1a001754:	68bb      	ldr	r3, [r7, #8]
1a001756:	1ad3      	subs	r3, r2, r3
1a001758:	4618      	mov	r0, r3
1a00175a:	f7ff ff7e 	bl	1a00165a <ABS>
1a00175e:	61f8      	str	r0, [r7, #28]
1a001760:	e000      	b.n	1a001764 <pll_calc_divs+0xe8>
1a001762:	bf00      	nop
1a001764:	697b      	ldr	r3, [r7, #20]
1a001766:	3301      	adds	r3, #1
1a001768:	617b      	str	r3, [r7, #20]
1a00176a:	697b      	ldr	r3, [r7, #20]
1a00176c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001770:	dda0      	ble.n	1a0016b4 <pll_calc_divs+0x38>
1a001772:	e000      	b.n	1a001776 <pll_calc_divs+0xfa>
1a001774:	bf00      	nop
1a001776:	693b      	ldr	r3, [r7, #16]
1a001778:	3301      	adds	r3, #1
1a00177a:	613b      	str	r3, [r7, #16]
1a00177c:	693b      	ldr	r3, [r7, #16]
1a00177e:	2b03      	cmp	r3, #3
1a001780:	dd95      	ble.n	1a0016ae <pll_calc_divs+0x32>
1a001782:	69bb      	ldr	r3, [r7, #24]
1a001784:	3301      	adds	r3, #1
1a001786:	61bb      	str	r3, [r7, #24]
1a001788:	69bb      	ldr	r3, [r7, #24]
1a00178a:	2b04      	cmp	r3, #4
1a00178c:	dd8c      	ble.n	1a0016a8 <pll_calc_divs+0x2c>
1a00178e:	bf00      	nop
1a001790:	3720      	adds	r7, #32
1a001792:	46bd      	mov	sp, r7
1a001794:	bd80      	pop	{r7, pc}
1a001796:	bf00      	nop
1a001798:	094c5eff 	.word	0x094c5eff
1a00179c:	1312d000 	.word	0x1312d000

1a0017a0 <pll_get_frac>:
1a0017a0:	b5b0      	push	{r4, r5, r7, lr}
1a0017a2:	b09e      	sub	sp, #120	; 0x78
1a0017a4:	af00      	add	r7, sp, #0
1a0017a6:	6078      	str	r0, [r7, #4]
1a0017a8:	6039      	str	r1, [r7, #0]
1a0017aa:	f107 030c 	add.w	r3, r7, #12
1a0017ae:	2260      	movs	r2, #96	; 0x60
1a0017b0:	2100      	movs	r1, #0
1a0017b2:	4618      	mov	r0, r3
1a0017b4:	f7fe fda4 	bl	1a000300 <memset>
1a0017b8:	68fb      	ldr	r3, [r7, #12]
1a0017ba:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0017be:	60fb      	str	r3, [r7, #12]
1a0017c0:	683b      	ldr	r3, [r7, #0]
1a0017c2:	695b      	ldr	r3, [r3, #20]
1a0017c4:	623b      	str	r3, [r7, #32]
1a0017c6:	683b      	ldr	r3, [r7, #0]
1a0017c8:	791b      	ldrb	r3, [r3, #4]
1a0017ca:	743b      	strb	r3, [r7, #16]
1a0017cc:	f107 030c 	add.w	r3, r7, #12
1a0017d0:	4619      	mov	r1, r3
1a0017d2:	6878      	ldr	r0, [r7, #4]
1a0017d4:	f7ff ff52 	bl	1a00167c <pll_calc_divs>
1a0017d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0017da:	687a      	ldr	r2, [r7, #4]
1a0017dc:	429a      	cmp	r2, r3
1a0017de:	d10a      	bne.n	1a0017f6 <pll_get_frac+0x56>
1a0017e0:	683b      	ldr	r3, [r7, #0]
1a0017e2:	461d      	mov	r5, r3
1a0017e4:	f107 040c 	add.w	r4, r7, #12
1a0017e8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0017ea:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0017ec:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0017f0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0017f4:	e08e      	b.n	1a001914 <pll_get_frac+0x174>
1a0017f6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0017f8:	687a      	ldr	r2, [r7, #4]
1a0017fa:	1ad3      	subs	r3, r2, r3
1a0017fc:	4618      	mov	r0, r3
1a0017fe:	f7ff ff2c 	bl	1a00165a <ABS>
1a001802:	4603      	mov	r3, r0
1a001804:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001806:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001808:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a00180c:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00180e:	683b      	ldr	r3, [r7, #0]
1a001810:	695b      	ldr	r3, [r3, #20]
1a001812:	663b      	str	r3, [r7, #96]	; 0x60
1a001814:	683b      	ldr	r3, [r7, #0]
1a001816:	791b      	ldrb	r3, [r3, #4]
1a001818:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a00181c:	f107 030c 	add.w	r3, r7, #12
1a001820:	3340      	adds	r3, #64	; 0x40
1a001822:	4619      	mov	r1, r3
1a001824:	6878      	ldr	r0, [r7, #4]
1a001826:	f7ff ff29 	bl	1a00167c <pll_calc_divs>
1a00182a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00182c:	687a      	ldr	r2, [r7, #4]
1a00182e:	429a      	cmp	r2, r3
1a001830:	d10a      	bne.n	1a001848 <pll_get_frac+0xa8>
1a001832:	683b      	ldr	r3, [r7, #0]
1a001834:	461d      	mov	r5, r3
1a001836:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00183a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00183c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00183e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001842:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001846:	e065      	b.n	1a001914 <pll_get_frac+0x174>
1a001848:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00184a:	687a      	ldr	r2, [r7, #4]
1a00184c:	1ad3      	subs	r3, r2, r3
1a00184e:	4618      	mov	r0, r3
1a001850:	f7ff ff03 	bl	1a00165a <ABS>
1a001854:	4603      	mov	r3, r0
1a001856:	677b      	str	r3, [r7, #116]	; 0x74
1a001858:	687b      	ldr	r3, [r7, #4]
1a00185a:	4a30      	ldr	r2, [pc, #192]	; (1a00191c <pll_get_frac+0x17c>)
1a00185c:	4293      	cmp	r3, r2
1a00185e:	d81a      	bhi.n	1a001896 <pll_get_frac+0xf6>
1a001860:	2340      	movs	r3, #64	; 0x40
1a001862:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001864:	683b      	ldr	r3, [r7, #0]
1a001866:	695b      	ldr	r3, [r3, #20]
1a001868:	643b      	str	r3, [r7, #64]	; 0x40
1a00186a:	f107 030c 	add.w	r3, r7, #12
1a00186e:	3320      	adds	r3, #32
1a001870:	4619      	mov	r1, r3
1a001872:	6878      	ldr	r0, [r7, #4]
1a001874:	f7ff ff02 	bl	1a00167c <pll_calc_divs>
1a001878:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00187a:	687a      	ldr	r2, [r7, #4]
1a00187c:	429a      	cmp	r2, r3
1a00187e:	d10a      	bne.n	1a001896 <pll_get_frac+0xf6>
1a001880:	683b      	ldr	r3, [r7, #0]
1a001882:	461d      	mov	r5, r3
1a001884:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001888:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00188a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00188c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001890:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001894:	e03e      	b.n	1a001914 <pll_get_frac+0x174>
1a001896:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001898:	687a      	ldr	r2, [r7, #4]
1a00189a:	1ad3      	subs	r3, r2, r3
1a00189c:	4618      	mov	r0, r3
1a00189e:	f7ff fedc 	bl	1a00165a <ABS>
1a0018a2:	4603      	mov	r3, r0
1a0018a4:	673b      	str	r3, [r7, #112]	; 0x70
1a0018a6:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0018a8:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0018aa:	429a      	cmp	r2, r3
1a0018ac:	dc19      	bgt.n	1a0018e2 <pll_get_frac+0x142>
1a0018ae:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0018b0:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0018b2:	429a      	cmp	r2, r3
1a0018b4:	dc0a      	bgt.n	1a0018cc <pll_get_frac+0x12c>
1a0018b6:	683b      	ldr	r3, [r7, #0]
1a0018b8:	461d      	mov	r5, r3
1a0018ba:	f107 040c 	add.w	r4, r7, #12
1a0018be:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0018c0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0018c2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0018c6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0018ca:	e023      	b.n	1a001914 <pll_get_frac+0x174>
1a0018cc:	683b      	ldr	r3, [r7, #0]
1a0018ce:	461d      	mov	r5, r3
1a0018d0:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0018d4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0018d6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0018d8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0018dc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0018e0:	e018      	b.n	1a001914 <pll_get_frac+0x174>
1a0018e2:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0018e4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0018e6:	429a      	cmp	r2, r3
1a0018e8:	dc0a      	bgt.n	1a001900 <pll_get_frac+0x160>
1a0018ea:	683b      	ldr	r3, [r7, #0]
1a0018ec:	461d      	mov	r5, r3
1a0018ee:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0018f2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0018f4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0018f6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0018fa:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0018fe:	e009      	b.n	1a001914 <pll_get_frac+0x174>
1a001900:	683b      	ldr	r3, [r7, #0]
1a001902:	461d      	mov	r5, r3
1a001904:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001908:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00190a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00190c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001910:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001914:	3778      	adds	r7, #120	; 0x78
1a001916:	46bd      	mov	sp, r7
1a001918:	bdb0      	pop	{r4, r5, r7, pc}
1a00191a:	bf00      	nop
1a00191c:	068e7780 	.word	0x068e7780

1a001920 <Chip_Clock_GetDivRate>:
1a001920:	b580      	push	{r7, lr}
1a001922:	b084      	sub	sp, #16
1a001924:	af00      	add	r7, sp, #0
1a001926:	4603      	mov	r3, r0
1a001928:	460a      	mov	r2, r1
1a00192a:	71fb      	strb	r3, [r7, #7]
1a00192c:	4613      	mov	r3, r2
1a00192e:	71bb      	strb	r3, [r7, #6]
1a001930:	79bb      	ldrb	r3, [r7, #6]
1a001932:	4618      	mov	r0, r3
1a001934:	f000 f960 	bl	1a001bf8 <Chip_Clock_GetDividerSource>
1a001938:	4603      	mov	r3, r0
1a00193a:	73fb      	strb	r3, [r7, #15]
1a00193c:	79bb      	ldrb	r3, [r7, #6]
1a00193e:	4618      	mov	r0, r3
1a001940:	f000 f97a 	bl	1a001c38 <Chip_Clock_GetDividerDivisor>
1a001944:	60b8      	str	r0, [r7, #8]
1a001946:	7bfb      	ldrb	r3, [r7, #15]
1a001948:	4618      	mov	r0, r3
1a00194a:	f000 f991 	bl	1a001c70 <Chip_Clock_GetClockInputHz>
1a00194e:	4602      	mov	r2, r0
1a001950:	68bb      	ldr	r3, [r7, #8]
1a001952:	3301      	adds	r3, #1
1a001954:	fbb2 f3f3 	udiv	r3, r2, r3
1a001958:	4618      	mov	r0, r3
1a00195a:	3710      	adds	r7, #16
1a00195c:	46bd      	mov	sp, r7
1a00195e:	bd80      	pop	{r7, pc}

1a001960 <Chip_Clock_FindBaseClock>:
1a001960:	b480      	push	{r7}
1a001962:	b085      	sub	sp, #20
1a001964:	af00      	add	r7, sp, #0
1a001966:	4603      	mov	r3, r0
1a001968:	80fb      	strh	r3, [r7, #6]
1a00196a:	231c      	movs	r3, #28
1a00196c:	73fb      	strb	r3, [r7, #15]
1a00196e:	2300      	movs	r3, #0
1a001970:	60bb      	str	r3, [r7, #8]
1a001972:	e024      	b.n	1a0019be <Chip_Clock_FindBaseClock+0x5e>
1a001974:	491d      	ldr	r1, [pc, #116]	; (1a0019ec <Chip_Clock_FindBaseClock+0x8c>)
1a001976:	68ba      	ldr	r2, [r7, #8]
1a001978:	4613      	mov	r3, r2
1a00197a:	005b      	lsls	r3, r3, #1
1a00197c:	4413      	add	r3, r2
1a00197e:	005b      	lsls	r3, r3, #1
1a001980:	440b      	add	r3, r1
1a001982:	881b      	ldrh	r3, [r3, #0]
1a001984:	88fa      	ldrh	r2, [r7, #6]
1a001986:	429a      	cmp	r2, r3
1a001988:	d316      	bcc.n	1a0019b8 <Chip_Clock_FindBaseClock+0x58>
1a00198a:	4918      	ldr	r1, [pc, #96]	; (1a0019ec <Chip_Clock_FindBaseClock+0x8c>)
1a00198c:	68ba      	ldr	r2, [r7, #8]
1a00198e:	4613      	mov	r3, r2
1a001990:	005b      	lsls	r3, r3, #1
1a001992:	4413      	add	r3, r2
1a001994:	005b      	lsls	r3, r3, #1
1a001996:	440b      	add	r3, r1
1a001998:	3302      	adds	r3, #2
1a00199a:	881b      	ldrh	r3, [r3, #0]
1a00199c:	88fa      	ldrh	r2, [r7, #6]
1a00199e:	429a      	cmp	r2, r3
1a0019a0:	d80a      	bhi.n	1a0019b8 <Chip_Clock_FindBaseClock+0x58>
1a0019a2:	4912      	ldr	r1, [pc, #72]	; (1a0019ec <Chip_Clock_FindBaseClock+0x8c>)
1a0019a4:	68ba      	ldr	r2, [r7, #8]
1a0019a6:	4613      	mov	r3, r2
1a0019a8:	005b      	lsls	r3, r3, #1
1a0019aa:	4413      	add	r3, r2
1a0019ac:	005b      	lsls	r3, r3, #1
1a0019ae:	440b      	add	r3, r1
1a0019b0:	3304      	adds	r3, #4
1a0019b2:	781b      	ldrb	r3, [r3, #0]
1a0019b4:	73fb      	strb	r3, [r7, #15]
1a0019b6:	e002      	b.n	1a0019be <Chip_Clock_FindBaseClock+0x5e>
1a0019b8:	68bb      	ldr	r3, [r7, #8]
1a0019ba:	3301      	adds	r3, #1
1a0019bc:	60bb      	str	r3, [r7, #8]
1a0019be:	7bfb      	ldrb	r3, [r7, #15]
1a0019c0:	2b1c      	cmp	r3, #28
1a0019c2:	d10b      	bne.n	1a0019dc <Chip_Clock_FindBaseClock+0x7c>
1a0019c4:	4909      	ldr	r1, [pc, #36]	; (1a0019ec <Chip_Clock_FindBaseClock+0x8c>)
1a0019c6:	68ba      	ldr	r2, [r7, #8]
1a0019c8:	4613      	mov	r3, r2
1a0019ca:	005b      	lsls	r3, r3, #1
1a0019cc:	4413      	add	r3, r2
1a0019ce:	005b      	lsls	r3, r3, #1
1a0019d0:	440b      	add	r3, r1
1a0019d2:	3304      	adds	r3, #4
1a0019d4:	781b      	ldrb	r3, [r3, #0]
1a0019d6:	7bfa      	ldrb	r2, [r7, #15]
1a0019d8:	429a      	cmp	r2, r3
1a0019da:	d1cb      	bne.n	1a001974 <Chip_Clock_FindBaseClock+0x14>
1a0019dc:	7bfb      	ldrb	r3, [r7, #15]
1a0019de:	4618      	mov	r0, r3
1a0019e0:	3714      	adds	r7, #20
1a0019e2:	46bd      	mov	sp, r7
1a0019e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019e8:	4770      	bx	lr
1a0019ea:	bf00      	nop
1a0019ec:	1a007bc8 	.word	0x1a007bc8

1a0019f0 <Chip_Clock_EnableCrystal>:
1a0019f0:	b480      	push	{r7}
1a0019f2:	b083      	sub	sp, #12
1a0019f4:	af00      	add	r7, sp, #0
1a0019f6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0019fa:	603b      	str	r3, [r7, #0]
1a0019fc:	4b15      	ldr	r3, [pc, #84]	; (1a001a54 <Chip_Clock_EnableCrystal+0x64>)
1a0019fe:	699b      	ldr	r3, [r3, #24]
1a001a00:	607b      	str	r3, [r7, #4]
1a001a02:	687b      	ldr	r3, [r7, #4]
1a001a04:	f023 0302 	bic.w	r3, r3, #2
1a001a08:	607b      	str	r3, [r7, #4]
1a001a0a:	4b12      	ldr	r3, [pc, #72]	; (1a001a54 <Chip_Clock_EnableCrystal+0x64>)
1a001a0c:	699b      	ldr	r3, [r3, #24]
1a001a0e:	687a      	ldr	r2, [r7, #4]
1a001a10:	429a      	cmp	r2, r3
1a001a12:	d002      	beq.n	1a001a1a <Chip_Clock_EnableCrystal+0x2a>
1a001a14:	4a0f      	ldr	r2, [pc, #60]	; (1a001a54 <Chip_Clock_EnableCrystal+0x64>)
1a001a16:	687b      	ldr	r3, [r7, #4]
1a001a18:	6193      	str	r3, [r2, #24]
1a001a1a:	687b      	ldr	r3, [r7, #4]
1a001a1c:	f023 0301 	bic.w	r3, r3, #1
1a001a20:	607b      	str	r3, [r7, #4]
1a001a22:	4b0d      	ldr	r3, [pc, #52]	; (1a001a58 <Chip_Clock_EnableCrystal+0x68>)
1a001a24:	681b      	ldr	r3, [r3, #0]
1a001a26:	4a0d      	ldr	r2, [pc, #52]	; (1a001a5c <Chip_Clock_EnableCrystal+0x6c>)
1a001a28:	4293      	cmp	r3, r2
1a001a2a:	d903      	bls.n	1a001a34 <Chip_Clock_EnableCrystal+0x44>
1a001a2c:	687b      	ldr	r3, [r7, #4]
1a001a2e:	f043 0304 	orr.w	r3, r3, #4
1a001a32:	607b      	str	r3, [r7, #4]
1a001a34:	4a07      	ldr	r2, [pc, #28]	; (1a001a54 <Chip_Clock_EnableCrystal+0x64>)
1a001a36:	687b      	ldr	r3, [r7, #4]
1a001a38:	6193      	str	r3, [r2, #24]
1a001a3a:	bf00      	nop
1a001a3c:	683b      	ldr	r3, [r7, #0]
1a001a3e:	1e5a      	subs	r2, r3, #1
1a001a40:	603a      	str	r2, [r7, #0]
1a001a42:	2b00      	cmp	r3, #0
1a001a44:	d1fa      	bne.n	1a001a3c <Chip_Clock_EnableCrystal+0x4c>
1a001a46:	bf00      	nop
1a001a48:	370c      	adds	r7, #12
1a001a4a:	46bd      	mov	sp, r7
1a001a4c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a50:	4770      	bx	lr
1a001a52:	bf00      	nop
1a001a54:	40050000 	.word	0x40050000
1a001a58:	1a007b30 	.word	0x1a007b30
1a001a5c:	01312cff 	.word	0x01312cff

1a001a60 <Chip_Clock_CalcMainPLLValue>:
1a001a60:	b580      	push	{r7, lr}
1a001a62:	b082      	sub	sp, #8
1a001a64:	af00      	add	r7, sp, #0
1a001a66:	6078      	str	r0, [r7, #4]
1a001a68:	6039      	str	r1, [r7, #0]
1a001a6a:	683b      	ldr	r3, [r7, #0]
1a001a6c:	791b      	ldrb	r3, [r3, #4]
1a001a6e:	4618      	mov	r0, r3
1a001a70:	f000 f8fe 	bl	1a001c70 <Chip_Clock_GetClockInputHz>
1a001a74:	4602      	mov	r2, r0
1a001a76:	683b      	ldr	r3, [r7, #0]
1a001a78:	615a      	str	r2, [r3, #20]
1a001a7a:	687b      	ldr	r3, [r7, #4]
1a001a7c:	4a2b      	ldr	r2, [pc, #172]	; (1a001b2c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001a7e:	4293      	cmp	r3, r2
1a001a80:	d807      	bhi.n	1a001a92 <Chip_Clock_CalcMainPLLValue+0x32>
1a001a82:	687b      	ldr	r3, [r7, #4]
1a001a84:	4a2a      	ldr	r2, [pc, #168]	; (1a001b30 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001a86:	4293      	cmp	r3, r2
1a001a88:	d903      	bls.n	1a001a92 <Chip_Clock_CalcMainPLLValue+0x32>
1a001a8a:	683b      	ldr	r3, [r7, #0]
1a001a8c:	695b      	ldr	r3, [r3, #20]
1a001a8e:	2b00      	cmp	r3, #0
1a001a90:	d102      	bne.n	1a001a98 <Chip_Clock_CalcMainPLLValue+0x38>
1a001a92:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a96:	e044      	b.n	1a001b22 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a98:	683b      	ldr	r3, [r7, #0]
1a001a9a:	2280      	movs	r2, #128	; 0x80
1a001a9c:	601a      	str	r2, [r3, #0]
1a001a9e:	683b      	ldr	r3, [r7, #0]
1a001aa0:	2200      	movs	r2, #0
1a001aa2:	609a      	str	r2, [r3, #8]
1a001aa4:	683b      	ldr	r3, [r7, #0]
1a001aa6:	2200      	movs	r2, #0
1a001aa8:	60da      	str	r2, [r3, #12]
1a001aaa:	683b      	ldr	r3, [r7, #0]
1a001aac:	695b      	ldr	r3, [r3, #20]
1a001aae:	687a      	ldr	r2, [r7, #4]
1a001ab0:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ab4:	461a      	mov	r2, r3
1a001ab6:	683b      	ldr	r3, [r7, #0]
1a001ab8:	611a      	str	r2, [r3, #16]
1a001aba:	687b      	ldr	r3, [r7, #4]
1a001abc:	4a1d      	ldr	r2, [pc, #116]	; (1a001b34 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001abe:	4293      	cmp	r3, r2
1a001ac0:	d909      	bls.n	1a001ad6 <Chip_Clock_CalcMainPLLValue+0x76>
1a001ac2:	683b      	ldr	r3, [r7, #0]
1a001ac4:	691b      	ldr	r3, [r3, #16]
1a001ac6:	461a      	mov	r2, r3
1a001ac8:	683b      	ldr	r3, [r7, #0]
1a001aca:	695b      	ldr	r3, [r3, #20]
1a001acc:	fb03 f302 	mul.w	r3, r3, r2
1a001ad0:	687a      	ldr	r2, [r7, #4]
1a001ad2:	429a      	cmp	r2, r3
1a001ad4:	d00f      	beq.n	1a001af6 <Chip_Clock_CalcMainPLLValue+0x96>
1a001ad6:	6839      	ldr	r1, [r7, #0]
1a001ad8:	6878      	ldr	r0, [r7, #4]
1a001ada:	f7ff fe61 	bl	1a0017a0 <pll_get_frac>
1a001ade:	683b      	ldr	r3, [r7, #0]
1a001ae0:	689b      	ldr	r3, [r3, #8]
1a001ae2:	2b00      	cmp	r3, #0
1a001ae4:	d102      	bne.n	1a001aec <Chip_Clock_CalcMainPLLValue+0x8c>
1a001ae6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001aea:	e01a      	b.n	1a001b22 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001aec:	683b      	ldr	r3, [r7, #0]
1a001aee:	689b      	ldr	r3, [r3, #8]
1a001af0:	1e5a      	subs	r2, r3, #1
1a001af2:	683b      	ldr	r3, [r7, #0]
1a001af4:	609a      	str	r2, [r3, #8]
1a001af6:	683b      	ldr	r3, [r7, #0]
1a001af8:	691b      	ldr	r3, [r3, #16]
1a001afa:	2b00      	cmp	r3, #0
1a001afc:	d102      	bne.n	1a001b04 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001afe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001b02:	e00e      	b.n	1a001b22 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001b04:	683b      	ldr	r3, [r7, #0]
1a001b06:	68db      	ldr	r3, [r3, #12]
1a001b08:	2b00      	cmp	r3, #0
1a001b0a:	d004      	beq.n	1a001b16 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001b0c:	683b      	ldr	r3, [r7, #0]
1a001b0e:	68db      	ldr	r3, [r3, #12]
1a001b10:	1e5a      	subs	r2, r3, #1
1a001b12:	683b      	ldr	r3, [r7, #0]
1a001b14:	60da      	str	r2, [r3, #12]
1a001b16:	683b      	ldr	r3, [r7, #0]
1a001b18:	691b      	ldr	r3, [r3, #16]
1a001b1a:	1e5a      	subs	r2, r3, #1
1a001b1c:	683b      	ldr	r3, [r7, #0]
1a001b1e:	611a      	str	r2, [r3, #16]
1a001b20:	2300      	movs	r3, #0
1a001b22:	4618      	mov	r0, r3
1a001b24:	3708      	adds	r7, #8
1a001b26:	46bd      	mov	sp, r7
1a001b28:	bd80      	pop	{r7, pc}
1a001b2a:	bf00      	nop
1a001b2c:	0c28cb00 	.word	0x0c28cb00
1a001b30:	0094c5ef 	.word	0x0094c5ef
1a001b34:	094c5eff 	.word	0x094c5eff

1a001b38 <Chip_Clock_GetMainPLLHz>:
1a001b38:	b580      	push	{r7, lr}
1a001b3a:	b08c      	sub	sp, #48	; 0x30
1a001b3c:	af00      	add	r7, sp, #0
1a001b3e:	4b2c      	ldr	r3, [pc, #176]	; (1a001bf0 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001b40:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001b42:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001b44:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b46:	0e1b      	lsrs	r3, r3, #24
1a001b48:	b2db      	uxtb	r3, r3
1a001b4a:	f003 030f 	and.w	r3, r3, #15
1a001b4e:	b2db      	uxtb	r3, r3
1a001b50:	4618      	mov	r0, r3
1a001b52:	f000 f88d 	bl	1a001c70 <Chip_Clock_GetClockInputHz>
1a001b56:	62b8      	str	r0, [r7, #40]	; 0x28
1a001b58:	4b26      	ldr	r3, [pc, #152]	; (1a001bf4 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001b5a:	681b      	ldr	r3, [r3, #0]
1a001b5c:	607b      	str	r3, [r7, #4]
1a001b5e:	4b24      	ldr	r3, [pc, #144]	; (1a001bf0 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001b60:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001b62:	f003 0301 	and.w	r3, r3, #1
1a001b66:	2b00      	cmp	r3, #0
1a001b68:	d101      	bne.n	1a001b6e <Chip_Clock_GetMainPLLHz+0x36>
1a001b6a:	2300      	movs	r3, #0
1a001b6c:	e03b      	b.n	1a001be6 <Chip_Clock_GetMainPLLHz+0xae>
1a001b6e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b70:	0c1b      	lsrs	r3, r3, #16
1a001b72:	b2db      	uxtb	r3, r3
1a001b74:	627b      	str	r3, [r7, #36]	; 0x24
1a001b76:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b78:	0b1b      	lsrs	r3, r3, #12
1a001b7a:	f003 0303 	and.w	r3, r3, #3
1a001b7e:	623b      	str	r3, [r7, #32]
1a001b80:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b82:	0a1b      	lsrs	r3, r3, #8
1a001b84:	f003 0303 	and.w	r3, r3, #3
1a001b88:	61fb      	str	r3, [r7, #28]
1a001b8a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b8c:	09db      	lsrs	r3, r3, #7
1a001b8e:	f003 0301 	and.w	r3, r3, #1
1a001b92:	61bb      	str	r3, [r7, #24]
1a001b94:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b96:	099b      	lsrs	r3, r3, #6
1a001b98:	f003 0301 	and.w	r3, r3, #1
1a001b9c:	617b      	str	r3, [r7, #20]
1a001b9e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001ba0:	3301      	adds	r3, #1
1a001ba2:	613b      	str	r3, [r7, #16]
1a001ba4:	6a3b      	ldr	r3, [r7, #32]
1a001ba6:	3301      	adds	r3, #1
1a001ba8:	60fb      	str	r3, [r7, #12]
1a001baa:	1d3a      	adds	r2, r7, #4
1a001bac:	69fb      	ldr	r3, [r7, #28]
1a001bae:	4413      	add	r3, r2
1a001bb0:	781b      	ldrb	r3, [r3, #0]
1a001bb2:	60bb      	str	r3, [r7, #8]
1a001bb4:	69bb      	ldr	r3, [r7, #24]
1a001bb6:	2b00      	cmp	r3, #0
1a001bb8:	d102      	bne.n	1a001bc0 <Chip_Clock_GetMainPLLHz+0x88>
1a001bba:	697b      	ldr	r3, [r7, #20]
1a001bbc:	2b00      	cmp	r3, #0
1a001bbe:	d007      	beq.n	1a001bd0 <Chip_Clock_GetMainPLLHz+0x98>
1a001bc0:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001bc2:	68fb      	ldr	r3, [r7, #12]
1a001bc4:	fbb2 f3f3 	udiv	r3, r2, r3
1a001bc8:	693a      	ldr	r2, [r7, #16]
1a001bca:	fb02 f303 	mul.w	r3, r2, r3
1a001bce:	e00a      	b.n	1a001be6 <Chip_Clock_GetMainPLLHz+0xae>
1a001bd0:	68bb      	ldr	r3, [r7, #8]
1a001bd2:	005b      	lsls	r3, r3, #1
1a001bd4:	693a      	ldr	r2, [r7, #16]
1a001bd6:	fbb2 f3f3 	udiv	r3, r2, r3
1a001bda:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001bdc:	68fa      	ldr	r2, [r7, #12]
1a001bde:	fbb1 f2f2 	udiv	r2, r1, r2
1a001be2:	fb02 f303 	mul.w	r3, r2, r3
1a001be6:	4618      	mov	r0, r3
1a001be8:	3730      	adds	r7, #48	; 0x30
1a001bea:	46bd      	mov	sp, r7
1a001bec:	bd80      	pop	{r7, pc}
1a001bee:	bf00      	nop
1a001bf0:	40050000 	.word	0x40050000
1a001bf4:	1a007c34 	.word	0x1a007c34

1a001bf8 <Chip_Clock_GetDividerSource>:
1a001bf8:	b480      	push	{r7}
1a001bfa:	b085      	sub	sp, #20
1a001bfc:	af00      	add	r7, sp, #0
1a001bfe:	4603      	mov	r3, r0
1a001c00:	71fb      	strb	r3, [r7, #7]
1a001c02:	4a0c      	ldr	r2, [pc, #48]	; (1a001c34 <Chip_Clock_GetDividerSource+0x3c>)
1a001c04:	79fb      	ldrb	r3, [r7, #7]
1a001c06:	3312      	adds	r3, #18
1a001c08:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001c0c:	60fb      	str	r3, [r7, #12]
1a001c0e:	68fb      	ldr	r3, [r7, #12]
1a001c10:	f003 0301 	and.w	r3, r3, #1
1a001c14:	2b00      	cmp	r3, #0
1a001c16:	d001      	beq.n	1a001c1c <Chip_Clock_GetDividerSource+0x24>
1a001c18:	2311      	movs	r3, #17
1a001c1a:	e005      	b.n	1a001c28 <Chip_Clock_GetDividerSource+0x30>
1a001c1c:	68fb      	ldr	r3, [r7, #12]
1a001c1e:	0e1b      	lsrs	r3, r3, #24
1a001c20:	b2db      	uxtb	r3, r3
1a001c22:	f003 031f 	and.w	r3, r3, #31
1a001c26:	b2db      	uxtb	r3, r3
1a001c28:	4618      	mov	r0, r3
1a001c2a:	3714      	adds	r7, #20
1a001c2c:	46bd      	mov	sp, r7
1a001c2e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c32:	4770      	bx	lr
1a001c34:	40050000 	.word	0x40050000

1a001c38 <Chip_Clock_GetDividerDivisor>:
1a001c38:	b480      	push	{r7}
1a001c3a:	b083      	sub	sp, #12
1a001c3c:	af00      	add	r7, sp, #0
1a001c3e:	4603      	mov	r3, r0
1a001c40:	71fb      	strb	r3, [r7, #7]
1a001c42:	4a09      	ldr	r2, [pc, #36]	; (1a001c68 <Chip_Clock_GetDividerDivisor+0x30>)
1a001c44:	79fb      	ldrb	r3, [r7, #7]
1a001c46:	3312      	adds	r3, #18
1a001c48:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001c4c:	089b      	lsrs	r3, r3, #2
1a001c4e:	b2da      	uxtb	r2, r3
1a001c50:	79fb      	ldrb	r3, [r7, #7]
1a001c52:	4906      	ldr	r1, [pc, #24]	; (1a001c6c <Chip_Clock_GetDividerDivisor+0x34>)
1a001c54:	5ccb      	ldrb	r3, [r1, r3]
1a001c56:	4013      	ands	r3, r2
1a001c58:	b2db      	uxtb	r3, r3
1a001c5a:	4618      	mov	r0, r3
1a001c5c:	370c      	adds	r7, #12
1a001c5e:	46bd      	mov	sp, r7
1a001c60:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c64:	4770      	bx	lr
1a001c66:	bf00      	nop
1a001c68:	40050000 	.word	0x40050000
1a001c6c:	1a007c38 	.word	0x1a007c38

1a001c70 <Chip_Clock_GetClockInputHz>:
1a001c70:	b580      	push	{r7, lr}
1a001c72:	b084      	sub	sp, #16
1a001c74:	af00      	add	r7, sp, #0
1a001c76:	4603      	mov	r3, r0
1a001c78:	71fb      	strb	r3, [r7, #7]
1a001c7a:	2300      	movs	r3, #0
1a001c7c:	60fb      	str	r3, [r7, #12]
1a001c7e:	79fb      	ldrb	r3, [r7, #7]
1a001c80:	2b11      	cmp	r3, #17
1a001c82:	d87f      	bhi.n	1a001d84 <Chip_Clock_GetClockInputHz+0x114>
1a001c84:	a201      	add	r2, pc, #4	; (adr r2, 1a001c8c <Chip_Clock_GetClockInputHz+0x1c>)
1a001c86:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001c8a:	bf00      	nop
1a001c8c:	1a001cd5 	.word	0x1a001cd5
1a001c90:	1a001cdd 	.word	0x1a001cdd
1a001c94:	1a001ce3 	.word	0x1a001ce3
1a001c98:	1a001cf7 	.word	0x1a001cf7
1a001c9c:	1a001d11 	.word	0x1a001d11
1a001ca0:	1a001d85 	.word	0x1a001d85
1a001ca4:	1a001d19 	.word	0x1a001d19
1a001ca8:	1a001d21 	.word	0x1a001d21
1a001cac:	1a001d29 	.word	0x1a001d29
1a001cb0:	1a001d31 	.word	0x1a001d31
1a001cb4:	1a001d85 	.word	0x1a001d85
1a001cb8:	1a001d85 	.word	0x1a001d85
1a001cbc:	1a001d39 	.word	0x1a001d39
1a001cc0:	1a001d47 	.word	0x1a001d47
1a001cc4:	1a001d55 	.word	0x1a001d55
1a001cc8:	1a001d63 	.word	0x1a001d63
1a001ccc:	1a001d71 	.word	0x1a001d71
1a001cd0:	1a001d7f 	.word	0x1a001d7f
1a001cd4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001cd8:	60fb      	str	r3, [r7, #12]
1a001cda:	e056      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001cdc:	4b2d      	ldr	r3, [pc, #180]	; (1a001d94 <Chip_Clock_GetClockInputHz+0x124>)
1a001cde:	60fb      	str	r3, [r7, #12]
1a001ce0:	e053      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001ce2:	4b2d      	ldr	r3, [pc, #180]	; (1a001d98 <Chip_Clock_GetClockInputHz+0x128>)
1a001ce4:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001ce8:	f003 0307 	and.w	r3, r3, #7
1a001cec:	2b04      	cmp	r3, #4
1a001cee:	d04b      	beq.n	1a001d88 <Chip_Clock_GetClockInputHz+0x118>
1a001cf0:	4b2a      	ldr	r3, [pc, #168]	; (1a001d9c <Chip_Clock_GetClockInputHz+0x12c>)
1a001cf2:	60fb      	str	r3, [r7, #12]
1a001cf4:	e048      	b.n	1a001d88 <Chip_Clock_GetClockInputHz+0x118>
1a001cf6:	4b28      	ldr	r3, [pc, #160]	; (1a001d98 <Chip_Clock_GetClockInputHz+0x128>)
1a001cf8:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001cfc:	f003 0307 	and.w	r3, r3, #7
1a001d00:	2b04      	cmp	r3, #4
1a001d02:	d002      	beq.n	1a001d0a <Chip_Clock_GetClockInputHz+0x9a>
1a001d04:	4b25      	ldr	r3, [pc, #148]	; (1a001d9c <Chip_Clock_GetClockInputHz+0x12c>)
1a001d06:	60fb      	str	r3, [r7, #12]
1a001d08:	e03f      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d0a:	4b25      	ldr	r3, [pc, #148]	; (1a001da0 <Chip_Clock_GetClockInputHz+0x130>)
1a001d0c:	60fb      	str	r3, [r7, #12]
1a001d0e:	e03c      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d10:	4b24      	ldr	r3, [pc, #144]	; (1a001da4 <Chip_Clock_GetClockInputHz+0x134>)
1a001d12:	681b      	ldr	r3, [r3, #0]
1a001d14:	60fb      	str	r3, [r7, #12]
1a001d16:	e038      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d18:	4b23      	ldr	r3, [pc, #140]	; (1a001da8 <Chip_Clock_GetClockInputHz+0x138>)
1a001d1a:	681b      	ldr	r3, [r3, #0]
1a001d1c:	60fb      	str	r3, [r7, #12]
1a001d1e:	e034      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d20:	4b22      	ldr	r3, [pc, #136]	; (1a001dac <Chip_Clock_GetClockInputHz+0x13c>)
1a001d22:	681b      	ldr	r3, [r3, #0]
1a001d24:	60fb      	str	r3, [r7, #12]
1a001d26:	e030      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d28:	4b20      	ldr	r3, [pc, #128]	; (1a001dac <Chip_Clock_GetClockInputHz+0x13c>)
1a001d2a:	685b      	ldr	r3, [r3, #4]
1a001d2c:	60fb      	str	r3, [r7, #12]
1a001d2e:	e02c      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d30:	f7ff ff02 	bl	1a001b38 <Chip_Clock_GetMainPLLHz>
1a001d34:	60f8      	str	r0, [r7, #12]
1a001d36:	e028      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d38:	79fb      	ldrb	r3, [r7, #7]
1a001d3a:	2100      	movs	r1, #0
1a001d3c:	4618      	mov	r0, r3
1a001d3e:	f7ff fdef 	bl	1a001920 <Chip_Clock_GetDivRate>
1a001d42:	60f8      	str	r0, [r7, #12]
1a001d44:	e021      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d46:	79fb      	ldrb	r3, [r7, #7]
1a001d48:	2101      	movs	r1, #1
1a001d4a:	4618      	mov	r0, r3
1a001d4c:	f7ff fde8 	bl	1a001920 <Chip_Clock_GetDivRate>
1a001d50:	60f8      	str	r0, [r7, #12]
1a001d52:	e01a      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d54:	79fb      	ldrb	r3, [r7, #7]
1a001d56:	2102      	movs	r1, #2
1a001d58:	4618      	mov	r0, r3
1a001d5a:	f7ff fde1 	bl	1a001920 <Chip_Clock_GetDivRate>
1a001d5e:	60f8      	str	r0, [r7, #12]
1a001d60:	e013      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d62:	79fb      	ldrb	r3, [r7, #7]
1a001d64:	2103      	movs	r1, #3
1a001d66:	4618      	mov	r0, r3
1a001d68:	f7ff fdda 	bl	1a001920 <Chip_Clock_GetDivRate>
1a001d6c:	60f8      	str	r0, [r7, #12]
1a001d6e:	e00c      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d70:	79fb      	ldrb	r3, [r7, #7]
1a001d72:	2104      	movs	r1, #4
1a001d74:	4618      	mov	r0, r3
1a001d76:	f7ff fdd3 	bl	1a001920 <Chip_Clock_GetDivRate>
1a001d7a:	60f8      	str	r0, [r7, #12]
1a001d7c:	e005      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d7e:	2300      	movs	r3, #0
1a001d80:	60fb      	str	r3, [r7, #12]
1a001d82:	e002      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d84:	bf00      	nop
1a001d86:	e000      	b.n	1a001d8a <Chip_Clock_GetClockInputHz+0x11a>
1a001d88:	bf00      	nop
1a001d8a:	68fb      	ldr	r3, [r7, #12]
1a001d8c:	4618      	mov	r0, r3
1a001d8e:	3710      	adds	r7, #16
1a001d90:	46bd      	mov	sp, r7
1a001d92:	bd80      	pop	{r7, pc}
1a001d94:	00b71b00 	.word	0x00b71b00
1a001d98:	40043000 	.word	0x40043000
1a001d9c:	017d7840 	.word	0x017d7840
1a001da0:	02faf080 	.word	0x02faf080
1a001da4:	1a007b2c 	.word	0x1a007b2c
1a001da8:	1a007b30 	.word	0x1a007b30
1a001dac:	100009e8 	.word	0x100009e8

1a001db0 <Chip_Clock_GetBaseClocktHz>:
1a001db0:	b580      	push	{r7, lr}
1a001db2:	b082      	sub	sp, #8
1a001db4:	af00      	add	r7, sp, #0
1a001db6:	4603      	mov	r3, r0
1a001db8:	71fb      	strb	r3, [r7, #7]
1a001dba:	79fb      	ldrb	r3, [r7, #7]
1a001dbc:	4618      	mov	r0, r3
1a001dbe:	f000 f857 	bl	1a001e70 <Chip_Clock_GetBaseClock>
1a001dc2:	4603      	mov	r3, r0
1a001dc4:	4618      	mov	r0, r3
1a001dc6:	f7ff ff53 	bl	1a001c70 <Chip_Clock_GetClockInputHz>
1a001dca:	4603      	mov	r3, r0
1a001dcc:	4618      	mov	r0, r3
1a001dce:	3708      	adds	r7, #8
1a001dd0:	46bd      	mov	sp, r7
1a001dd2:	bd80      	pop	{r7, pc}

1a001dd4 <Chip_Clock_SetBaseClock>:
1a001dd4:	b490      	push	{r4, r7}
1a001dd6:	b084      	sub	sp, #16
1a001dd8:	af00      	add	r7, sp, #0
1a001dda:	4604      	mov	r4, r0
1a001ddc:	4608      	mov	r0, r1
1a001dde:	4611      	mov	r1, r2
1a001de0:	461a      	mov	r2, r3
1a001de2:	4623      	mov	r3, r4
1a001de4:	71fb      	strb	r3, [r7, #7]
1a001de6:	4603      	mov	r3, r0
1a001de8:	71bb      	strb	r3, [r7, #6]
1a001dea:	460b      	mov	r3, r1
1a001dec:	717b      	strb	r3, [r7, #5]
1a001dee:	4613      	mov	r3, r2
1a001df0:	713b      	strb	r3, [r7, #4]
1a001df2:	4a1d      	ldr	r2, [pc, #116]	; (1a001e68 <Chip_Clock_SetBaseClock+0x94>)
1a001df4:	79fb      	ldrb	r3, [r7, #7]
1a001df6:	3316      	adds	r3, #22
1a001df8:	009b      	lsls	r3, r3, #2
1a001dfa:	4413      	add	r3, r2
1a001dfc:	685b      	ldr	r3, [r3, #4]
1a001dfe:	60fb      	str	r3, [r7, #12]
1a001e00:	79fb      	ldrb	r3, [r7, #7]
1a001e02:	2b1b      	cmp	r3, #27
1a001e04:	d822      	bhi.n	1a001e4c <Chip_Clock_SetBaseClock+0x78>
1a001e06:	79bb      	ldrb	r3, [r7, #6]
1a001e08:	2b11      	cmp	r3, #17
1a001e0a:	d028      	beq.n	1a001e5e <Chip_Clock_SetBaseClock+0x8a>
1a001e0c:	68fa      	ldr	r2, [r7, #12]
1a001e0e:	4b17      	ldr	r3, [pc, #92]	; (1a001e6c <Chip_Clock_SetBaseClock+0x98>)
1a001e10:	4013      	ands	r3, r2
1a001e12:	60fb      	str	r3, [r7, #12]
1a001e14:	797b      	ldrb	r3, [r7, #5]
1a001e16:	2b00      	cmp	r3, #0
1a001e18:	d003      	beq.n	1a001e22 <Chip_Clock_SetBaseClock+0x4e>
1a001e1a:	68fb      	ldr	r3, [r7, #12]
1a001e1c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001e20:	60fb      	str	r3, [r7, #12]
1a001e22:	793b      	ldrb	r3, [r7, #4]
1a001e24:	2b00      	cmp	r3, #0
1a001e26:	d003      	beq.n	1a001e30 <Chip_Clock_SetBaseClock+0x5c>
1a001e28:	68fb      	ldr	r3, [r7, #12]
1a001e2a:	f043 0301 	orr.w	r3, r3, #1
1a001e2e:	60fb      	str	r3, [r7, #12]
1a001e30:	79bb      	ldrb	r3, [r7, #6]
1a001e32:	061b      	lsls	r3, r3, #24
1a001e34:	461a      	mov	r2, r3
1a001e36:	68fb      	ldr	r3, [r7, #12]
1a001e38:	4313      	orrs	r3, r2
1a001e3a:	60fb      	str	r3, [r7, #12]
1a001e3c:	4a0a      	ldr	r2, [pc, #40]	; (1a001e68 <Chip_Clock_SetBaseClock+0x94>)
1a001e3e:	79fb      	ldrb	r3, [r7, #7]
1a001e40:	3316      	adds	r3, #22
1a001e42:	009b      	lsls	r3, r3, #2
1a001e44:	4413      	add	r3, r2
1a001e46:	68fa      	ldr	r2, [r7, #12]
1a001e48:	605a      	str	r2, [r3, #4]
1a001e4a:	e008      	b.n	1a001e5e <Chip_Clock_SetBaseClock+0x8a>
1a001e4c:	4906      	ldr	r1, [pc, #24]	; (1a001e68 <Chip_Clock_SetBaseClock+0x94>)
1a001e4e:	79fb      	ldrb	r3, [r7, #7]
1a001e50:	68fa      	ldr	r2, [r7, #12]
1a001e52:	f042 0201 	orr.w	r2, r2, #1
1a001e56:	3316      	adds	r3, #22
1a001e58:	009b      	lsls	r3, r3, #2
1a001e5a:	440b      	add	r3, r1
1a001e5c:	605a      	str	r2, [r3, #4]
1a001e5e:	bf00      	nop
1a001e60:	3710      	adds	r7, #16
1a001e62:	46bd      	mov	sp, r7
1a001e64:	bc90      	pop	{r4, r7}
1a001e66:	4770      	bx	lr
1a001e68:	40050000 	.word	0x40050000
1a001e6c:	e0fff7fe 	.word	0xe0fff7fe

1a001e70 <Chip_Clock_GetBaseClock>:
1a001e70:	b480      	push	{r7}
1a001e72:	b085      	sub	sp, #20
1a001e74:	af00      	add	r7, sp, #0
1a001e76:	4603      	mov	r3, r0
1a001e78:	71fb      	strb	r3, [r7, #7]
1a001e7a:	79fb      	ldrb	r3, [r7, #7]
1a001e7c:	2b1b      	cmp	r3, #27
1a001e7e:	d901      	bls.n	1a001e84 <Chip_Clock_GetBaseClock+0x14>
1a001e80:	2311      	movs	r3, #17
1a001e82:	e013      	b.n	1a001eac <Chip_Clock_GetBaseClock+0x3c>
1a001e84:	4a0c      	ldr	r2, [pc, #48]	; (1a001eb8 <Chip_Clock_GetBaseClock+0x48>)
1a001e86:	79fb      	ldrb	r3, [r7, #7]
1a001e88:	3316      	adds	r3, #22
1a001e8a:	009b      	lsls	r3, r3, #2
1a001e8c:	4413      	add	r3, r2
1a001e8e:	685b      	ldr	r3, [r3, #4]
1a001e90:	60fb      	str	r3, [r7, #12]
1a001e92:	68fb      	ldr	r3, [r7, #12]
1a001e94:	f003 0301 	and.w	r3, r3, #1
1a001e98:	2b00      	cmp	r3, #0
1a001e9a:	d001      	beq.n	1a001ea0 <Chip_Clock_GetBaseClock+0x30>
1a001e9c:	2311      	movs	r3, #17
1a001e9e:	e005      	b.n	1a001eac <Chip_Clock_GetBaseClock+0x3c>
1a001ea0:	68fb      	ldr	r3, [r7, #12]
1a001ea2:	0e1b      	lsrs	r3, r3, #24
1a001ea4:	b2db      	uxtb	r3, r3
1a001ea6:	f003 031f 	and.w	r3, r3, #31
1a001eaa:	b2db      	uxtb	r3, r3
1a001eac:	4618      	mov	r0, r3
1a001eae:	3714      	adds	r7, #20
1a001eb0:	46bd      	mov	sp, r7
1a001eb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eb6:	4770      	bx	lr
1a001eb8:	40050000 	.word	0x40050000

1a001ebc <Chip_Clock_EnableOpts>:
1a001ebc:	b480      	push	{r7}
1a001ebe:	b085      	sub	sp, #20
1a001ec0:	af00      	add	r7, sp, #0
1a001ec2:	603b      	str	r3, [r7, #0]
1a001ec4:	4603      	mov	r3, r0
1a001ec6:	80fb      	strh	r3, [r7, #6]
1a001ec8:	460b      	mov	r3, r1
1a001eca:	717b      	strb	r3, [r7, #5]
1a001ecc:	4613      	mov	r3, r2
1a001ece:	713b      	strb	r3, [r7, #4]
1a001ed0:	2301      	movs	r3, #1
1a001ed2:	60fb      	str	r3, [r7, #12]
1a001ed4:	797b      	ldrb	r3, [r7, #5]
1a001ed6:	2b00      	cmp	r3, #0
1a001ed8:	d003      	beq.n	1a001ee2 <Chip_Clock_EnableOpts+0x26>
1a001eda:	68fb      	ldr	r3, [r7, #12]
1a001edc:	f043 0302 	orr.w	r3, r3, #2
1a001ee0:	60fb      	str	r3, [r7, #12]
1a001ee2:	793b      	ldrb	r3, [r7, #4]
1a001ee4:	2b00      	cmp	r3, #0
1a001ee6:	d003      	beq.n	1a001ef0 <Chip_Clock_EnableOpts+0x34>
1a001ee8:	68fb      	ldr	r3, [r7, #12]
1a001eea:	f043 0304 	orr.w	r3, r3, #4
1a001eee:	60fb      	str	r3, [r7, #12]
1a001ef0:	683b      	ldr	r3, [r7, #0]
1a001ef2:	2b02      	cmp	r3, #2
1a001ef4:	d103      	bne.n	1a001efe <Chip_Clock_EnableOpts+0x42>
1a001ef6:	68fb      	ldr	r3, [r7, #12]
1a001ef8:	f043 0320 	orr.w	r3, r3, #32
1a001efc:	60fb      	str	r3, [r7, #12]
1a001efe:	88fb      	ldrh	r3, [r7, #6]
1a001f00:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001f04:	d308      	bcc.n	1a001f18 <Chip_Clock_EnableOpts+0x5c>
1a001f06:	490a      	ldr	r1, [pc, #40]	; (1a001f30 <Chip_Clock_EnableOpts+0x74>)
1a001f08:	88fb      	ldrh	r3, [r7, #6]
1a001f0a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001f0e:	3320      	adds	r3, #32
1a001f10:	68fa      	ldr	r2, [r7, #12]
1a001f12:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f16:	e005      	b.n	1a001f24 <Chip_Clock_EnableOpts+0x68>
1a001f18:	4906      	ldr	r1, [pc, #24]	; (1a001f34 <Chip_Clock_EnableOpts+0x78>)
1a001f1a:	88fb      	ldrh	r3, [r7, #6]
1a001f1c:	3320      	adds	r3, #32
1a001f1e:	68fa      	ldr	r2, [r7, #12]
1a001f20:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f24:	bf00      	nop
1a001f26:	3714      	adds	r7, #20
1a001f28:	46bd      	mov	sp, r7
1a001f2a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f2e:	4770      	bx	lr
1a001f30:	40052000 	.word	0x40052000
1a001f34:	40051000 	.word	0x40051000

1a001f38 <Chip_Clock_Enable>:
1a001f38:	b480      	push	{r7}
1a001f3a:	b083      	sub	sp, #12
1a001f3c:	af00      	add	r7, sp, #0
1a001f3e:	4603      	mov	r3, r0
1a001f40:	80fb      	strh	r3, [r7, #6]
1a001f42:	88fb      	ldrh	r3, [r7, #6]
1a001f44:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001f48:	d310      	bcc.n	1a001f6c <Chip_Clock_Enable+0x34>
1a001f4a:	4a11      	ldr	r2, [pc, #68]	; (1a001f90 <Chip_Clock_Enable+0x58>)
1a001f4c:	88fb      	ldrh	r3, [r7, #6]
1a001f4e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001f52:	3320      	adds	r3, #32
1a001f54:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001f58:	490d      	ldr	r1, [pc, #52]	; (1a001f90 <Chip_Clock_Enable+0x58>)
1a001f5a:	88fb      	ldrh	r3, [r7, #6]
1a001f5c:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001f60:	f042 0201 	orr.w	r2, r2, #1
1a001f64:	3320      	adds	r3, #32
1a001f66:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f6a:	e00b      	b.n	1a001f84 <Chip_Clock_Enable+0x4c>
1a001f6c:	4a09      	ldr	r2, [pc, #36]	; (1a001f94 <Chip_Clock_Enable+0x5c>)
1a001f6e:	88fb      	ldrh	r3, [r7, #6]
1a001f70:	3320      	adds	r3, #32
1a001f72:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001f76:	4907      	ldr	r1, [pc, #28]	; (1a001f94 <Chip_Clock_Enable+0x5c>)
1a001f78:	88fb      	ldrh	r3, [r7, #6]
1a001f7a:	f042 0201 	orr.w	r2, r2, #1
1a001f7e:	3320      	adds	r3, #32
1a001f80:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f84:	bf00      	nop
1a001f86:	370c      	adds	r7, #12
1a001f88:	46bd      	mov	sp, r7
1a001f8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f8e:	4770      	bx	lr
1a001f90:	40052000 	.word	0x40052000
1a001f94:	40051000 	.word	0x40051000

1a001f98 <Chip_Clock_GetRate>:
1a001f98:	b580      	push	{r7, lr}
1a001f9a:	b086      	sub	sp, #24
1a001f9c:	af00      	add	r7, sp, #0
1a001f9e:	4603      	mov	r3, r0
1a001fa0:	80fb      	strh	r3, [r7, #6]
1a001fa2:	88fb      	ldrh	r3, [r7, #6]
1a001fa4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001fa8:	d308      	bcc.n	1a001fbc <Chip_Clock_GetRate+0x24>
1a001faa:	4a1b      	ldr	r2, [pc, #108]	; (1a002018 <Chip_Clock_GetRate+0x80>)
1a001fac:	88fb      	ldrh	r3, [r7, #6]
1a001fae:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001fb2:	3320      	adds	r3, #32
1a001fb4:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001fb8:	617b      	str	r3, [r7, #20]
1a001fba:	e005      	b.n	1a001fc8 <Chip_Clock_GetRate+0x30>
1a001fbc:	4a17      	ldr	r2, [pc, #92]	; (1a00201c <Chip_Clock_GetRate+0x84>)
1a001fbe:	88fb      	ldrh	r3, [r7, #6]
1a001fc0:	3320      	adds	r3, #32
1a001fc2:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001fc6:	617b      	str	r3, [r7, #20]
1a001fc8:	697b      	ldr	r3, [r7, #20]
1a001fca:	f003 0301 	and.w	r3, r3, #1
1a001fce:	2b00      	cmp	r3, #0
1a001fd0:	d01b      	beq.n	1a00200a <Chip_Clock_GetRate+0x72>
1a001fd2:	88fb      	ldrh	r3, [r7, #6]
1a001fd4:	4618      	mov	r0, r3
1a001fd6:	f7ff fcc3 	bl	1a001960 <Chip_Clock_FindBaseClock>
1a001fda:	4603      	mov	r3, r0
1a001fdc:	72fb      	strb	r3, [r7, #11]
1a001fde:	7afb      	ldrb	r3, [r7, #11]
1a001fe0:	4618      	mov	r0, r3
1a001fe2:	f7ff fee5 	bl	1a001db0 <Chip_Clock_GetBaseClocktHz>
1a001fe6:	60f8      	str	r0, [r7, #12]
1a001fe8:	697b      	ldr	r3, [r7, #20]
1a001fea:	095b      	lsrs	r3, r3, #5
1a001fec:	f003 0307 	and.w	r3, r3, #7
1a001ff0:	2b00      	cmp	r3, #0
1a001ff2:	d102      	bne.n	1a001ffa <Chip_Clock_GetRate+0x62>
1a001ff4:	2301      	movs	r3, #1
1a001ff6:	613b      	str	r3, [r7, #16]
1a001ff8:	e001      	b.n	1a001ffe <Chip_Clock_GetRate+0x66>
1a001ffa:	2302      	movs	r3, #2
1a001ffc:	613b      	str	r3, [r7, #16]
1a001ffe:	68fa      	ldr	r2, [r7, #12]
1a002000:	693b      	ldr	r3, [r7, #16]
1a002002:	fbb2 f3f3 	udiv	r3, r2, r3
1a002006:	60fb      	str	r3, [r7, #12]
1a002008:	e001      	b.n	1a00200e <Chip_Clock_GetRate+0x76>
1a00200a:	2300      	movs	r3, #0
1a00200c:	60fb      	str	r3, [r7, #12]
1a00200e:	68fb      	ldr	r3, [r7, #12]
1a002010:	4618      	mov	r0, r3
1a002012:	3718      	adds	r7, #24
1a002014:	46bd      	mov	sp, r7
1a002016:	bd80      	pop	{r7, pc}
1a002018:	40052000 	.word	0x40052000
1a00201c:	40051000 	.word	0x40051000

1a002020 <SystemCoreClockUpdate>:
1a002020:	b580      	push	{r7, lr}
1a002022:	af00      	add	r7, sp, #0
1a002024:	2069      	movs	r0, #105	; 0x69
1a002026:	f7ff ffb7 	bl	1a001f98 <Chip_Clock_GetRate>
1a00202a:	4602      	mov	r2, r0
1a00202c:	4b01      	ldr	r3, [pc, #4]	; (1a002034 <SystemCoreClockUpdate+0x14>)
1a00202e:	601a      	str	r2, [r3, #0]
1a002030:	bf00      	nop
1a002032:	bd80      	pop	{r7, pc}
1a002034:	10000a48 	.word	0x10000a48

1a002038 <Chip_GPIO_Init>:
1a002038:	b480      	push	{r7}
1a00203a:	b083      	sub	sp, #12
1a00203c:	af00      	add	r7, sp, #0
1a00203e:	6078      	str	r0, [r7, #4]
1a002040:	bf00      	nop
1a002042:	370c      	adds	r7, #12
1a002044:	46bd      	mov	sp, r7
1a002046:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00204a:	4770      	bx	lr

1a00204c <Chip_TIMER_GetClockIndex>:
1a00204c:	b480      	push	{r7}
1a00204e:	b085      	sub	sp, #20
1a002050:	af00      	add	r7, sp, #0
1a002052:	6078      	str	r0, [r7, #4]
1a002054:	687b      	ldr	r3, [r7, #4]
1a002056:	4a0e      	ldr	r2, [pc, #56]	; (1a002090 <Chip_TIMER_GetClockIndex+0x44>)
1a002058:	4293      	cmp	r3, r2
1a00205a:	d102      	bne.n	1a002062 <Chip_TIMER_GetClockIndex+0x16>
1a00205c:	23a4      	movs	r3, #164	; 0xa4
1a00205e:	81fb      	strh	r3, [r7, #14]
1a002060:	e00f      	b.n	1a002082 <Chip_TIMER_GetClockIndex+0x36>
1a002062:	687b      	ldr	r3, [r7, #4]
1a002064:	4a0b      	ldr	r2, [pc, #44]	; (1a002094 <Chip_TIMER_GetClockIndex+0x48>)
1a002066:	4293      	cmp	r3, r2
1a002068:	d102      	bne.n	1a002070 <Chip_TIMER_GetClockIndex+0x24>
1a00206a:	23a3      	movs	r3, #163	; 0xa3
1a00206c:	81fb      	strh	r3, [r7, #14]
1a00206e:	e008      	b.n	1a002082 <Chip_TIMER_GetClockIndex+0x36>
1a002070:	687b      	ldr	r3, [r7, #4]
1a002072:	4a09      	ldr	r2, [pc, #36]	; (1a002098 <Chip_TIMER_GetClockIndex+0x4c>)
1a002074:	4293      	cmp	r3, r2
1a002076:	d102      	bne.n	1a00207e <Chip_TIMER_GetClockIndex+0x32>
1a002078:	2385      	movs	r3, #133	; 0x85
1a00207a:	81fb      	strh	r3, [r7, #14]
1a00207c:	e001      	b.n	1a002082 <Chip_TIMER_GetClockIndex+0x36>
1a00207e:	2384      	movs	r3, #132	; 0x84
1a002080:	81fb      	strh	r3, [r7, #14]
1a002082:	89fb      	ldrh	r3, [r7, #14]
1a002084:	4618      	mov	r0, r3
1a002086:	3714      	adds	r7, #20
1a002088:	46bd      	mov	sp, r7
1a00208a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00208e:	4770      	bx	lr
1a002090:	400c4000 	.word	0x400c4000
1a002094:	400c3000 	.word	0x400c3000
1a002098:	40085000 	.word	0x40085000

1a00209c <Chip_TIMER_Init>:
1a00209c:	b580      	push	{r7, lr}
1a00209e:	b082      	sub	sp, #8
1a0020a0:	af00      	add	r7, sp, #0
1a0020a2:	6078      	str	r0, [r7, #4]
1a0020a4:	6878      	ldr	r0, [r7, #4]
1a0020a6:	f7ff ffd1 	bl	1a00204c <Chip_TIMER_GetClockIndex>
1a0020aa:	4603      	mov	r3, r0
1a0020ac:	4618      	mov	r0, r3
1a0020ae:	f7ff ff43 	bl	1a001f38 <Chip_Clock_Enable>
1a0020b2:	bf00      	nop
1a0020b4:	3708      	adds	r7, #8
1a0020b6:	46bd      	mov	sp, r7
1a0020b8:	bd80      	pop	{r7, pc}
1a0020ba:	Address 0x000000001a0020ba is out of bounds.


1a0020bc <_Exit>:
1a0020bc:	b508      	push	{r3, lr}
1a0020be:	f7fe fdf3 	bl	1a000ca8 <_exit>
1a0020c2:	bf00      	nop

1a0020c4 <abort>:
1a0020c4:	b508      	push	{r3, lr}
1a0020c6:	2006      	movs	r0, #6
1a0020c8:	f000 f8de 	bl	1a002288 <raise>
1a0020cc:	2001      	movs	r0, #1
1a0020ce:	f7fe fdeb 	bl	1a000ca8 <_exit>
1a0020d2:	bf00      	nop

1a0020d4 <memcpy>:
1a0020d4:	4684      	mov	ip, r0
1a0020d6:	ea41 0300 	orr.w	r3, r1, r0
1a0020da:	f013 0303 	ands.w	r3, r3, #3
1a0020de:	d16d      	bne.n	1a0021bc <memcpy+0xe8>
1a0020e0:	3a40      	subs	r2, #64	; 0x40
1a0020e2:	d341      	bcc.n	1a002168 <memcpy+0x94>
1a0020e4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0020e8:	f840 3b04 	str.w	r3, [r0], #4
1a0020ec:	f851 3b04 	ldr.w	r3, [r1], #4
1a0020f0:	f840 3b04 	str.w	r3, [r0], #4
1a0020f4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0020f8:	f840 3b04 	str.w	r3, [r0], #4
1a0020fc:	f851 3b04 	ldr.w	r3, [r1], #4
1a002100:	f840 3b04 	str.w	r3, [r0], #4
1a002104:	f851 3b04 	ldr.w	r3, [r1], #4
1a002108:	f840 3b04 	str.w	r3, [r0], #4
1a00210c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002110:	f840 3b04 	str.w	r3, [r0], #4
1a002114:	f851 3b04 	ldr.w	r3, [r1], #4
1a002118:	f840 3b04 	str.w	r3, [r0], #4
1a00211c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002120:	f840 3b04 	str.w	r3, [r0], #4
1a002124:	f851 3b04 	ldr.w	r3, [r1], #4
1a002128:	f840 3b04 	str.w	r3, [r0], #4
1a00212c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002130:	f840 3b04 	str.w	r3, [r0], #4
1a002134:	f851 3b04 	ldr.w	r3, [r1], #4
1a002138:	f840 3b04 	str.w	r3, [r0], #4
1a00213c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002140:	f840 3b04 	str.w	r3, [r0], #4
1a002144:	f851 3b04 	ldr.w	r3, [r1], #4
1a002148:	f840 3b04 	str.w	r3, [r0], #4
1a00214c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002150:	f840 3b04 	str.w	r3, [r0], #4
1a002154:	f851 3b04 	ldr.w	r3, [r1], #4
1a002158:	f840 3b04 	str.w	r3, [r0], #4
1a00215c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002160:	f840 3b04 	str.w	r3, [r0], #4
1a002164:	3a40      	subs	r2, #64	; 0x40
1a002166:	d2bd      	bcs.n	1a0020e4 <memcpy+0x10>
1a002168:	3230      	adds	r2, #48	; 0x30
1a00216a:	d311      	bcc.n	1a002190 <memcpy+0xbc>
1a00216c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002170:	f840 3b04 	str.w	r3, [r0], #4
1a002174:	f851 3b04 	ldr.w	r3, [r1], #4
1a002178:	f840 3b04 	str.w	r3, [r0], #4
1a00217c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002180:	f840 3b04 	str.w	r3, [r0], #4
1a002184:	f851 3b04 	ldr.w	r3, [r1], #4
1a002188:	f840 3b04 	str.w	r3, [r0], #4
1a00218c:	3a10      	subs	r2, #16
1a00218e:	d2ed      	bcs.n	1a00216c <memcpy+0x98>
1a002190:	320c      	adds	r2, #12
1a002192:	d305      	bcc.n	1a0021a0 <memcpy+0xcc>
1a002194:	f851 3b04 	ldr.w	r3, [r1], #4
1a002198:	f840 3b04 	str.w	r3, [r0], #4
1a00219c:	3a04      	subs	r2, #4
1a00219e:	d2f9      	bcs.n	1a002194 <memcpy+0xc0>
1a0021a0:	3204      	adds	r2, #4
1a0021a2:	d008      	beq.n	1a0021b6 <memcpy+0xe2>
1a0021a4:	07d2      	lsls	r2, r2, #31
1a0021a6:	bf1c      	itt	ne
1a0021a8:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0021ac:	f800 3b01 	strbne.w	r3, [r0], #1
1a0021b0:	d301      	bcc.n	1a0021b6 <memcpy+0xe2>
1a0021b2:	880b      	ldrh	r3, [r1, #0]
1a0021b4:	8003      	strh	r3, [r0, #0]
1a0021b6:	4660      	mov	r0, ip
1a0021b8:	4770      	bx	lr
1a0021ba:	bf00      	nop
1a0021bc:	2a08      	cmp	r2, #8
1a0021be:	d313      	bcc.n	1a0021e8 <memcpy+0x114>
1a0021c0:	078b      	lsls	r3, r1, #30
1a0021c2:	d08d      	beq.n	1a0020e0 <memcpy+0xc>
1a0021c4:	f010 0303 	ands.w	r3, r0, #3
1a0021c8:	d08a      	beq.n	1a0020e0 <memcpy+0xc>
1a0021ca:	f1c3 0304 	rsb	r3, r3, #4
1a0021ce:	1ad2      	subs	r2, r2, r3
1a0021d0:	07db      	lsls	r3, r3, #31
1a0021d2:	bf1c      	itt	ne
1a0021d4:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0021d8:	f800 3b01 	strbne.w	r3, [r0], #1
1a0021dc:	d380      	bcc.n	1a0020e0 <memcpy+0xc>
1a0021de:	f831 3b02 	ldrh.w	r3, [r1], #2
1a0021e2:	f820 3b02 	strh.w	r3, [r0], #2
1a0021e6:	e77b      	b.n	1a0020e0 <memcpy+0xc>
1a0021e8:	3a04      	subs	r2, #4
1a0021ea:	d3d9      	bcc.n	1a0021a0 <memcpy+0xcc>
1a0021ec:	3a01      	subs	r2, #1
1a0021ee:	f811 3b01 	ldrb.w	r3, [r1], #1
1a0021f2:	f800 3b01 	strb.w	r3, [r0], #1
1a0021f6:	d2f9      	bcs.n	1a0021ec <memcpy+0x118>
1a0021f8:	780b      	ldrb	r3, [r1, #0]
1a0021fa:	7003      	strb	r3, [r0, #0]
1a0021fc:	784b      	ldrb	r3, [r1, #1]
1a0021fe:	7043      	strb	r3, [r0, #1]
1a002200:	788b      	ldrb	r3, [r1, #2]
1a002202:	7083      	strb	r3, [r0, #2]
1a002204:	4660      	mov	r0, ip
1a002206:	4770      	bx	lr

1a002208 <printf>:
1a002208:	b40f      	push	{r0, r1, r2, r3}
1a00220a:	b500      	push	{lr}
1a00220c:	4907      	ldr	r1, [pc, #28]	; (1a00222c <printf+0x24>)
1a00220e:	b083      	sub	sp, #12
1a002210:	ab04      	add	r3, sp, #16
1a002212:	6808      	ldr	r0, [r1, #0]
1a002214:	f853 2b04 	ldr.w	r2, [r3], #4
1a002218:	6881      	ldr	r1, [r0, #8]
1a00221a:	9301      	str	r3, [sp, #4]
1a00221c:	f000 f8e0 	bl	1a0023e0 <_vfprintf_r>
1a002220:	b003      	add	sp, #12
1a002222:	f85d eb04 	ldr.w	lr, [sp], #4
1a002226:	b004      	add	sp, #16
1a002228:	4770      	bx	lr
1a00222a:	bf00      	nop
1a00222c:	10000000 	.word	0x10000000

1a002230 <_raise_r>:
1a002230:	291f      	cmp	r1, #31
1a002232:	b538      	push	{r3, r4, r5, lr}
1a002234:	d822      	bhi.n	1a00227c <_raise_r+0x4c>
1a002236:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
1a00223a:	4605      	mov	r5, r0
1a00223c:	460c      	mov	r4, r1
1a00223e:	b16b      	cbz	r3, 1a00225c <_raise_r+0x2c>
1a002240:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
1a002244:	b152      	cbz	r2, 1a00225c <_raise_r+0x2c>
1a002246:	2a01      	cmp	r2, #1
1a002248:	d012      	beq.n	1a002270 <_raise_r+0x40>
1a00224a:	1c51      	adds	r1, r2, #1
1a00224c:	d012      	beq.n	1a002274 <_raise_r+0x44>
1a00224e:	2500      	movs	r5, #0
1a002250:	4620      	mov	r0, r4
1a002252:	f843 5024 	str.w	r5, [r3, r4, lsl #2]
1a002256:	4790      	blx	r2
1a002258:	4628      	mov	r0, r5
1a00225a:	bd38      	pop	{r3, r4, r5, pc}
1a00225c:	4628      	mov	r0, r5
1a00225e:	f000 f82f 	bl	1a0022c0 <_getpid_r>
1a002262:	4622      	mov	r2, r4
1a002264:	4601      	mov	r1, r0
1a002266:	4628      	mov	r0, r5
1a002268:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a00226c:	f000 b814 	b.w	1a002298 <_kill_r>
1a002270:	2000      	movs	r0, #0
1a002272:	bd38      	pop	{r3, r4, r5, pc}
1a002274:	2316      	movs	r3, #22
1a002276:	6003      	str	r3, [r0, #0]
1a002278:	2001      	movs	r0, #1
1a00227a:	bd38      	pop	{r3, r4, r5, pc}
1a00227c:	2316      	movs	r3, #22
1a00227e:	6003      	str	r3, [r0, #0]
1a002280:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a002284:	bd38      	pop	{r3, r4, r5, pc}
1a002286:	bf00      	nop

1a002288 <raise>:
1a002288:	4b02      	ldr	r3, [pc, #8]	; (1a002294 <raise+0xc>)
1a00228a:	4601      	mov	r1, r0
1a00228c:	6818      	ldr	r0, [r3, #0]
1a00228e:	f7ff bfcf 	b.w	1a002230 <_raise_r>
1a002292:	bf00      	nop
1a002294:	10000000 	.word	0x10000000

1a002298 <_kill_r>:
1a002298:	b538      	push	{r3, r4, r5, lr}
1a00229a:	460b      	mov	r3, r1
1a00229c:	4c07      	ldr	r4, [pc, #28]	; (1a0022bc <_kill_r+0x24>)
1a00229e:	4605      	mov	r5, r0
1a0022a0:	4611      	mov	r1, r2
1a0022a2:	4618      	mov	r0, r3
1a0022a4:	2300      	movs	r3, #0
1a0022a6:	6023      	str	r3, [r4, #0]
1a0022a8:	f7fe fce4 	bl	1a000c74 <_kill>
1a0022ac:	1c43      	adds	r3, r0, #1
1a0022ae:	d000      	beq.n	1a0022b2 <_kill_r+0x1a>
1a0022b0:	bd38      	pop	{r3, r4, r5, pc}
1a0022b2:	6823      	ldr	r3, [r4, #0]
1a0022b4:	2b00      	cmp	r3, #0
1a0022b6:	d0fb      	beq.n	1a0022b0 <_kill_r+0x18>
1a0022b8:	602b      	str	r3, [r5, #0]
1a0022ba:	bd38      	pop	{r3, r4, r5, pc}
1a0022bc:	10000a4c 	.word	0x10000a4c

1a0022c0 <_getpid_r>:
1a0022c0:	f7fe bcea 	b.w	1a000c98 <_getpid>
1a0022c4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022c8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022cc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022d0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022d4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022d8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022dc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022e0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022e4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022e8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022ec:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022f0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022f4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022f8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0022fc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a002300 <strlen>:
1a002300:	f890 f000 	pld	[r0]
1a002304:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a002308:	f020 0107 	bic.w	r1, r0, #7
1a00230c:	f06f 0c00 	mvn.w	ip, #0
1a002310:	f010 0407 	ands.w	r4, r0, #7
1a002314:	f891 f020 	pld	[r1, #32]
1a002318:	f040 8049 	bne.w	1a0023ae <strlen+0xae>
1a00231c:	f04f 0400 	mov.w	r4, #0
1a002320:	f06f 0007 	mvn.w	r0, #7
1a002324:	e9d1 2300 	ldrd	r2, r3, [r1]
1a002328:	f891 f040 	pld	[r1, #64]	; 0x40
1a00232c:	f100 0008 	add.w	r0, r0, #8
1a002330:	fa82 f24c 	uadd8	r2, r2, ip
1a002334:	faa4 f28c 	sel	r2, r4, ip
1a002338:	fa83 f34c 	uadd8	r3, r3, ip
1a00233c:	faa2 f38c 	sel	r3, r2, ip
1a002340:	bb4b      	cbnz	r3, 1a002396 <strlen+0x96>
1a002342:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a002346:	fa82 f24c 	uadd8	r2, r2, ip
1a00234a:	f100 0008 	add.w	r0, r0, #8
1a00234e:	faa4 f28c 	sel	r2, r4, ip
1a002352:	fa83 f34c 	uadd8	r3, r3, ip
1a002356:	faa2 f38c 	sel	r3, r2, ip
1a00235a:	b9e3      	cbnz	r3, 1a002396 <strlen+0x96>
1a00235c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a002360:	fa82 f24c 	uadd8	r2, r2, ip
1a002364:	f100 0008 	add.w	r0, r0, #8
1a002368:	faa4 f28c 	sel	r2, r4, ip
1a00236c:	fa83 f34c 	uadd8	r3, r3, ip
1a002370:	faa2 f38c 	sel	r3, r2, ip
1a002374:	b97b      	cbnz	r3, 1a002396 <strlen+0x96>
1a002376:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a00237a:	f101 0120 	add.w	r1, r1, #32
1a00237e:	fa82 f24c 	uadd8	r2, r2, ip
1a002382:	f100 0008 	add.w	r0, r0, #8
1a002386:	faa4 f28c 	sel	r2, r4, ip
1a00238a:	fa83 f34c 	uadd8	r3, r3, ip
1a00238e:	faa2 f38c 	sel	r3, r2, ip
1a002392:	2b00      	cmp	r3, #0
1a002394:	d0c6      	beq.n	1a002324 <strlen+0x24>
1a002396:	2a00      	cmp	r2, #0
1a002398:	bf04      	itt	eq
1a00239a:	3004      	addeq	r0, #4
1a00239c:	461a      	moveq	r2, r3
1a00239e:	ba12      	rev	r2, r2
1a0023a0:	fab2 f282 	clz	r2, r2
1a0023a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a0023a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a0023ac:	4770      	bx	lr
1a0023ae:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0023b2:	f004 0503 	and.w	r5, r4, #3
1a0023b6:	f1c4 0000 	rsb	r0, r4, #0
1a0023ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a0023be:	f014 0f04 	tst.w	r4, #4
1a0023c2:	f891 f040 	pld	[r1, #64]	; 0x40
1a0023c6:	fa0c f505 	lsl.w	r5, ip, r5
1a0023ca:	ea62 0205 	orn	r2, r2, r5
1a0023ce:	bf1c      	itt	ne
1a0023d0:	ea63 0305 	ornne	r3, r3, r5
1a0023d4:	4662      	movne	r2, ip
1a0023d6:	f04f 0400 	mov.w	r4, #0
1a0023da:	e7a9      	b.n	1a002330 <strlen+0x30>
1a0023dc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0023e0 <_vfprintf_r>:
1a0023e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a0023e4:	b0db      	sub	sp, #364	; 0x16c
1a0023e6:	461c      	mov	r4, r3
1a0023e8:	4689      	mov	r9, r1
1a0023ea:	4617      	mov	r7, r2
1a0023ec:	4605      	mov	r5, r0
1a0023ee:	9007      	str	r0, [sp, #28]
1a0023f0:	f003 f814 	bl	1a00541c <_localeconv_r>
1a0023f4:	6803      	ldr	r3, [r0, #0]
1a0023f6:	931a      	str	r3, [sp, #104]	; 0x68
1a0023f8:	4618      	mov	r0, r3
1a0023fa:	f7ff ff81 	bl	1a002300 <strlen>
1a0023fe:	940c      	str	r4, [sp, #48]	; 0x30
1a002400:	9019      	str	r0, [sp, #100]	; 0x64
1a002402:	b11d      	cbz	r5, 1a00240c <_vfprintf_r+0x2c>
1a002404:	6bab      	ldr	r3, [r5, #56]	; 0x38
1a002406:	2b00      	cmp	r3, #0
1a002408:	f000 8107 	beq.w	1a00261a <_vfprintf_r+0x23a>
1a00240c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
1a002410:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
1a002414:	07c8      	lsls	r0, r1, #31
1a002416:	b293      	uxth	r3, r2
1a002418:	d402      	bmi.n	1a002420 <_vfprintf_r+0x40>
1a00241a:	0599      	lsls	r1, r3, #22
1a00241c:	f140 811f 	bpl.w	1a00265e <_vfprintf_r+0x27e>
1a002420:	049e      	lsls	r6, r3, #18
1a002422:	d40a      	bmi.n	1a00243a <_vfprintf_r+0x5a>
1a002424:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
1a002428:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
1a00242c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
1a002430:	f8a9 300c 	strh.w	r3, [r9, #12]
1a002434:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
1a002438:	b29b      	uxth	r3, r3
1a00243a:	071d      	lsls	r5, r3, #28
1a00243c:	f140 80b2 	bpl.w	1a0025a4 <_vfprintf_r+0x1c4>
1a002440:	f8d9 2010 	ldr.w	r2, [r9, #16]
1a002444:	2a00      	cmp	r2, #0
1a002446:	f000 80ad 	beq.w	1a0025a4 <_vfprintf_r+0x1c4>
1a00244a:	f003 021a 	and.w	r2, r3, #26
1a00244e:	2a0a      	cmp	r2, #10
1a002450:	f000 80c9 	beq.w	1a0025e6 <_vfprintf_r+0x206>
1a002454:	2300      	movs	r3, #0
1a002456:	ed9f 7b86 	vldr	d7, [pc, #536]	; 1a002670 <_vfprintf_r+0x290>
1a00245a:	9314      	str	r3, [sp, #80]	; 0x50
1a00245c:	e9cd 332f 	strd	r3, r3, [sp, #188]	; 0xbc
1a002460:	931b      	str	r3, [sp, #108]	; 0x6c
1a002462:	e9cd 331d 	strd	r3, r3, [sp, #116]	; 0x74
1a002466:	931f      	str	r3, [sp, #124]	; 0x7c
1a002468:	931c      	str	r3, [sp, #112]	; 0x70
1a00246a:	9309      	str	r3, [sp, #36]	; 0x24
1a00246c:	ab31      	add	r3, sp, #196	; 0xc4
1a00246e:	932e      	str	r3, [sp, #184]	; 0xb8
1a002470:	469b      	mov	fp, r3
1a002472:	783b      	ldrb	r3, [r7, #0]
1a002474:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
1a002478:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
1a00247c:	2b00      	cmp	r3, #0
1a00247e:	f000 8259 	beq.w	1a002934 <_vfprintf_r+0x554>
1a002482:	2b25      	cmp	r3, #37	; 0x25
1a002484:	463c      	mov	r4, r7
1a002486:	d102      	bne.n	1a00248e <_vfprintf_r+0xae>
1a002488:	e01d      	b.n	1a0024c6 <_vfprintf_r+0xe6>
1a00248a:	2b25      	cmp	r3, #37	; 0x25
1a00248c:	d003      	beq.n	1a002496 <_vfprintf_r+0xb6>
1a00248e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
1a002492:	2b00      	cmp	r3, #0
1a002494:	d1f9      	bne.n	1a00248a <_vfprintf_r+0xaa>
1a002496:	1be5      	subs	r5, r4, r7
1a002498:	b18d      	cbz	r5, 1a0024be <_vfprintf_r+0xde>
1a00249a:	e9dd 322f 	ldrd	r3, r2, [sp, #188]	; 0xbc
1a00249e:	3301      	adds	r3, #1
1a0024a0:	442a      	add	r2, r5
1a0024a2:	2b07      	cmp	r3, #7
1a0024a4:	f8cb 7000 	str.w	r7, [fp]
1a0024a8:	f8cb 5004 	str.w	r5, [fp, #4]
1a0024ac:	e9cd 322f 	strd	r3, r2, [sp, #188]	; 0xbc
1a0024b0:	f300 80ca 	bgt.w	1a002648 <_vfprintf_r+0x268>
1a0024b4:	f10b 0b08 	add.w	fp, fp, #8
1a0024b8:	9b09      	ldr	r3, [sp, #36]	; 0x24
1a0024ba:	442b      	add	r3, r5
1a0024bc:	9309      	str	r3, [sp, #36]	; 0x24
1a0024be:	7823      	ldrb	r3, [r4, #0]
1a0024c0:	2b00      	cmp	r3, #0
1a0024c2:	f000 8237 	beq.w	1a002934 <_vfprintf_r+0x554>
1a0024c6:	2300      	movs	r3, #0
1a0024c8:	7866      	ldrb	r6, [r4, #1]
1a0024ca:	930a      	str	r3, [sp, #40]	; 0x28
1a0024cc:	4698      	mov	r8, r3
1a0024ce:	f88d 309b 	strb.w	r3, [sp, #155]	; 0x9b
1a0024d2:	f104 0a01 	add.w	sl, r4, #1
1a0024d6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
1a0024da:	252b      	movs	r5, #43	; 0x2b
1a0024dc:	f10a 0a01 	add.w	sl, sl, #1
1a0024e0:	f1a6 0320 	sub.w	r3, r6, #32
1a0024e4:	2b5a      	cmp	r3, #90	; 0x5a
1a0024e6:	f200 842a 	bhi.w	1a002d3e <_vfprintf_r+0x95e>
1a0024ea:	e8df f013 	tbh	[pc, r3, lsl #1]
1a0024ee:	03aa      	.short	0x03aa
1a0024f0:	04280428 	.word	0x04280428
1a0024f4:	0428029c 	.word	0x0428029c
1a0024f8:	04280428 	.word	0x04280428
1a0024fc:	042802a7 	.word	0x042802a7
1a002500:	02c60428 	.word	0x02c60428
1a002504:	042802d2 	.word	0x042802d2
1a002508:	02dc02d7 	.word	0x02dc02d7
1a00250c:	02f60428 	.word	0x02f60428
1a002510:	026d026d 	.word	0x026d026d
1a002514:	026d026d 	.word	0x026d026d
1a002518:	026d026d 	.word	0x026d026d
1a00251c:	026d026d 	.word	0x026d026d
1a002520:	0428026d 	.word	0x0428026d
1a002524:	04280428 	.word	0x04280428
1a002528:	04280428 	.word	0x04280428
1a00252c:	04280428 	.word	0x04280428
1a002530:	042802fb 	.word	0x042802fb
1a002534:	03f3033c 	.word	0x03f3033c
1a002538:	02fb02fb 	.word	0x02fb02fb
1a00253c:	042802fb 	.word	0x042802fb
1a002540:	04280428 	.word	0x04280428
1a002544:	03ee0428 	.word	0x03ee0428
1a002548:	04280428 	.word	0x04280428
1a00254c:	0428009a 	.word	0x0428009a
1a002550:	04280428 	.word	0x04280428
1a002554:	04280350 	.word	0x04280350
1a002558:	04280379 	.word	0x04280379
1a00255c:	03900428 	.word	0x03900428
1a002560:	04280428 	.word	0x04280428
1a002564:	04280428 	.word	0x04280428
1a002568:	04280428 	.word	0x04280428
1a00256c:	04280428 	.word	0x04280428
1a002570:	042802fb 	.word	0x042802fb
1a002574:	00c5033c 	.word	0x00c5033c
1a002578:	02fb02fb 	.word	0x02fb02fb
1a00257c:	03d102fb 	.word	0x03d102fb
1a002580:	007000c5 	.word	0x007000c5
1a002584:	03b50428 	.word	0x03b50428
1a002588:	03c20428 	.word	0x03c20428
1a00258c:	03de009c 	.word	0x03de009c
1a002590:	04280070 	.word	0x04280070
1a002594:	00720350 	.word	0x00720350
1a002598:	0428022c 	.word	0x0428022c
1a00259c:	027c0428 	.word	0x027c0428
1a0025a0:	00720428 	.word	0x00720428
1a0025a4:	4649      	mov	r1, r9
1a0025a6:	9807      	ldr	r0, [sp, #28]
1a0025a8:	f001 fc9c 	bl	1a003ee4 <__swsetup_r>
1a0025ac:	b1a0      	cbz	r0, 1a0025d8 <_vfprintf_r+0x1f8>
1a0025ae:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
1a0025b2:	07d8      	lsls	r0, r3, #31
1a0025b4:	d404      	bmi.n	1a0025c0 <_vfprintf_r+0x1e0>
1a0025b6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
1a0025ba:	0599      	lsls	r1, r3, #22
1a0025bc:	f140 83b7 	bpl.w	1a002d2e <_vfprintf_r+0x94e>
1a0025c0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0025c4:	9309      	str	r3, [sp, #36]	; 0x24
1a0025c6:	9809      	ldr	r0, [sp, #36]	; 0x24
1a0025c8:	b05b      	add	sp, #364	; 0x16c
1a0025ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0025ce:	f048 0820 	orr.w	r8, r8, #32
1a0025d2:	f89a 6000 	ldrb.w	r6, [sl]
1a0025d6:	e781      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a0025d8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
1a0025dc:	f003 021a 	and.w	r2, r3, #26
1a0025e0:	2a0a      	cmp	r2, #10
1a0025e2:	f47f af37 	bne.w	1a002454 <_vfprintf_r+0x74>
1a0025e6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
1a0025ea:	2a00      	cmp	r2, #0
1a0025ec:	f6ff af32 	blt.w	1a002454 <_vfprintf_r+0x74>
1a0025f0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
1a0025f4:	07d2      	lsls	r2, r2, #31
1a0025f6:	d405      	bmi.n	1a002604 <_vfprintf_r+0x224>
1a0025f8:	059b      	lsls	r3, r3, #22
1a0025fa:	d403      	bmi.n	1a002604 <_vfprintf_r+0x224>
1a0025fc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
1a002600:	f7fd fece 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a002604:	4623      	mov	r3, r4
1a002606:	463a      	mov	r2, r7
1a002608:	4649      	mov	r1, r9
1a00260a:	9807      	ldr	r0, [sp, #28]
1a00260c:	f001 fc28 	bl	1a003e60 <__sbprintf>
1a002610:	9009      	str	r0, [sp, #36]	; 0x24
1a002612:	9809      	ldr	r0, [sp, #36]	; 0x24
1a002614:	b05b      	add	sp, #364	; 0x16c
1a002616:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a00261a:	9807      	ldr	r0, [sp, #28]
1a00261c:	f002 fd58 	bl	1a0050d0 <__sinit>
1a002620:	e6f4      	b.n	1a00240c <_vfprintf_r+0x2c>
1a002622:	f048 0810 	orr.w	r8, r8, #16
1a002626:	f018 0f20 	tst.w	r8, #32
1a00262a:	f000 836c 	beq.w	1a002d06 <_vfprintf_r+0x926>
1a00262e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
1a002630:	3407      	adds	r4, #7
1a002632:	f024 0307 	bic.w	r3, r4, #7
1a002636:	e9d3 4500 	ldrd	r4, r5, [r3]
1a00263a:	f103 0208 	add.w	r2, r3, #8
1a00263e:	920c      	str	r2, [sp, #48]	; 0x30
1a002640:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
1a002644:	2200      	movs	r2, #0
1a002646:	e18c      	b.n	1a002962 <_vfprintf_r+0x582>
1a002648:	aa2e      	add	r2, sp, #184	; 0xb8
1a00264a:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a00264c:	9807      	ldr	r0, [sp, #28]
1a00264e:	f003 fe67 	bl	1a006320 <__sprint_r>
1a002652:	2800      	cmp	r0, #0
1a002654:	f041 8375 	bne.w	1a003d42 <_vfprintf_r+0x1962>
1a002658:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a00265c:	e72c      	b.n	1a0024b8 <_vfprintf_r+0xd8>
1a00265e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
1a002662:	f7fd fe9b 	bl	1a00039c <__retarget_lock_acquire_recursive>
1a002666:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
1a00266a:	b293      	uxth	r3, r2
1a00266c:	e6d8      	b.n	1a002420 <_vfprintf_r+0x40>
1a00266e:	bf00      	nop
	...
1a002678:	4643      	mov	r3, r8
1a00267a:	069f      	lsls	r7, r3, #26
1a00267c:	f140 832f 	bpl.w	1a002cde <_vfprintf_r+0x8fe>
1a002680:	9c0c      	ldr	r4, [sp, #48]	; 0x30
1a002682:	3407      	adds	r4, #7
1a002684:	f024 0407 	bic.w	r4, r4, #7
1a002688:	e9d4 0100 	ldrd	r0, r1, [r4]
1a00268c:	f104 0208 	add.w	r2, r4, #8
1a002690:	920c      	str	r2, [sp, #48]	; 0x30
1a002692:	4604      	mov	r4, r0
1a002694:	460d      	mov	r5, r1
1a002696:	2800      	cmp	r0, #0
1a002698:	f171 0200 	sbcs.w	r2, r1, #0
1a00269c:	da05      	bge.n	1a0026aa <_vfprintf_r+0x2ca>
1a00269e:	222d      	movs	r2, #45	; 0x2d
1a0026a0:	4264      	negs	r4, r4
1a0026a2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
1a0026a6:	f88d 209b 	strb.w	r2, [sp, #155]	; 0x9b
1a0026aa:	aa5a      	add	r2, sp, #360	; 0x168
1a0026ac:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
1a0026b0:	9208      	str	r2, [sp, #32]
1a0026b2:	f000 84b2 	beq.w	1a00301a <_vfprintf_r+0xc3a>
1a0026b6:	2201      	movs	r2, #1
1a0026b8:	ea54 0105 	orrs.w	r1, r4, r5
1a0026bc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
1a0026c0:	f040 8159 	bne.w	1a002976 <_vfprintf_r+0x596>
1a0026c4:	f1b9 0f00 	cmp.w	r9, #0
1a0026c8:	f040 8619 	bne.w	1a0032fe <_vfprintf_r+0xf1e>
1a0026cc:	2a00      	cmp	r2, #0
1a0026ce:	f040 8508 	bne.w	1a0030e2 <_vfprintf_r+0xd02>
1a0026d2:	f013 0301 	ands.w	r3, r3, #1
1a0026d6:	af5a      	add	r7, sp, #360	; 0x168
1a0026d8:	930d      	str	r3, [sp, #52]	; 0x34
1a0026da:	d002      	beq.n	1a0026e2 <_vfprintf_r+0x302>
1a0026dc:	2330      	movs	r3, #48	; 0x30
1a0026de:	f807 3d01 	strb.w	r3, [r7, #-1]!
1a0026e2:	2300      	movs	r3, #0
1a0026e4:	930e      	str	r3, [sp, #56]	; 0x38
1a0026e6:	9313      	str	r3, [sp, #76]	; 0x4c
1a0026e8:	9318      	str	r3, [sp, #96]	; 0x60
1a0026ea:	9315      	str	r3, [sp, #84]	; 0x54
1a0026ec:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a0026ee:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a0026f2:	454b      	cmp	r3, r9
1a0026f4:	bfb8      	it	lt
1a0026f6:	464b      	movlt	r3, r9
1a0026f8:	9308      	str	r3, [sp, #32]
1a0026fa:	b112      	cbz	r2, 1a002702 <_vfprintf_r+0x322>
1a0026fc:	9b08      	ldr	r3, [sp, #32]
1a0026fe:	3301      	adds	r3, #1
1a002700:	9308      	str	r3, [sp, #32]
1a002702:	f018 0302 	ands.w	r3, r8, #2
1a002706:	930f      	str	r3, [sp, #60]	; 0x3c
1a002708:	d002      	beq.n	1a002710 <_vfprintf_r+0x330>
1a00270a:	9b08      	ldr	r3, [sp, #32]
1a00270c:	3302      	adds	r3, #2
1a00270e:	9308      	str	r3, [sp, #32]
1a002710:	f018 0384 	ands.w	r3, r8, #132	; 0x84
1a002714:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a002716:	9312      	str	r3, [sp, #72]	; 0x48
1a002718:	d13f      	bne.n	1a00279a <_vfprintf_r+0x3ba>
1a00271a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1a00271c:	9908      	ldr	r1, [sp, #32]
1a00271e:	1a5d      	subs	r5, r3, r1
1a002720:	2d00      	cmp	r5, #0
1a002722:	dd3a      	ble.n	1a00279a <_vfprintf_r+0x3ba>
1a002724:	2d10      	cmp	r5, #16
1a002726:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a002728:	dd29      	ble.n	1a00277e <_vfprintf_r+0x39e>
1a00272a:	4659      	mov	r1, fp
1a00272c:	4620      	mov	r0, r4
1a00272e:	9624      	str	r6, [sp, #144]	; 0x90
1a002730:	2310      	movs	r3, #16
1a002732:	9c07      	ldr	r4, [sp, #28]
1a002734:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
1a002736:	46bb      	mov	fp, r7
1a002738:	e004      	b.n	1a002744 <_vfprintf_r+0x364>
1a00273a:	3d10      	subs	r5, #16
1a00273c:	2d10      	cmp	r5, #16
1a00273e:	f101 0108 	add.w	r1, r1, #8
1a002742:	dd18      	ble.n	1a002776 <_vfprintf_r+0x396>
1a002744:	3201      	adds	r2, #1
1a002746:	4fba      	ldr	r7, [pc, #744]	; (1a002a30 <_vfprintf_r+0x650>)
1a002748:	3010      	adds	r0, #16
1a00274a:	2a07      	cmp	r2, #7
1a00274c:	e9cd 202f 	strd	r2, r0, [sp, #188]	; 0xbc
1a002750:	e9c1 7300 	strd	r7, r3, [r1]
1a002754:	ddf1      	ble.n	1a00273a <_vfprintf_r+0x35a>
1a002756:	aa2e      	add	r2, sp, #184	; 0xb8
1a002758:	4631      	mov	r1, r6
1a00275a:	4620      	mov	r0, r4
1a00275c:	9310      	str	r3, [sp, #64]	; 0x40
1a00275e:	f003 fddf 	bl	1a006320 <__sprint_r>
1a002762:	2800      	cmp	r0, #0
1a002764:	f040 843d 	bne.w	1a002fe2 <_vfprintf_r+0xc02>
1a002768:	3d10      	subs	r5, #16
1a00276a:	2d10      	cmp	r5, #16
1a00276c:	e9dd 202f 	ldrd	r2, r0, [sp, #188]	; 0xbc
1a002770:	a931      	add	r1, sp, #196	; 0xc4
1a002772:	9b10      	ldr	r3, [sp, #64]	; 0x40
1a002774:	dce6      	bgt.n	1a002744 <_vfprintf_r+0x364>
1a002776:	9e24      	ldr	r6, [sp, #144]	; 0x90
1a002778:	465f      	mov	r7, fp
1a00277a:	4604      	mov	r4, r0
1a00277c:	468b      	mov	fp, r1
1a00277e:	3201      	adds	r2, #1
1a002780:	4bab      	ldr	r3, [pc, #684]	; (1a002a30 <_vfprintf_r+0x650>)
1a002782:	442c      	add	r4, r5
1a002784:	2a07      	cmp	r2, #7
1a002786:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a00278a:	e9cb 3500 	strd	r3, r5, [fp]
1a00278e:	f300 84ff 	bgt.w	1a003190 <_vfprintf_r+0xdb0>
1a002792:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a002796:	f10b 0b08 	add.w	fp, fp, #8
1a00279a:	b172      	cbz	r2, 1a0027ba <_vfprintf_r+0x3da>
1a00279c:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a00279e:	3201      	adds	r2, #1
1a0027a0:	3401      	adds	r4, #1
1a0027a2:	f10d 009b 	add.w	r0, sp, #155	; 0x9b
1a0027a6:	2101      	movs	r1, #1
1a0027a8:	2a07      	cmp	r2, #7
1a0027aa:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a0027ae:	e9cb 0100 	strd	r0, r1, [fp]
1a0027b2:	f300 8418 	bgt.w	1a002fe6 <_vfprintf_r+0xc06>
1a0027b6:	f10b 0b08 	add.w	fp, fp, #8
1a0027ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
1a0027bc:	b16b      	cbz	r3, 1a0027da <_vfprintf_r+0x3fa>
1a0027be:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a0027c0:	3301      	adds	r3, #1
1a0027c2:	3402      	adds	r4, #2
1a0027c4:	a927      	add	r1, sp, #156	; 0x9c
1a0027c6:	2202      	movs	r2, #2
1a0027c8:	2b07      	cmp	r3, #7
1a0027ca:	e9cd 342f 	strd	r3, r4, [sp, #188]	; 0xbc
1a0027ce:	e9cb 1200 	strd	r1, r2, [fp]
1a0027d2:	f300 8415 	bgt.w	1a003000 <_vfprintf_r+0xc20>
1a0027d6:	f10b 0b08 	add.w	fp, fp, #8
1a0027da:	9b12      	ldr	r3, [sp, #72]	; 0x48
1a0027dc:	2b80      	cmp	r3, #128	; 0x80
1a0027de:	f000 8331 	beq.w	1a002e44 <_vfprintf_r+0xa64>
1a0027e2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a0027e4:	eba9 0503 	sub.w	r5, r9, r3
1a0027e8:	2d00      	cmp	r5, #0
1a0027ea:	dd37      	ble.n	1a00285c <_vfprintf_r+0x47c>
1a0027ec:	2d10      	cmp	r5, #16
1a0027ee:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a0027f0:	4b90      	ldr	r3, [pc, #576]	; (1a002a34 <_vfprintf_r+0x654>)
1a0027f2:	dd28      	ble.n	1a002846 <_vfprintf_r+0x466>
1a0027f4:	4659      	mov	r1, fp
1a0027f6:	4620      	mov	r0, r4
1a0027f8:	46bb      	mov	fp, r7
1a0027fa:	f04f 0910 	mov.w	r9, #16
1a0027fe:	4637      	mov	r7, r6
1a002800:	461c      	mov	r4, r3
1a002802:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
1a002804:	e004      	b.n	1a002810 <_vfprintf_r+0x430>
1a002806:	3d10      	subs	r5, #16
1a002808:	2d10      	cmp	r5, #16
1a00280a:	f101 0108 	add.w	r1, r1, #8
1a00280e:	dd15      	ble.n	1a00283c <_vfprintf_r+0x45c>
1a002810:	3201      	adds	r2, #1
1a002812:	3010      	adds	r0, #16
1a002814:	2a07      	cmp	r2, #7
1a002816:	e9cd 202f 	strd	r2, r0, [sp, #188]	; 0xbc
1a00281a:	e9c1 4900 	strd	r4, r9, [r1]
1a00281e:	ddf2      	ble.n	1a002806 <_vfprintf_r+0x426>
1a002820:	aa2e      	add	r2, sp, #184	; 0xb8
1a002822:	4631      	mov	r1, r6
1a002824:	9807      	ldr	r0, [sp, #28]
1a002826:	f003 fd7b 	bl	1a006320 <__sprint_r>
1a00282a:	2800      	cmp	r0, #0
1a00282c:	f040 83d9 	bne.w	1a002fe2 <_vfprintf_r+0xc02>
1a002830:	3d10      	subs	r5, #16
1a002832:	2d10      	cmp	r5, #16
1a002834:	e9dd 202f 	ldrd	r2, r0, [sp, #188]	; 0xbc
1a002838:	a931      	add	r1, sp, #196	; 0xc4
1a00283a:	dce9      	bgt.n	1a002810 <_vfprintf_r+0x430>
1a00283c:	463e      	mov	r6, r7
1a00283e:	4623      	mov	r3, r4
1a002840:	465f      	mov	r7, fp
1a002842:	4604      	mov	r4, r0
1a002844:	468b      	mov	fp, r1
1a002846:	3201      	adds	r2, #1
1a002848:	442c      	add	r4, r5
1a00284a:	2a07      	cmp	r2, #7
1a00284c:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a002850:	e9cb 3500 	strd	r3, r5, [fp]
1a002854:	f300 83ef 	bgt.w	1a003036 <_vfprintf_r+0xc56>
1a002858:	f10b 0b08 	add.w	fp, fp, #8
1a00285c:	f418 7f80 	tst.w	r8, #256	; 0x100
1a002860:	f040 8280 	bne.w	1a002d64 <_vfprintf_r+0x984>
1a002864:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a002866:	9a0d      	ldr	r2, [sp, #52]	; 0x34
1a002868:	f8cb 7000 	str.w	r7, [fp]
1a00286c:	3301      	adds	r3, #1
1a00286e:	4414      	add	r4, r2
1a002870:	2b07      	cmp	r3, #7
1a002872:	9430      	str	r4, [sp, #192]	; 0xc0
1a002874:	f8cb 2004 	str.w	r2, [fp, #4]
1a002878:	932f      	str	r3, [sp, #188]	; 0xbc
1a00287a:	f300 8392 	bgt.w	1a002fa2 <_vfprintf_r+0xbc2>
1a00287e:	f10b 0b08 	add.w	fp, fp, #8
1a002882:	f018 0f04 	tst.w	r8, #4
1a002886:	d03b      	beq.n	1a002900 <_vfprintf_r+0x520>
1a002888:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1a00288a:	9a08      	ldr	r2, [sp, #32]
1a00288c:	1a9d      	subs	r5, r3, r2
1a00288e:	2d00      	cmp	r5, #0
1a002890:	dd36      	ble.n	1a002900 <_vfprintf_r+0x520>
1a002892:	2d10      	cmp	r5, #16
1a002894:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a002896:	dd21      	ble.n	1a0028dc <_vfprintf_r+0x4fc>
1a002898:	2610      	movs	r6, #16
1a00289a:	9f07      	ldr	r7, [sp, #28]
1a00289c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
1a0028a0:	e004      	b.n	1a0028ac <_vfprintf_r+0x4cc>
1a0028a2:	3d10      	subs	r5, #16
1a0028a4:	2d10      	cmp	r5, #16
1a0028a6:	f10b 0b08 	add.w	fp, fp, #8
1a0028aa:	dd17      	ble.n	1a0028dc <_vfprintf_r+0x4fc>
1a0028ac:	3301      	adds	r3, #1
1a0028ae:	4a60      	ldr	r2, [pc, #384]	; (1a002a30 <_vfprintf_r+0x650>)
1a0028b0:	3410      	adds	r4, #16
1a0028b2:	2b07      	cmp	r3, #7
1a0028b4:	e9cd 342f 	strd	r3, r4, [sp, #188]	; 0xbc
1a0028b8:	e9cb 2600 	strd	r2, r6, [fp]
1a0028bc:	ddf1      	ble.n	1a0028a2 <_vfprintf_r+0x4c2>
1a0028be:	aa2e      	add	r2, sp, #184	; 0xb8
1a0028c0:	4641      	mov	r1, r8
1a0028c2:	4638      	mov	r0, r7
1a0028c4:	f003 fd2c 	bl	1a006320 <__sprint_r>
1a0028c8:	2800      	cmp	r0, #0
1a0028ca:	f040 856c 	bne.w	1a0033a6 <_vfprintf_r+0xfc6>
1a0028ce:	3d10      	subs	r5, #16
1a0028d0:	2d10      	cmp	r5, #16
1a0028d2:	e9dd 342f 	ldrd	r3, r4, [sp, #188]	; 0xbc
1a0028d6:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0028da:	dce7      	bgt.n	1a0028ac <_vfprintf_r+0x4cc>
1a0028dc:	3301      	adds	r3, #1
1a0028de:	4a54      	ldr	r2, [pc, #336]	; (1a002a30 <_vfprintf_r+0x650>)
1a0028e0:	442c      	add	r4, r5
1a0028e2:	2b07      	cmp	r3, #7
1a0028e4:	e9cd 342f 	strd	r3, r4, [sp, #188]	; 0xbc
1a0028e8:	e9cb 2500 	strd	r2, r5, [fp]
1a0028ec:	dd08      	ble.n	1a002900 <_vfprintf_r+0x520>
1a0028ee:	aa2e      	add	r2, sp, #184	; 0xb8
1a0028f0:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0028f2:	9807      	ldr	r0, [sp, #28]
1a0028f4:	f003 fd14 	bl	1a006320 <__sprint_r>
1a0028f8:	2800      	cmp	r0, #0
1a0028fa:	f040 82e9 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0028fe:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a002900:	9908      	ldr	r1, [sp, #32]
1a002902:	e9dd 3209 	ldrd	r3, r2, [sp, #36]	; 0x24
1a002906:	428a      	cmp	r2, r1
1a002908:	bfac      	ite	ge
1a00290a:	189b      	addge	r3, r3, r2
1a00290c:	185b      	addlt	r3, r3, r1
1a00290e:	9309      	str	r3, [sp, #36]	; 0x24
1a002910:	2c00      	cmp	r4, #0
1a002912:	f040 82d5 	bne.w	1a002ec0 <_vfprintf_r+0xae0>
1a002916:	2300      	movs	r3, #0
1a002918:	932f      	str	r3, [sp, #188]	; 0xbc
1a00291a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
1a00291c:	b11b      	cbz	r3, 1a002926 <_vfprintf_r+0x546>
1a00291e:	990e      	ldr	r1, [sp, #56]	; 0x38
1a002920:	9807      	ldr	r0, [sp, #28]
1a002922:	f002 fc5d 	bl	1a0051e0 <_free_r>
1a002926:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a00292a:	4657      	mov	r7, sl
1a00292c:	783b      	ldrb	r3, [r7, #0]
1a00292e:	2b00      	cmp	r3, #0
1a002930:	f47f ada7 	bne.w	1a002482 <_vfprintf_r+0xa2>
1a002934:	9b30      	ldr	r3, [sp, #192]	; 0xc0
1a002936:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a00293a:	2b00      	cmp	r3, #0
1a00293c:	f041 80e5 	bne.w	1a003b0a <_vfprintf_r+0x172a>
1a002940:	2300      	movs	r3, #0
1a002942:	932f      	str	r3, [sp, #188]	; 0xbc
1a002944:	e2cb      	b.n	1a002ede <_vfprintf_r+0xafe>
1a002946:	4643      	mov	r3, r8
1a002948:	069a      	lsls	r2, r3, #26
1a00294a:	f140 814e 	bpl.w	1a002bea <_vfprintf_r+0x80a>
1a00294e:	9c0c      	ldr	r4, [sp, #48]	; 0x30
1a002950:	3407      	adds	r4, #7
1a002952:	f024 0207 	bic.w	r2, r4, #7
1a002956:	f102 0108 	add.w	r1, r2, #8
1a00295a:	e9d2 4500 	ldrd	r4, r5, [r2]
1a00295e:	910c      	str	r1, [sp, #48]	; 0x30
1a002960:	2201      	movs	r2, #1
1a002962:	2100      	movs	r1, #0
1a002964:	f88d 109b 	strb.w	r1, [sp, #155]	; 0x9b
1a002968:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
1a00296c:	a95a      	add	r1, sp, #360	; 0x168
1a00296e:	9108      	str	r1, [sp, #32]
1a002970:	f47f aea2 	bne.w	1a0026b8 <_vfprintf_r+0x2d8>
1a002974:	4698      	mov	r8, r3
1a002976:	2a01      	cmp	r2, #1
1a002978:	f000 8350 	beq.w	1a00301c <_vfprintf_r+0xc3c>
1a00297c:	2a02      	cmp	r2, #2
1a00297e:	f000 831b 	beq.w	1a002fb8 <_vfprintf_r+0xbd8>
1a002982:	a95a      	add	r1, sp, #360	; 0x168
1a002984:	e000      	b.n	1a002988 <_vfprintf_r+0x5a8>
1a002986:	4639      	mov	r1, r7
1a002988:	08e2      	lsrs	r2, r4, #3
1a00298a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
1a00298e:	08e8      	lsrs	r0, r5, #3
1a002990:	f004 0307 	and.w	r3, r4, #7
1a002994:	4605      	mov	r5, r0
1a002996:	4614      	mov	r4, r2
1a002998:	3330      	adds	r3, #48	; 0x30
1a00299a:	ea54 0205 	orrs.w	r2, r4, r5
1a00299e:	f801 3c01 	strb.w	r3, [r1, #-1]
1a0029a2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
1a0029a6:	d1ee      	bne.n	1a002986 <_vfprintf_r+0x5a6>
1a0029a8:	f018 0f01 	tst.w	r8, #1
1a0029ac:	f000 8314 	beq.w	1a002fd8 <_vfprintf_r+0xbf8>
1a0029b0:	2b30      	cmp	r3, #48	; 0x30
1a0029b2:	f000 8311 	beq.w	1a002fd8 <_vfprintf_r+0xbf8>
1a0029b6:	9a08      	ldr	r2, [sp, #32]
1a0029b8:	3902      	subs	r1, #2
1a0029ba:	2330      	movs	r3, #48	; 0x30
1a0029bc:	1a52      	subs	r2, r2, r1
1a0029be:	f807 3c01 	strb.w	r3, [r7, #-1]
1a0029c2:	920d      	str	r2, [sp, #52]	; 0x34
1a0029c4:	460f      	mov	r7, r1
1a0029c6:	e68c      	b.n	1a0026e2 <_vfprintf_r+0x302>
1a0029c8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
1a0029cc:	2200      	movs	r2, #0
1a0029ce:	f81a 6b01 	ldrb.w	r6, [sl], #1
1a0029d2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
1a0029d6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
1a0029da:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
1a0029de:	2b09      	cmp	r3, #9
1a0029e0:	d9f5      	bls.n	1a0029ce <_vfprintf_r+0x5ee>
1a0029e2:	920a      	str	r2, [sp, #40]	; 0x28
1a0029e4:	e57c      	b.n	1a0024e0 <_vfprintf_r+0x100>
1a0029e6:	4b14      	ldr	r3, [pc, #80]	; (1a002a38 <_vfprintf_r+0x658>)
1a0029e8:	931b      	str	r3, [sp, #108]	; 0x6c
1a0029ea:	f018 0f20 	tst.w	r8, #32
1a0029ee:	f000 8114 	beq.w	1a002c1a <_vfprintf_r+0x83a>
1a0029f2:	9c0c      	ldr	r4, [sp, #48]	; 0x30
1a0029f4:	3407      	adds	r4, #7
1a0029f6:	f024 0307 	bic.w	r3, r4, #7
1a0029fa:	e9d3 4500 	ldrd	r4, r5, [r3]
1a0029fe:	f103 0208 	add.w	r2, r3, #8
1a002a02:	920c      	str	r2, [sp, #48]	; 0x30
1a002a04:	f018 0f01 	tst.w	r8, #1
1a002a08:	d009      	beq.n	1a002a1e <_vfprintf_r+0x63e>
1a002a0a:	ea54 0305 	orrs.w	r3, r4, r5
1a002a0e:	d006      	beq.n	1a002a1e <_vfprintf_r+0x63e>
1a002a10:	2330      	movs	r3, #48	; 0x30
1a002a12:	f88d 609d 	strb.w	r6, [sp, #157]	; 0x9d
1a002a16:	f048 0802 	orr.w	r8, r8, #2
1a002a1a:	f88d 309c 	strb.w	r3, [sp, #156]	; 0x9c
1a002a1e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
1a002a22:	2202      	movs	r2, #2
1a002a24:	e79d      	b.n	1a002962 <_vfprintf_r+0x582>
1a002a26:	f048 0801 	orr.w	r8, r8, #1
1a002a2a:	f89a 6000 	ldrb.w	r6, [sl]
1a002a2e:	e555      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002a30:	1a007c84 	.word	0x1a007c84
1a002a34:	1a007c94 	.word	0x1a007c94
1a002a38:	1a007c50 	.word	0x1a007c50
1a002a3c:	9e07      	ldr	r6, [sp, #28]
1a002a3e:	4630      	mov	r0, r6
1a002a40:	f002 fcec 	bl	1a00541c <_localeconv_r>
1a002a44:	6843      	ldr	r3, [r0, #4]
1a002a46:	931c      	str	r3, [sp, #112]	; 0x70
1a002a48:	4618      	mov	r0, r3
1a002a4a:	f7ff fc59 	bl	1a002300 <strlen>
1a002a4e:	901f      	str	r0, [sp, #124]	; 0x7c
1a002a50:	4604      	mov	r4, r0
1a002a52:	4630      	mov	r0, r6
1a002a54:	f002 fce2 	bl	1a00541c <_localeconv_r>
1a002a58:	6883      	ldr	r3, [r0, #8]
1a002a5a:	931e      	str	r3, [sp, #120]	; 0x78
1a002a5c:	2c00      	cmp	r4, #0
1a002a5e:	f43f adb8 	beq.w	1a0025d2 <_vfprintf_r+0x1f2>
1a002a62:	f89a 6000 	ldrb.w	r6, [sl]
1a002a66:	2b00      	cmp	r3, #0
1a002a68:	f43f ad38 	beq.w	1a0024dc <_vfprintf_r+0xfc>
1a002a6c:	781b      	ldrb	r3, [r3, #0]
1a002a6e:	2b00      	cmp	r3, #0
1a002a70:	f43f ad34 	beq.w	1a0024dc <_vfprintf_r+0xfc>
1a002a74:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
1a002a78:	e530      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002a7a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
1a002a7c:	f89a 6000 	ldrb.w	r6, [sl]
1a002a80:	681a      	ldr	r2, [r3, #0]
1a002a82:	920a      	str	r2, [sp, #40]	; 0x28
1a002a84:	2a00      	cmp	r2, #0
1a002a86:	f103 0304 	add.w	r3, r3, #4
1a002a8a:	f2c0 8696 	blt.w	1a0037ba <_vfprintf_r+0x13da>
1a002a8e:	930c      	str	r3, [sp, #48]	; 0x30
1a002a90:	e524      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002a92:	f88d 509b 	strb.w	r5, [sp, #155]	; 0x9b
1a002a96:	f89a 6000 	ldrb.w	r6, [sl]
1a002a9a:	e51f      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002a9c:	f89a 6000 	ldrb.w	r6, [sl]
1a002aa0:	f048 0804 	orr.w	r8, r8, #4
1a002aa4:	e51a      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002aa6:	f89a 6000 	ldrb.w	r6, [sl]
1a002aaa:	2e2a      	cmp	r6, #42	; 0x2a
1a002aac:	f10a 0201 	add.w	r2, sl, #1
1a002ab0:	f001 81b2 	beq.w	1a003e18 <_vfprintf_r+0x1a38>
1a002ab4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
1a002ab8:	2b09      	cmp	r3, #9
1a002aba:	4692      	mov	sl, r2
1a002abc:	f04f 0900 	mov.w	r9, #0
1a002ac0:	f63f ad0e 	bhi.w	1a0024e0 <_vfprintf_r+0x100>
1a002ac4:	f81a 6b01 	ldrb.w	r6, [sl], #1
1a002ac8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
1a002acc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
1a002ad0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
1a002ad4:	2b09      	cmp	r3, #9
1a002ad6:	d9f5      	bls.n	1a002ac4 <_vfprintf_r+0x6e4>
1a002ad8:	e502      	b.n	1a0024e0 <_vfprintf_r+0x100>
1a002ada:	f048 0880 	orr.w	r8, r8, #128	; 0x80
1a002ade:	f89a 6000 	ldrb.w	r6, [sl]
1a002ae2:	e4fb      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002ae4:	9c0c      	ldr	r4, [sp, #48]	; 0x30
1a002ae6:	3407      	adds	r4, #7
1a002ae8:	f024 0407 	bic.w	r4, r4, #7
1a002aec:	ed94 7b00 	vldr	d7, [r4]
1a002af0:	ec52 1b17 	vmov	r1, r2, d7
1a002af4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
1a002af8:	9321      	str	r3, [sp, #132]	; 0x84
1a002afa:	ed8d 7a20 	vstr	s14, [sp, #128]	; 0x80
1a002afe:	3408      	adds	r4, #8
1a002b00:	e9dd 0120 	ldrd	r0, r1, [sp, #128]	; 0x80
1a002b04:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a002b08:	4bba      	ldr	r3, [pc, #744]	; (1a002df4 <_vfprintf_r+0xa14>)
1a002b0a:	940c      	str	r4, [sp, #48]	; 0x30
1a002b0c:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
1a002b10:	f004 fe40 	bl	1a007794 <__aeabi_dcmpun>
1a002b14:	2800      	cmp	r0, #0
1a002b16:	f040 8471 	bne.w	1a0033fc <_vfprintf_r+0x101c>
1a002b1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a002b1e:	4bb5      	ldr	r3, [pc, #724]	; (1a002df4 <_vfprintf_r+0xa14>)
1a002b20:	e9dd 0120 	ldrd	r0, r1, [sp, #128]	; 0x80
1a002b24:	f004 fe18 	bl	1a007758 <__aeabi_dcmple>
1a002b28:	2800      	cmp	r0, #0
1a002b2a:	f040 8467 	bne.w	1a0033fc <_vfprintf_r+0x101c>
1a002b2e:	2200      	movs	r2, #0
1a002b30:	2300      	movs	r3, #0
1a002b32:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
1a002b36:	f004 fe05 	bl	1a007744 <__aeabi_dcmplt>
1a002b3a:	2800      	cmp	r0, #0
1a002b3c:	f040 855c 	bne.w	1a0035f8 <_vfprintf_r+0x1218>
1a002b40:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a002b44:	4fac      	ldr	r7, [pc, #688]	; (1a002df8 <_vfprintf_r+0xa18>)
1a002b46:	4bad      	ldr	r3, [pc, #692]	; (1a002dfc <_vfprintf_r+0xa1c>)
1a002b48:	2000      	movs	r0, #0
1a002b4a:	2103      	movs	r1, #3
1a002b4c:	9108      	str	r1, [sp, #32]
1a002b4e:	900e      	str	r0, [sp, #56]	; 0x38
1a002b50:	f028 0880 	bic.w	r8, r8, #128	; 0x80
1a002b54:	2e47      	cmp	r6, #71	; 0x47
1a002b56:	bfd8      	it	le
1a002b58:	461f      	movle	r7, r3
1a002b5a:	910d      	str	r1, [sp, #52]	; 0x34
1a002b5c:	4681      	mov	r9, r0
1a002b5e:	9013      	str	r0, [sp, #76]	; 0x4c
1a002b60:	9018      	str	r0, [sp, #96]	; 0x60
1a002b62:	9015      	str	r0, [sp, #84]	; 0x54
1a002b64:	e5c9      	b.n	1a0026fa <_vfprintf_r+0x31a>
1a002b66:	980c      	ldr	r0, [sp, #48]	; 0x30
1a002b68:	2300      	movs	r3, #0
1a002b6a:	6801      	ldr	r1, [r0, #0]
1a002b6c:	f88d 309b 	strb.w	r3, [sp, #155]	; 0x9b
1a002b70:	461a      	mov	r2, r3
1a002b72:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
1a002b76:	2301      	movs	r3, #1
1a002b78:	1d01      	adds	r1, r0, #4
1a002b7a:	9308      	str	r3, [sp, #32]
1a002b7c:	920e      	str	r2, [sp, #56]	; 0x38
1a002b7e:	4691      	mov	r9, r2
1a002b80:	9213      	str	r2, [sp, #76]	; 0x4c
1a002b82:	9218      	str	r2, [sp, #96]	; 0x60
1a002b84:	9215      	str	r2, [sp, #84]	; 0x54
1a002b86:	e9cd 130c 	strd	r1, r3, [sp, #48]	; 0x30
1a002b8a:	af41      	add	r7, sp, #260	; 0x104
1a002b8c:	e5b9      	b.n	1a002702 <_vfprintf_r+0x322>
1a002b8e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
1a002b90:	681f      	ldr	r7, [r3, #0]
1a002b92:	2500      	movs	r5, #0
1a002b94:	f88d 509b 	strb.w	r5, [sp, #155]	; 0x9b
1a002b98:	1d1c      	adds	r4, r3, #4
1a002b9a:	2f00      	cmp	r7, #0
1a002b9c:	f000 8638 	beq.w	1a003810 <_vfprintf_r+0x1430>
1a002ba0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
1a002ba4:	f000 870f 	beq.w	1a0039c6 <_vfprintf_r+0x15e6>
1a002ba8:	464a      	mov	r2, r9
1a002baa:	4629      	mov	r1, r5
1a002bac:	4638      	mov	r0, r7
1a002bae:	f002 ff5f 	bl	1a005a70 <memchr>
1a002bb2:	900e      	str	r0, [sp, #56]	; 0x38
1a002bb4:	2800      	cmp	r0, #0
1a002bb6:	f000 85e6 	beq.w	1a003786 <_vfprintf_r+0x13a6>
1a002bba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
1a002bbc:	1bdb      	subs	r3, r3, r7
1a002bbe:	930d      	str	r3, [sp, #52]	; 0x34
1a002bc0:	46a9      	mov	r9, r5
1a002bc2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a002bc6:	940c      	str	r4, [sp, #48]	; 0x30
1a002bc8:	9308      	str	r3, [sp, #32]
1a002bca:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
1a002bce:	f8cd 904c 	str.w	r9, [sp, #76]	; 0x4c
1a002bd2:	f8cd 9060 	str.w	r9, [sp, #96]	; 0x60
1a002bd6:	f8cd 9054 	str.w	r9, [sp, #84]	; 0x54
1a002bda:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a002bde:	e58c      	b.n	1a0026fa <_vfprintf_r+0x31a>
1a002be0:	f048 0310 	orr.w	r3, r8, #16
1a002be4:	069a      	lsls	r2, r3, #26
1a002be6:	f53f aeb2 	bmi.w	1a00294e <_vfprintf_r+0x56e>
1a002bea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002bec:	06df      	lsls	r7, r3, #27
1a002bee:	f102 0104 	add.w	r1, r2, #4
1a002bf2:	f100 837e 	bmi.w	1a0032f2 <_vfprintf_r+0xf12>
1a002bf6:	065d      	lsls	r5, r3, #25
1a002bf8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002bfa:	f100 84e5 	bmi.w	1a0035c8 <_vfprintf_r+0x11e8>
1a002bfe:	059c      	lsls	r4, r3, #22
1a002c00:	f140 8377 	bpl.w	1a0032f2 <_vfprintf_r+0xf12>
1a002c04:	7814      	ldrb	r4, [r2, #0]
1a002c06:	910c      	str	r1, [sp, #48]	; 0x30
1a002c08:	2500      	movs	r5, #0
1a002c0a:	2201      	movs	r2, #1
1a002c0c:	e6a9      	b.n	1a002962 <_vfprintf_r+0x582>
1a002c0e:	4b7c      	ldr	r3, [pc, #496]	; (1a002e00 <_vfprintf_r+0xa20>)
1a002c10:	931b      	str	r3, [sp, #108]	; 0x6c
1a002c12:	f018 0f20 	tst.w	r8, #32
1a002c16:	f47f aeec 	bne.w	1a0029f2 <_vfprintf_r+0x612>
1a002c1a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002c1c:	f018 0f10 	tst.w	r8, #16
1a002c20:	f102 0304 	add.w	r3, r2, #4
1a002c24:	f040 8354 	bne.w	1a0032d0 <_vfprintf_r+0xef0>
1a002c28:	f018 0f40 	tst.w	r8, #64	; 0x40
1a002c2c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002c2e:	f040 84d1 	bne.w	1a0035d4 <_vfprintf_r+0x11f4>
1a002c32:	f418 7f00 	tst.w	r8, #512	; 0x200
1a002c36:	f000 834b 	beq.w	1a0032d0 <_vfprintf_r+0xef0>
1a002c3a:	7814      	ldrb	r4, [r2, #0]
1a002c3c:	930c      	str	r3, [sp, #48]	; 0x30
1a002c3e:	2500      	movs	r5, #0
1a002c40:	e6e0      	b.n	1a002a04 <_vfprintf_r+0x624>
1a002c42:	f89d 309b 	ldrb.w	r3, [sp, #155]	; 0x9b
1a002c46:	f89a 6000 	ldrb.w	r6, [sl]
1a002c4a:	2b00      	cmp	r3, #0
1a002c4c:	f47f ac46 	bne.w	1a0024dc <_vfprintf_r+0xfc>
1a002c50:	2320      	movs	r3, #32
1a002c52:	f88d 309b 	strb.w	r3, [sp, #155]	; 0x9b
1a002c56:	e441      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002c58:	f89a 6000 	ldrb.w	r6, [sl]
1a002c5c:	2e6c      	cmp	r6, #108	; 0x6c
1a002c5e:	bf03      	ittte	eq
1a002c60:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
1a002c64:	f048 0820 	orreq.w	r8, r8, #32
1a002c68:	f10a 0a01 	addeq.w	sl, sl, #1
1a002c6c:	f048 0810 	orrne.w	r8, r8, #16
1a002c70:	e434      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002c72:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002c74:	f018 0f20 	tst.w	r8, #32
1a002c78:	f852 3b04 	ldr.w	r3, [r2], #4
1a002c7c:	920c      	str	r2, [sp, #48]	; 0x30
1a002c7e:	f000 83a1 	beq.w	1a0033c4 <_vfprintf_r+0xfe4>
1a002c82:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a002c84:	4610      	mov	r0, r2
1a002c86:	17d1      	asrs	r1, r2, #31
1a002c88:	e9c3 0100 	strd	r0, r1, [r3]
1a002c8c:	4657      	mov	r7, sl
1a002c8e:	e64d      	b.n	1a00292c <_vfprintf_r+0x54c>
1a002c90:	f89a 6000 	ldrb.w	r6, [sl]
1a002c94:	2e68      	cmp	r6, #104	; 0x68
1a002c96:	bf03      	ittte	eq
1a002c98:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
1a002c9c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
1a002ca0:	f10a 0a01 	addeq.w	sl, sl, #1
1a002ca4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
1a002ca8:	e418      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002caa:	990c      	ldr	r1, [sp, #48]	; 0x30
1a002cac:	4b55      	ldr	r3, [pc, #340]	; (1a002e04 <_vfprintf_r+0xa24>)
1a002cae:	680c      	ldr	r4, [r1, #0]
1a002cb0:	931b      	str	r3, [sp, #108]	; 0x6c
1a002cb2:	f647 0230 	movw	r2, #30768	; 0x7830
1a002cb6:	3104      	adds	r1, #4
1a002cb8:	f8ad 209c 	strh.w	r2, [sp, #156]	; 0x9c
1a002cbc:	f048 0302 	orr.w	r3, r8, #2
1a002cc0:	910c      	str	r1, [sp, #48]	; 0x30
1a002cc2:	2500      	movs	r5, #0
1a002cc4:	2202      	movs	r2, #2
1a002cc6:	2678      	movs	r6, #120	; 0x78
1a002cc8:	e64b      	b.n	1a002962 <_vfprintf_r+0x582>
1a002cca:	f048 0808 	orr.w	r8, r8, #8
1a002cce:	f89a 6000 	ldrb.w	r6, [sl]
1a002cd2:	e403      	b.n	1a0024dc <_vfprintf_r+0xfc>
1a002cd4:	f048 0310 	orr.w	r3, r8, #16
1a002cd8:	069f      	lsls	r7, r3, #26
1a002cda:	f53f acd1 	bmi.w	1a002680 <_vfprintf_r+0x2a0>
1a002cde:	990c      	ldr	r1, [sp, #48]	; 0x30
1a002ce0:	06dd      	lsls	r5, r3, #27
1a002ce2:	f101 0204 	add.w	r2, r1, #4
1a002ce6:	f100 82fd 	bmi.w	1a0032e4 <_vfprintf_r+0xf04>
1a002cea:	065c      	lsls	r4, r3, #25
1a002cec:	990c      	ldr	r1, [sp, #48]	; 0x30
1a002cee:	f100 8476 	bmi.w	1a0035de <_vfprintf_r+0x11fe>
1a002cf2:	0598      	lsls	r0, r3, #22
1a002cf4:	f140 82f6 	bpl.w	1a0032e4 <_vfprintf_r+0xf04>
1a002cf8:	f991 4000 	ldrsb.w	r4, [r1]
1a002cfc:	920c      	str	r2, [sp, #48]	; 0x30
1a002cfe:	17e5      	asrs	r5, r4, #31
1a002d00:	4620      	mov	r0, r4
1a002d02:	4629      	mov	r1, r5
1a002d04:	e4c7      	b.n	1a002696 <_vfprintf_r+0x2b6>
1a002d06:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002d08:	f018 0f10 	tst.w	r8, #16
1a002d0c:	f102 0304 	add.w	r3, r2, #4
1a002d10:	f040 82e3 	bne.w	1a0032da <_vfprintf_r+0xefa>
1a002d14:	f018 0f40 	tst.w	r8, #64	; 0x40
1a002d18:	9a0c      	ldr	r2, [sp, #48]	; 0x30
1a002d1a:	f040 8468 	bne.w	1a0035ee <_vfprintf_r+0x120e>
1a002d1e:	f418 7f00 	tst.w	r8, #512	; 0x200
1a002d22:	f000 82da 	beq.w	1a0032da <_vfprintf_r+0xefa>
1a002d26:	7814      	ldrb	r4, [r2, #0]
1a002d28:	930c      	str	r3, [sp, #48]	; 0x30
1a002d2a:	2500      	movs	r5, #0
1a002d2c:	e488      	b.n	1a002640 <_vfprintf_r+0x260>
1a002d2e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
1a002d32:	f7fd fb35 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a002d36:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002d3a:	9309      	str	r3, [sp, #36]	; 0x24
1a002d3c:	e443      	b.n	1a0025c6 <_vfprintf_r+0x1e6>
1a002d3e:	2e00      	cmp	r6, #0
1a002d40:	f43f adf8 	beq.w	1a002934 <_vfprintf_r+0x554>
1a002d44:	2300      	movs	r3, #0
1a002d46:	2101      	movs	r1, #1
1a002d48:	461a      	mov	r2, r3
1a002d4a:	9108      	str	r1, [sp, #32]
1a002d4c:	f88d 6104 	strb.w	r6, [sp, #260]	; 0x104
1a002d50:	f88d 309b 	strb.w	r3, [sp, #155]	; 0x9b
1a002d54:	930e      	str	r3, [sp, #56]	; 0x38
1a002d56:	4699      	mov	r9, r3
1a002d58:	9313      	str	r3, [sp, #76]	; 0x4c
1a002d5a:	9318      	str	r3, [sp, #96]	; 0x60
1a002d5c:	9315      	str	r3, [sp, #84]	; 0x54
1a002d5e:	910d      	str	r1, [sp, #52]	; 0x34
1a002d60:	af41      	add	r7, sp, #260	; 0x104
1a002d62:	e4ce      	b.n	1a002702 <_vfprintf_r+0x322>
1a002d64:	2e65      	cmp	r6, #101	; 0x65
1a002d66:	f340 80ca 	ble.w	1a002efe <_vfprintf_r+0xb1e>
1a002d6a:	2200      	movs	r2, #0
1a002d6c:	2300      	movs	r3, #0
1a002d6e:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
1a002d72:	f004 fcdd 	bl	1a007730 <__aeabi_dcmpeq>
1a002d76:	2800      	cmp	r0, #0
1a002d78:	f000 8169 	beq.w	1a00304e <_vfprintf_r+0xc6e>
1a002d7c:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a002d7e:	4a22      	ldr	r2, [pc, #136]	; (1a002e08 <_vfprintf_r+0xa28>)
1a002d80:	f8cb 2000 	str.w	r2, [fp]
1a002d84:	3301      	adds	r3, #1
1a002d86:	3401      	adds	r4, #1
1a002d88:	2201      	movs	r2, #1
1a002d8a:	2b07      	cmp	r3, #7
1a002d8c:	e9cd 342f 	strd	r3, r4, [sp, #188]	; 0xbc
1a002d90:	f8cb 2004 	str.w	r2, [fp, #4]
1a002d94:	f300 8407 	bgt.w	1a0035a6 <_vfprintf_r+0x11c6>
1a002d98:	f10b 0b08 	add.w	fp, fp, #8
1a002d9c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a002d9e:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a002da0:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a002da2:	4293      	cmp	r3, r2
1a002da4:	db03      	blt.n	1a002dae <_vfprintf_r+0x9ce>
1a002da6:	f018 0f01 	tst.w	r8, #1
1a002daa:	f43f ad6a 	beq.w	1a002882 <_vfprintf_r+0x4a2>
1a002dae:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a002db0:	9a1a      	ldr	r2, [sp, #104]	; 0x68
1a002db2:	f8cb 2000 	str.w	r2, [fp]
1a002db6:	9a19      	ldr	r2, [sp, #100]	; 0x64
1a002db8:	f8cb 2004 	str.w	r2, [fp, #4]
1a002dbc:	3301      	adds	r3, #1
1a002dbe:	4414      	add	r4, r2
1a002dc0:	2b07      	cmp	r3, #7
1a002dc2:	e9cd 342f 	strd	r3, r4, [sp, #188]	; 0xbc
1a002dc6:	f300 8516 	bgt.w	1a0037f6 <_vfprintf_r+0x1416>
1a002dca:	f10b 0b08 	add.w	fp, fp, #8
1a002dce:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a002dd0:	1e5d      	subs	r5, r3, #1
1a002dd2:	2d00      	cmp	r5, #0
1a002dd4:	f77f ad55 	ble.w	1a002882 <_vfprintf_r+0x4a2>
1a002dd8:	2d10      	cmp	r5, #16
1a002dda:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a002ddc:	4b0b      	ldr	r3, [pc, #44]	; (1a002e0c <_vfprintf_r+0xa2c>)
1a002dde:	f340 82e7 	ble.w	1a0033b0 <_vfprintf_r+0xfd0>
1a002de2:	4619      	mov	r1, r3
1a002de4:	2610      	movs	r6, #16
1a002de6:	4623      	mov	r3, r4
1a002de8:	9f07      	ldr	r7, [sp, #28]
1a002dea:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a002dee:	460c      	mov	r4, r1
1a002df0:	e014      	b.n	1a002e1c <_vfprintf_r+0xa3c>
1a002df2:	bf00      	nop
1a002df4:	7fefffff 	.word	0x7fefffff
1a002df8:	1a007c44 	.word	0x1a007c44
1a002dfc:	1a007c40 	.word	0x1a007c40
1a002e00:	1a007c64 	.word	0x1a007c64
1a002e04:	1a007c50 	.word	0x1a007c50
1a002e08:	1a007c80 	.word	0x1a007c80
1a002e0c:	1a007c94 	.word	0x1a007c94
1a002e10:	f10b 0b08 	add.w	fp, fp, #8
1a002e14:	3d10      	subs	r5, #16
1a002e16:	2d10      	cmp	r5, #16
1a002e18:	f340 82c7 	ble.w	1a0033aa <_vfprintf_r+0xfca>
1a002e1c:	3201      	adds	r2, #1
1a002e1e:	3310      	adds	r3, #16
1a002e20:	2a07      	cmp	r2, #7
1a002e22:	e9cd 232f 	strd	r2, r3, [sp, #188]	; 0xbc
1a002e26:	e9cb 4600 	strd	r4, r6, [fp]
1a002e2a:	ddf1      	ble.n	1a002e10 <_vfprintf_r+0xa30>
1a002e2c:	aa2e      	add	r2, sp, #184	; 0xb8
1a002e2e:	4649      	mov	r1, r9
1a002e30:	4638      	mov	r0, r7
1a002e32:	f003 fa75 	bl	1a006320 <__sprint_r>
1a002e36:	2800      	cmp	r0, #0
1a002e38:	d14c      	bne.n	1a002ed4 <_vfprintf_r+0xaf4>
1a002e3a:	e9dd 232f 	ldrd	r2, r3, [sp, #188]	; 0xbc
1a002e3e:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a002e42:	e7e7      	b.n	1a002e14 <_vfprintf_r+0xa34>
1a002e44:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1a002e46:	9a08      	ldr	r2, [sp, #32]
1a002e48:	1a9d      	subs	r5, r3, r2
1a002e4a:	2d00      	cmp	r5, #0
1a002e4c:	f77f acc9 	ble.w	1a0027e2 <_vfprintf_r+0x402>
1a002e50:	2d10      	cmp	r5, #16
1a002e52:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a002e54:	4bbc      	ldr	r3, [pc, #752]	; (1a003148 <_vfprintf_r+0xd68>)
1a002e56:	dd27      	ble.n	1a002ea8 <_vfprintf_r+0xac8>
1a002e58:	4659      	mov	r1, fp
1a002e5a:	4620      	mov	r0, r4
1a002e5c:	46bb      	mov	fp, r7
1a002e5e:	461c      	mov	r4, r3
1a002e60:	4637      	mov	r7, r6
1a002e62:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
1a002e64:	e004      	b.n	1a002e70 <_vfprintf_r+0xa90>
1a002e66:	3d10      	subs	r5, #16
1a002e68:	2d10      	cmp	r5, #16
1a002e6a:	f101 0108 	add.w	r1, r1, #8
1a002e6e:	dd16      	ble.n	1a002e9e <_vfprintf_r+0xabe>
1a002e70:	3201      	adds	r2, #1
1a002e72:	3010      	adds	r0, #16
1a002e74:	2310      	movs	r3, #16
1a002e76:	2a07      	cmp	r2, #7
1a002e78:	e9cd 202f 	strd	r2, r0, [sp, #188]	; 0xbc
1a002e7c:	600c      	str	r4, [r1, #0]
1a002e7e:	604b      	str	r3, [r1, #4]
1a002e80:	ddf1      	ble.n	1a002e66 <_vfprintf_r+0xa86>
1a002e82:	aa2e      	add	r2, sp, #184	; 0xb8
1a002e84:	4631      	mov	r1, r6
1a002e86:	9807      	ldr	r0, [sp, #28]
1a002e88:	f003 fa4a 	bl	1a006320 <__sprint_r>
1a002e8c:	2800      	cmp	r0, #0
1a002e8e:	f040 80a8 	bne.w	1a002fe2 <_vfprintf_r+0xc02>
1a002e92:	3d10      	subs	r5, #16
1a002e94:	2d10      	cmp	r5, #16
1a002e96:	e9dd 202f 	ldrd	r2, r0, [sp, #188]	; 0xbc
1a002e9a:	a931      	add	r1, sp, #196	; 0xc4
1a002e9c:	dce8      	bgt.n	1a002e70 <_vfprintf_r+0xa90>
1a002e9e:	463e      	mov	r6, r7
1a002ea0:	4623      	mov	r3, r4
1a002ea2:	465f      	mov	r7, fp
1a002ea4:	4604      	mov	r4, r0
1a002ea6:	468b      	mov	fp, r1
1a002ea8:	3201      	adds	r2, #1
1a002eaa:	442c      	add	r4, r5
1a002eac:	2a07      	cmp	r2, #7
1a002eae:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a002eb2:	e9cb 3500 	strd	r3, r5, [fp]
1a002eb6:	f300 8292 	bgt.w	1a0033de <_vfprintf_r+0xffe>
1a002eba:	f10b 0b08 	add.w	fp, fp, #8
1a002ebe:	e490      	b.n	1a0027e2 <_vfprintf_r+0x402>
1a002ec0:	aa2e      	add	r2, sp, #184	; 0xb8
1a002ec2:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a002ec4:	9807      	ldr	r0, [sp, #28]
1a002ec6:	f003 fa2b 	bl	1a006320 <__sprint_r>
1a002eca:	2800      	cmp	r0, #0
1a002ecc:	f43f ad23 	beq.w	1a002916 <_vfprintf_r+0x536>
1a002ed0:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a002ed4:	990e      	ldr	r1, [sp, #56]	; 0x38
1a002ed6:	b111      	cbz	r1, 1a002ede <_vfprintf_r+0xafe>
1a002ed8:	9807      	ldr	r0, [sp, #28]
1a002eda:	f002 f981 	bl	1a0051e0 <_free_r>
1a002ede:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
1a002ee2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
1a002ee6:	07d0      	lsls	r0, r2, #31
1a002ee8:	d402      	bmi.n	1a002ef0 <_vfprintf_r+0xb10>
1a002eea:	0599      	lsls	r1, r3, #22
1a002eec:	f140 81d0 	bpl.w	1a003290 <_vfprintf_r+0xeb0>
1a002ef0:	065a      	lsls	r2, r3, #25
1a002ef2:	f53f ab65 	bmi.w	1a0025c0 <_vfprintf_r+0x1e0>
1a002ef6:	9809      	ldr	r0, [sp, #36]	; 0x24
1a002ef8:	b05b      	add	sp, #364	; 0x16c
1a002efa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a002efe:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a002f00:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a002f02:	2a01      	cmp	r2, #1
1a002f04:	f104 0401 	add.w	r4, r4, #1
1a002f08:	f103 0501 	add.w	r5, r3, #1
1a002f0c:	f10b 0608 	add.w	r6, fp, #8
1a002f10:	f340 811c 	ble.w	1a00314c <_vfprintf_r+0xd6c>
1a002f14:	2301      	movs	r3, #1
1a002f16:	2d07      	cmp	r5, #7
1a002f18:	f8cb 7000 	str.w	r7, [fp]
1a002f1c:	e9cd 542f 	strd	r5, r4, [sp, #188]	; 0xbc
1a002f20:	f8cb 3004 	str.w	r3, [fp, #4]
1a002f24:	f300 81bb 	bgt.w	1a00329e <_vfprintf_r+0xebe>
1a002f28:	9b19      	ldr	r3, [sp, #100]	; 0x64
1a002f2a:	9a1a      	ldr	r2, [sp, #104]	; 0x68
1a002f2c:	1c69      	adds	r1, r5, #1
1a002f2e:	441c      	add	r4, r3
1a002f30:	2907      	cmp	r1, #7
1a002f32:	910f      	str	r1, [sp, #60]	; 0x3c
1a002f34:	e9cd 142f 	strd	r1, r4, [sp, #188]	; 0xbc
1a002f38:	e9c6 2300 	strd	r2, r3, [r6]
1a002f3c:	f300 81bb 	bgt.w	1a0032b6 <_vfprintf_r+0xed6>
1a002f40:	3608      	adds	r6, #8
1a002f42:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
1a002f44:	1c53      	adds	r3, r2, #1
1a002f46:	461d      	mov	r5, r3
1a002f48:	950d      	str	r5, [sp, #52]	; 0x34
1a002f4a:	9d14      	ldr	r5, [sp, #80]	; 0x50
1a002f4c:	9312      	str	r3, [sp, #72]	; 0x48
1a002f4e:	2200      	movs	r2, #0
1a002f50:	2300      	movs	r3, #0
1a002f52:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
1a002f56:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
1a002f5a:	f106 0b08 	add.w	fp, r6, #8
1a002f5e:	f004 fbe7 	bl	1a007730 <__aeabi_dcmpeq>
1a002f62:	2800      	cmp	r0, #0
1a002f64:	f040 80c2 	bne.w	1a0030ec <_vfprintf_r+0xd0c>
1a002f68:	9d0d      	ldr	r5, [sp, #52]	; 0x34
1a002f6a:	f8c6 9004 	str.w	r9, [r6, #4]
1a002f6e:	3701      	adds	r7, #1
1a002f70:	444c      	add	r4, r9
1a002f72:	2d07      	cmp	r5, #7
1a002f74:	6037      	str	r7, [r6, #0]
1a002f76:	9430      	str	r4, [sp, #192]	; 0xc0
1a002f78:	952f      	str	r5, [sp, #188]	; 0xbc
1a002f7a:	f300 80f9 	bgt.w	1a003170 <_vfprintf_r+0xd90>
1a002f7e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
1a002f80:	f106 0310 	add.w	r3, r6, #16
1a002f84:	3202      	adds	r2, #2
1a002f86:	465e      	mov	r6, fp
1a002f88:	920d      	str	r2, [sp, #52]	; 0x34
1a002f8a:	469b      	mov	fp, r3
1a002f8c:	9a1d      	ldr	r2, [sp, #116]	; 0x74
1a002f8e:	6072      	str	r2, [r6, #4]
1a002f90:	4414      	add	r4, r2
1a002f92:	9a0d      	ldr	r2, [sp, #52]	; 0x34
1a002f94:	9430      	str	r4, [sp, #192]	; 0xc0
1a002f96:	ab2a      	add	r3, sp, #168	; 0xa8
1a002f98:	2a07      	cmp	r2, #7
1a002f9a:	922f      	str	r2, [sp, #188]	; 0xbc
1a002f9c:	6033      	str	r3, [r6, #0]
1a002f9e:	f77f ac70 	ble.w	1a002882 <_vfprintf_r+0x4a2>
1a002fa2:	aa2e      	add	r2, sp, #184	; 0xb8
1a002fa4:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a002fa6:	9807      	ldr	r0, [sp, #28]
1a002fa8:	f003 f9ba 	bl	1a006320 <__sprint_r>
1a002fac:	2800      	cmp	r0, #0
1a002fae:	d18f      	bne.n	1a002ed0 <_vfprintf_r+0xaf0>
1a002fb0:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a002fb2:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a002fb6:	e464      	b.n	1a002882 <_vfprintf_r+0x4a2>
1a002fb8:	981b      	ldr	r0, [sp, #108]	; 0x6c
1a002fba:	af5a      	add	r7, sp, #360	; 0x168
1a002fbc:	0923      	lsrs	r3, r4, #4
1a002fbe:	f004 010f 	and.w	r1, r4, #15
1a002fc2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
1a002fc6:	092a      	lsrs	r2, r5, #4
1a002fc8:	461c      	mov	r4, r3
1a002fca:	4615      	mov	r5, r2
1a002fcc:	5c43      	ldrb	r3, [r0, r1]
1a002fce:	f807 3d01 	strb.w	r3, [r7, #-1]!
1a002fd2:	ea54 0305 	orrs.w	r3, r4, r5
1a002fd6:	d1f1      	bne.n	1a002fbc <_vfprintf_r+0xbdc>
1a002fd8:	9b08      	ldr	r3, [sp, #32]
1a002fda:	1bdb      	subs	r3, r3, r7
1a002fdc:	930d      	str	r3, [sp, #52]	; 0x34
1a002fde:	f7ff bb80 	b.w	1a0026e2 <_vfprintf_r+0x302>
1a002fe2:	46b1      	mov	r9, r6
1a002fe4:	e776      	b.n	1a002ed4 <_vfprintf_r+0xaf4>
1a002fe6:	aa2e      	add	r2, sp, #184	; 0xb8
1a002fe8:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a002fea:	9807      	ldr	r0, [sp, #28]
1a002fec:	f003 f998 	bl	1a006320 <__sprint_r>
1a002ff0:	2800      	cmp	r0, #0
1a002ff2:	f47f af6d 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a002ff6:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a002ff8:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a002ffc:	f7ff bbdd 	b.w	1a0027ba <_vfprintf_r+0x3da>
1a003000:	aa2e      	add	r2, sp, #184	; 0xb8
1a003002:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003004:	9807      	ldr	r0, [sp, #28]
1a003006:	f003 f98b 	bl	1a006320 <__sprint_r>
1a00300a:	2800      	cmp	r0, #0
1a00300c:	f47f af60 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003010:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a003012:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003016:	f7ff bbe0 	b.w	1a0027da <_vfprintf_r+0x3fa>
1a00301a:	4698      	mov	r8, r3
1a00301c:	2d00      	cmp	r5, #0
1a00301e:	bf08      	it	eq
1a003020:	2c0a      	cmpeq	r4, #10
1a003022:	f080 8170 	bcs.w	1a003306 <_vfprintf_r+0xf26>
1a003026:	af5a      	add	r7, sp, #360	; 0x168
1a003028:	3430      	adds	r4, #48	; 0x30
1a00302a:	2301      	movs	r3, #1
1a00302c:	f807 4d01 	strb.w	r4, [r7, #-1]!
1a003030:	930d      	str	r3, [sp, #52]	; 0x34
1a003032:	f7ff bb56 	b.w	1a0026e2 <_vfprintf_r+0x302>
1a003036:	aa2e      	add	r2, sp, #184	; 0xb8
1a003038:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a00303a:	9807      	ldr	r0, [sp, #28]
1a00303c:	f003 f970 	bl	1a006320 <__sprint_r>
1a003040:	2800      	cmp	r0, #0
1a003042:	f47f af45 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003046:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a003048:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a00304c:	e406      	b.n	1a00285c <_vfprintf_r+0x47c>
1a00304e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a003050:	2b00      	cmp	r3, #0
1a003052:	f340 8274 	ble.w	1a00353e <_vfprintf_r+0x115e>
1a003056:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
1a00305a:	4293      	cmp	r3, r2
1a00305c:	bfa8      	it	ge
1a00305e:	4613      	movge	r3, r2
1a003060:	2b00      	cmp	r3, #0
1a003062:	461d      	mov	r5, r3
1a003064:	dd0d      	ble.n	1a003082 <_vfprintf_r+0xca2>
1a003066:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a003068:	f8cb 7000 	str.w	r7, [fp]
1a00306c:	3301      	adds	r3, #1
1a00306e:	442c      	add	r4, r5
1a003070:	2b07      	cmp	r3, #7
1a003072:	9430      	str	r4, [sp, #192]	; 0xc0
1a003074:	f8cb 5004 	str.w	r5, [fp, #4]
1a003078:	932f      	str	r3, [sp, #188]	; 0xbc
1a00307a:	f300 82c2 	bgt.w	1a003602 <_vfprintf_r+0x1222>
1a00307e:	f10b 0b08 	add.w	fp, fp, #8
1a003082:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003084:	2d00      	cmp	r5, #0
1a003086:	bfa8      	it	ge
1a003088:	1b5b      	subge	r3, r3, r5
1a00308a:	2b00      	cmp	r3, #0
1a00308c:	461d      	mov	r5, r3
1a00308e:	f340 8099 	ble.w	1a0031c4 <_vfprintf_r+0xde4>
1a003092:	2d10      	cmp	r5, #16
1a003094:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a003096:	4b2c      	ldr	r3, [pc, #176]	; (1a003148 <_vfprintf_r+0xd68>)
1a003098:	f340 83d9 	ble.w	1a00384e <_vfprintf_r+0x146e>
1a00309c:	4618      	mov	r0, r3
1a00309e:	4621      	mov	r1, r4
1a0030a0:	465b      	mov	r3, fp
1a0030a2:	2610      	movs	r6, #16
1a0030a4:	46bb      	mov	fp, r7
1a0030a6:	f8dd 901c 	ldr.w	r9, [sp, #28]
1a0030aa:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
1a0030ac:	4607      	mov	r7, r0
1a0030ae:	e004      	b.n	1a0030ba <_vfprintf_r+0xcda>
1a0030b0:	3308      	adds	r3, #8
1a0030b2:	3d10      	subs	r5, #16
1a0030b4:	2d10      	cmp	r5, #16
1a0030b6:	f340 83c5 	ble.w	1a003844 <_vfprintf_r+0x1464>
1a0030ba:	3201      	adds	r2, #1
1a0030bc:	3110      	adds	r1, #16
1a0030be:	2a07      	cmp	r2, #7
1a0030c0:	e9cd 212f 	strd	r2, r1, [sp, #188]	; 0xbc
1a0030c4:	e9c3 7600 	strd	r7, r6, [r3]
1a0030c8:	ddf2      	ble.n	1a0030b0 <_vfprintf_r+0xcd0>
1a0030ca:	aa2e      	add	r2, sp, #184	; 0xb8
1a0030cc:	4621      	mov	r1, r4
1a0030ce:	4648      	mov	r0, r9
1a0030d0:	f003 f926 	bl	1a006320 <__sprint_r>
1a0030d4:	2800      	cmp	r0, #0
1a0030d6:	f040 84a3 	bne.w	1a003a20 <_vfprintf_r+0x1640>
1a0030da:	e9dd 212f 	ldrd	r2, r1, [sp, #188]	; 0xbc
1a0030de:	ab31      	add	r3, sp, #196	; 0xc4
1a0030e0:	e7e7      	b.n	1a0030b2 <_vfprintf_r+0xcd2>
1a0030e2:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
1a0030e6:	af5a      	add	r7, sp, #360	; 0x168
1a0030e8:	f7ff bafb 	b.w	1a0026e2 <_vfprintf_r+0x302>
1a0030ec:	f1b9 0f00 	cmp.w	r9, #0
1a0030f0:	f77f af4c 	ble.w	1a002f8c <_vfprintf_r+0xbac>
1a0030f4:	f1b9 0f10 	cmp.w	r9, #16
1a0030f8:	4b13      	ldr	r3, [pc, #76]	; (1a003148 <_vfprintf_r+0xd68>)
1a0030fa:	f340 865b 	ble.w	1a003db4 <_vfprintf_r+0x19d4>
1a0030fe:	4619      	mov	r1, r3
1a003100:	4622      	mov	r2, r4
1a003102:	4633      	mov	r3, r6
1a003104:	2710      	movs	r7, #16
1a003106:	f8dd b01c 	ldr.w	fp, [sp, #28]
1a00310a:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
1a00310c:	9d12      	ldr	r5, [sp, #72]	; 0x48
1a00310e:	460e      	mov	r6, r1
1a003110:	e007      	b.n	1a003122 <_vfprintf_r+0xd42>
1a003112:	3308      	adds	r3, #8
1a003114:	f1a9 0910 	sub.w	r9, r9, #16
1a003118:	f1b9 0f10 	cmp.w	r9, #16
1a00311c:	f340 8352 	ble.w	1a0037c4 <_vfprintf_r+0x13e4>
1a003120:	3501      	adds	r5, #1
1a003122:	3210      	adds	r2, #16
1a003124:	2d07      	cmp	r5, #7
1a003126:	e9cd 522f 	strd	r5, r2, [sp, #188]	; 0xbc
1a00312a:	e9c3 6700 	strd	r6, r7, [r3]
1a00312e:	ddf0      	ble.n	1a003112 <_vfprintf_r+0xd32>
1a003130:	aa2e      	add	r2, sp, #184	; 0xb8
1a003132:	4621      	mov	r1, r4
1a003134:	4658      	mov	r0, fp
1a003136:	f003 f8f3 	bl	1a006320 <__sprint_r>
1a00313a:	2800      	cmp	r0, #0
1a00313c:	f040 8470 	bne.w	1a003a20 <_vfprintf_r+0x1640>
1a003140:	e9dd 522f 	ldrd	r5, r2, [sp, #188]	; 0xbc
1a003144:	ab31      	add	r3, sp, #196	; 0xc4
1a003146:	e7e5      	b.n	1a003114 <_vfprintf_r+0xd34>
1a003148:	1a007c94 	.word	0x1a007c94
1a00314c:	f018 0f01 	tst.w	r8, #1
1a003150:	f47f aee0 	bne.w	1a002f14 <_vfprintf_r+0xb34>
1a003154:	2201      	movs	r2, #1
1a003156:	2d07      	cmp	r5, #7
1a003158:	f8cb 7000 	str.w	r7, [fp]
1a00315c:	e9cd 542f 	strd	r5, r4, [sp, #188]	; 0xbc
1a003160:	f8cb 2004 	str.w	r2, [fp, #4]
1a003164:	dc04      	bgt.n	1a003170 <_vfprintf_r+0xd90>
1a003166:	3302      	adds	r3, #2
1a003168:	930d      	str	r3, [sp, #52]	; 0x34
1a00316a:	f10b 0b10 	add.w	fp, fp, #16
1a00316e:	e70d      	b.n	1a002f8c <_vfprintf_r+0xbac>
1a003170:	aa2e      	add	r2, sp, #184	; 0xb8
1a003172:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003174:	9807      	ldr	r0, [sp, #28]
1a003176:	f003 f8d3 	bl	1a006320 <__sprint_r>
1a00317a:	2800      	cmp	r0, #0
1a00317c:	f47f aea8 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003180:	e9dd 342f 	ldrd	r3, r4, [sp, #188]	; 0xbc
1a003184:	3301      	adds	r3, #1
1a003186:	930d      	str	r3, [sp, #52]	; 0x34
1a003188:	f10d 0bcc 	add.w	fp, sp, #204	; 0xcc
1a00318c:	ae31      	add	r6, sp, #196	; 0xc4
1a00318e:	e6fd      	b.n	1a002f8c <_vfprintf_r+0xbac>
1a003190:	aa2e      	add	r2, sp, #184	; 0xb8
1a003192:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003194:	9807      	ldr	r0, [sp, #28]
1a003196:	f003 f8c3 	bl	1a006320 <__sprint_r>
1a00319a:	2800      	cmp	r0, #0
1a00319c:	f47f ae98 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0031a0:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a0031a4:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a0031a6:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0031aa:	f7ff baf6 	b.w	1a00279a <_vfprintf_r+0x3ba>
1a0031ae:	aa2e      	add	r2, sp, #184	; 0xb8
1a0031b0:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0031b2:	9807      	ldr	r0, [sp, #28]
1a0031b4:	f003 f8b4 	bl	1a006320 <__sprint_r>
1a0031b8:	2800      	cmp	r0, #0
1a0031ba:	f47f ae89 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0031be:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a0031c0:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0031c4:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a0031c6:	f418 6f80 	tst.w	r8, #1024	; 0x400
1a0031ca:	443b      	add	r3, r7
1a0031cc:	4699      	mov	r9, r3
1a0031ce:	f040 8355 	bne.w	1a00387c <_vfprintf_r+0x149c>
1a0031d2:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a0031d4:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a0031d6:	4293      	cmp	r3, r2
1a0031d8:	db49      	blt.n	1a00326e <_vfprintf_r+0xe8e>
1a0031da:	f018 0f01 	tst.w	r8, #1
1a0031de:	d146      	bne.n	1a00326e <_vfprintf_r+0xe8e>
1a0031e0:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a0031e2:	18bd      	adds	r5, r7, r2
1a0031e4:	eba5 0509 	sub.w	r5, r5, r9
1a0031e8:	1ad3      	subs	r3, r2, r3
1a0031ea:	429d      	cmp	r5, r3
1a0031ec:	bfa8      	it	ge
1a0031ee:	461d      	movge	r5, r3
1a0031f0:	2d00      	cmp	r5, #0
1a0031f2:	dd0d      	ble.n	1a003210 <_vfprintf_r+0xe30>
1a0031f4:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a0031f6:	f8cb 9000 	str.w	r9, [fp]
1a0031fa:	3201      	adds	r2, #1
1a0031fc:	442c      	add	r4, r5
1a0031fe:	2a07      	cmp	r2, #7
1a003200:	9430      	str	r4, [sp, #192]	; 0xc0
1a003202:	f8cb 5004 	str.w	r5, [fp, #4]
1a003206:	922f      	str	r2, [sp, #188]	; 0xbc
1a003208:	f300 8460 	bgt.w	1a003acc <_vfprintf_r+0x16ec>
1a00320c:	f10b 0b08 	add.w	fp, fp, #8
1a003210:	2d00      	cmp	r5, #0
1a003212:	bfac      	ite	ge
1a003214:	1b5d      	subge	r5, r3, r5
1a003216:	461d      	movlt	r5, r3
1a003218:	2d00      	cmp	r5, #0
1a00321a:	f77f ab32 	ble.w	1a002882 <_vfprintf_r+0x4a2>
1a00321e:	2d10      	cmp	r5, #16
1a003220:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a003222:	4b75      	ldr	r3, [pc, #468]	; (1a0033f8 <_vfprintf_r+0x1018>)
1a003224:	f340 80c4 	ble.w	1a0033b0 <_vfprintf_r+0xfd0>
1a003228:	4619      	mov	r1, r3
1a00322a:	2610      	movs	r6, #16
1a00322c:	4623      	mov	r3, r4
1a00322e:	9f07      	ldr	r7, [sp, #28]
1a003230:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a003234:	460c      	mov	r4, r1
1a003236:	e005      	b.n	1a003244 <_vfprintf_r+0xe64>
1a003238:	f10b 0b08 	add.w	fp, fp, #8
1a00323c:	3d10      	subs	r5, #16
1a00323e:	2d10      	cmp	r5, #16
1a003240:	f340 80b3 	ble.w	1a0033aa <_vfprintf_r+0xfca>
1a003244:	3201      	adds	r2, #1
1a003246:	3310      	adds	r3, #16
1a003248:	2a07      	cmp	r2, #7
1a00324a:	e9cd 232f 	strd	r2, r3, [sp, #188]	; 0xbc
1a00324e:	e9cb 4600 	strd	r4, r6, [fp]
1a003252:	ddf1      	ble.n	1a003238 <_vfprintf_r+0xe58>
1a003254:	aa2e      	add	r2, sp, #184	; 0xb8
1a003256:	4649      	mov	r1, r9
1a003258:	4638      	mov	r0, r7
1a00325a:	f003 f861 	bl	1a006320 <__sprint_r>
1a00325e:	2800      	cmp	r0, #0
1a003260:	f47f ae38 	bne.w	1a002ed4 <_vfprintf_r+0xaf4>
1a003264:	e9dd 232f 	ldrd	r2, r3, [sp, #188]	; 0xbc
1a003268:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a00326c:	e7e6      	b.n	1a00323c <_vfprintf_r+0xe5c>
1a00326e:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a003270:	991a      	ldr	r1, [sp, #104]	; 0x68
1a003272:	f8cb 1000 	str.w	r1, [fp]
1a003276:	9919      	ldr	r1, [sp, #100]	; 0x64
1a003278:	f8cb 1004 	str.w	r1, [fp, #4]
1a00327c:	3201      	adds	r2, #1
1a00327e:	440c      	add	r4, r1
1a003280:	2a07      	cmp	r2, #7
1a003282:	9430      	str	r4, [sp, #192]	; 0xc0
1a003284:	922f      	str	r2, [sp, #188]	; 0xbc
1a003286:	f300 828b 	bgt.w	1a0037a0 <_vfprintf_r+0x13c0>
1a00328a:	f10b 0b08 	add.w	fp, fp, #8
1a00328e:	e7a7      	b.n	1a0031e0 <_vfprintf_r+0xe00>
1a003290:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
1a003294:	f7fd f884 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a003298:	f8b9 300c 	ldrh.w	r3, [r9, #12]
1a00329c:	e628      	b.n	1a002ef0 <_vfprintf_r+0xb10>
1a00329e:	aa2e      	add	r2, sp, #184	; 0xb8
1a0032a0:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0032a2:	9807      	ldr	r0, [sp, #28]
1a0032a4:	f003 f83c 	bl	1a006320 <__sprint_r>
1a0032a8:	2800      	cmp	r0, #0
1a0032aa:	f47f ae11 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0032ae:	e9dd 542f 	ldrd	r5, r4, [sp, #188]	; 0xbc
1a0032b2:	ae31      	add	r6, sp, #196	; 0xc4
1a0032b4:	e638      	b.n	1a002f28 <_vfprintf_r+0xb48>
1a0032b6:	aa2e      	add	r2, sp, #184	; 0xb8
1a0032b8:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0032ba:	9807      	ldr	r0, [sp, #28]
1a0032bc:	f003 f830 	bl	1a006320 <__sprint_r>
1a0032c0:	2800      	cmp	r0, #0
1a0032c2:	f47f ae05 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0032c6:	e9dd 342f 	ldrd	r3, r4, [sp, #188]	; 0xbc
1a0032ca:	ae31      	add	r6, sp, #196	; 0xc4
1a0032cc:	930f      	str	r3, [sp, #60]	; 0x3c
1a0032ce:	e638      	b.n	1a002f42 <_vfprintf_r+0xb62>
1a0032d0:	6814      	ldr	r4, [r2, #0]
1a0032d2:	930c      	str	r3, [sp, #48]	; 0x30
1a0032d4:	2500      	movs	r5, #0
1a0032d6:	f7ff bb95 	b.w	1a002a04 <_vfprintf_r+0x624>
1a0032da:	6814      	ldr	r4, [r2, #0]
1a0032dc:	930c      	str	r3, [sp, #48]	; 0x30
1a0032de:	2500      	movs	r5, #0
1a0032e0:	f7ff b9ae 	b.w	1a002640 <_vfprintf_r+0x260>
1a0032e4:	680c      	ldr	r4, [r1, #0]
1a0032e6:	920c      	str	r2, [sp, #48]	; 0x30
1a0032e8:	17e5      	asrs	r5, r4, #31
1a0032ea:	4620      	mov	r0, r4
1a0032ec:	4629      	mov	r1, r5
1a0032ee:	f7ff b9d2 	b.w	1a002696 <_vfprintf_r+0x2b6>
1a0032f2:	6814      	ldr	r4, [r2, #0]
1a0032f4:	910c      	str	r1, [sp, #48]	; 0x30
1a0032f6:	2201      	movs	r2, #1
1a0032f8:	2500      	movs	r5, #0
1a0032fa:	f7ff bb32 	b.w	1a002962 <_vfprintf_r+0x582>
1a0032fe:	2a01      	cmp	r2, #1
1a003300:	f47f ab3c 	bne.w	1a00297c <_vfprintf_r+0x59c>
1a003304:	e68f      	b.n	1a003026 <_vfprintf_r+0xc46>
1a003306:	f408 6380 	and.w	r3, r8, #1024	; 0x400
1a00330a:	2200      	movs	r2, #0
1a00330c:	e9cd a60d 	strd	sl, r6, [sp, #52]	; 0x34
1a003310:	f8cd 803c 	str.w	r8, [sp, #60]	; 0x3c
1a003314:	af5a      	add	r7, sp, #360	; 0x168
1a003316:	4692      	mov	sl, r2
1a003318:	f8dd 8078 	ldr.w	r8, [sp, #120]	; 0x78
1a00331c:	461e      	mov	r6, r3
1a00331e:	e00a      	b.n	1a003336 <_vfprintf_r+0xf56>
1a003320:	2300      	movs	r3, #0
1a003322:	4620      	mov	r0, r4
1a003324:	4629      	mov	r1, r5
1a003326:	220a      	movs	r2, #10
1a003328:	f004 fa72 	bl	1a007810 <__aeabi_uldivmod>
1a00332c:	4604      	mov	r4, r0
1a00332e:	460d      	mov	r5, r1
1a003330:	ea54 0305 	orrs.w	r3, r4, r5
1a003334:	d029      	beq.n	1a00338a <_vfprintf_r+0xfaa>
1a003336:	220a      	movs	r2, #10
1a003338:	2300      	movs	r3, #0
1a00333a:	4620      	mov	r0, r4
1a00333c:	4629      	mov	r1, r5
1a00333e:	f004 fa67 	bl	1a007810 <__aeabi_uldivmod>
1a003342:	3230      	adds	r2, #48	; 0x30
1a003344:	f807 2c01 	strb.w	r2, [r7, #-1]
1a003348:	f10a 0a01 	add.w	sl, sl, #1
1a00334c:	3f01      	subs	r7, #1
1a00334e:	2e00      	cmp	r6, #0
1a003350:	d0e6      	beq.n	1a003320 <_vfprintf_r+0xf40>
1a003352:	f898 3000 	ldrb.w	r3, [r8]
1a003356:	459a      	cmp	sl, r3
1a003358:	d1e2      	bne.n	1a003320 <_vfprintf_r+0xf40>
1a00335a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
1a00335e:	d0df      	beq.n	1a003320 <_vfprintf_r+0xf40>
1a003360:	2d00      	cmp	r5, #0
1a003362:	bf08      	it	eq
1a003364:	2c0a      	cmpeq	r4, #10
1a003366:	d3db      	bcc.n	1a003320 <_vfprintf_r+0xf40>
1a003368:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
1a00336a:	991c      	ldr	r1, [sp, #112]	; 0x70
1a00336c:	1aff      	subs	r7, r7, r3
1a00336e:	461a      	mov	r2, r3
1a003370:	4638      	mov	r0, r7
1a003372:	f002 ff67 	bl	1a006244 <strncpy>
1a003376:	f898 3001 	ldrb.w	r3, [r8, #1]
1a00337a:	2b00      	cmp	r3, #0
1a00337c:	f000 8495 	beq.w	1a003caa <_vfprintf_r+0x18ca>
1a003380:	f108 0801 	add.w	r8, r8, #1
1a003384:	f04f 0a00 	mov.w	sl, #0
1a003388:	e7ca      	b.n	1a003320 <_vfprintf_r+0xf40>
1a00338a:	9b08      	ldr	r3, [sp, #32]
1a00338c:	f8cd 8078 	str.w	r8, [sp, #120]	; 0x78
1a003390:	1bdb      	subs	r3, r3, r7
1a003392:	f8cd a050 	str.w	sl, [sp, #80]	; 0x50
1a003396:	9e0e      	ldr	r6, [sp, #56]	; 0x38
1a003398:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
1a00339c:	f8dd 803c 	ldr.w	r8, [sp, #60]	; 0x3c
1a0033a0:	930d      	str	r3, [sp, #52]	; 0x34
1a0033a2:	f7ff b99e 	b.w	1a0026e2 <_vfprintf_r+0x302>
1a0033a6:	46c1      	mov	r9, r8
1a0033a8:	e594      	b.n	1a002ed4 <_vfprintf_r+0xaf4>
1a0033aa:	4621      	mov	r1, r4
1a0033ac:	461c      	mov	r4, r3
1a0033ae:	460b      	mov	r3, r1
1a0033b0:	3201      	adds	r2, #1
1a0033b2:	442c      	add	r4, r5
1a0033b4:	2a07      	cmp	r2, #7
1a0033b6:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a0033ba:	e9cb 3500 	strd	r3, r5, [fp]
1a0033be:	f77f aa5e 	ble.w	1a00287e <_vfprintf_r+0x49e>
1a0033c2:	e5ee      	b.n	1a002fa2 <_vfprintf_r+0xbc2>
1a0033c4:	f018 0f10 	tst.w	r8, #16
1a0033c8:	f040 80f9 	bne.w	1a0035be <_vfprintf_r+0x11de>
1a0033cc:	f018 0f40 	tst.w	r8, #64	; 0x40
1a0033d0:	f000 834f 	beq.w	1a003a72 <_vfprintf_r+0x1692>
1a0033d4:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a0033d6:	801a      	strh	r2, [r3, #0]
1a0033d8:	4657      	mov	r7, sl
1a0033da:	f7ff baa7 	b.w	1a00292c <_vfprintf_r+0x54c>
1a0033de:	aa2e      	add	r2, sp, #184	; 0xb8
1a0033e0:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0033e2:	9807      	ldr	r0, [sp, #28]
1a0033e4:	f002 ff9c 	bl	1a006320 <__sprint_r>
1a0033e8:	2800      	cmp	r0, #0
1a0033ea:	f47f ad71 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0033ee:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a0033f0:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0033f4:	f7ff b9f5 	b.w	1a0027e2 <_vfprintf_r+0x402>
1a0033f8:	1a007c94 	.word	0x1a007c94
1a0033fc:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
1a003400:	4602      	mov	r2, r0
1a003402:	460b      	mov	r3, r1
1a003404:	f004 f9c6 	bl	1a007794 <__aeabi_dcmpun>
1a003408:	2800      	cmp	r0, #0
1a00340a:	f040 848e 	bne.w	1a003d2a <_vfprintf_r+0x194a>
1a00340e:	2e61      	cmp	r6, #97	; 0x61
1a003410:	f000 8110 	beq.w	1a003634 <_vfprintf_r+0x1254>
1a003414:	2e41      	cmp	r6, #65	; 0x41
1a003416:	f000 8373 	beq.w	1a003b00 <_vfprintf_r+0x1720>
1a00341a:	f448 7380 	orr.w	r3, r8, #256	; 0x100
1a00341e:	f026 0220 	bic.w	r2, r6, #32
1a003422:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
1a003426:	9312      	str	r3, [sp, #72]	; 0x48
1a003428:	9208      	str	r2, [sp, #32]
1a00342a:	9b17      	ldr	r3, [sp, #92]	; 0x5c
1a00342c:	f000 842a 	beq.w	1a003c84 <_vfprintf_r+0x18a4>
1a003430:	2a47      	cmp	r2, #71	; 0x47
1a003432:	f000 8421 	beq.w	1a003c78 <_vfprintf_r+0x1898>
1a003436:	2b00      	cmp	r3, #0
1a003438:	f2c0 82f5 	blt.w	1a003a26 <_vfprintf_r+0x1646>
1a00343c:	ed9d 7b16 	vldr	d7, [sp, #88]	; 0x58
1a003440:	e9cd 000e 	strd	r0, r0, [sp, #56]	; 0x38
1a003444:	ed8d 7b22 	vstr	d7, [sp, #136]	; 0x88
1a003448:	2e66      	cmp	r6, #102	; 0x66
1a00344a:	f000 83e5 	beq.w	1a003c18 <_vfprintf_r+0x1838>
1a00344e:	2e46      	cmp	r6, #70	; 0x46
1a003450:	f000 847b 	beq.w	1a003d4a <_vfprintf_r+0x196a>
1a003454:	9b08      	ldr	r3, [sp, #32]
1a003456:	2b45      	cmp	r3, #69	; 0x45
1a003458:	bf0c      	ite	eq
1a00345a:	f109 0501 	addeq.w	r5, r9, #1
1a00345e:	464d      	movne	r5, r9
1a003460:	a82c      	add	r0, sp, #176	; 0xb0
1a003462:	a929      	add	r1, sp, #164	; 0xa4
1a003464:	aa28      	add	r2, sp, #160	; 0xa0
1a003466:	2302      	movs	r3, #2
1a003468:	e9cd 1003 	strd	r1, r0, [sp, #12]
1a00346c:	9202      	str	r2, [sp, #8]
1a00346e:	9300      	str	r3, [sp, #0]
1a003470:	9501      	str	r5, [sp, #4]
1a003472:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
1a003476:	9807      	ldr	r0, [sp, #28]
1a003478:	f000 fe2e 	bl	1a0040d8 <_dtoa_r>
1a00347c:	2e67      	cmp	r6, #103	; 0x67
1a00347e:	4607      	mov	r7, r0
1a003480:	f040 849a 	bne.w	1a003db8 <_vfprintf_r+0x19d8>
1a003484:	f018 0f01 	tst.w	r8, #1
1a003488:	f040 83f4 	bne.w	1a003c74 <_vfprintf_r+0x1894>
1a00348c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
1a00348e:	4640      	mov	r0, r8
1a003490:	1bdb      	subs	r3, r3, r7
1a003492:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
1a003496:	9314      	str	r3, [sp, #80]	; 0x50
1a003498:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a00349a:	9315      	str	r3, [sp, #84]	; 0x54
1a00349c:	9b08      	ldr	r3, [sp, #32]
1a00349e:	2b47      	cmp	r3, #71	; 0x47
1a0034a0:	f000 81e1 	beq.w	1a003866 <_vfprintf_r+0x1486>
1a0034a4:	9b08      	ldr	r3, [sp, #32]
1a0034a6:	2b46      	cmp	r3, #70	; 0x46
1a0034a8:	f000 82fa 	beq.w	1a003aa0 <_vfprintf_r+0x16c0>
1a0034ac:	9908      	ldr	r1, [sp, #32]
1a0034ae:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a0034b0:	b2f2      	uxtb	r2, r6
1a0034b2:	2941      	cmp	r1, #65	; 0x41
1a0034b4:	bf08      	it	eq
1a0034b6:	320f      	addeq	r2, #15
1a0034b8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
1a0034bc:	bf06      	itte	eq
1a0034be:	b2d2      	uxtbeq	r2, r2
1a0034c0:	2101      	moveq	r1, #1
1a0034c2:	2100      	movne	r1, #0
1a0034c4:	2b00      	cmp	r3, #0
1a0034c6:	9328      	str	r3, [sp, #160]	; 0xa0
1a0034c8:	bfb8      	it	lt
1a0034ca:	9b15      	ldrlt	r3, [sp, #84]	; 0x54
1a0034cc:	f88d 20a8 	strb.w	r2, [sp, #168]	; 0xa8
1a0034d0:	bfba      	itte	lt
1a0034d2:	f1c3 0301 	rsblt	r3, r3, #1
1a0034d6:	222d      	movlt	r2, #45	; 0x2d
1a0034d8:	222b      	movge	r2, #43	; 0x2b
1a0034da:	2b09      	cmp	r3, #9
1a0034dc:	f88d 20a9 	strb.w	r2, [sp, #169]	; 0xa9
1a0034e0:	f300 83f4 	bgt.w	1a003ccc <_vfprintf_r+0x18ec>
1a0034e4:	2900      	cmp	r1, #0
1a0034e6:	f040 8485 	bne.w	1a003df4 <_vfprintf_r+0x1a14>
1a0034ea:	2230      	movs	r2, #48	; 0x30
1a0034ec:	f88d 20aa 	strb.w	r2, [sp, #170]	; 0xaa
1a0034f0:	f10d 02ab 	add.w	r2, sp, #171	; 0xab
1a0034f4:	3330      	adds	r3, #48	; 0x30
1a0034f6:	7013      	strb	r3, [r2, #0]
1a0034f8:	1c53      	adds	r3, r2, #1
1a0034fa:	aa2a      	add	r2, sp, #168	; 0xa8
1a0034fc:	1a9b      	subs	r3, r3, r2
1a0034fe:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a003500:	931d      	str	r3, [sp, #116]	; 0x74
1a003502:	2a01      	cmp	r2, #1
1a003504:	4413      	add	r3, r2
1a003506:	930d      	str	r3, [sp, #52]	; 0x34
1a003508:	f340 8440 	ble.w	1a003d8c <_vfprintf_r+0x19ac>
1a00350c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a00350e:	9a19      	ldr	r2, [sp, #100]	; 0x64
1a003510:	4413      	add	r3, r2
1a003512:	930d      	str	r3, [sp, #52]	; 0x34
1a003514:	2300      	movs	r3, #0
1a003516:	9313      	str	r3, [sp, #76]	; 0x4c
1a003518:	9318      	str	r3, [sp, #96]	; 0x60
1a00351a:	9315      	str	r3, [sp, #84]	; 0x54
1a00351c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a00351e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
1a003522:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a003526:	f440 7880 	orr.w	r8, r0, #256	; 0x100
1a00352a:	9308      	str	r3, [sp, #32]
1a00352c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
1a00352e:	2b00      	cmp	r3, #0
1a003530:	f040 826f 	bne.w	1a003a12 <_vfprintf_r+0x1632>
1a003534:	4699      	mov	r9, r3
1a003536:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a00353a:	f7ff b8de 	b.w	1a0026fa <_vfprintf_r+0x31a>
1a00353e:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a003540:	49bb      	ldr	r1, [pc, #748]	; (1a003830 <_vfprintf_r+0x1450>)
1a003542:	f8cb 1000 	str.w	r1, [fp]
1a003546:	3201      	adds	r2, #1
1a003548:	3401      	adds	r4, #1
1a00354a:	2101      	movs	r1, #1
1a00354c:	2a07      	cmp	r2, #7
1a00354e:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a003552:	f8cb 1004 	str.w	r1, [fp, #4]
1a003556:	dc60      	bgt.n	1a00361a <_vfprintf_r+0x123a>
1a003558:	f10b 0b08 	add.w	fp, fp, #8
1a00355c:	b92b      	cbnz	r3, 1a00356a <_vfprintf_r+0x118a>
1a00355e:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a003560:	b91a      	cbnz	r2, 1a00356a <_vfprintf_r+0x118a>
1a003562:	f018 0f01 	tst.w	r8, #1
1a003566:	f43f a98c 	beq.w	1a002882 <_vfprintf_r+0x4a2>
1a00356a:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
1a00356c:	991a      	ldr	r1, [sp, #104]	; 0x68
1a00356e:	f8cb 1000 	str.w	r1, [fp]
1a003572:	9919      	ldr	r1, [sp, #100]	; 0x64
1a003574:	f8cb 1004 	str.w	r1, [fp, #4]
1a003578:	3201      	adds	r2, #1
1a00357a:	440c      	add	r4, r1
1a00357c:	2a07      	cmp	r2, #7
1a00357e:	9430      	str	r4, [sp, #192]	; 0xc0
1a003580:	922f      	str	r2, [sp, #188]	; 0xbc
1a003582:	f300 827f 	bgt.w	1a003a84 <_vfprintf_r+0x16a4>
1a003586:	f10b 0b08 	add.w	fp, fp, #8
1a00358a:	2b00      	cmp	r3, #0
1a00358c:	f2c0 82e2 	blt.w	1a003b54 <_vfprintf_r+0x1774>
1a003590:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a003592:	3201      	adds	r2, #1
1a003594:	441c      	add	r4, r3
1a003596:	2a07      	cmp	r2, #7
1a003598:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a00359c:	e9cb 7300 	strd	r7, r3, [fp]
1a0035a0:	f77f a96d 	ble.w	1a00287e <_vfprintf_r+0x49e>
1a0035a4:	e4fd      	b.n	1a002fa2 <_vfprintf_r+0xbc2>
1a0035a6:	aa2e      	add	r2, sp, #184	; 0xb8
1a0035a8:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0035aa:	9807      	ldr	r0, [sp, #28]
1a0035ac:	f002 feb8 	bl	1a006320 <__sprint_r>
1a0035b0:	2800      	cmp	r0, #0
1a0035b2:	f47f ac8d 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0035b6:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0035ba:	f7ff bbef 	b.w	1a002d9c <_vfprintf_r+0x9bc>
1a0035be:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a0035c0:	601a      	str	r2, [r3, #0]
1a0035c2:	4657      	mov	r7, sl
1a0035c4:	f7ff b9b2 	b.w	1a00292c <_vfprintf_r+0x54c>
1a0035c8:	8814      	ldrh	r4, [r2, #0]
1a0035ca:	910c      	str	r1, [sp, #48]	; 0x30
1a0035cc:	2500      	movs	r5, #0
1a0035ce:	2201      	movs	r2, #1
1a0035d0:	f7ff b9c7 	b.w	1a002962 <_vfprintf_r+0x582>
1a0035d4:	8814      	ldrh	r4, [r2, #0]
1a0035d6:	930c      	str	r3, [sp, #48]	; 0x30
1a0035d8:	2500      	movs	r5, #0
1a0035da:	f7ff ba13 	b.w	1a002a04 <_vfprintf_r+0x624>
1a0035de:	f9b1 4000 	ldrsh.w	r4, [r1]
1a0035e2:	920c      	str	r2, [sp, #48]	; 0x30
1a0035e4:	17e5      	asrs	r5, r4, #31
1a0035e6:	4620      	mov	r0, r4
1a0035e8:	4629      	mov	r1, r5
1a0035ea:	f7ff b854 	b.w	1a002696 <_vfprintf_r+0x2b6>
1a0035ee:	8814      	ldrh	r4, [r2, #0]
1a0035f0:	930c      	str	r3, [sp, #48]	; 0x30
1a0035f2:	2500      	movs	r5, #0
1a0035f4:	f7ff b824 	b.w	1a002640 <_vfprintf_r+0x260>
1a0035f8:	222d      	movs	r2, #45	; 0x2d
1a0035fa:	f88d 209b 	strb.w	r2, [sp, #155]	; 0x9b
1a0035fe:	f7ff baa1 	b.w	1a002b44 <_vfprintf_r+0x764>
1a003602:	aa2e      	add	r2, sp, #184	; 0xb8
1a003604:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003606:	9807      	ldr	r0, [sp, #28]
1a003608:	f002 fe8a 	bl	1a006320 <__sprint_r>
1a00360c:	2800      	cmp	r0, #0
1a00360e:	f47f ac5f 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003612:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a003614:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003618:	e533      	b.n	1a003082 <_vfprintf_r+0xca2>
1a00361a:	aa2e      	add	r2, sp, #184	; 0xb8
1a00361c:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a00361e:	9807      	ldr	r0, [sp, #28]
1a003620:	f002 fe7e 	bl	1a006320 <__sprint_r>
1a003624:	2800      	cmp	r0, #0
1a003626:	f47f ac53 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a00362a:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a00362c:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a00362e:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003632:	e793      	b.n	1a00355c <_vfprintf_r+0x117c>
1a003634:	2330      	movs	r3, #48	; 0x30
1a003636:	f88d 309c 	strb.w	r3, [sp, #156]	; 0x9c
1a00363a:	2378      	movs	r3, #120	; 0x78
1a00363c:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
1a003640:	f88d 309d 	strb.w	r3, [sp, #157]	; 0x9d
1a003644:	f048 0402 	orr.w	r4, r8, #2
1a003648:	f300 82ab 	bgt.w	1a003ba2 <_vfprintf_r+0x17c2>
1a00364c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
1a003650:	9312      	str	r3, [sp, #72]	; 0x48
1a003652:	f026 0320 	bic.w	r3, r6, #32
1a003656:	9308      	str	r3, [sp, #32]
1a003658:	2200      	movs	r2, #0
1a00365a:	9b17      	ldr	r3, [sp, #92]	; 0x5c
1a00365c:	920e      	str	r2, [sp, #56]	; 0x38
1a00365e:	46a0      	mov	r8, r4
1a003660:	af41      	add	r7, sp, #260	; 0x104
1a003662:	2b00      	cmp	r3, #0
1a003664:	f2c0 81e0 	blt.w	1a003a28 <_vfprintf_r+0x1648>
1a003668:	ed9d 7b16 	vldr	d7, [sp, #88]	; 0x58
1a00366c:	ed8d 7b22 	vstr	d7, [sp, #136]	; 0x88
1a003670:	2300      	movs	r3, #0
1a003672:	930f      	str	r3, [sp, #60]	; 0x3c
1a003674:	2e61      	cmp	r6, #97	; 0x61
1a003676:	f000 8252 	beq.w	1a003b1e <_vfprintf_r+0x173e>
1a00367a:	2e41      	cmp	r6, #65	; 0x41
1a00367c:	f47f aee4 	bne.w	1a003448 <_vfprintf_r+0x1068>
1a003680:	aa28      	add	r2, sp, #160	; 0xa0
1a003682:	e9dd 0122 	ldrd	r0, r1, [sp, #136]	; 0x88
1a003686:	f002 fd55 	bl	1a006134 <frexp>
1a00368a:	2200      	movs	r2, #0
1a00368c:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
1a003690:	f003 fde6 	bl	1a007260 <__aeabi_dmul>
1a003694:	2200      	movs	r2, #0
1a003696:	2300      	movs	r3, #0
1a003698:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
1a00369c:	f004 f848 	bl	1a007730 <__aeabi_dcmpeq>
1a0036a0:	2800      	cmp	r0, #0
1a0036a2:	f040 8305 	bne.w	1a003cb0 <_vfprintf_r+0x18d0>
1a0036a6:	4b63      	ldr	r3, [pc, #396]	; (1a003834 <_vfprintf_r+0x1454>)
1a0036a8:	930d      	str	r3, [sp, #52]	; 0x34
1a0036aa:	e9cd a613 	strd	sl, r6, [sp, #76]	; 0x4c
1a0036ae:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
1a0036b2:	f8cd 9060 	str.w	r9, [sp, #96]	; 0x60
1a0036b6:	9725      	str	r7, [sp, #148]	; 0x94
1a0036b8:	46b9      	mov	r9, r7
1a0036ba:	f8cd b054 	str.w	fp, [sp, #84]	; 0x54
1a0036be:	f8cd 8090 	str.w	r8, [sp, #144]	; 0x90
1a0036c2:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
1a0036c6:	e9dd 6710 	ldrd	r6, r7, [sp, #64]	; 0x40
1a0036ca:	e003      	b.n	1a0036d4 <_vfprintf_r+0x12f4>
1a0036cc:	f004 f830 	bl	1a007730 <__aeabi_dcmpeq>
1a0036d0:	bb20      	cbnz	r0, 1a00371c <_vfprintf_r+0x133c>
1a0036d2:	46a9      	mov	r9, r5
1a0036d4:	2200      	movs	r2, #0
1a0036d6:	4b58      	ldr	r3, [pc, #352]	; (1a003838 <_vfprintf_r+0x1458>)
1a0036d8:	4630      	mov	r0, r6
1a0036da:	4639      	mov	r1, r7
1a0036dc:	f003 fdc0 	bl	1a007260 <__aeabi_dmul>
1a0036e0:	460f      	mov	r7, r1
1a0036e2:	4606      	mov	r6, r0
1a0036e4:	f004 f86c 	bl	1a0077c0 <__aeabi_d2iz>
1a0036e8:	4680      	mov	r8, r0
1a0036ea:	f003 fd4f 	bl	1a00718c <__aeabi_i2d>
1a0036ee:	4602      	mov	r2, r0
1a0036f0:	460b      	mov	r3, r1
1a0036f2:	4630      	mov	r0, r6
1a0036f4:	4639      	mov	r1, r7
1a0036f6:	f003 fbfb 	bl	1a006ef0 <__aeabi_dsub>
1a0036fa:	464d      	mov	r5, r9
1a0036fc:	f81a c008 	ldrb.w	ip, [sl, r8]
1a003700:	f805 cb01 	strb.w	ip, [r5], #1
1a003704:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
1a003708:	46a3      	mov	fp, r4
1a00370a:	4606      	mov	r6, r0
1a00370c:	460f      	mov	r7, r1
1a00370e:	f04f 0200 	mov.w	r2, #0
1a003712:	f04f 0300 	mov.w	r3, #0
1a003716:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
1a00371a:	d1d7      	bne.n	1a0036cc <_vfprintf_r+0x12ec>
1a00371c:	4630      	mov	r0, r6
1a00371e:	4639      	mov	r1, r7
1a003720:	2200      	movs	r2, #0
1a003722:	4b46      	ldr	r3, [pc, #280]	; (1a00383c <_vfprintf_r+0x145c>)
1a003724:	f8dd a04c 	ldr.w	sl, [sp, #76]	; 0x4c
1a003728:	9e14      	ldr	r6, [sp, #80]	; 0x50
1a00372a:	f8cd b04c 	str.w	fp, [sp, #76]	; 0x4c
1a00372e:	4644      	mov	r4, r8
1a003730:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
1a003734:	f8dd 8090 	ldr.w	r8, [sp, #144]	; 0x90
1a003738:	f8dd 9060 	ldr.w	r9, [sp, #96]	; 0x60
1a00373c:	f8dd b054 	ldr.w	fp, [sp, #84]	; 0x54
1a003740:	9f25      	ldr	r7, [sp, #148]	; 0x94
1a003742:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
1a003746:	f004 f81b 	bl	1a007780 <__aeabi_dcmpgt>
1a00374a:	2800      	cmp	r0, #0
1a00374c:	f040 8175 	bne.w	1a003a3a <_vfprintf_r+0x165a>
1a003750:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
1a003754:	2200      	movs	r2, #0
1a003756:	4b39      	ldr	r3, [pc, #228]	; (1a00383c <_vfprintf_r+0x145c>)
1a003758:	f003 ffea 	bl	1a007730 <__aeabi_dcmpeq>
1a00375c:	b110      	cbz	r0, 1a003764 <_vfprintf_r+0x1384>
1a00375e:	07e2      	lsls	r2, r4, #31
1a003760:	f100 816b 	bmi.w	1a003a3a <_vfprintf_r+0x165a>
1a003764:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a003766:	2b00      	cmp	r3, #0
1a003768:	db07      	blt.n	1a00377a <_vfprintf_r+0x139a>
1a00376a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a00376c:	3301      	adds	r3, #1
1a00376e:	442b      	add	r3, r5
1a003770:	2230      	movs	r2, #48	; 0x30
1a003772:	f805 2b01 	strb.w	r2, [r5], #1
1a003776:	42ab      	cmp	r3, r5
1a003778:	d1fb      	bne.n	1a003772 <_vfprintf_r+0x1392>
1a00377a:	1beb      	subs	r3, r5, r7
1a00377c:	4640      	mov	r0, r8
1a00377e:	9314      	str	r3, [sp, #80]	; 0x50
1a003780:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
1a003784:	e688      	b.n	1a003498 <_vfprintf_r+0x10b8>
1a003786:	f8cd 9020 	str.w	r9, [sp, #32]
1a00378a:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
1a00378e:	940c      	str	r4, [sp, #48]	; 0x30
1a003790:	4681      	mov	r9, r0
1a003792:	9013      	str	r0, [sp, #76]	; 0x4c
1a003794:	9018      	str	r0, [sp, #96]	; 0x60
1a003796:	9015      	str	r0, [sp, #84]	; 0x54
1a003798:	f89d 209b 	ldrb.w	r2, [sp, #155]	; 0x9b
1a00379c:	f7fe bfad 	b.w	1a0026fa <_vfprintf_r+0x31a>
1a0037a0:	aa2e      	add	r2, sp, #184	; 0xb8
1a0037a2:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0037a4:	9807      	ldr	r0, [sp, #28]
1a0037a6:	f002 fdbb 	bl	1a006320 <__sprint_r>
1a0037aa:	2800      	cmp	r0, #0
1a0037ac:	f47f ab90 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a0037b0:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a0037b2:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a0037b4:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a0037b8:	e512      	b.n	1a0031e0 <_vfprintf_r+0xe00>
1a0037ba:	4252      	negs	r2, r2
1a0037bc:	920a      	str	r2, [sp, #40]	; 0x28
1a0037be:	930c      	str	r3, [sp, #48]	; 0x30
1a0037c0:	f7ff b96e 	b.w	1a002aa0 <_vfprintf_r+0x6c0>
1a0037c4:	4614      	mov	r4, r2
1a0037c6:	4632      	mov	r2, r6
1a0037c8:	461e      	mov	r6, r3
1a0037ca:	4613      	mov	r3, r2
1a0037cc:	462a      	mov	r2, r5
1a0037ce:	3201      	adds	r2, #1
1a0037d0:	920d      	str	r2, [sp, #52]	; 0x34
1a0037d2:	f106 0208 	add.w	r2, r6, #8
1a0037d6:	e9c6 3900 	strd	r3, r9, [r6]
1a0037da:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a0037dc:	932f      	str	r3, [sp, #188]	; 0xbc
1a0037de:	444c      	add	r4, r9
1a0037e0:	2b07      	cmp	r3, #7
1a0037e2:	9430      	str	r4, [sp, #192]	; 0xc0
1a0037e4:	f73f acc4 	bgt.w	1a003170 <_vfprintf_r+0xd90>
1a0037e8:	3301      	adds	r3, #1
1a0037ea:	930d      	str	r3, [sp, #52]	; 0x34
1a0037ec:	f102 0b08 	add.w	fp, r2, #8
1a0037f0:	4616      	mov	r6, r2
1a0037f2:	f7ff bbcb 	b.w	1a002f8c <_vfprintf_r+0xbac>
1a0037f6:	aa2e      	add	r2, sp, #184	; 0xb8
1a0037f8:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a0037fa:	9807      	ldr	r0, [sp, #28]
1a0037fc:	f002 fd90 	bl	1a006320 <__sprint_r>
1a003800:	2800      	cmp	r0, #0
1a003802:	f47f ab65 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003806:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a003808:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a00380c:	f7ff badf 	b.w	1a002dce <_vfprintf_r+0x9ee>
1a003810:	464b      	mov	r3, r9
1a003812:	2b06      	cmp	r3, #6
1a003814:	bf28      	it	cs
1a003816:	2306      	movcs	r3, #6
1a003818:	46b9      	mov	r9, r7
1a00381a:	9713      	str	r7, [sp, #76]	; 0x4c
1a00381c:	9718      	str	r7, [sp, #96]	; 0x60
1a00381e:	9715      	str	r7, [sp, #84]	; 0x54
1a003820:	970e      	str	r7, [sp, #56]	; 0x38
1a003822:	463a      	mov	r2, r7
1a003824:	9308      	str	r3, [sp, #32]
1a003826:	e9cd 430c 	strd	r4, r3, [sp, #48]	; 0x30
1a00382a:	4f05      	ldr	r7, [pc, #20]	; (1a003840 <_vfprintf_r+0x1460>)
1a00382c:	f7fe bf65 	b.w	1a0026fa <_vfprintf_r+0x31a>
1a003830:	1a007c80 	.word	0x1a007c80
1a003834:	1a007c64 	.word	0x1a007c64
1a003838:	40300000 	.word	0x40300000
1a00383c:	3fe00000 	.word	0x3fe00000
1a003840:	1a007c78 	.word	0x1a007c78
1a003844:	460c      	mov	r4, r1
1a003846:	4639      	mov	r1, r7
1a003848:	465f      	mov	r7, fp
1a00384a:	469b      	mov	fp, r3
1a00384c:	460b      	mov	r3, r1
1a00384e:	3201      	adds	r2, #1
1a003850:	442c      	add	r4, r5
1a003852:	2a07      	cmp	r2, #7
1a003854:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a003858:	e9cb 3500 	strd	r3, r5, [fp]
1a00385c:	f73f aca7 	bgt.w	1a0031ae <_vfprintf_r+0xdce>
1a003860:	f10b 0b08 	add.w	fp, fp, #8
1a003864:	e4ae      	b.n	1a0031c4 <_vfprintf_r+0xde4>
1a003866:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003868:	1cda      	adds	r2, r3, #3
1a00386a:	db02      	blt.n	1a003872 <_vfprintf_r+0x1492>
1a00386c:	4599      	cmp	r9, r3
1a00386e:	f280 80b5 	bge.w	1a0039dc <_vfprintf_r+0x15fc>
1a003872:	3e02      	subs	r6, #2
1a003874:	f026 0320 	bic.w	r3, r6, #32
1a003878:	9308      	str	r3, [sp, #32]
1a00387a:	e617      	b.n	1a0034ac <_vfprintf_r+0x10cc>
1a00387c:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a00387e:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
1a003882:	465a      	mov	r2, fp
1a003884:	e9dd 8b1e 	ldrd	r8, fp, [sp, #120]	; 0x78
1a003888:	18fb      	adds	r3, r7, r3
1a00388a:	f8cd a03c 	str.w	sl, [sp, #60]	; 0x3c
1a00388e:	9710      	str	r7, [sp, #64]	; 0x40
1a003890:	4eae      	ldr	r6, [pc, #696]	; (1a003b4c <_vfprintf_r+0x176c>)
1a003892:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
1a003896:	930d      	str	r3, [sp, #52]	; 0x34
1a003898:	464f      	mov	r7, r9
1a00389a:	f8dd 901c 	ldr.w	r9, [sp, #28]
1a00389e:	4621      	mov	r1, r4
1a0038a0:	9b18      	ldr	r3, [sp, #96]	; 0x60
1a0038a2:	2b00      	cmp	r3, #0
1a0038a4:	d05b      	beq.n	1a00395e <_vfprintf_r+0x157e>
1a0038a6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a0038a8:	2b00      	cmp	r3, #0
1a0038aa:	d154      	bne.n	1a003956 <_vfprintf_r+0x1576>
1a0038ac:	9b18      	ldr	r3, [sp, #96]	; 0x60
1a0038ae:	3b01      	subs	r3, #1
1a0038b0:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
1a0038b4:	9318      	str	r3, [sp, #96]	; 0x60
1a0038b6:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a0038b8:	981c      	ldr	r0, [sp, #112]	; 0x70
1a0038ba:	6010      	str	r0, [r2, #0]
1a0038bc:	3301      	adds	r3, #1
1a0038be:	4459      	add	r1, fp
1a0038c0:	2b07      	cmp	r3, #7
1a0038c2:	9130      	str	r1, [sp, #192]	; 0xc0
1a0038c4:	f8c2 b004 	str.w	fp, [r2, #4]
1a0038c8:	932f      	str	r3, [sp, #188]	; 0xbc
1a0038ca:	dc68      	bgt.n	1a00399e <_vfprintf_r+0x15be>
1a0038cc:	3208      	adds	r2, #8
1a0038ce:	980d      	ldr	r0, [sp, #52]	; 0x34
1a0038d0:	f898 3000 	ldrb.w	r3, [r8]
1a0038d4:	1bc5      	subs	r5, r0, r7
1a0038d6:	429d      	cmp	r5, r3
1a0038d8:	bfa8      	it	ge
1a0038da:	461d      	movge	r5, r3
1a0038dc:	2d00      	cmp	r5, #0
1a0038de:	dd0b      	ble.n	1a0038f8 <_vfprintf_r+0x1518>
1a0038e0:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
1a0038e2:	6017      	str	r7, [r2, #0]
1a0038e4:	3301      	adds	r3, #1
1a0038e6:	4429      	add	r1, r5
1a0038e8:	2b07      	cmp	r3, #7
1a0038ea:	9130      	str	r1, [sp, #192]	; 0xc0
1a0038ec:	6055      	str	r5, [r2, #4]
1a0038ee:	932f      	str	r3, [sp, #188]	; 0xbc
1a0038f0:	dc5e      	bgt.n	1a0039b0 <_vfprintf_r+0x15d0>
1a0038f2:	f898 3000 	ldrb.w	r3, [r8]
1a0038f6:	3208      	adds	r2, #8
1a0038f8:	2d00      	cmp	r5, #0
1a0038fa:	bfac      	ite	ge
1a0038fc:	1b5d      	subge	r5, r3, r5
1a0038fe:	461d      	movlt	r5, r3
1a003900:	2d00      	cmp	r5, #0
1a003902:	dd26      	ble.n	1a003952 <_vfprintf_r+0x1572>
1a003904:	2d10      	cmp	r5, #16
1a003906:	982f      	ldr	r0, [sp, #188]	; 0xbc
1a003908:	dd3c      	ble.n	1a003984 <_vfprintf_r+0x15a4>
1a00390a:	2410      	movs	r4, #16
1a00390c:	e003      	b.n	1a003916 <_vfprintf_r+0x1536>
1a00390e:	3208      	adds	r2, #8
1a003910:	3d10      	subs	r5, #16
1a003912:	2d10      	cmp	r5, #16
1a003914:	dd36      	ble.n	1a003984 <_vfprintf_r+0x15a4>
1a003916:	3001      	adds	r0, #1
1a003918:	3110      	adds	r1, #16
1a00391a:	2807      	cmp	r0, #7
1a00391c:	e9cd 012f 	strd	r0, r1, [sp, #188]	; 0xbc
1a003920:	e9c2 6400 	strd	r6, r4, [r2]
1a003924:	ddf3      	ble.n	1a00390e <_vfprintf_r+0x152e>
1a003926:	aa2e      	add	r2, sp, #184	; 0xb8
1a003928:	4651      	mov	r1, sl
1a00392a:	4648      	mov	r0, r9
1a00392c:	f002 fcf8 	bl	1a006320 <__sprint_r>
1a003930:	2800      	cmp	r0, #0
1a003932:	d150      	bne.n	1a0039d6 <_vfprintf_r+0x15f6>
1a003934:	e9dd 012f 	ldrd	r0, r1, [sp, #188]	; 0xbc
1a003938:	aa31      	add	r2, sp, #196	; 0xc4
1a00393a:	e7e9      	b.n	1a003910 <_vfprintf_r+0x1530>
1a00393c:	aa2e      	add	r2, sp, #184	; 0xb8
1a00393e:	4651      	mov	r1, sl
1a003940:	4648      	mov	r0, r9
1a003942:	f002 fced 	bl	1a006320 <__sprint_r>
1a003946:	2800      	cmp	r0, #0
1a003948:	d145      	bne.n	1a0039d6 <_vfprintf_r+0x15f6>
1a00394a:	f898 3000 	ldrb.w	r3, [r8]
1a00394e:	9930      	ldr	r1, [sp, #192]	; 0xc0
1a003950:	aa31      	add	r2, sp, #196	; 0xc4
1a003952:	441f      	add	r7, r3
1a003954:	e7a4      	b.n	1a0038a0 <_vfprintf_r+0x14c0>
1a003956:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a003958:	3b01      	subs	r3, #1
1a00395a:	9313      	str	r3, [sp, #76]	; 0x4c
1a00395c:	e7ab      	b.n	1a0038b6 <_vfprintf_r+0x14d6>
1a00395e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a003960:	2b00      	cmp	r3, #0
1a003962:	d1f8      	bne.n	1a003956 <_vfprintf_r+0x1576>
1a003964:	46b9      	mov	r9, r7
1a003966:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a003968:	9f10      	ldr	r7, [sp, #64]	; 0x40
1a00396a:	f8cd 8078 	str.w	r8, [sp, #120]	; 0x78
1a00396e:	18fb      	adds	r3, r7, r3
1a003970:	4599      	cmp	r9, r3
1a003972:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
1a003976:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
1a00397a:	4693      	mov	fp, r2
1a00397c:	460c      	mov	r4, r1
1a00397e:	bf28      	it	cs
1a003980:	4699      	movcs	r9, r3
1a003982:	e426      	b.n	1a0031d2 <_vfprintf_r+0xdf2>
1a003984:	3001      	adds	r0, #1
1a003986:	4429      	add	r1, r5
1a003988:	2807      	cmp	r0, #7
1a00398a:	e9cd 012f 	strd	r0, r1, [sp, #188]	; 0xbc
1a00398e:	e9c2 6500 	strd	r6, r5, [r2]
1a003992:	dcd3      	bgt.n	1a00393c <_vfprintf_r+0x155c>
1a003994:	f898 3000 	ldrb.w	r3, [r8]
1a003998:	3208      	adds	r2, #8
1a00399a:	441f      	add	r7, r3
1a00399c:	e780      	b.n	1a0038a0 <_vfprintf_r+0x14c0>
1a00399e:	aa2e      	add	r2, sp, #184	; 0xb8
1a0039a0:	4651      	mov	r1, sl
1a0039a2:	4648      	mov	r0, r9
1a0039a4:	f002 fcbc 	bl	1a006320 <__sprint_r>
1a0039a8:	b9a8      	cbnz	r0, 1a0039d6 <_vfprintf_r+0x15f6>
1a0039aa:	9930      	ldr	r1, [sp, #192]	; 0xc0
1a0039ac:	aa31      	add	r2, sp, #196	; 0xc4
1a0039ae:	e78e      	b.n	1a0038ce <_vfprintf_r+0x14ee>
1a0039b0:	aa2e      	add	r2, sp, #184	; 0xb8
1a0039b2:	4651      	mov	r1, sl
1a0039b4:	4648      	mov	r0, r9
1a0039b6:	f002 fcb3 	bl	1a006320 <__sprint_r>
1a0039ba:	b960      	cbnz	r0, 1a0039d6 <_vfprintf_r+0x15f6>
1a0039bc:	f898 3000 	ldrb.w	r3, [r8]
1a0039c0:	9930      	ldr	r1, [sp, #192]	; 0xc0
1a0039c2:	aa31      	add	r2, sp, #196	; 0xc4
1a0039c4:	e798      	b.n	1a0038f8 <_vfprintf_r+0x1518>
1a0039c6:	4638      	mov	r0, r7
1a0039c8:	f7fe fc9a 	bl	1a002300 <strlen>
1a0039cc:	46a9      	mov	r9, r5
1a0039ce:	4603      	mov	r3, r0
1a0039d0:	900d      	str	r0, [sp, #52]	; 0x34
1a0039d2:	f7ff b8f6 	b.w	1a002bc2 <_vfprintf_r+0x7e2>
1a0039d6:	46d1      	mov	r9, sl
1a0039d8:	f7ff ba7c 	b.w	1a002ed4 <_vfprintf_r+0xaf4>
1a0039dc:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a0039de:	4619      	mov	r1, r3
1a0039e0:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a0039e2:	4299      	cmp	r1, r3
1a0039e4:	f300 8082 	bgt.w	1a003aec <_vfprintf_r+0x170c>
1a0039e8:	07c4      	lsls	r4, r0, #31
1a0039ea:	f140 816c 	bpl.w	1a003cc6 <_vfprintf_r+0x18e6>
1a0039ee:	9a19      	ldr	r2, [sp, #100]	; 0x64
1a0039f0:	4413      	add	r3, r2
1a0039f2:	930d      	str	r3, [sp, #52]	; 0x34
1a0039f4:	0541      	lsls	r1, r0, #21
1a0039f6:	d503      	bpl.n	1a003a00 <_vfprintf_r+0x1620>
1a0039f8:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a0039fa:	2b00      	cmp	r3, #0
1a0039fc:	f300 80e4 	bgt.w	1a003bc8 <_vfprintf_r+0x17e8>
1a003a00:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a003a02:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a003a06:	9308      	str	r3, [sp, #32]
1a003a08:	2667      	movs	r6, #103	; 0x67
1a003a0a:	2300      	movs	r3, #0
1a003a0c:	9313      	str	r3, [sp, #76]	; 0x4c
1a003a0e:	9318      	str	r3, [sp, #96]	; 0x60
1a003a10:	e58c      	b.n	1a00352c <_vfprintf_r+0x114c>
1a003a12:	222d      	movs	r2, #45	; 0x2d
1a003a14:	f88d 209b 	strb.w	r2, [sp, #155]	; 0x9b
1a003a18:	f04f 0900 	mov.w	r9, #0
1a003a1c:	f7fe be6e 	b.w	1a0026fc <_vfprintf_r+0x31c>
1a003a20:	46a1      	mov	r9, r4
1a003a22:	f7ff ba57 	b.w	1a002ed4 <_vfprintf_r+0xaf4>
1a003a26:	900e      	str	r0, [sp, #56]	; 0x38
1a003a28:	e9dd 1216 	ldrd	r1, r2, [sp, #88]	; 0x58
1a003a2c:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
1a003a30:	9323      	str	r3, [sp, #140]	; 0x8c
1a003a32:	232d      	movs	r3, #45	; 0x2d
1a003a34:	9122      	str	r1, [sp, #136]	; 0x88
1a003a36:	930f      	str	r3, [sp, #60]	; 0x3c
1a003a38:	e61c      	b.n	1a003674 <_vfprintf_r+0x1294>
1a003a3a:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a003a3c:	932c      	str	r3, [sp, #176]	; 0xb0
1a003a3e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a003a40:	f815 2c01 	ldrb.w	r2, [r5, #-1]
1a003a44:	7bd9      	ldrb	r1, [r3, #15]
1a003a46:	4291      	cmp	r1, r2
1a003a48:	462b      	mov	r3, r5
1a003a4a:	d109      	bne.n	1a003a60 <_vfprintf_r+0x1680>
1a003a4c:	2030      	movs	r0, #48	; 0x30
1a003a4e:	f803 0c01 	strb.w	r0, [r3, #-1]
1a003a52:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
1a003a54:	1e5a      	subs	r2, r3, #1
1a003a56:	922c      	str	r2, [sp, #176]	; 0xb0
1a003a58:	f813 2c01 	ldrb.w	r2, [r3, #-1]
1a003a5c:	4291      	cmp	r1, r2
1a003a5e:	d0f6      	beq.n	1a003a4e <_vfprintf_r+0x166e>
1a003a60:	2a39      	cmp	r2, #57	; 0x39
1a003a62:	bf0b      	itete	eq
1a003a64:	9a0d      	ldreq	r2, [sp, #52]	; 0x34
1a003a66:	3201      	addne	r2, #1
1a003a68:	7a92      	ldrbeq	r2, [r2, #10]
1a003a6a:	b2d2      	uxtbne	r2, r2
1a003a6c:	f803 2c01 	strb.w	r2, [r3, #-1]
1a003a70:	e683      	b.n	1a00377a <_vfprintf_r+0x139a>
1a003a72:	f418 7f00 	tst.w	r8, #512	; 0x200
1a003a76:	f43f ada2 	beq.w	1a0035be <_vfprintf_r+0x11de>
1a003a7a:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a003a7c:	701a      	strb	r2, [r3, #0]
1a003a7e:	4657      	mov	r7, sl
1a003a80:	f7fe bf54 	b.w	1a00292c <_vfprintf_r+0x54c>
1a003a84:	aa2e      	add	r2, sp, #184	; 0xb8
1a003a86:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003a88:	9807      	ldr	r0, [sp, #28]
1a003a8a:	f002 fc49 	bl	1a006320 <__sprint_r>
1a003a8e:	2800      	cmp	r0, #0
1a003a90:	f47f aa1e 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003a94:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a003a96:	e9dd 242f 	ldrd	r2, r4, [sp, #188]	; 0xbc
1a003a9a:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003a9e:	e574      	b.n	1a00358a <_vfprintf_r+0x11aa>
1a003aa0:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003aa2:	2b00      	cmp	r3, #0
1a003aa4:	f340 8168 	ble.w	1a003d78 <_vfprintf_r+0x1998>
1a003aa8:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003aaa:	f1b9 0f00 	cmp.w	r9, #0
1a003aae:	f040 8104 	bne.w	1a003cba <_vfprintf_r+0x18da>
1a003ab2:	07c6      	lsls	r6, r0, #31
1a003ab4:	f100 8101 	bmi.w	1a003cba <_vfprintf_r+0x18da>
1a003ab8:	930d      	str	r3, [sp, #52]	; 0x34
1a003aba:	2666      	movs	r6, #102	; 0x66
1a003abc:	0543      	lsls	r3, r0, #21
1a003abe:	f100 8084 	bmi.w	1a003bca <_vfprintf_r+0x17ea>
1a003ac2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
1a003ac4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a003ac8:	9308      	str	r3, [sp, #32]
1a003aca:	e79e      	b.n	1a003a0a <_vfprintf_r+0x162a>
1a003acc:	aa2e      	add	r2, sp, #184	; 0xb8
1a003ace:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003ad0:	9807      	ldr	r0, [sp, #28]
1a003ad2:	f002 fc25 	bl	1a006320 <__sprint_r>
1a003ad6:	2800      	cmp	r0, #0
1a003ad8:	f47f a9fa 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003adc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
1a003ade:	9a14      	ldr	r2, [sp, #80]	; 0x50
1a003ae0:	9c30      	ldr	r4, [sp, #192]	; 0xc0
1a003ae2:	1ad3      	subs	r3, r2, r3
1a003ae4:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003ae8:	f7ff bb92 	b.w	1a003210 <_vfprintf_r+0xe30>
1a003aec:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a003aee:	9a19      	ldr	r2, [sp, #100]	; 0x64
1a003af0:	4413      	add	r3, r2
1a003af2:	930d      	str	r3, [sp, #52]	; 0x34
1a003af4:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003af6:	2b00      	cmp	r3, #0
1a003af8:	f340 814d 	ble.w	1a003d96 <_vfprintf_r+0x19b6>
1a003afc:	2667      	movs	r6, #103	; 0x67
1a003afe:	e7dd      	b.n	1a003abc <_vfprintf_r+0x16dc>
1a003b00:	2330      	movs	r3, #48	; 0x30
1a003b02:	f88d 309c 	strb.w	r3, [sp, #156]	; 0x9c
1a003b06:	2358      	movs	r3, #88	; 0x58
1a003b08:	e598      	b.n	1a00363c <_vfprintf_r+0x125c>
1a003b0a:	9807      	ldr	r0, [sp, #28]
1a003b0c:	aa2e      	add	r2, sp, #184	; 0xb8
1a003b0e:	4649      	mov	r1, r9
1a003b10:	f002 fc06 	bl	1a006320 <__sprint_r>
1a003b14:	2800      	cmp	r0, #0
1a003b16:	f47f a9e2 	bne.w	1a002ede <_vfprintf_r+0xafe>
1a003b1a:	f7fe bf11 	b.w	1a002940 <_vfprintf_r+0x560>
1a003b1e:	aa28      	add	r2, sp, #160	; 0xa0
1a003b20:	e9dd 0122 	ldrd	r0, r1, [sp, #136]	; 0x88
1a003b24:	f002 fb06 	bl	1a006134 <frexp>
1a003b28:	2200      	movs	r2, #0
1a003b2a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
1a003b2e:	f003 fb97 	bl	1a007260 <__aeabi_dmul>
1a003b32:	2200      	movs	r2, #0
1a003b34:	2300      	movs	r3, #0
1a003b36:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
1a003b3a:	f003 fdf9 	bl	1a007730 <__aeabi_dcmpeq>
1a003b3e:	b108      	cbz	r0, 1a003b44 <_vfprintf_r+0x1764>
1a003b40:	2301      	movs	r3, #1
1a003b42:	9328      	str	r3, [sp, #160]	; 0xa0
1a003b44:	4b02      	ldr	r3, [pc, #8]	; (1a003b50 <_vfprintf_r+0x1770>)
1a003b46:	930d      	str	r3, [sp, #52]	; 0x34
1a003b48:	e5af      	b.n	1a0036aa <_vfprintf_r+0x12ca>
1a003b4a:	bf00      	nop
1a003b4c:	1a007c94 	.word	0x1a007c94
1a003b50:	1a007c50 	.word	0x1a007c50
1a003b54:	425d      	negs	r5, r3
1a003b56:	3310      	adds	r3, #16
1a003b58:	4bbc      	ldr	r3, [pc, #752]	; (1a003e4c <_vfprintf_r+0x1a6c>)
1a003b5a:	f280 809a 	bge.w	1a003c92 <_vfprintf_r+0x18b2>
1a003b5e:	4619      	mov	r1, r3
1a003b60:	2610      	movs	r6, #16
1a003b62:	4623      	mov	r3, r4
1a003b64:	f8dd 901c 	ldr.w	r9, [sp, #28]
1a003b68:	460c      	mov	r4, r1
1a003b6a:	e005      	b.n	1a003b78 <_vfprintf_r+0x1798>
1a003b6c:	f10b 0b08 	add.w	fp, fp, #8
1a003b70:	3d10      	subs	r5, #16
1a003b72:	2d10      	cmp	r5, #16
1a003b74:	f340 808a 	ble.w	1a003c8c <_vfprintf_r+0x18ac>
1a003b78:	3201      	adds	r2, #1
1a003b7a:	3310      	adds	r3, #16
1a003b7c:	2a07      	cmp	r2, #7
1a003b7e:	e9cd 232f 	strd	r2, r3, [sp, #188]	; 0xbc
1a003b82:	e9cb 4600 	strd	r4, r6, [fp]
1a003b86:	ddf1      	ble.n	1a003b6c <_vfprintf_r+0x178c>
1a003b88:	aa2e      	add	r2, sp, #184	; 0xb8
1a003b8a:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003b8c:	4648      	mov	r0, r9
1a003b8e:	f002 fbc7 	bl	1a006320 <__sprint_r>
1a003b92:	2800      	cmp	r0, #0
1a003b94:	f47f a99c 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003b98:	e9dd 232f 	ldrd	r2, r3, [sp, #188]	; 0xbc
1a003b9c:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003ba0:	e7e6      	b.n	1a003b70 <_vfprintf_r+0x1790>
1a003ba2:	f109 0101 	add.w	r1, r9, #1
1a003ba6:	9807      	ldr	r0, [sp, #28]
1a003ba8:	f001 fcbe 	bl	1a005528 <_malloc_r>
1a003bac:	4607      	mov	r7, r0
1a003bae:	2800      	cmp	r0, #0
1a003bb0:	f000 8141 	beq.w	1a003e36 <_vfprintf_r+0x1a56>
1a003bb4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
1a003bb8:	9312      	str	r3, [sp, #72]	; 0x48
1a003bba:	f026 0320 	bic.w	r3, r6, #32
1a003bbe:	9308      	str	r3, [sp, #32]
1a003bc0:	46a0      	mov	r8, r4
1a003bc2:	9b17      	ldr	r3, [sp, #92]	; 0x5c
1a003bc4:	900e      	str	r0, [sp, #56]	; 0x38
1a003bc6:	e54c      	b.n	1a003662 <_vfprintf_r+0x1282>
1a003bc8:	2667      	movs	r6, #103	; 0x67
1a003bca:	981e      	ldr	r0, [sp, #120]	; 0x78
1a003bcc:	2200      	movs	r2, #0
1a003bce:	9213      	str	r2, [sp, #76]	; 0x4c
1a003bd0:	9218      	str	r2, [sp, #96]	; 0x60
1a003bd2:	7803      	ldrb	r3, [r0, #0]
1a003bd4:	9a15      	ldr	r2, [sp, #84]	; 0x54
1a003bd6:	2bff      	cmp	r3, #255	; 0xff
1a003bd8:	d00c      	beq.n	1a003bf4 <_vfprintf_r+0x1814>
1a003bda:	4293      	cmp	r3, r2
1a003bdc:	da0a      	bge.n	1a003bf4 <_vfprintf_r+0x1814>
1a003bde:	7841      	ldrb	r1, [r0, #1]
1a003be0:	1ad2      	subs	r2, r2, r3
1a003be2:	b1a9      	cbz	r1, 1a003c10 <_vfprintf_r+0x1830>
1a003be4:	9b18      	ldr	r3, [sp, #96]	; 0x60
1a003be6:	3301      	adds	r3, #1
1a003be8:	9318      	str	r3, [sp, #96]	; 0x60
1a003bea:	460b      	mov	r3, r1
1a003bec:	2bff      	cmp	r3, #255	; 0xff
1a003bee:	f100 0001 	add.w	r0, r0, #1
1a003bf2:	d1f2      	bne.n	1a003bda <_vfprintf_r+0x17fa>
1a003bf4:	9215      	str	r2, [sp, #84]	; 0x54
1a003bf6:	9b18      	ldr	r3, [sp, #96]	; 0x60
1a003bf8:	9a13      	ldr	r2, [sp, #76]	; 0x4c
1a003bfa:	990d      	ldr	r1, [sp, #52]	; 0x34
1a003bfc:	901e      	str	r0, [sp, #120]	; 0x78
1a003bfe:	4413      	add	r3, r2
1a003c00:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
1a003c02:	fb02 1303 	mla	r3, r2, r3, r1
1a003c06:	930d      	str	r3, [sp, #52]	; 0x34
1a003c08:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a003c0c:	9308      	str	r3, [sp, #32]
1a003c0e:	e48d      	b.n	1a00352c <_vfprintf_r+0x114c>
1a003c10:	9913      	ldr	r1, [sp, #76]	; 0x4c
1a003c12:	3101      	adds	r1, #1
1a003c14:	9113      	str	r1, [sp, #76]	; 0x4c
1a003c16:	e7de      	b.n	1a003bd6 <_vfprintf_r+0x17f6>
1a003c18:	a82c      	add	r0, sp, #176	; 0xb0
1a003c1a:	a929      	add	r1, sp, #164	; 0xa4
1a003c1c:	aa28      	add	r2, sp, #160	; 0xa0
1a003c1e:	2303      	movs	r3, #3
1a003c20:	e9cd 1003 	strd	r1, r0, [sp, #12]
1a003c24:	9202      	str	r2, [sp, #8]
1a003c26:	9300      	str	r3, [sp, #0]
1a003c28:	f8cd 9004 	str.w	r9, [sp, #4]
1a003c2c:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
1a003c30:	9807      	ldr	r0, [sp, #28]
1a003c32:	f000 fa51 	bl	1a0040d8 <_dtoa_r>
1a003c36:	464d      	mov	r5, r9
1a003c38:	4607      	mov	r7, r0
1a003c3a:	eb00 0409 	add.w	r4, r0, r9
1a003c3e:	783b      	ldrb	r3, [r7, #0]
1a003c40:	2b30      	cmp	r3, #48	; 0x30
1a003c42:	f000 80c1 	beq.w	1a003dc8 <_vfprintf_r+0x19e8>
1a003c46:	9d28      	ldr	r5, [sp, #160]	; 0xa0
1a003c48:	442c      	add	r4, r5
1a003c4a:	2200      	movs	r2, #0
1a003c4c:	2300      	movs	r3, #0
1a003c4e:	e9dd 0122 	ldrd	r0, r1, [sp, #136]	; 0x88
1a003c52:	f003 fd6d 	bl	1a007730 <__aeabi_dcmpeq>
1a003c56:	b108      	cbz	r0, 1a003c5c <_vfprintf_r+0x187c>
1a003c58:	4623      	mov	r3, r4
1a003c5a:	e418      	b.n	1a00348e <_vfprintf_r+0x10ae>
1a003c5c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
1a003c5e:	42a3      	cmp	r3, r4
1a003c60:	f4bf ac15 	bcs.w	1a00348e <_vfprintf_r+0x10ae>
1a003c64:	2130      	movs	r1, #48	; 0x30
1a003c66:	1c5a      	adds	r2, r3, #1
1a003c68:	922c      	str	r2, [sp, #176]	; 0xb0
1a003c6a:	7019      	strb	r1, [r3, #0]
1a003c6c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
1a003c6e:	429c      	cmp	r4, r3
1a003c70:	d8f9      	bhi.n	1a003c66 <_vfprintf_r+0x1886>
1a003c72:	e40c      	b.n	1a00348e <_vfprintf_r+0x10ae>
1a003c74:	197c      	adds	r4, r7, r5
1a003c76:	e7e8      	b.n	1a003c4a <_vfprintf_r+0x186a>
1a003c78:	f1b9 0f00 	cmp.w	r9, #0
1a003c7c:	f000 8095 	beq.w	1a003daa <_vfprintf_r+0x19ca>
1a003c80:	900e      	str	r0, [sp, #56]	; 0x38
1a003c82:	e4ee      	b.n	1a003662 <_vfprintf_r+0x1282>
1a003c84:	900e      	str	r0, [sp, #56]	; 0x38
1a003c86:	f04f 0906 	mov.w	r9, #6
1a003c8a:	e4ea      	b.n	1a003662 <_vfprintf_r+0x1282>
1a003c8c:	4621      	mov	r1, r4
1a003c8e:	461c      	mov	r4, r3
1a003c90:	460b      	mov	r3, r1
1a003c92:	3201      	adds	r2, #1
1a003c94:	442c      	add	r4, r5
1a003c96:	2a07      	cmp	r2, #7
1a003c98:	e9cd 242f 	strd	r2, r4, [sp, #188]	; 0xbc
1a003c9c:	e9cb 3500 	strd	r3, r5, [fp]
1a003ca0:	f300 80ac 	bgt.w	1a003dfc <_vfprintf_r+0x1a1c>
1a003ca4:	f10b 0b08 	add.w	fp, fp, #8
1a003ca8:	e472      	b.n	1a003590 <_vfprintf_r+0x11b0>
1a003caa:	469a      	mov	sl, r3
1a003cac:	f7ff bb38 	b.w	1a003320 <_vfprintf_r+0xf40>
1a003cb0:	2301      	movs	r3, #1
1a003cb2:	9328      	str	r3, [sp, #160]	; 0xa0
1a003cb4:	4b66      	ldr	r3, [pc, #408]	; (1a003e50 <_vfprintf_r+0x1a70>)
1a003cb6:	930d      	str	r3, [sp, #52]	; 0x34
1a003cb8:	e4f7      	b.n	1a0036aa <_vfprintf_r+0x12ca>
1a003cba:	9a19      	ldr	r2, [sp, #100]	; 0x64
1a003cbc:	4413      	add	r3, r2
1a003cbe:	444b      	add	r3, r9
1a003cc0:	930d      	str	r3, [sp, #52]	; 0x34
1a003cc2:	2666      	movs	r6, #102	; 0x66
1a003cc4:	e6fa      	b.n	1a003abc <_vfprintf_r+0x16dc>
1a003cc6:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a003cc8:	930d      	str	r3, [sp, #52]	; 0x34
1a003cca:	e693      	b.n	1a0039f4 <_vfprintf_r+0x1614>
1a003ccc:	f10d 0cb7 	add.w	ip, sp, #183	; 0xb7
1a003cd0:	4664      	mov	r4, ip
1a003cd2:	4d60      	ldr	r5, [pc, #384]	; (1a003e54 <_vfprintf_r+0x1a74>)
1a003cd4:	e000      	b.n	1a003cd8 <_vfprintf_r+0x18f8>
1a003cd6:	4614      	mov	r4, r2
1a003cd8:	fba5 1203 	umull	r1, r2, r5, r3
1a003cdc:	08d2      	lsrs	r2, r2, #3
1a003cde:	eb02 0182 	add.w	r1, r2, r2, lsl #2
1a003ce2:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
1a003ce6:	f103 0130 	add.w	r1, r3, #48	; 0x30
1a003cea:	4613      	mov	r3, r2
1a003cec:	2b09      	cmp	r3, #9
1a003cee:	f804 1c01 	strb.w	r1, [r4, #-1]
1a003cf2:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
1a003cf6:	dcee      	bgt.n	1a003cd6 <_vfprintf_r+0x18f6>
1a003cf8:	3330      	adds	r3, #48	; 0x30
1a003cfa:	3c02      	subs	r4, #2
1a003cfc:	b2db      	uxtb	r3, r3
1a003cfe:	45a4      	cmp	ip, r4
1a003d00:	f802 3c01 	strb.w	r3, [r2, #-1]
1a003d04:	f240 8093 	bls.w	1a003e2e <_vfprintf_r+0x1a4e>
1a003d08:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
1a003d0c:	4611      	mov	r1, r2
1a003d0e:	e001      	b.n	1a003d14 <_vfprintf_r+0x1934>
1a003d10:	f811 3b01 	ldrb.w	r3, [r1], #1
1a003d14:	f804 3b01 	strb.w	r3, [r4], #1
1a003d18:	458c      	cmp	ip, r1
1a003d1a:	d1f9      	bne.n	1a003d10 <_vfprintf_r+0x1930>
1a003d1c:	ab2e      	add	r3, sp, #184	; 0xb8
1a003d1e:	1a9b      	subs	r3, r3, r2
1a003d20:	f10d 02aa 	add.w	r2, sp, #170	; 0xaa
1a003d24:	4413      	add	r3, r2
1a003d26:	f7ff bbe8 	b.w	1a0034fa <_vfprintf_r+0x111a>
1a003d2a:	9b17      	ldr	r3, [sp, #92]	; 0x5c
1a003d2c:	4f4a      	ldr	r7, [pc, #296]	; (1a003e58 <_vfprintf_r+0x1a78>)
1a003d2e:	2b00      	cmp	r3, #0
1a003d30:	bfb6      	itet	lt
1a003d32:	222d      	movlt	r2, #45	; 0x2d
1a003d34:	f89d 209b 	ldrbge.w	r2, [sp, #155]	; 0x9b
1a003d38:	f88d 209b 	strblt.w	r2, [sp, #155]	; 0x9b
1a003d3c:	4b47      	ldr	r3, [pc, #284]	; (1a003e5c <_vfprintf_r+0x1a7c>)
1a003d3e:	f7fe bf03 	b.w	1a002b48 <_vfprintf_r+0x768>
1a003d42:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a003d46:	f7ff b8ca 	b.w	1a002ede <_vfprintf_r+0xafe>
1a003d4a:	a82c      	add	r0, sp, #176	; 0xb0
1a003d4c:	a929      	add	r1, sp, #164	; 0xa4
1a003d4e:	aa28      	add	r2, sp, #160	; 0xa0
1a003d50:	2303      	movs	r3, #3
1a003d52:	e9cd 1003 	strd	r1, r0, [sp, #12]
1a003d56:	9202      	str	r2, [sp, #8]
1a003d58:	9300      	str	r3, [sp, #0]
1a003d5a:	f8cd 9004 	str.w	r9, [sp, #4]
1a003d5e:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
1a003d62:	9807      	ldr	r0, [sp, #28]
1a003d64:	f000 f9b8 	bl	1a0040d8 <_dtoa_r>
1a003d68:	464d      	mov	r5, r9
1a003d6a:	4607      	mov	r7, r0
1a003d6c:	2e46      	cmp	r6, #70	; 0x46
1a003d6e:	eb07 0405 	add.w	r4, r7, r5
1a003d72:	f43f af64 	beq.w	1a003c3e <_vfprintf_r+0x185e>
1a003d76:	e768      	b.n	1a003c4a <_vfprintf_r+0x186a>
1a003d78:	f1b9 0f00 	cmp.w	r9, #0
1a003d7c:	d131      	bne.n	1a003de2 <_vfprintf_r+0x1a02>
1a003d7e:	07c5      	lsls	r5, r0, #31
1a003d80:	d42f      	bmi.n	1a003de2 <_vfprintf_r+0x1a02>
1a003d82:	2301      	movs	r3, #1
1a003d84:	9308      	str	r3, [sp, #32]
1a003d86:	930d      	str	r3, [sp, #52]	; 0x34
1a003d88:	2666      	movs	r6, #102	; 0x66
1a003d8a:	e63e      	b.n	1a003a0a <_vfprintf_r+0x162a>
1a003d8c:	07c3      	lsls	r3, r0, #31
1a003d8e:	f57f abc1 	bpl.w	1a003514 <_vfprintf_r+0x1134>
1a003d92:	f7ff bbbb 	b.w	1a00350c <_vfprintf_r+0x112c>
1a003d96:	9a0d      	ldr	r2, [sp, #52]	; 0x34
1a003d98:	f1c3 0301 	rsb	r3, r3, #1
1a003d9c:	441a      	add	r2, r3
1a003d9e:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
1a003da2:	920d      	str	r2, [sp, #52]	; 0x34
1a003da4:	9308      	str	r3, [sp, #32]
1a003da6:	2667      	movs	r6, #103	; 0x67
1a003da8:	e62f      	b.n	1a003a0a <_vfprintf_r+0x162a>
1a003daa:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
1a003dae:	f04f 0901 	mov.w	r9, #1
1a003db2:	e456      	b.n	1a003662 <_vfprintf_r+0x1282>
1a003db4:	465a      	mov	r2, fp
1a003db6:	e50e      	b.n	1a0037d6 <_vfprintf_r+0x13f6>
1a003db8:	2e47      	cmp	r6, #71	; 0x47
1a003dba:	f47f af5b 	bne.w	1a003c74 <_vfprintf_r+0x1894>
1a003dbe:	f018 0f01 	tst.w	r8, #1
1a003dc2:	f43f ab63 	beq.w	1a00348c <_vfprintf_r+0x10ac>
1a003dc6:	e7d1      	b.n	1a003d6c <_vfprintf_r+0x198c>
1a003dc8:	2200      	movs	r2, #0
1a003dca:	2300      	movs	r3, #0
1a003dcc:	e9dd 0122 	ldrd	r0, r1, [sp, #136]	; 0x88
1a003dd0:	f003 fcae 	bl	1a007730 <__aeabi_dcmpeq>
1a003dd4:	2800      	cmp	r0, #0
1a003dd6:	f47f af36 	bne.w	1a003c46 <_vfprintf_r+0x1866>
1a003dda:	f1c5 0501 	rsb	r5, r5, #1
1a003dde:	9528      	str	r5, [sp, #160]	; 0xa0
1a003de0:	e732      	b.n	1a003c48 <_vfprintf_r+0x1868>
1a003de2:	9b19      	ldr	r3, [sp, #100]	; 0x64
1a003de4:	3301      	adds	r3, #1
1a003de6:	444b      	add	r3, r9
1a003de8:	930d      	str	r3, [sp, #52]	; 0x34
1a003dea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
1a003dee:	9308      	str	r3, [sp, #32]
1a003df0:	2666      	movs	r6, #102	; 0x66
1a003df2:	e60a      	b.n	1a003a0a <_vfprintf_r+0x162a>
1a003df4:	f10d 02aa 	add.w	r2, sp, #170	; 0xaa
1a003df8:	f7ff bb7c 	b.w	1a0034f4 <_vfprintf_r+0x1114>
1a003dfc:	aa2e      	add	r2, sp, #184	; 0xb8
1a003dfe:	990b      	ldr	r1, [sp, #44]	; 0x2c
1a003e00:	9807      	ldr	r0, [sp, #28]
1a003e02:	f002 fa8d 	bl	1a006320 <__sprint_r>
1a003e06:	2800      	cmp	r0, #0
1a003e08:	f47f a862 	bne.w	1a002ed0 <_vfprintf_r+0xaf0>
1a003e0c:	e9dd 242f 	ldrd	r2, r4, [sp, #188]	; 0xbc
1a003e10:	f10d 0bc4 	add.w	fp, sp, #196	; 0xc4
1a003e14:	f7ff bbbc 	b.w	1a003590 <_vfprintf_r+0x11b0>
1a003e18:	990c      	ldr	r1, [sp, #48]	; 0x30
1a003e1a:	f89a 6001 	ldrb.w	r6, [sl, #1]
1a003e1e:	680b      	ldr	r3, [r1, #0]
1a003e20:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
1a003e24:	1d0b      	adds	r3, r1, #4
1a003e26:	4692      	mov	sl, r2
1a003e28:	930c      	str	r3, [sp, #48]	; 0x30
1a003e2a:	f7fe bb57 	b.w	1a0024dc <_vfprintf_r+0xfc>
1a003e2e:	f10d 03aa 	add.w	r3, sp, #170	; 0xaa
1a003e32:	f7ff bb62 	b.w	1a0034fa <_vfprintf_r+0x111a>
1a003e36:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
1a003e3a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
1a003e3e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a003e42:	f8a9 300c 	strh.w	r3, [r9, #12]
1a003e46:	f7ff b84a 	b.w	1a002ede <_vfprintf_r+0xafe>
1a003e4a:	bf00      	nop
1a003e4c:	1a007c94 	.word	0x1a007c94
1a003e50:	1a007c64 	.word	0x1a007c64
1a003e54:	cccccccd 	.word	0xcccccccd
1a003e58:	1a007c4c 	.word	0x1a007c4c
1a003e5c:	1a007c48 	.word	0x1a007c48

1a003e60 <__sbprintf>:
1a003e60:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
1a003e64:	460c      	mov	r4, r1
1a003e66:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
1a003e6a:	8989      	ldrh	r1, [r1, #12]
1a003e6c:	6e66      	ldr	r6, [r4, #100]	; 0x64
1a003e6e:	89e5      	ldrh	r5, [r4, #14]
1a003e70:	9619      	str	r6, [sp, #100]	; 0x64
1a003e72:	f021 0102 	bic.w	r1, r1, #2
1a003e76:	4606      	mov	r6, r0
1a003e78:	69e0      	ldr	r0, [r4, #28]
1a003e7a:	f8ad 100c 	strh.w	r1, [sp, #12]
1a003e7e:	4617      	mov	r7, r2
1a003e80:	f44f 6180 	mov.w	r1, #1024	; 0x400
1a003e84:	6a62      	ldr	r2, [r4, #36]	; 0x24
1a003e86:	f8ad 500e 	strh.w	r5, [sp, #14]
1a003e8a:	4698      	mov	r8, r3
1a003e8c:	ad1a      	add	r5, sp, #104	; 0x68
1a003e8e:	2300      	movs	r3, #0
1a003e90:	9007      	str	r0, [sp, #28]
1a003e92:	a816      	add	r0, sp, #88	; 0x58
1a003e94:	9209      	str	r2, [sp, #36]	; 0x24
1a003e96:	9306      	str	r3, [sp, #24]
1a003e98:	9500      	str	r5, [sp, #0]
1a003e9a:	9504      	str	r5, [sp, #16]
1a003e9c:	9102      	str	r1, [sp, #8]
1a003e9e:	9105      	str	r1, [sp, #20]
1a003ea0:	f7fc fa78 	bl	1a000394 <__retarget_lock_init_recursive>
1a003ea4:	4643      	mov	r3, r8
1a003ea6:	463a      	mov	r2, r7
1a003ea8:	4669      	mov	r1, sp
1a003eaa:	4630      	mov	r0, r6
1a003eac:	f7fe fa98 	bl	1a0023e0 <_vfprintf_r>
1a003eb0:	1e05      	subs	r5, r0, #0
1a003eb2:	db07      	blt.n	1a003ec4 <__sbprintf+0x64>
1a003eb4:	4630      	mov	r0, r6
1a003eb6:	4669      	mov	r1, sp
1a003eb8:	f001 f8ae 	bl	1a005018 <_fflush_r>
1a003ebc:	2800      	cmp	r0, #0
1a003ebe:	bf18      	it	ne
1a003ec0:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
1a003ec4:	f8bd 300c 	ldrh.w	r3, [sp, #12]
1a003ec8:	065b      	lsls	r3, r3, #25
1a003eca:	d503      	bpl.n	1a003ed4 <__sbprintf+0x74>
1a003ecc:	89a3      	ldrh	r3, [r4, #12]
1a003ece:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a003ed2:	81a3      	strh	r3, [r4, #12]
1a003ed4:	9816      	ldr	r0, [sp, #88]	; 0x58
1a003ed6:	f7fc fa5f 	bl	1a000398 <__retarget_lock_close_recursive>
1a003eda:	4628      	mov	r0, r5
1a003edc:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
1a003ee0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

1a003ee4 <__swsetup_r>:
1a003ee4:	b538      	push	{r3, r4, r5, lr}
1a003ee6:	4b31      	ldr	r3, [pc, #196]	; (1a003fac <__swsetup_r+0xc8>)
1a003ee8:	681b      	ldr	r3, [r3, #0]
1a003eea:	4605      	mov	r5, r0
1a003eec:	460c      	mov	r4, r1
1a003eee:	b113      	cbz	r3, 1a003ef6 <__swsetup_r+0x12>
1a003ef0:	6b9a      	ldr	r2, [r3, #56]	; 0x38
1a003ef2:	2a00      	cmp	r2, #0
1a003ef4:	d03a      	beq.n	1a003f6c <__swsetup_r+0x88>
1a003ef6:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a003efa:	b293      	uxth	r3, r2
1a003efc:	0718      	lsls	r0, r3, #28
1a003efe:	d50c      	bpl.n	1a003f1a <__swsetup_r+0x36>
1a003f00:	6920      	ldr	r0, [r4, #16]
1a003f02:	b1a8      	cbz	r0, 1a003f30 <__swsetup_r+0x4c>
1a003f04:	f013 0201 	ands.w	r2, r3, #1
1a003f08:	d020      	beq.n	1a003f4c <__swsetup_r+0x68>
1a003f0a:	6963      	ldr	r3, [r4, #20]
1a003f0c:	2200      	movs	r2, #0
1a003f0e:	425b      	negs	r3, r3
1a003f10:	61a3      	str	r3, [r4, #24]
1a003f12:	60a2      	str	r2, [r4, #8]
1a003f14:	b300      	cbz	r0, 1a003f58 <__swsetup_r+0x74>
1a003f16:	2000      	movs	r0, #0
1a003f18:	bd38      	pop	{r3, r4, r5, pc}
1a003f1a:	06d9      	lsls	r1, r3, #27
1a003f1c:	d53e      	bpl.n	1a003f9c <__swsetup_r+0xb8>
1a003f1e:	0758      	lsls	r0, r3, #29
1a003f20:	d428      	bmi.n	1a003f74 <__swsetup_r+0x90>
1a003f22:	6920      	ldr	r0, [r4, #16]
1a003f24:	f042 0308 	orr.w	r3, r2, #8
1a003f28:	81a3      	strh	r3, [r4, #12]
1a003f2a:	b29b      	uxth	r3, r3
1a003f2c:	2800      	cmp	r0, #0
1a003f2e:	d1e9      	bne.n	1a003f04 <__swsetup_r+0x20>
1a003f30:	f403 7220 	and.w	r2, r3, #640	; 0x280
1a003f34:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
1a003f38:	d0e4      	beq.n	1a003f04 <__swsetup_r+0x20>
1a003f3a:	4628      	mov	r0, r5
1a003f3c:	4621      	mov	r1, r4
1a003f3e:	f001 faa9 	bl	1a005494 <__smakebuf_r>
1a003f42:	89a3      	ldrh	r3, [r4, #12]
1a003f44:	6920      	ldr	r0, [r4, #16]
1a003f46:	f013 0201 	ands.w	r2, r3, #1
1a003f4a:	d1de      	bne.n	1a003f0a <__swsetup_r+0x26>
1a003f4c:	0799      	lsls	r1, r3, #30
1a003f4e:	bf58      	it	pl
1a003f50:	6962      	ldrpl	r2, [r4, #20]
1a003f52:	60a2      	str	r2, [r4, #8]
1a003f54:	2800      	cmp	r0, #0
1a003f56:	d1de      	bne.n	1a003f16 <__swsetup_r+0x32>
1a003f58:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a003f5c:	061a      	lsls	r2, r3, #24
1a003f5e:	d5db      	bpl.n	1a003f18 <__swsetup_r+0x34>
1a003f60:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a003f64:	81a3      	strh	r3, [r4, #12]
1a003f66:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a003f6a:	bd38      	pop	{r3, r4, r5, pc}
1a003f6c:	4618      	mov	r0, r3
1a003f6e:	f001 f8af 	bl	1a0050d0 <__sinit>
1a003f72:	e7c0      	b.n	1a003ef6 <__swsetup_r+0x12>
1a003f74:	6b21      	ldr	r1, [r4, #48]	; 0x30
1a003f76:	b151      	cbz	r1, 1a003f8e <__swsetup_r+0xaa>
1a003f78:	f104 0340 	add.w	r3, r4, #64	; 0x40
1a003f7c:	4299      	cmp	r1, r3
1a003f7e:	d004      	beq.n	1a003f8a <__swsetup_r+0xa6>
1a003f80:	4628      	mov	r0, r5
1a003f82:	f001 f92d 	bl	1a0051e0 <_free_r>
1a003f86:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a003f8a:	2300      	movs	r3, #0
1a003f8c:	6323      	str	r3, [r4, #48]	; 0x30
1a003f8e:	2300      	movs	r3, #0
1a003f90:	6920      	ldr	r0, [r4, #16]
1a003f92:	6063      	str	r3, [r4, #4]
1a003f94:	f022 0224 	bic.w	r2, r2, #36	; 0x24
1a003f98:	6020      	str	r0, [r4, #0]
1a003f9a:	e7c3      	b.n	1a003f24 <__swsetup_r+0x40>
1a003f9c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
1a003fa0:	2309      	movs	r3, #9
1a003fa2:	602b      	str	r3, [r5, #0]
1a003fa4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a003fa8:	81a2      	strh	r2, [r4, #12]
1a003faa:	bd38      	pop	{r3, r4, r5, pc}
1a003fac:	10000000 	.word	0x10000000

1a003fb0 <quorem>:
1a003fb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a003fb4:	6903      	ldr	r3, [r0, #16]
1a003fb6:	690f      	ldr	r7, [r1, #16]
1a003fb8:	42bb      	cmp	r3, r7
1a003fba:	b083      	sub	sp, #12
1a003fbc:	f2c0 8086 	blt.w	1a0040cc <quorem+0x11c>
1a003fc0:	3f01      	subs	r7, #1
1a003fc2:	f101 0914 	add.w	r9, r1, #20
1a003fc6:	f100 0a14 	add.w	sl, r0, #20
1a003fca:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
1a003fce:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
1a003fd2:	00bc      	lsls	r4, r7, #2
1a003fd4:	3201      	adds	r2, #1
1a003fd6:	fbb3 f8f2 	udiv	r8, r3, r2
1a003fda:	eb0a 0304 	add.w	r3, sl, r4
1a003fde:	9400      	str	r4, [sp, #0]
1a003fe0:	eb09 0b04 	add.w	fp, r9, r4
1a003fe4:	9301      	str	r3, [sp, #4]
1a003fe6:	f1b8 0f00 	cmp.w	r8, #0
1a003fea:	d038      	beq.n	1a00405e <quorem+0xae>
1a003fec:	2500      	movs	r5, #0
1a003fee:	462e      	mov	r6, r5
1a003ff0:	46ce      	mov	lr, r9
1a003ff2:	46d4      	mov	ip, sl
1a003ff4:	f85e 4b04 	ldr.w	r4, [lr], #4
1a003ff8:	f8dc 3000 	ldr.w	r3, [ip]
1a003ffc:	b2a2      	uxth	r2, r4
1a003ffe:	fb08 5502 	mla	r5, r8, r2, r5
1a004002:	0c22      	lsrs	r2, r4, #16
1a004004:	0c2c      	lsrs	r4, r5, #16
1a004006:	fb08 4202 	mla	r2, r8, r2, r4
1a00400a:	b2ad      	uxth	r5, r5
1a00400c:	1b75      	subs	r5, r6, r5
1a00400e:	b296      	uxth	r6, r2
1a004010:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
1a004014:	fa15 f383 	uxtah	r3, r5, r3
1a004018:	eb06 4623 	add.w	r6, r6, r3, asr #16
1a00401c:	b29b      	uxth	r3, r3
1a00401e:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
1a004022:	45f3      	cmp	fp, lr
1a004024:	ea4f 4512 	mov.w	r5, r2, lsr #16
1a004028:	f84c 3b04 	str.w	r3, [ip], #4
1a00402c:	ea4f 4626 	mov.w	r6, r6, asr #16
1a004030:	d2e0      	bcs.n	1a003ff4 <quorem+0x44>
1a004032:	9b00      	ldr	r3, [sp, #0]
1a004034:	f85a 3003 	ldr.w	r3, [sl, r3]
1a004038:	b98b      	cbnz	r3, 1a00405e <quorem+0xae>
1a00403a:	9a01      	ldr	r2, [sp, #4]
1a00403c:	1f13      	subs	r3, r2, #4
1a00403e:	459a      	cmp	sl, r3
1a004040:	d20c      	bcs.n	1a00405c <quorem+0xac>
1a004042:	f852 3c04 	ldr.w	r3, [r2, #-4]
1a004046:	b94b      	cbnz	r3, 1a00405c <quorem+0xac>
1a004048:	f1a2 0308 	sub.w	r3, r2, #8
1a00404c:	e002      	b.n	1a004054 <quorem+0xa4>
1a00404e:	681a      	ldr	r2, [r3, #0]
1a004050:	3b04      	subs	r3, #4
1a004052:	b91a      	cbnz	r2, 1a00405c <quorem+0xac>
1a004054:	459a      	cmp	sl, r3
1a004056:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
1a00405a:	d3f8      	bcc.n	1a00404e <quorem+0x9e>
1a00405c:	6107      	str	r7, [r0, #16]
1a00405e:	4604      	mov	r4, r0
1a004060:	f001 ff78 	bl	1a005f54 <__mcmp>
1a004064:	2800      	cmp	r0, #0
1a004066:	db2d      	blt.n	1a0040c4 <quorem+0x114>
1a004068:	f108 0801 	add.w	r8, r8, #1
1a00406c:	4655      	mov	r5, sl
1a00406e:	2300      	movs	r3, #0
1a004070:	f859 1b04 	ldr.w	r1, [r9], #4
1a004074:	6828      	ldr	r0, [r5, #0]
1a004076:	b28a      	uxth	r2, r1
1a004078:	1a9a      	subs	r2, r3, r2
1a00407a:	0c0b      	lsrs	r3, r1, #16
1a00407c:	fa12 f280 	uxtah	r2, r2, r0
1a004080:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
1a004084:	eb03 4322 	add.w	r3, r3, r2, asr #16
1a004088:	b292      	uxth	r2, r2
1a00408a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
1a00408e:	45cb      	cmp	fp, r9
1a004090:	f845 2b04 	str.w	r2, [r5], #4
1a004094:	ea4f 4323 	mov.w	r3, r3, asr #16
1a004098:	d2ea      	bcs.n	1a004070 <quorem+0xc0>
1a00409a:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
1a00409e:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
1a0040a2:	b97a      	cbnz	r2, 1a0040c4 <quorem+0x114>
1a0040a4:	1f1a      	subs	r2, r3, #4
1a0040a6:	4592      	cmp	sl, r2
1a0040a8:	d20b      	bcs.n	1a0040c2 <quorem+0x112>
1a0040aa:	f853 2c04 	ldr.w	r2, [r3, #-4]
1a0040ae:	b942      	cbnz	r2, 1a0040c2 <quorem+0x112>
1a0040b0:	3b08      	subs	r3, #8
1a0040b2:	e002      	b.n	1a0040ba <quorem+0x10a>
1a0040b4:	681a      	ldr	r2, [r3, #0]
1a0040b6:	3b04      	subs	r3, #4
1a0040b8:	b91a      	cbnz	r2, 1a0040c2 <quorem+0x112>
1a0040ba:	459a      	cmp	sl, r3
1a0040bc:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
1a0040c0:	d3f8      	bcc.n	1a0040b4 <quorem+0x104>
1a0040c2:	6127      	str	r7, [r4, #16]
1a0040c4:	4640      	mov	r0, r8
1a0040c6:	b003      	add	sp, #12
1a0040c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0040cc:	2000      	movs	r0, #0
1a0040ce:	b003      	add	sp, #12
1a0040d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0040d4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0040d8 <_dtoa_r>:
1a0040d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a0040dc:	6c01      	ldr	r1, [r0, #64]	; 0x40
1a0040de:	b097      	sub	sp, #92	; 0x5c
1a0040e0:	4614      	mov	r4, r2
1a0040e2:	461d      	mov	r5, r3
1a0040e4:	4683      	mov	fp, r0
1a0040e6:	e9cd 4502 	strd	r4, r5, [sp, #8]
1a0040ea:	b149      	cbz	r1, 1a004100 <_dtoa_r+0x28>
1a0040ec:	6c42      	ldr	r2, [r0, #68]	; 0x44
1a0040ee:	604a      	str	r2, [r1, #4]
1a0040f0:	2301      	movs	r3, #1
1a0040f2:	4093      	lsls	r3, r2
1a0040f4:	608b      	str	r3, [r1, #8]
1a0040f6:	f001 fd3d 	bl	1a005b74 <_Bfree>
1a0040fa:	2300      	movs	r3, #0
1a0040fc:	f8cb 3040 	str.w	r3, [fp, #64]	; 0x40
1a004100:	1e2e      	subs	r6, r5, #0
1a004102:	9a23      	ldr	r2, [sp, #140]	; 0x8c
1a004104:	bfb4      	ite	lt
1a004106:	2301      	movlt	r3, #1
1a004108:	2300      	movge	r3, #0
1a00410a:	6013      	str	r3, [r2, #0]
1a00410c:	4b78      	ldr	r3, [pc, #480]	; (1a0042f0 <_dtoa_r+0x218>)
1a00410e:	bfbc      	itt	lt
1a004110:	f026 4600 	biclt.w	r6, r6, #2147483648	; 0x80000000
1a004114:	9603      	strlt	r6, [sp, #12]
1a004116:	43b3      	bics	r3, r6
1a004118:	f000 80a8 	beq.w	1a00426c <_dtoa_r+0x194>
1a00411c:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
1a004120:	2200      	movs	r2, #0
1a004122:	2300      	movs	r3, #0
1a004124:	4640      	mov	r0, r8
1a004126:	4649      	mov	r1, r9
1a004128:	f003 fb02 	bl	1a007730 <__aeabi_dcmpeq>
1a00412c:	4605      	mov	r5, r0
1a00412e:	b178      	cbz	r0, 1a004150 <_dtoa_r+0x78>
1a004130:	9a22      	ldr	r2, [sp, #136]	; 0x88
1a004132:	2301      	movs	r3, #1
1a004134:	6013      	str	r3, [r2, #0]
1a004136:	9b24      	ldr	r3, [sp, #144]	; 0x90
1a004138:	2b00      	cmp	r3, #0
1a00413a:	f000 80c4 	beq.w	1a0042c6 <_dtoa_r+0x1ee>
1a00413e:	4b6d      	ldr	r3, [pc, #436]	; (1a0042f4 <_dtoa_r+0x21c>)
1a004140:	9a24      	ldr	r2, [sp, #144]	; 0x90
1a004142:	6013      	str	r3, [r2, #0]
1a004144:	3b01      	subs	r3, #1
1a004146:	9304      	str	r3, [sp, #16]
1a004148:	9804      	ldr	r0, [sp, #16]
1a00414a:	b017      	add	sp, #92	; 0x5c
1a00414c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a004150:	aa14      	add	r2, sp, #80	; 0x50
1a004152:	ab15      	add	r3, sp, #84	; 0x54
1a004154:	e9cd 3200 	strd	r3, r2, [sp]
1a004158:	4658      	mov	r0, fp
1a00415a:	4642      	mov	r2, r8
1a00415c:	464b      	mov	r3, r9
1a00415e:	f001 ff8b 	bl	1a006078 <__d2b>
1a004162:	0d34      	lsrs	r4, r6, #20
1a004164:	4682      	mov	sl, r0
1a004166:	f040 80a3 	bne.w	1a0042b0 <_dtoa_r+0x1d8>
1a00416a:	e9dd 5414 	ldrd	r5, r4, [sp, #80]	; 0x50
1a00416e:	442c      	add	r4, r5
1a004170:	f204 4332 	addw	r3, r4, #1074	; 0x432
1a004174:	2b20      	cmp	r3, #32
1a004176:	f340 8413 	ble.w	1a0049a0 <_dtoa_r+0x8c8>
1a00417a:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
1a00417e:	409e      	lsls	r6, r3
1a004180:	9b02      	ldr	r3, [sp, #8]
1a004182:	f204 4012 	addw	r0, r4, #1042	; 0x412
1a004186:	fa23 f000 	lsr.w	r0, r3, r0
1a00418a:	4330      	orrs	r0, r6
1a00418c:	f002 ffee 	bl	1a00716c <__aeabi_ui2d>
1a004190:	2301      	movs	r3, #1
1a004192:	4680      	mov	r8, r0
1a004194:	3c01      	subs	r4, #1
1a004196:	f1a1 79f8 	sub.w	r9, r1, #32505856	; 0x1f00000
1a00419a:	9312      	str	r3, [sp, #72]	; 0x48
1a00419c:	2200      	movs	r2, #0
1a00419e:	4b56      	ldr	r3, [pc, #344]	; (1a0042f8 <_dtoa_r+0x220>)
1a0041a0:	4640      	mov	r0, r8
1a0041a2:	4649      	mov	r1, r9
1a0041a4:	f002 fea4 	bl	1a006ef0 <__aeabi_dsub>
1a0041a8:	a34b      	add	r3, pc, #300	; (adr r3, 1a0042d8 <_dtoa_r+0x200>)
1a0041aa:	e9d3 2300 	ldrd	r2, r3, [r3]
1a0041ae:	f003 f857 	bl	1a007260 <__aeabi_dmul>
1a0041b2:	a34b      	add	r3, pc, #300	; (adr r3, 1a0042e0 <_dtoa_r+0x208>)
1a0041b4:	e9d3 2300 	ldrd	r2, r3, [r3]
1a0041b8:	f002 fe9c 	bl	1a006ef4 <__adddf3>
1a0041bc:	4606      	mov	r6, r0
1a0041be:	4620      	mov	r0, r4
1a0041c0:	460f      	mov	r7, r1
1a0041c2:	f002 ffe3 	bl	1a00718c <__aeabi_i2d>
1a0041c6:	a348      	add	r3, pc, #288	; (adr r3, 1a0042e8 <_dtoa_r+0x210>)
1a0041c8:	e9d3 2300 	ldrd	r2, r3, [r3]
1a0041cc:	f003 f848 	bl	1a007260 <__aeabi_dmul>
1a0041d0:	4602      	mov	r2, r0
1a0041d2:	460b      	mov	r3, r1
1a0041d4:	4630      	mov	r0, r6
1a0041d6:	4639      	mov	r1, r7
1a0041d8:	f002 fe8c 	bl	1a006ef4 <__adddf3>
1a0041dc:	4606      	mov	r6, r0
1a0041de:	460f      	mov	r7, r1
1a0041e0:	f003 faee 	bl	1a0077c0 <__aeabi_d2iz>
1a0041e4:	2200      	movs	r2, #0
1a0041e6:	9005      	str	r0, [sp, #20]
1a0041e8:	2300      	movs	r3, #0
1a0041ea:	4630      	mov	r0, r6
1a0041ec:	4639      	mov	r1, r7
1a0041ee:	f003 faa9 	bl	1a007744 <__aeabi_dcmplt>
1a0041f2:	2800      	cmp	r0, #0
1a0041f4:	f040 826c 	bne.w	1a0046d0 <_dtoa_r+0x5f8>
1a0041f8:	9e05      	ldr	r6, [sp, #20]
1a0041fa:	2e16      	cmp	r6, #22
1a0041fc:	f200 825d 	bhi.w	1a0046ba <_dtoa_r+0x5e2>
1a004200:	4b3e      	ldr	r3, [pc, #248]	; (1a0042fc <_dtoa_r+0x224>)
1a004202:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
1a004206:	e9d3 0100 	ldrd	r0, r1, [r3]
1a00420a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a00420e:	f003 fab7 	bl	1a007780 <__aeabi_dcmpgt>
1a004212:	2800      	cmp	r0, #0
1a004214:	f000 83c0 	beq.w	1a004998 <_dtoa_r+0x8c0>
1a004218:	1e73      	subs	r3, r6, #1
1a00421a:	9305      	str	r3, [sp, #20]
1a00421c:	2300      	movs	r3, #0
1a00421e:	930a      	str	r3, [sp, #40]	; 0x28
1a004220:	1b2c      	subs	r4, r5, r4
1a004222:	9b05      	ldr	r3, [sp, #20]
1a004224:	f1b4 0801 	subs.w	r8, r4, #1
1a004228:	bf46      	itte	mi
1a00422a:	f1c4 0901 	rsbmi	r9, r4, #1
1a00422e:	f04f 0800 	movmi.w	r8, #0
1a004232:	f04f 0900 	movpl.w	r9, #0
1a004236:	2b00      	cmp	r3, #0
1a004238:	f2c0 8242 	blt.w	1a0046c0 <_dtoa_r+0x5e8>
1a00423c:	4498      	add	r8, r3
1a00423e:	9309      	str	r3, [sp, #36]	; 0x24
1a004240:	2300      	movs	r3, #0
1a004242:	9308      	str	r3, [sp, #32]
1a004244:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004246:	2b09      	cmp	r3, #9
1a004248:	d860      	bhi.n	1a00430c <_dtoa_r+0x234>
1a00424a:	2b05      	cmp	r3, #5
1a00424c:	f340 83a6 	ble.w	1a00499c <_dtoa_r+0x8c4>
1a004250:	3b04      	subs	r3, #4
1a004252:	9320      	str	r3, [sp, #128]	; 0x80
1a004254:	2500      	movs	r5, #0
1a004256:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004258:	3b02      	subs	r3, #2
1a00425a:	2b03      	cmp	r3, #3
1a00425c:	f200 8489 	bhi.w	1a004b72 <_dtoa_r+0xa9a>
1a004260:	e8df f013 	tbh	[pc, r3, lsl #1]
1a004264:	03a503c5 	.word	0x03a503c5
1a004268:	04e603cf 	.word	0x04e603cf
1a00426c:	9a22      	ldr	r2, [sp, #136]	; 0x88
1a00426e:	f242 730f 	movw	r3, #9999	; 0x270f
1a004272:	6013      	str	r3, [r2, #0]
1a004274:	9b02      	ldr	r3, [sp, #8]
1a004276:	b97b      	cbnz	r3, 1a004298 <_dtoa_r+0x1c0>
1a004278:	f3c6 0613 	ubfx	r6, r6, #0, #20
1a00427c:	b966      	cbnz	r6, 1a004298 <_dtoa_r+0x1c0>
1a00427e:	9b24      	ldr	r3, [sp, #144]	; 0x90
1a004280:	2b00      	cmp	r3, #0
1a004282:	f000 860e 	beq.w	1a004ea2 <_dtoa_r+0xdca>
1a004286:	4b1e      	ldr	r3, [pc, #120]	; (1a004300 <_dtoa_r+0x228>)
1a004288:	9304      	str	r3, [sp, #16]
1a00428a:	3308      	adds	r3, #8
1a00428c:	9a24      	ldr	r2, [sp, #144]	; 0x90
1a00428e:	9804      	ldr	r0, [sp, #16]
1a004290:	6013      	str	r3, [r2, #0]
1a004292:	b017      	add	sp, #92	; 0x5c
1a004294:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a004298:	9b24      	ldr	r3, [sp, #144]	; 0x90
1a00429a:	b92b      	cbnz	r3, 1a0042a8 <_dtoa_r+0x1d0>
1a00429c:	4b19      	ldr	r3, [pc, #100]	; (1a004304 <_dtoa_r+0x22c>)
1a00429e:	9304      	str	r3, [sp, #16]
1a0042a0:	9804      	ldr	r0, [sp, #16]
1a0042a2:	b017      	add	sp, #92	; 0x5c
1a0042a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0042a8:	4b16      	ldr	r3, [pc, #88]	; (1a004304 <_dtoa_r+0x22c>)
1a0042aa:	9304      	str	r3, [sp, #16]
1a0042ac:	3303      	adds	r3, #3
1a0042ae:	e7ed      	b.n	1a00428c <_dtoa_r+0x1b4>
1a0042b0:	f3c9 0313 	ubfx	r3, r9, #0, #20
1a0042b4:	f043 597f 	orr.w	r9, r3, #1069547520	; 0x3fc00000
1a0042b8:	9512      	str	r5, [sp, #72]	; 0x48
1a0042ba:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
1a0042be:	f449 1940 	orr.w	r9, r9, #3145728	; 0x300000
1a0042c2:	9d14      	ldr	r5, [sp, #80]	; 0x50
1a0042c4:	e76a      	b.n	1a00419c <_dtoa_r+0xc4>
1a0042c6:	4b10      	ldr	r3, [pc, #64]	; (1a004308 <_dtoa_r+0x230>)
1a0042c8:	9304      	str	r3, [sp, #16]
1a0042ca:	9804      	ldr	r0, [sp, #16]
1a0042cc:	b017      	add	sp, #92	; 0x5c
1a0042ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0042d2:	bf00      	nop
1a0042d4:	f3af 8000 	nop.w
1a0042d8:	636f4361 	.word	0x636f4361
1a0042dc:	3fd287a7 	.word	0x3fd287a7
1a0042e0:	8b60c8b3 	.word	0x8b60c8b3
1a0042e4:	3fc68a28 	.word	0x3fc68a28
1a0042e8:	509f79fb 	.word	0x509f79fb
1a0042ec:	3fd34413 	.word	0x3fd34413
1a0042f0:	7ff00000 	.word	0x7ff00000
1a0042f4:	1a007c81 	.word	0x1a007c81
1a0042f8:	3ff80000 	.word	0x3ff80000
1a0042fc:	1a007ce0 	.word	0x1a007ce0
1a004300:	1a007ca4 	.word	0x1a007ca4
1a004304:	1a007cb0 	.word	0x1a007cb0
1a004308:	1a007c80 	.word	0x1a007c80
1a00430c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
1a004310:	2501      	movs	r5, #1
1a004312:	e9cd 4506 	strd	r4, r5, [sp, #24]
1a004316:	2300      	movs	r3, #0
1a004318:	9320      	str	r3, [sp, #128]	; 0x80
1a00431a:	9321      	str	r3, [sp, #132]	; 0x84
1a00431c:	2100      	movs	r1, #0
1a00431e:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
1a004322:	940b      	str	r4, [sp, #44]	; 0x2c
1a004324:	4658      	mov	r0, fp
1a004326:	f001 fbff 	bl	1a005b28 <_Balloc>
1a00432a:	2c0e      	cmp	r4, #14
1a00432c:	9004      	str	r0, [sp, #16]
1a00432e:	f8cb 0040 	str.w	r0, [fp, #64]	; 0x40
1a004332:	f200 80f7 	bhi.w	1a004524 <_dtoa_r+0x44c>
1a004336:	2d00      	cmp	r5, #0
1a004338:	f000 80f4 	beq.w	1a004524 <_dtoa_r+0x44c>
1a00433c:	ed9d 7b02 	vldr	d7, [sp, #8]
1a004340:	9905      	ldr	r1, [sp, #20]
1a004342:	2900      	cmp	r1, #0
1a004344:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
1a004348:	f340 83d1 	ble.w	1a004aee <_dtoa_r+0xa16>
1a00434c:	4bc1      	ldr	r3, [pc, #772]	; (1a004654 <_dtoa_r+0x57c>)
1a00434e:	f001 020f 	and.w	r2, r1, #15
1a004352:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
1a004356:	ed93 7b00 	vldr	d7, [r3]
1a00435a:	110c      	asrs	r4, r1, #4
1a00435c:	06e3      	lsls	r3, r4, #27
1a00435e:	ed8d 7b02 	vstr	d7, [sp, #8]
1a004362:	f140 8486 	bpl.w	1a004c72 <_dtoa_r+0xb9a>
1a004366:	4bbc      	ldr	r3, [pc, #752]	; (1a004658 <_dtoa_r+0x580>)
1a004368:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
1a00436c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
1a004370:	f003 f8a0 	bl	1a0074b4 <__aeabi_ddiv>
1a004374:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
1a004378:	f004 040f 	and.w	r4, r4, #15
1a00437c:	2603      	movs	r6, #3
1a00437e:	b17c      	cbz	r4, 1a0043a0 <_dtoa_r+0x2c8>
1a004380:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004384:	4db4      	ldr	r5, [pc, #720]	; (1a004658 <_dtoa_r+0x580>)
1a004386:	07e7      	lsls	r7, r4, #31
1a004388:	d504      	bpl.n	1a004394 <_dtoa_r+0x2bc>
1a00438a:	e9d5 2300 	ldrd	r2, r3, [r5]
1a00438e:	f002 ff67 	bl	1a007260 <__aeabi_dmul>
1a004392:	3601      	adds	r6, #1
1a004394:	1064      	asrs	r4, r4, #1
1a004396:	f105 0508 	add.w	r5, r5, #8
1a00439a:	d1f4      	bne.n	1a004386 <_dtoa_r+0x2ae>
1a00439c:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a0043a0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a0043a4:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
1a0043a8:	f003 f884 	bl	1a0074b4 <__aeabi_ddiv>
1a0043ac:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a0043b0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1a0043b2:	b143      	cbz	r3, 1a0043c6 <_dtoa_r+0x2ee>
1a0043b4:	2200      	movs	r2, #0
1a0043b6:	4ba9      	ldr	r3, [pc, #676]	; (1a00465c <_dtoa_r+0x584>)
1a0043b8:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a0043bc:	f003 f9c2 	bl	1a007744 <__aeabi_dcmplt>
1a0043c0:	2800      	cmp	r0, #0
1a0043c2:	f040 84e9 	bne.w	1a004d98 <_dtoa_r+0xcc0>
1a0043c6:	4630      	mov	r0, r6
1a0043c8:	f002 fee0 	bl	1a00718c <__aeabi_i2d>
1a0043cc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a0043d0:	f002 ff46 	bl	1a007260 <__aeabi_dmul>
1a0043d4:	4ba2      	ldr	r3, [pc, #648]	; (1a004660 <_dtoa_r+0x588>)
1a0043d6:	2200      	movs	r2, #0
1a0043d8:	f002 fd8c 	bl	1a006ef4 <__adddf3>
1a0043dc:	9b06      	ldr	r3, [sp, #24]
1a0043de:	4606      	mov	r6, r0
1a0043e0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
1a0043e4:	2b00      	cmp	r3, #0
1a0043e6:	f000 8408 	beq.w	1a004bfa <_dtoa_r+0xb22>
1a0043ea:	9b05      	ldr	r3, [sp, #20]
1a0043ec:	9313      	str	r3, [sp, #76]	; 0x4c
1a0043ee:	9b06      	ldr	r3, [sp, #24]
1a0043f0:	930e      	str	r3, [sp, #56]	; 0x38
1a0043f2:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a0043f6:	f003 f9e3 	bl	1a0077c0 <__aeabi_d2iz>
1a0043fa:	9a0e      	ldr	r2, [sp, #56]	; 0x38
1a0043fc:	4b95      	ldr	r3, [pc, #596]	; (1a004654 <_dtoa_r+0x57c>)
1a0043fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
1a004402:	ed13 7b02 	vldr	d7, [r3, #-8]
1a004406:	f100 0530 	add.w	r5, r0, #48	; 0x30
1a00440a:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
1a00440e:	f002 febd 	bl	1a00718c <__aeabi_i2d>
1a004412:	4602      	mov	r2, r0
1a004414:	460b      	mov	r3, r1
1a004416:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a00441a:	e9cd 6702 	strd	r6, r7, [sp, #8]
1a00441e:	f002 fd67 	bl	1a006ef0 <__aeabi_dsub>
1a004422:	9b04      	ldr	r3, [sp, #16]
1a004424:	4606      	mov	r6, r0
1a004426:	9807      	ldr	r0, [sp, #28]
1a004428:	1c5c      	adds	r4, r3, #1
1a00442a:	b2ed      	uxtb	r5, r5
1a00442c:	460f      	mov	r7, r1
1a00442e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
1a004432:	2800      	cmp	r0, #0
1a004434:	f000 8443 	beq.w	1a004cbe <_dtoa_r+0xbe6>
1a004438:	2000      	movs	r0, #0
1a00443a:	498a      	ldr	r1, [pc, #552]	; (1a004664 <_dtoa_r+0x58c>)
1a00443c:	f003 f83a 	bl	1a0074b4 <__aeabi_ddiv>
1a004440:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a004444:	f002 fd54 	bl	1a006ef0 <__aeabi_dsub>
1a004448:	9a04      	ldr	r2, [sp, #16]
1a00444a:	463b      	mov	r3, r7
1a00444c:	7015      	strb	r5, [r2, #0]
1a00444e:	4632      	mov	r2, r6
1a004450:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a004454:	f003 f994 	bl	1a007780 <__aeabi_dcmpgt>
1a004458:	2800      	cmp	r0, #0
1a00445a:	f040 84ed 	bne.w	1a004e38 <_dtoa_r+0xd60>
1a00445e:	4632      	mov	r2, r6
1a004460:	463b      	mov	r3, r7
1a004462:	2000      	movs	r0, #0
1a004464:	497d      	ldr	r1, [pc, #500]	; (1a00465c <_dtoa_r+0x584>)
1a004466:	f002 fd43 	bl	1a006ef0 <__aeabi_dsub>
1a00446a:	4602      	mov	r2, r0
1a00446c:	460b      	mov	r3, r1
1a00446e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004472:	f003 f985 	bl	1a007780 <__aeabi_dcmpgt>
1a004476:	2800      	cmp	r0, #0
1a004478:	f040 84e3 	bne.w	1a004e42 <_dtoa_r+0xd6a>
1a00447c:	990e      	ldr	r1, [sp, #56]	; 0x38
1a00447e:	2901      	cmp	r1, #1
1a004480:	d04c      	beq.n	1a00451c <_dtoa_r+0x444>
1a004482:	9a04      	ldr	r2, [sp, #16]
1a004484:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
1a004488:	4411      	add	r1, r2
1a00448a:	f8cd 8040 	str.w	r8, [sp, #64]	; 0x40
1a00448e:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
1a004492:	f8cd a008 	str.w	sl, [sp, #8]
1a004496:	468a      	mov	sl, r1
1a004498:	e00c      	b.n	1a0044b4 <_dtoa_r+0x3dc>
1a00449a:	2000      	movs	r0, #0
1a00449c:	496f      	ldr	r1, [pc, #444]	; (1a00465c <_dtoa_r+0x584>)
1a00449e:	f002 fd27 	bl	1a006ef0 <__aeabi_dsub>
1a0044a2:	4642      	mov	r2, r8
1a0044a4:	464b      	mov	r3, r9
1a0044a6:	f003 f94d 	bl	1a007744 <__aeabi_dcmplt>
1a0044aa:	2800      	cmp	r0, #0
1a0044ac:	f040 84c7 	bne.w	1a004e3e <_dtoa_r+0xd66>
1a0044b0:	4554      	cmp	r4, sl
1a0044b2:	d02d      	beq.n	1a004510 <_dtoa_r+0x438>
1a0044b4:	4640      	mov	r0, r8
1a0044b6:	4649      	mov	r1, r9
1a0044b8:	2200      	movs	r2, #0
1a0044ba:	4b6b      	ldr	r3, [pc, #428]	; (1a004668 <_dtoa_r+0x590>)
1a0044bc:	f002 fed0 	bl	1a007260 <__aeabi_dmul>
1a0044c0:	2200      	movs	r2, #0
1a0044c2:	4b69      	ldr	r3, [pc, #420]	; (1a004668 <_dtoa_r+0x590>)
1a0044c4:	4680      	mov	r8, r0
1a0044c6:	4689      	mov	r9, r1
1a0044c8:	4630      	mov	r0, r6
1a0044ca:	4639      	mov	r1, r7
1a0044cc:	f002 fec8 	bl	1a007260 <__aeabi_dmul>
1a0044d0:	460f      	mov	r7, r1
1a0044d2:	4606      	mov	r6, r0
1a0044d4:	f003 f974 	bl	1a0077c0 <__aeabi_d2iz>
1a0044d8:	4605      	mov	r5, r0
1a0044da:	f002 fe57 	bl	1a00718c <__aeabi_i2d>
1a0044de:	4602      	mov	r2, r0
1a0044e0:	460b      	mov	r3, r1
1a0044e2:	4630      	mov	r0, r6
1a0044e4:	4639      	mov	r1, r7
1a0044e6:	f002 fd03 	bl	1a006ef0 <__aeabi_dsub>
1a0044ea:	3530      	adds	r5, #48	; 0x30
1a0044ec:	b2ed      	uxtb	r5, r5
1a0044ee:	4642      	mov	r2, r8
1a0044f0:	464b      	mov	r3, r9
1a0044f2:	f804 5b01 	strb.w	r5, [r4], #1
1a0044f6:	4606      	mov	r6, r0
1a0044f8:	460f      	mov	r7, r1
1a0044fa:	f003 f923 	bl	1a007744 <__aeabi_dcmplt>
1a0044fe:	4632      	mov	r2, r6
1a004500:	463b      	mov	r3, r7
1a004502:	2800      	cmp	r0, #0
1a004504:	d0c9      	beq.n	1a00449a <_dtoa_r+0x3c2>
1a004506:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a004508:	f8dd a008 	ldr.w	sl, [sp, #8]
1a00450c:	9305      	str	r3, [sp, #20]
1a00450e:	e217      	b.n	1a004940 <_dtoa_r+0x868>
1a004510:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
1a004514:	f8dd 8040 	ldr.w	r8, [sp, #64]	; 0x40
1a004518:	f8dd a008 	ldr.w	sl, [sp, #8]
1a00451c:	e9dd 340c 	ldrd	r3, r4, [sp, #48]	; 0x30
1a004520:	e9cd 3402 	strd	r3, r4, [sp, #8]
1a004524:	9b15      	ldr	r3, [sp, #84]	; 0x54
1a004526:	2b00      	cmp	r3, #0
1a004528:	f2c0 80ad 	blt.w	1a004686 <_dtoa_r+0x5ae>
1a00452c:	9a05      	ldr	r2, [sp, #20]
1a00452e:	2a0e      	cmp	r2, #14
1a004530:	f300 80a9 	bgt.w	1a004686 <_dtoa_r+0x5ae>
1a004534:	4b47      	ldr	r3, [pc, #284]	; (1a004654 <_dtoa_r+0x57c>)
1a004536:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
1a00453a:	e9d3 8900 	ldrd	r8, r9, [r3]
1a00453e:	9b21      	ldr	r3, [sp, #132]	; 0x84
1a004540:	2b00      	cmp	r3, #0
1a004542:	f2c0 82b1 	blt.w	1a004aa8 <_dtoa_r+0x9d0>
1a004546:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
1a00454a:	4642      	mov	r2, r8
1a00454c:	464b      	mov	r3, r9
1a00454e:	4630      	mov	r0, r6
1a004550:	4639      	mov	r1, r7
1a004552:	f002 ffaf 	bl	1a0074b4 <__aeabi_ddiv>
1a004556:	f003 f933 	bl	1a0077c0 <__aeabi_d2iz>
1a00455a:	4605      	mov	r5, r0
1a00455c:	f002 fe16 	bl	1a00718c <__aeabi_i2d>
1a004560:	4642      	mov	r2, r8
1a004562:	464b      	mov	r3, r9
1a004564:	f002 fe7c 	bl	1a007260 <__aeabi_dmul>
1a004568:	4602      	mov	r2, r0
1a00456a:	460b      	mov	r3, r1
1a00456c:	4630      	mov	r0, r6
1a00456e:	4639      	mov	r1, r7
1a004570:	f002 fcbe 	bl	1a006ef0 <__aeabi_dsub>
1a004574:	9a04      	ldr	r2, [sp, #16]
1a004576:	f105 0330 	add.w	r3, r5, #48	; 0x30
1a00457a:	7013      	strb	r3, [r2, #0]
1a00457c:	9b06      	ldr	r3, [sp, #24]
1a00457e:	2b01      	cmp	r3, #1
1a004580:	4606      	mov	r6, r0
1a004582:	460f      	mov	r7, r1
1a004584:	f102 0401 	add.w	r4, r2, #1
1a004588:	d046      	beq.n	1a004618 <_dtoa_r+0x540>
1a00458a:	2200      	movs	r2, #0
1a00458c:	4b36      	ldr	r3, [pc, #216]	; (1a004668 <_dtoa_r+0x590>)
1a00458e:	f002 fe67 	bl	1a007260 <__aeabi_dmul>
1a004592:	2200      	movs	r2, #0
1a004594:	2300      	movs	r3, #0
1a004596:	4606      	mov	r6, r0
1a004598:	460f      	mov	r7, r1
1a00459a:	f003 f8c9 	bl	1a007730 <__aeabi_dcmpeq>
1a00459e:	2800      	cmp	r0, #0
1a0045a0:	f040 81ce 	bne.w	1a004940 <_dtoa_r+0x868>
1a0045a4:	f8cd a008 	str.w	sl, [sp, #8]
1a0045a8:	f8dd a018 	ldr.w	sl, [sp, #24]
1a0045ac:	f8cd b018 	str.w	fp, [sp, #24]
1a0045b0:	f8dd b010 	ldr.w	fp, [sp, #16]
1a0045b4:	e00a      	b.n	1a0045cc <_dtoa_r+0x4f4>
1a0045b6:	f002 fe53 	bl	1a007260 <__aeabi_dmul>
1a0045ba:	2200      	movs	r2, #0
1a0045bc:	2300      	movs	r3, #0
1a0045be:	4606      	mov	r6, r0
1a0045c0:	460f      	mov	r7, r1
1a0045c2:	f003 f8b5 	bl	1a007730 <__aeabi_dcmpeq>
1a0045c6:	2800      	cmp	r0, #0
1a0045c8:	f040 833c 	bne.w	1a004c44 <_dtoa_r+0xb6c>
1a0045cc:	4642      	mov	r2, r8
1a0045ce:	464b      	mov	r3, r9
1a0045d0:	4630      	mov	r0, r6
1a0045d2:	4639      	mov	r1, r7
1a0045d4:	f002 ff6e 	bl	1a0074b4 <__aeabi_ddiv>
1a0045d8:	f003 f8f2 	bl	1a0077c0 <__aeabi_d2iz>
1a0045dc:	4605      	mov	r5, r0
1a0045de:	f002 fdd5 	bl	1a00718c <__aeabi_i2d>
1a0045e2:	4642      	mov	r2, r8
1a0045e4:	464b      	mov	r3, r9
1a0045e6:	f002 fe3b 	bl	1a007260 <__aeabi_dmul>
1a0045ea:	4602      	mov	r2, r0
1a0045ec:	460b      	mov	r3, r1
1a0045ee:	4630      	mov	r0, r6
1a0045f0:	4639      	mov	r1, r7
1a0045f2:	f002 fc7d 	bl	1a006ef0 <__aeabi_dsub>
1a0045f6:	f105 0c30 	add.w	ip, r5, #48	; 0x30
1a0045fa:	f804 cb01 	strb.w	ip, [r4], #1
1a0045fe:	eba4 0c0b 	sub.w	ip, r4, fp
1a004602:	45e2      	cmp	sl, ip
1a004604:	4606      	mov	r6, r0
1a004606:	460f      	mov	r7, r1
1a004608:	f04f 0200 	mov.w	r2, #0
1a00460c:	4b16      	ldr	r3, [pc, #88]	; (1a004668 <_dtoa_r+0x590>)
1a00460e:	d1d2      	bne.n	1a0045b6 <_dtoa_r+0x4de>
1a004610:	f8dd a008 	ldr.w	sl, [sp, #8]
1a004614:	f8dd b018 	ldr.w	fp, [sp, #24]
1a004618:	4632      	mov	r2, r6
1a00461a:	463b      	mov	r3, r7
1a00461c:	4630      	mov	r0, r6
1a00461e:	4639      	mov	r1, r7
1a004620:	f002 fc68 	bl	1a006ef4 <__adddf3>
1a004624:	4642      	mov	r2, r8
1a004626:	464b      	mov	r3, r9
1a004628:	4606      	mov	r6, r0
1a00462a:	460f      	mov	r7, r1
1a00462c:	f003 f8a8 	bl	1a007780 <__aeabi_dcmpgt>
1a004630:	b958      	cbnz	r0, 1a00464a <_dtoa_r+0x572>
1a004632:	4642      	mov	r2, r8
1a004634:	464b      	mov	r3, r9
1a004636:	4630      	mov	r0, r6
1a004638:	4639      	mov	r1, r7
1a00463a:	f003 f879 	bl	1a007730 <__aeabi_dcmpeq>
1a00463e:	2800      	cmp	r0, #0
1a004640:	f000 817e 	beq.w	1a004940 <_dtoa_r+0x868>
1a004644:	07eb      	lsls	r3, r5, #31
1a004646:	f140 817b 	bpl.w	1a004940 <_dtoa_r+0x868>
1a00464a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
1a00464e:	9a04      	ldr	r2, [sp, #16]
1a004650:	e012      	b.n	1a004678 <_dtoa_r+0x5a0>
1a004652:	bf00      	nop
1a004654:	1a007ce0 	.word	0x1a007ce0
1a004658:	1a007cb8 	.word	0x1a007cb8
1a00465c:	3ff00000 	.word	0x3ff00000
1a004660:	401c0000 	.word	0x401c0000
1a004664:	3fe00000 	.word	0x3fe00000
1a004668:	40240000 	.word	0x40240000
1a00466c:	429a      	cmp	r2, r3
1a00466e:	f000 831c 	beq.w	1a004caa <_dtoa_r+0xbd2>
1a004672:	f813 5c01 	ldrb.w	r5, [r3, #-1]
1a004676:	461c      	mov	r4, r3
1a004678:	2d39      	cmp	r5, #57	; 0x39
1a00467a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
1a00467e:	d0f5      	beq.n	1a00466c <_dtoa_r+0x594>
1a004680:	3501      	adds	r5, #1
1a004682:	701d      	strb	r5, [r3, #0]
1a004684:	e15c      	b.n	1a004940 <_dtoa_r+0x868>
1a004686:	9a07      	ldr	r2, [sp, #28]
1a004688:	b392      	cbz	r2, 1a0046f0 <_dtoa_r+0x618>
1a00468a:	9a20      	ldr	r2, [sp, #128]	; 0x80
1a00468c:	2a01      	cmp	r2, #1
1a00468e:	f340 8200 	ble.w	1a004a92 <_dtoa_r+0x9ba>
1a004692:	9b06      	ldr	r3, [sp, #24]
1a004694:	1e5f      	subs	r7, r3, #1
1a004696:	9b08      	ldr	r3, [sp, #32]
1a004698:	42bb      	cmp	r3, r7
1a00469a:	f2c0 82d8 	blt.w	1a004c4e <_dtoa_r+0xb76>
1a00469e:	1bdf      	subs	r7, r3, r7
1a0046a0:	9b06      	ldr	r3, [sp, #24]
1a0046a2:	2b00      	cmp	r3, #0
1a0046a4:	f2c0 82f7 	blt.w	1a004c96 <_dtoa_r+0xbbe>
1a0046a8:	464c      	mov	r4, r9
1a0046aa:	4498      	add	r8, r3
1a0046ac:	4499      	add	r9, r3
1a0046ae:	2101      	movs	r1, #1
1a0046b0:	4658      	mov	r0, fp
1a0046b2:	f001 faf9 	bl	1a005ca8 <__i2b>
1a0046b6:	4605      	mov	r5, r0
1a0046b8:	e01d      	b.n	1a0046f6 <_dtoa_r+0x61e>
1a0046ba:	2301      	movs	r3, #1
1a0046bc:	930a      	str	r3, [sp, #40]	; 0x28
1a0046be:	e5af      	b.n	1a004220 <_dtoa_r+0x148>
1a0046c0:	9b05      	ldr	r3, [sp, #20]
1a0046c2:	eba9 0903 	sub.w	r9, r9, r3
1a0046c6:	425b      	negs	r3, r3
1a0046c8:	9308      	str	r3, [sp, #32]
1a0046ca:	2300      	movs	r3, #0
1a0046cc:	9309      	str	r3, [sp, #36]	; 0x24
1a0046ce:	e5b9      	b.n	1a004244 <_dtoa_r+0x16c>
1a0046d0:	f8dd 8014 	ldr.w	r8, [sp, #20]
1a0046d4:	4640      	mov	r0, r8
1a0046d6:	f002 fd59 	bl	1a00718c <__aeabi_i2d>
1a0046da:	4632      	mov	r2, r6
1a0046dc:	463b      	mov	r3, r7
1a0046de:	f003 f827 	bl	1a007730 <__aeabi_dcmpeq>
1a0046e2:	2800      	cmp	r0, #0
1a0046e4:	f47f ad88 	bne.w	1a0041f8 <_dtoa_r+0x120>
1a0046e8:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
1a0046ec:	9305      	str	r3, [sp, #20]
1a0046ee:	e583      	b.n	1a0041f8 <_dtoa_r+0x120>
1a0046f0:	9f08      	ldr	r7, [sp, #32]
1a0046f2:	9d07      	ldr	r5, [sp, #28]
1a0046f4:	464c      	mov	r4, r9
1a0046f6:	2c00      	cmp	r4, #0
1a0046f8:	dd0b      	ble.n	1a004712 <_dtoa_r+0x63a>
1a0046fa:	f1b8 0f00 	cmp.w	r8, #0
1a0046fe:	dd08      	ble.n	1a004712 <_dtoa_r+0x63a>
1a004700:	4544      	cmp	r4, r8
1a004702:	4623      	mov	r3, r4
1a004704:	bfa8      	it	ge
1a004706:	4643      	movge	r3, r8
1a004708:	eba9 0903 	sub.w	r9, r9, r3
1a00470c:	1ae4      	subs	r4, r4, r3
1a00470e:	eba8 0803 	sub.w	r8, r8, r3
1a004712:	9b08      	ldr	r3, [sp, #32]
1a004714:	b16b      	cbz	r3, 1a004732 <_dtoa_r+0x65a>
1a004716:	9a07      	ldr	r2, [sp, #28]
1a004718:	2a00      	cmp	r2, #0
1a00471a:	f000 828c 	beq.w	1a004c36 <_dtoa_r+0xb5e>
1a00471e:	1bde      	subs	r6, r3, r7
1a004720:	2f00      	cmp	r7, #0
1a004722:	f040 818c 	bne.w	1a004a3e <_dtoa_r+0x966>
1a004726:	4651      	mov	r1, sl
1a004728:	4632      	mov	r2, r6
1a00472a:	4658      	mov	r0, fp
1a00472c:	f001 fb6c 	bl	1a005e08 <__pow5mult>
1a004730:	4682      	mov	sl, r0
1a004732:	2101      	movs	r1, #1
1a004734:	4658      	mov	r0, fp
1a004736:	f001 fab7 	bl	1a005ca8 <__i2b>
1a00473a:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a00473c:	4606      	mov	r6, r0
1a00473e:	2a00      	cmp	r2, #0
1a004740:	f040 8116 	bne.w	1a004970 <_dtoa_r+0x898>
1a004744:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004746:	2b01      	cmp	r3, #1
1a004748:	f340 815e 	ble.w	1a004a08 <_dtoa_r+0x930>
1a00474c:	2001      	movs	r0, #1
1a00474e:	4440      	add	r0, r8
1a004750:	f010 001f 	ands.w	r0, r0, #31
1a004754:	f000 8107 	beq.w	1a004966 <_dtoa_r+0x88e>
1a004758:	f1c0 0320 	rsb	r3, r0, #32
1a00475c:	2b04      	cmp	r3, #4
1a00475e:	f340 83a4 	ble.w	1a004eaa <_dtoa_r+0xdd2>
1a004762:	f1c0 001c 	rsb	r0, r0, #28
1a004766:	4481      	add	r9, r0
1a004768:	4404      	add	r4, r0
1a00476a:	4480      	add	r8, r0
1a00476c:	f1b9 0f00 	cmp.w	r9, #0
1a004770:	dd05      	ble.n	1a00477e <_dtoa_r+0x6a6>
1a004772:	4651      	mov	r1, sl
1a004774:	464a      	mov	r2, r9
1a004776:	4658      	mov	r0, fp
1a004778:	f001 fb96 	bl	1a005ea8 <__lshift>
1a00477c:	4682      	mov	sl, r0
1a00477e:	f1b8 0f00 	cmp.w	r8, #0
1a004782:	dd05      	ble.n	1a004790 <_dtoa_r+0x6b8>
1a004784:	4631      	mov	r1, r6
1a004786:	4642      	mov	r2, r8
1a004788:	4658      	mov	r0, fp
1a00478a:	f001 fb8d 	bl	1a005ea8 <__lshift>
1a00478e:	4606      	mov	r6, r0
1a004790:	9b0a      	ldr	r3, [sp, #40]	; 0x28
1a004792:	2b00      	cmp	r3, #0
1a004794:	d173      	bne.n	1a00487e <_dtoa_r+0x7a6>
1a004796:	9b06      	ldr	r3, [sp, #24]
1a004798:	2b00      	cmp	r3, #0
1a00479a:	f340 8207 	ble.w	1a004bac <_dtoa_r+0xad4>
1a00479e:	9b07      	ldr	r3, [sp, #28]
1a0047a0:	2b00      	cmp	r3, #0
1a0047a2:	f000 8085 	beq.w	1a0048b0 <_dtoa_r+0x7d8>
1a0047a6:	2c00      	cmp	r4, #0
1a0047a8:	f300 815e 	bgt.w	1a004a68 <_dtoa_r+0x990>
1a0047ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
1a0047ae:	2b00      	cmp	r3, #0
1a0047b0:	f040 81c6 	bne.w	1a004b40 <_dtoa_r+0xa68>
1a0047b4:	46a8      	mov	r8, r5
1a0047b6:	9a02      	ldr	r2, [sp, #8]
1a0047b8:	9f04      	ldr	r7, [sp, #16]
1a0047ba:	f002 0201 	and.w	r2, r2, #1
1a0047be:	9209      	str	r2, [sp, #36]	; 0x24
1a0047c0:	9a06      	ldr	r2, [sp, #24]
1a0047c2:	1e7b      	subs	r3, r7, #1
1a0047c4:	441a      	add	r2, r3
1a0047c6:	9207      	str	r2, [sp, #28]
1a0047c8:	4631      	mov	r1, r6
1a0047ca:	4650      	mov	r0, sl
1a0047cc:	f7ff fbf0 	bl	1a003fb0 <quorem>
1a0047d0:	4629      	mov	r1, r5
1a0047d2:	4681      	mov	r9, r0
1a0047d4:	9008      	str	r0, [sp, #32]
1a0047d6:	4650      	mov	r0, sl
1a0047d8:	f001 fbbc 	bl	1a005f54 <__mcmp>
1a0047dc:	4631      	mov	r1, r6
1a0047de:	9002      	str	r0, [sp, #8]
1a0047e0:	4642      	mov	r2, r8
1a0047e2:	4658      	mov	r0, fp
1a0047e4:	f001 fbd2 	bl	1a005f8c <__mdiff>
1a0047e8:	68c3      	ldr	r3, [r0, #12]
1a0047ea:	4604      	mov	r4, r0
1a0047ec:	f109 0930 	add.w	r9, r9, #48	; 0x30
1a0047f0:	4601      	mov	r1, r0
1a0047f2:	2b00      	cmp	r3, #0
1a0047f4:	f040 81d5 	bne.w	1a004ba2 <_dtoa_r+0xaca>
1a0047f8:	4650      	mov	r0, sl
1a0047fa:	f001 fbab 	bl	1a005f54 <__mcmp>
1a0047fe:	4621      	mov	r1, r4
1a004800:	9006      	str	r0, [sp, #24]
1a004802:	4658      	mov	r0, fp
1a004804:	f001 f9b6 	bl	1a005b74 <_Bfree>
1a004808:	9b06      	ldr	r3, [sp, #24]
1a00480a:	b933      	cbnz	r3, 1a00481a <_dtoa_r+0x742>
1a00480c:	9a20      	ldr	r2, [sp, #128]	; 0x80
1a00480e:	b922      	cbnz	r2, 1a00481a <_dtoa_r+0x742>
1a004810:	9b09      	ldr	r3, [sp, #36]	; 0x24
1a004812:	2b00      	cmp	r3, #0
1a004814:	f000 8319 	beq.w	1a004e4a <_dtoa_r+0xd72>
1a004818:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a00481a:	9a02      	ldr	r2, [sp, #8]
1a00481c:	2a00      	cmp	r2, #0
1a00481e:	f2c0 821e 	blt.w	1a004c5e <_dtoa_r+0xb86>
1a004822:	d105      	bne.n	1a004830 <_dtoa_r+0x758>
1a004824:	9a20      	ldr	r2, [sp, #128]	; 0x80
1a004826:	b91a      	cbnz	r2, 1a004830 <_dtoa_r+0x758>
1a004828:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a00482a:	2a00      	cmp	r2, #0
1a00482c:	f000 8217 	beq.w	1a004c5e <_dtoa_r+0xb86>
1a004830:	2b00      	cmp	r3, #0
1a004832:	f107 0401 	add.w	r4, r7, #1
1a004836:	f300 8223 	bgt.w	1a004c80 <_dtoa_r+0xba8>
1a00483a:	9b07      	ldr	r3, [sp, #28]
1a00483c:	f887 9000 	strb.w	r9, [r7]
1a004840:	42bb      	cmp	r3, r7
1a004842:	f000 822c 	beq.w	1a004c9e <_dtoa_r+0xbc6>
1a004846:	4651      	mov	r1, sl
1a004848:	2300      	movs	r3, #0
1a00484a:	220a      	movs	r2, #10
1a00484c:	4658      	mov	r0, fp
1a00484e:	f001 f99b 	bl	1a005b88 <__multadd>
1a004852:	4545      	cmp	r5, r8
1a004854:	4682      	mov	sl, r0
1a004856:	4629      	mov	r1, r5
1a004858:	f04f 0300 	mov.w	r3, #0
1a00485c:	f04f 020a 	mov.w	r2, #10
1a004860:	4658      	mov	r0, fp
1a004862:	f000 8198 	beq.w	1a004b96 <_dtoa_r+0xabe>
1a004866:	f001 f98f 	bl	1a005b88 <__multadd>
1a00486a:	4641      	mov	r1, r8
1a00486c:	4605      	mov	r5, r0
1a00486e:	2300      	movs	r3, #0
1a004870:	220a      	movs	r2, #10
1a004872:	4658      	mov	r0, fp
1a004874:	f001 f988 	bl	1a005b88 <__multadd>
1a004878:	4627      	mov	r7, r4
1a00487a:	4680      	mov	r8, r0
1a00487c:	e7a4      	b.n	1a0047c8 <_dtoa_r+0x6f0>
1a00487e:	4631      	mov	r1, r6
1a004880:	4650      	mov	r0, sl
1a004882:	f001 fb67 	bl	1a005f54 <__mcmp>
1a004886:	2800      	cmp	r0, #0
1a004888:	da85      	bge.n	1a004796 <_dtoa_r+0x6be>
1a00488a:	9f05      	ldr	r7, [sp, #20]
1a00488c:	4651      	mov	r1, sl
1a00488e:	2300      	movs	r3, #0
1a004890:	220a      	movs	r2, #10
1a004892:	4658      	mov	r0, fp
1a004894:	3f01      	subs	r7, #1
1a004896:	9705      	str	r7, [sp, #20]
1a004898:	f001 f976 	bl	1a005b88 <__multadd>
1a00489c:	9b07      	ldr	r3, [sp, #28]
1a00489e:	4682      	mov	sl, r0
1a0048a0:	2b00      	cmp	r3, #0
1a0048a2:	f040 82e2 	bne.w	1a004e6a <_dtoa_r+0xd92>
1a0048a6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a0048a8:	2b00      	cmp	r3, #0
1a0048aa:	f340 82ea 	ble.w	1a004e82 <_dtoa_r+0xdaa>
1a0048ae:	9306      	str	r3, [sp, #24]
1a0048b0:	f8dd 8010 	ldr.w	r8, [sp, #16]
1a0048b4:	9f06      	ldr	r7, [sp, #24]
1a0048b6:	4644      	mov	r4, r8
1a0048b8:	e002      	b.n	1a0048c0 <_dtoa_r+0x7e8>
1a0048ba:	f001 f965 	bl	1a005b88 <__multadd>
1a0048be:	4682      	mov	sl, r0
1a0048c0:	4631      	mov	r1, r6
1a0048c2:	4650      	mov	r0, sl
1a0048c4:	f7ff fb74 	bl	1a003fb0 <quorem>
1a0048c8:	f100 0930 	add.w	r9, r0, #48	; 0x30
1a0048cc:	f804 9b01 	strb.w	r9, [r4], #1
1a0048d0:	eba4 0308 	sub.w	r3, r4, r8
1a0048d4:	429f      	cmp	r7, r3
1a0048d6:	f04f 020a 	mov.w	r2, #10
1a0048da:	f04f 0300 	mov.w	r3, #0
1a0048de:	4651      	mov	r1, sl
1a0048e0:	4658      	mov	r0, fp
1a0048e2:	dcea      	bgt.n	1a0048ba <_dtoa_r+0x7e2>
1a0048e4:	2300      	movs	r3, #0
1a0048e6:	9302      	str	r3, [sp, #8]
1a0048e8:	4651      	mov	r1, sl
1a0048ea:	2201      	movs	r2, #1
1a0048ec:	4658      	mov	r0, fp
1a0048ee:	f001 fadb 	bl	1a005ea8 <__lshift>
1a0048f2:	4631      	mov	r1, r6
1a0048f4:	4682      	mov	sl, r0
1a0048f6:	f001 fb2d 	bl	1a005f54 <__mcmp>
1a0048fa:	2800      	cmp	r0, #0
1a0048fc:	f814 2c01 	ldrb.w	r2, [r4, #-1]
1a004900:	f340 80b9 	ble.w	1a004a76 <_dtoa_r+0x99e>
1a004904:	9904      	ldr	r1, [sp, #16]
1a004906:	e005      	b.n	1a004914 <_dtoa_r+0x83c>
1a004908:	4299      	cmp	r1, r3
1a00490a:	f000 815c 	beq.w	1a004bc6 <_dtoa_r+0xaee>
1a00490e:	f813 2c01 	ldrb.w	r2, [r3, #-1]
1a004912:	461c      	mov	r4, r3
1a004914:	2a39      	cmp	r2, #57	; 0x39
1a004916:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
1a00491a:	d0f5      	beq.n	1a004908 <_dtoa_r+0x830>
1a00491c:	3201      	adds	r2, #1
1a00491e:	701a      	strb	r2, [r3, #0]
1a004920:	4631      	mov	r1, r6
1a004922:	4658      	mov	r0, fp
1a004924:	f001 f926 	bl	1a005b74 <_Bfree>
1a004928:	b155      	cbz	r5, 1a004940 <_dtoa_r+0x868>
1a00492a:	9902      	ldr	r1, [sp, #8]
1a00492c:	b121      	cbz	r1, 1a004938 <_dtoa_r+0x860>
1a00492e:	42a9      	cmp	r1, r5
1a004930:	d002      	beq.n	1a004938 <_dtoa_r+0x860>
1a004932:	4658      	mov	r0, fp
1a004934:	f001 f91e 	bl	1a005b74 <_Bfree>
1a004938:	4629      	mov	r1, r5
1a00493a:	4658      	mov	r0, fp
1a00493c:	f001 f91a 	bl	1a005b74 <_Bfree>
1a004940:	4651      	mov	r1, sl
1a004942:	4658      	mov	r0, fp
1a004944:	f001 f916 	bl	1a005b74 <_Bfree>
1a004948:	2200      	movs	r2, #0
1a00494a:	9b05      	ldr	r3, [sp, #20]
1a00494c:	7022      	strb	r2, [r4, #0]
1a00494e:	9a22      	ldr	r2, [sp, #136]	; 0x88
1a004950:	3301      	adds	r3, #1
1a004952:	6013      	str	r3, [r2, #0]
1a004954:	9b24      	ldr	r3, [sp, #144]	; 0x90
1a004956:	2b00      	cmp	r3, #0
1a004958:	f43f abf6 	beq.w	1a004148 <_dtoa_r+0x70>
1a00495c:	9804      	ldr	r0, [sp, #16]
1a00495e:	601c      	str	r4, [r3, #0]
1a004960:	b017      	add	sp, #92	; 0x5c
1a004962:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a004966:	201c      	movs	r0, #28
1a004968:	4481      	add	r9, r0
1a00496a:	4404      	add	r4, r0
1a00496c:	4480      	add	r8, r0
1a00496e:	e6fd      	b.n	1a00476c <_dtoa_r+0x694>
1a004970:	4601      	mov	r1, r0
1a004972:	4658      	mov	r0, fp
1a004974:	f001 fa48 	bl	1a005e08 <__pow5mult>
1a004978:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a00497a:	2b01      	cmp	r3, #1
1a00497c:	4606      	mov	r6, r0
1a00497e:	f340 80f3 	ble.w	1a004b68 <_dtoa_r+0xa90>
1a004982:	2300      	movs	r3, #0
1a004984:	9309      	str	r3, [sp, #36]	; 0x24
1a004986:	6933      	ldr	r3, [r6, #16]
1a004988:	eb06 0383 	add.w	r3, r6, r3, lsl #2
1a00498c:	6918      	ldr	r0, [r3, #16]
1a00498e:	f001 f93b 	bl	1a005c08 <__hi0bits>
1a004992:	f1c0 0020 	rsb	r0, r0, #32
1a004996:	e6da      	b.n	1a00474e <_dtoa_r+0x676>
1a004998:	900a      	str	r0, [sp, #40]	; 0x28
1a00499a:	e441      	b.n	1a004220 <_dtoa_r+0x148>
1a00499c:	2501      	movs	r5, #1
1a00499e:	e45a      	b.n	1a004256 <_dtoa_r+0x17e>
1a0049a0:	f1c3 0620 	rsb	r6, r3, #32
1a0049a4:	9b02      	ldr	r3, [sp, #8]
1a0049a6:	fa03 f006 	lsl.w	r0, r3, r6
1a0049aa:	f7ff bbef 	b.w	1a00418c <_dtoa_r+0xb4>
1a0049ae:	2300      	movs	r3, #0
1a0049b0:	9307      	str	r3, [sp, #28]
1a0049b2:	9b05      	ldr	r3, [sp, #20]
1a0049b4:	9a21      	ldr	r2, [sp, #132]	; 0x84
1a0049b6:	4413      	add	r3, r2
1a0049b8:	930b      	str	r3, [sp, #44]	; 0x2c
1a0049ba:	3301      	adds	r3, #1
1a0049bc:	2b01      	cmp	r3, #1
1a0049be:	461e      	mov	r6, r3
1a0049c0:	9306      	str	r3, [sp, #24]
1a0049c2:	bfb8      	it	lt
1a0049c4:	2601      	movlt	r6, #1
1a0049c6:	2100      	movs	r1, #0
1a0049c8:	2e17      	cmp	r6, #23
1a0049ca:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
1a0049ce:	9c06      	ldr	r4, [sp, #24]
1a0049d0:	f77f aca8 	ble.w	1a004324 <_dtoa_r+0x24c>
1a0049d4:	2201      	movs	r2, #1
1a0049d6:	2304      	movs	r3, #4
1a0049d8:	005b      	lsls	r3, r3, #1
1a0049da:	f103 0014 	add.w	r0, r3, #20
1a0049de:	42b0      	cmp	r0, r6
1a0049e0:	4611      	mov	r1, r2
1a0049e2:	f102 0201 	add.w	r2, r2, #1
1a0049e6:	d9f7      	bls.n	1a0049d8 <_dtoa_r+0x900>
1a0049e8:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
1a0049ec:	e49a      	b.n	1a004324 <_dtoa_r+0x24c>
1a0049ee:	2300      	movs	r3, #0
1a0049f0:	9307      	str	r3, [sp, #28]
1a0049f2:	9b21      	ldr	r3, [sp, #132]	; 0x84
1a0049f4:	2b00      	cmp	r3, #0
1a0049f6:	f340 80ed 	ble.w	1a004bd4 <_dtoa_r+0xafc>
1a0049fa:	930b      	str	r3, [sp, #44]	; 0x2c
1a0049fc:	9306      	str	r3, [sp, #24]
1a0049fe:	461e      	mov	r6, r3
1a004a00:	e7e1      	b.n	1a0049c6 <_dtoa_r+0x8ee>
1a004a02:	2301      	movs	r3, #1
1a004a04:	9307      	str	r3, [sp, #28]
1a004a06:	e7f4      	b.n	1a0049f2 <_dtoa_r+0x91a>
1a004a08:	9b02      	ldr	r3, [sp, #8]
1a004a0a:	2b00      	cmp	r3, #0
1a004a0c:	f47f ae9e 	bne.w	1a00474c <_dtoa_r+0x674>
1a004a10:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
1a004a14:	f3c2 0313 	ubfx	r3, r2, #0, #20
1a004a18:	2b00      	cmp	r3, #0
1a004a1a:	f040 8199 	bne.w	1a004d50 <_dtoa_r+0xc78>
1a004a1e:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
1a004a22:	0d1b      	lsrs	r3, r3, #20
1a004a24:	051b      	lsls	r3, r3, #20
1a004a26:	b123      	cbz	r3, 1a004a32 <_dtoa_r+0x95a>
1a004a28:	f109 0901 	add.w	r9, r9, #1
1a004a2c:	f108 0801 	add.w	r8, r8, #1
1a004a30:	2301      	movs	r3, #1
1a004a32:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a004a34:	9309      	str	r3, [sp, #36]	; 0x24
1a004a36:	2a00      	cmp	r2, #0
1a004a38:	f43f ae88 	beq.w	1a00474c <_dtoa_r+0x674>
1a004a3c:	e7a3      	b.n	1a004986 <_dtoa_r+0x8ae>
1a004a3e:	463a      	mov	r2, r7
1a004a40:	4629      	mov	r1, r5
1a004a42:	4658      	mov	r0, fp
1a004a44:	f001 f9e0 	bl	1a005e08 <__pow5mult>
1a004a48:	4652      	mov	r2, sl
1a004a4a:	4601      	mov	r1, r0
1a004a4c:	4605      	mov	r5, r0
1a004a4e:	4658      	mov	r0, fp
1a004a50:	f001 f934 	bl	1a005cbc <__multiply>
1a004a54:	4651      	mov	r1, sl
1a004a56:	4607      	mov	r7, r0
1a004a58:	4658      	mov	r0, fp
1a004a5a:	f001 f88b 	bl	1a005b74 <_Bfree>
1a004a5e:	46ba      	mov	sl, r7
1a004a60:	2e00      	cmp	r6, #0
1a004a62:	f43f ae66 	beq.w	1a004732 <_dtoa_r+0x65a>
1a004a66:	e65e      	b.n	1a004726 <_dtoa_r+0x64e>
1a004a68:	4629      	mov	r1, r5
1a004a6a:	4622      	mov	r2, r4
1a004a6c:	4658      	mov	r0, fp
1a004a6e:	f001 fa1b 	bl	1a005ea8 <__lshift>
1a004a72:	4605      	mov	r5, r0
1a004a74:	e69a      	b.n	1a0047ac <_dtoa_r+0x6d4>
1a004a76:	d107      	bne.n	1a004a88 <_dtoa_r+0x9b0>
1a004a78:	f019 0f01 	tst.w	r9, #1
1a004a7c:	f47f af42 	bne.w	1a004904 <_dtoa_r+0x82c>
1a004a80:	e002      	b.n	1a004a88 <_dtoa_r+0x9b0>
1a004a82:	f814 2c02 	ldrb.w	r2, [r4, #-2]
1a004a86:	461c      	mov	r4, r3
1a004a88:	2a30      	cmp	r2, #48	; 0x30
1a004a8a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
1a004a8e:	d0f8      	beq.n	1a004a82 <_dtoa_r+0x9aa>
1a004a90:	e746      	b.n	1a004920 <_dtoa_r+0x848>
1a004a92:	9a12      	ldr	r2, [sp, #72]	; 0x48
1a004a94:	2a00      	cmp	r2, #0
1a004a96:	f000 8153 	beq.w	1a004d40 <_dtoa_r+0xc68>
1a004a9a:	f203 4333 	addw	r3, r3, #1075	; 0x433
1a004a9e:	464c      	mov	r4, r9
1a004aa0:	4498      	add	r8, r3
1a004aa2:	4499      	add	r9, r3
1a004aa4:	9f08      	ldr	r7, [sp, #32]
1a004aa6:	e602      	b.n	1a0046ae <_dtoa_r+0x5d6>
1a004aa8:	9b06      	ldr	r3, [sp, #24]
1a004aaa:	2b00      	cmp	r3, #0
1a004aac:	f73f ad4b 	bgt.w	1a004546 <_dtoa_r+0x46e>
1a004ab0:	f040 80bb 	bne.w	1a004c2a <_dtoa_r+0xb52>
1a004ab4:	2200      	movs	r2, #0
1a004ab6:	4bb2      	ldr	r3, [pc, #712]	; (1a004d80 <_dtoa_r+0xca8>)
1a004ab8:	4640      	mov	r0, r8
1a004aba:	4649      	mov	r1, r9
1a004abc:	f002 fbd0 	bl	1a007260 <__aeabi_dmul>
1a004ac0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a004ac4:	f002 fe52 	bl	1a00776c <__aeabi_dcmpge>
1a004ac8:	9e06      	ldr	r6, [sp, #24]
1a004aca:	4635      	mov	r5, r6
1a004acc:	2800      	cmp	r0, #0
1a004ace:	d175      	bne.n	1a004bbc <_dtoa_r+0xae4>
1a004ad0:	9a05      	ldr	r2, [sp, #20]
1a004ad2:	3201      	adds	r2, #1
1a004ad4:	9205      	str	r2, [sp, #20]
1a004ad6:	9a04      	ldr	r2, [sp, #16]
1a004ad8:	2331      	movs	r3, #49	; 0x31
1a004ada:	7013      	strb	r3, [r2, #0]
1a004adc:	1c54      	adds	r4, r2, #1
1a004ade:	4631      	mov	r1, r6
1a004ae0:	4658      	mov	r0, fp
1a004ae2:	f001 f847 	bl	1a005b74 <_Bfree>
1a004ae6:	2d00      	cmp	r5, #0
1a004ae8:	f47f af26 	bne.w	1a004938 <_dtoa_r+0x860>
1a004aec:	e728      	b.n	1a004940 <_dtoa_r+0x868>
1a004aee:	f000 813f 	beq.w	1a004d70 <_dtoa_r+0xc98>
1a004af2:	9b05      	ldr	r3, [sp, #20]
1a004af4:	425c      	negs	r4, r3
1a004af6:	4ba3      	ldr	r3, [pc, #652]	; (1a004d84 <_dtoa_r+0xcac>)
1a004af8:	f004 020f 	and.w	r2, r4, #15
1a004afc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
1a004b00:	e9d3 2300 	ldrd	r2, r3, [r3]
1a004b04:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
1a004b08:	f002 fbaa 	bl	1a007260 <__aeabi_dmul>
1a004b0c:	1124      	asrs	r4, r4, #4
1a004b0e:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a004b12:	f000 81bb 	beq.w	1a004e8c <_dtoa_r+0xdb4>
1a004b16:	4d9c      	ldr	r5, [pc, #624]	; (1a004d88 <_dtoa_r+0xcb0>)
1a004b18:	2300      	movs	r3, #0
1a004b1a:	2602      	movs	r6, #2
1a004b1c:	07e2      	lsls	r2, r4, #31
1a004b1e:	d505      	bpl.n	1a004b2c <_dtoa_r+0xa54>
1a004b20:	e9d5 2300 	ldrd	r2, r3, [r5]
1a004b24:	f002 fb9c 	bl	1a007260 <__aeabi_dmul>
1a004b28:	3601      	adds	r6, #1
1a004b2a:	2301      	movs	r3, #1
1a004b2c:	1064      	asrs	r4, r4, #1
1a004b2e:	f105 0508 	add.w	r5, r5, #8
1a004b32:	d1f3      	bne.n	1a004b1c <_dtoa_r+0xa44>
1a004b34:	2b00      	cmp	r3, #0
1a004b36:	f43f ac3b 	beq.w	1a0043b0 <_dtoa_r+0x2d8>
1a004b3a:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a004b3e:	e437      	b.n	1a0043b0 <_dtoa_r+0x2d8>
1a004b40:	6869      	ldr	r1, [r5, #4]
1a004b42:	4658      	mov	r0, fp
1a004b44:	f000 fff0 	bl	1a005b28 <_Balloc>
1a004b48:	692b      	ldr	r3, [r5, #16]
1a004b4a:	3302      	adds	r3, #2
1a004b4c:	009a      	lsls	r2, r3, #2
1a004b4e:	4604      	mov	r4, r0
1a004b50:	f105 010c 	add.w	r1, r5, #12
1a004b54:	300c      	adds	r0, #12
1a004b56:	f7fd fabd 	bl	1a0020d4 <memcpy>
1a004b5a:	4621      	mov	r1, r4
1a004b5c:	2201      	movs	r2, #1
1a004b5e:	4658      	mov	r0, fp
1a004b60:	f001 f9a2 	bl	1a005ea8 <__lshift>
1a004b64:	4680      	mov	r8, r0
1a004b66:	e626      	b.n	1a0047b6 <_dtoa_r+0x6de>
1a004b68:	9b02      	ldr	r3, [sp, #8]
1a004b6a:	2b00      	cmp	r3, #0
1a004b6c:	f43f af50 	beq.w	1a004a10 <_dtoa_r+0x938>
1a004b70:	e707      	b.n	1a004982 <_dtoa_r+0x8aa>
1a004b72:	2400      	movs	r4, #0
1a004b74:	f8cb 4044 	str.w	r4, [fp, #68]	; 0x44
1a004b78:	4621      	mov	r1, r4
1a004b7a:	4658      	mov	r0, fp
1a004b7c:	f000 ffd4 	bl	1a005b28 <_Balloc>
1a004b80:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a004b84:	930b      	str	r3, [sp, #44]	; 0x2c
1a004b86:	9306      	str	r3, [sp, #24]
1a004b88:	2301      	movs	r3, #1
1a004b8a:	9004      	str	r0, [sp, #16]
1a004b8c:	9421      	str	r4, [sp, #132]	; 0x84
1a004b8e:	f8cb 0040 	str.w	r0, [fp, #64]	; 0x40
1a004b92:	9307      	str	r3, [sp, #28]
1a004b94:	e4c6      	b.n	1a004524 <_dtoa_r+0x44c>
1a004b96:	f000 fff7 	bl	1a005b88 <__multadd>
1a004b9a:	4627      	mov	r7, r4
1a004b9c:	4605      	mov	r5, r0
1a004b9e:	4680      	mov	r8, r0
1a004ba0:	e612      	b.n	1a0047c8 <_dtoa_r+0x6f0>
1a004ba2:	4658      	mov	r0, fp
1a004ba4:	f000 ffe6 	bl	1a005b74 <_Bfree>
1a004ba8:	2301      	movs	r3, #1
1a004baa:	e636      	b.n	1a00481a <_dtoa_r+0x742>
1a004bac:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004bae:	2b02      	cmp	r3, #2
1a004bb0:	f77f adf5 	ble.w	1a00479e <_dtoa_r+0x6c6>
1a004bb4:	9b06      	ldr	r3, [sp, #24]
1a004bb6:	2b00      	cmp	r3, #0
1a004bb8:	f000 80cc 	beq.w	1a004d54 <_dtoa_r+0xc7c>
1a004bbc:	9b21      	ldr	r3, [sp, #132]	; 0x84
1a004bbe:	9c04      	ldr	r4, [sp, #16]
1a004bc0:	43db      	mvns	r3, r3
1a004bc2:	9305      	str	r3, [sp, #20]
1a004bc4:	e78b      	b.n	1a004ade <_dtoa_r+0xa06>
1a004bc6:	9a05      	ldr	r2, [sp, #20]
1a004bc8:	3201      	adds	r2, #1
1a004bca:	9205      	str	r2, [sp, #20]
1a004bcc:	9a04      	ldr	r2, [sp, #16]
1a004bce:	2331      	movs	r3, #49	; 0x31
1a004bd0:	7013      	strb	r3, [r2, #0]
1a004bd2:	e6a5      	b.n	1a004920 <_dtoa_r+0x848>
1a004bd4:	2401      	movs	r4, #1
1a004bd6:	9421      	str	r4, [sp, #132]	; 0x84
1a004bd8:	9406      	str	r4, [sp, #24]
1a004bda:	f7ff bb9f 	b.w	1a00431c <_dtoa_r+0x244>
1a004bde:	4630      	mov	r0, r6
1a004be0:	f002 fad4 	bl	1a00718c <__aeabi_i2d>
1a004be4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a004be8:	f002 fb3a 	bl	1a007260 <__aeabi_dmul>
1a004bec:	2200      	movs	r2, #0
1a004bee:	4b67      	ldr	r3, [pc, #412]	; (1a004d8c <_dtoa_r+0xcb4>)
1a004bf0:	f002 f980 	bl	1a006ef4 <__adddf3>
1a004bf4:	4606      	mov	r6, r0
1a004bf6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
1a004bfa:	2200      	movs	r2, #0
1a004bfc:	4b60      	ldr	r3, [pc, #384]	; (1a004d80 <_dtoa_r+0xca8>)
1a004bfe:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004c02:	f002 f975 	bl	1a006ef0 <__aeabi_dsub>
1a004c06:	4632      	mov	r2, r6
1a004c08:	463b      	mov	r3, r7
1a004c0a:	4604      	mov	r4, r0
1a004c0c:	460d      	mov	r5, r1
1a004c0e:	f002 fdb7 	bl	1a007780 <__aeabi_dcmpgt>
1a004c12:	2800      	cmp	r0, #0
1a004c14:	d146      	bne.n	1a004ca4 <_dtoa_r+0xbcc>
1a004c16:	4632      	mov	r2, r6
1a004c18:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
1a004c1c:	4620      	mov	r0, r4
1a004c1e:	4629      	mov	r1, r5
1a004c20:	f002 fd90 	bl	1a007744 <__aeabi_dcmplt>
1a004c24:	2800      	cmp	r0, #0
1a004c26:	f43f ac79 	beq.w	1a00451c <_dtoa_r+0x444>
1a004c2a:	2600      	movs	r6, #0
1a004c2c:	4635      	mov	r5, r6
1a004c2e:	e7c5      	b.n	1a004bbc <_dtoa_r+0xae4>
1a004c30:	2301      	movs	r3, #1
1a004c32:	9307      	str	r3, [sp, #28]
1a004c34:	e6bd      	b.n	1a0049b2 <_dtoa_r+0x8da>
1a004c36:	4651      	mov	r1, sl
1a004c38:	9a08      	ldr	r2, [sp, #32]
1a004c3a:	4658      	mov	r0, fp
1a004c3c:	f001 f8e4 	bl	1a005e08 <__pow5mult>
1a004c40:	4682      	mov	sl, r0
1a004c42:	e576      	b.n	1a004732 <_dtoa_r+0x65a>
1a004c44:	f8dd a008 	ldr.w	sl, [sp, #8]
1a004c48:	f8dd b018 	ldr.w	fp, [sp, #24]
1a004c4c:	e678      	b.n	1a004940 <_dtoa_r+0x868>
1a004c4e:	9b08      	ldr	r3, [sp, #32]
1a004c50:	9a09      	ldr	r2, [sp, #36]	; 0x24
1a004c52:	1afb      	subs	r3, r7, r3
1a004c54:	441a      	add	r2, r3
1a004c56:	e9cd 7208 	strd	r7, r2, [sp, #32]
1a004c5a:	2700      	movs	r7, #0
1a004c5c:	e520      	b.n	1a0046a0 <_dtoa_r+0x5c8>
1a004c5e:	2b00      	cmp	r3, #0
1a004c60:	f107 0401 	add.w	r4, r7, #1
1a004c64:	f300 80bc 	bgt.w	1a004de0 <_dtoa_r+0xd08>
1a004c68:	9502      	str	r5, [sp, #8]
1a004c6a:	f887 9000 	strb.w	r9, [r7]
1a004c6e:	4645      	mov	r5, r8
1a004c70:	e656      	b.n	1a004920 <_dtoa_r+0x848>
1a004c72:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
1a004c76:	2602      	movs	r6, #2
1a004c78:	ed8d 7b0e 	vstr	d7, [sp, #56]	; 0x38
1a004c7c:	f7ff bb7f 	b.w	1a00437e <_dtoa_r+0x2a6>
1a004c80:	f1b9 0f39 	cmp.w	r9, #57	; 0x39
1a004c84:	f000 80be 	beq.w	1a004e04 <_dtoa_r+0xd2c>
1a004c88:	f109 0901 	add.w	r9, r9, #1
1a004c8c:	9502      	str	r5, [sp, #8]
1a004c8e:	f887 9000 	strb.w	r9, [r7]
1a004c92:	4645      	mov	r5, r8
1a004c94:	e644      	b.n	1a004920 <_dtoa_r+0x848>
1a004c96:	9b06      	ldr	r3, [sp, #24]
1a004c98:	eba9 0403 	sub.w	r4, r9, r3
1a004c9c:	e507      	b.n	1a0046ae <_dtoa_r+0x5d6>
1a004c9e:	9502      	str	r5, [sp, #8]
1a004ca0:	4645      	mov	r5, r8
1a004ca2:	e621      	b.n	1a0048e8 <_dtoa_r+0x810>
1a004ca4:	2600      	movs	r6, #0
1a004ca6:	4635      	mov	r5, r6
1a004ca8:	e712      	b.n	1a004ad0 <_dtoa_r+0x9f8>
1a004caa:	9a04      	ldr	r2, [sp, #16]
1a004cac:	2330      	movs	r3, #48	; 0x30
1a004cae:	7013      	strb	r3, [r2, #0]
1a004cb0:	9b05      	ldr	r3, [sp, #20]
1a004cb2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
1a004cb6:	3301      	adds	r3, #1
1a004cb8:	9305      	str	r3, [sp, #20]
1a004cba:	4613      	mov	r3, r2
1a004cbc:	e4e0      	b.n	1a004680 <_dtoa_r+0x5a8>
1a004cbe:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004cc2:	f002 facd 	bl	1a007260 <__aeabi_dmul>
1a004cc6:	9b04      	ldr	r3, [sp, #16]
1a004cc8:	701d      	strb	r5, [r3, #0]
1a004cca:	9b0e      	ldr	r3, [sp, #56]	; 0x38
1a004ccc:	2b01      	cmp	r3, #1
1a004cce:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a004cd2:	d023      	beq.n	1a004d1c <_dtoa_r+0xc44>
1a004cd4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
1a004cd6:	9a04      	ldr	r2, [sp, #16]
1a004cd8:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
1a004cdc:	4413      	add	r3, r2
1a004cde:	46c1      	mov	r9, r8
1a004ce0:	4698      	mov	r8, r3
1a004ce2:	2200      	movs	r2, #0
1a004ce4:	4b2a      	ldr	r3, [pc, #168]	; (1a004d90 <_dtoa_r+0xcb8>)
1a004ce6:	4630      	mov	r0, r6
1a004ce8:	4639      	mov	r1, r7
1a004cea:	f002 fab9 	bl	1a007260 <__aeabi_dmul>
1a004cee:	460f      	mov	r7, r1
1a004cf0:	4606      	mov	r6, r0
1a004cf2:	f002 fd65 	bl	1a0077c0 <__aeabi_d2iz>
1a004cf6:	4605      	mov	r5, r0
1a004cf8:	f002 fa48 	bl	1a00718c <__aeabi_i2d>
1a004cfc:	3530      	adds	r5, #48	; 0x30
1a004cfe:	4602      	mov	r2, r0
1a004d00:	460b      	mov	r3, r1
1a004d02:	4630      	mov	r0, r6
1a004d04:	4639      	mov	r1, r7
1a004d06:	f002 f8f3 	bl	1a006ef0 <__aeabi_dsub>
1a004d0a:	f804 5b01 	strb.w	r5, [r4], #1
1a004d0e:	4544      	cmp	r4, r8
1a004d10:	4606      	mov	r6, r0
1a004d12:	460f      	mov	r7, r1
1a004d14:	d1e5      	bne.n	1a004ce2 <_dtoa_r+0xc0a>
1a004d16:	46c8      	mov	r8, r9
1a004d18:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
1a004d1c:	4b1d      	ldr	r3, [pc, #116]	; (1a004d94 <_dtoa_r+0xcbc>)
1a004d1e:	2200      	movs	r2, #0
1a004d20:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004d24:	f002 f8e6 	bl	1a006ef4 <__adddf3>
1a004d28:	4632      	mov	r2, r6
1a004d2a:	463b      	mov	r3, r7
1a004d2c:	f002 fd0a 	bl	1a007744 <__aeabi_dcmplt>
1a004d30:	2800      	cmp	r0, #0
1a004d32:	d06d      	beq.n	1a004e10 <_dtoa_r+0xd38>
1a004d34:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a004d36:	9305      	str	r3, [sp, #20]
1a004d38:	f814 5c01 	ldrb.w	r5, [r4, #-1]
1a004d3c:	9a04      	ldr	r2, [sp, #16]
1a004d3e:	e49b      	b.n	1a004678 <_dtoa_r+0x5a0>
1a004d40:	9b14      	ldr	r3, [sp, #80]	; 0x50
1a004d42:	9f08      	ldr	r7, [sp, #32]
1a004d44:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
1a004d48:	464c      	mov	r4, r9
1a004d4a:	4498      	add	r8, r3
1a004d4c:	4499      	add	r9, r3
1a004d4e:	e4ae      	b.n	1a0046ae <_dtoa_r+0x5d6>
1a004d50:	2300      	movs	r3, #0
1a004d52:	e66e      	b.n	1a004a32 <_dtoa_r+0x95a>
1a004d54:	4631      	mov	r1, r6
1a004d56:	2205      	movs	r2, #5
1a004d58:	4658      	mov	r0, fp
1a004d5a:	f000 ff15 	bl	1a005b88 <__multadd>
1a004d5e:	4601      	mov	r1, r0
1a004d60:	4606      	mov	r6, r0
1a004d62:	4650      	mov	r0, sl
1a004d64:	f001 f8f6 	bl	1a005f54 <__mcmp>
1a004d68:	2800      	cmp	r0, #0
1a004d6a:	f73f aeb1 	bgt.w	1a004ad0 <_dtoa_r+0x9f8>
1a004d6e:	e725      	b.n	1a004bbc <_dtoa_r+0xae4>
1a004d70:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
1a004d74:	2602      	movs	r6, #2
1a004d76:	ed8d 7b02 	vstr	d7, [sp, #8]
1a004d7a:	f7ff bb19 	b.w	1a0043b0 <_dtoa_r+0x2d8>
1a004d7e:	bf00      	nop
1a004d80:	40140000 	.word	0x40140000
1a004d84:	1a007ce0 	.word	0x1a007ce0
1a004d88:	1a007cb8 	.word	0x1a007cb8
1a004d8c:	401c0000 	.word	0x401c0000
1a004d90:	40240000 	.word	0x40240000
1a004d94:	3fe00000 	.word	0x3fe00000
1a004d98:	9b06      	ldr	r3, [sp, #24]
1a004d9a:	2b00      	cmp	r3, #0
1a004d9c:	f43f af1f 	beq.w	1a004bde <_dtoa_r+0xb06>
1a004da0:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
1a004da2:	2c00      	cmp	r4, #0
1a004da4:	f77f abba 	ble.w	1a00451c <_dtoa_r+0x444>
1a004da8:	2200      	movs	r2, #0
1a004daa:	4b42      	ldr	r3, [pc, #264]	; (1a004eb4 <_dtoa_r+0xddc>)
1a004dac:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
1a004db0:	f002 fa56 	bl	1a007260 <__aeabi_dmul>
1a004db4:	e9cd 0102 	strd	r0, r1, [sp, #8]
1a004db8:	1c70      	adds	r0, r6, #1
1a004dba:	f002 f9e7 	bl	1a00718c <__aeabi_i2d>
1a004dbe:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a004dc2:	f002 fa4d 	bl	1a007260 <__aeabi_dmul>
1a004dc6:	4b3c      	ldr	r3, [pc, #240]	; (1a004eb8 <_dtoa_r+0xde0>)
1a004dc8:	2200      	movs	r2, #0
1a004dca:	f002 f893 	bl	1a006ef4 <__adddf3>
1a004dce:	9b05      	ldr	r3, [sp, #20]
1a004dd0:	940e      	str	r4, [sp, #56]	; 0x38
1a004dd2:	3b01      	subs	r3, #1
1a004dd4:	4606      	mov	r6, r0
1a004dd6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
1a004dda:	9313      	str	r3, [sp, #76]	; 0x4c
1a004ddc:	f7ff bb09 	b.w	1a0043f2 <_dtoa_r+0x31a>
1a004de0:	4651      	mov	r1, sl
1a004de2:	2201      	movs	r2, #1
1a004de4:	4658      	mov	r0, fp
1a004de6:	f001 f85f 	bl	1a005ea8 <__lshift>
1a004dea:	4631      	mov	r1, r6
1a004dec:	4682      	mov	sl, r0
1a004dee:	f001 f8b1 	bl	1a005f54 <__mcmp>
1a004df2:	2800      	cmp	r0, #0
1a004df4:	dd32      	ble.n	1a004e5c <_dtoa_r+0xd84>
1a004df6:	f1b9 0f39 	cmp.w	r9, #57	; 0x39
1a004dfa:	d003      	beq.n	1a004e04 <_dtoa_r+0xd2c>
1a004dfc:	9b08      	ldr	r3, [sp, #32]
1a004dfe:	f103 0931 	add.w	r9, r3, #49	; 0x31
1a004e02:	e731      	b.n	1a004c68 <_dtoa_r+0xb90>
1a004e04:	2239      	movs	r2, #57	; 0x39
1a004e06:	9502      	str	r5, [sp, #8]
1a004e08:	703a      	strb	r2, [r7, #0]
1a004e0a:	4645      	mov	r5, r8
1a004e0c:	9904      	ldr	r1, [sp, #16]
1a004e0e:	e581      	b.n	1a004914 <_dtoa_r+0x83c>
1a004e10:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a004e14:	2000      	movs	r0, #0
1a004e16:	4929      	ldr	r1, [pc, #164]	; (1a004ebc <_dtoa_r+0xde4>)
1a004e18:	f002 f86a 	bl	1a006ef0 <__aeabi_dsub>
1a004e1c:	4632      	mov	r2, r6
1a004e1e:	463b      	mov	r3, r7
1a004e20:	f002 fcae 	bl	1a007780 <__aeabi_dcmpgt>
1a004e24:	b910      	cbnz	r0, 1a004e2c <_dtoa_r+0xd54>
1a004e26:	f7ff bb79 	b.w	1a00451c <_dtoa_r+0x444>
1a004e2a:	4614      	mov	r4, r2
1a004e2c:	f814 3c01 	ldrb.w	r3, [r4, #-1]
1a004e30:	2b30      	cmp	r3, #48	; 0x30
1a004e32:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
1a004e36:	d0f8      	beq.n	1a004e2a <_dtoa_r+0xd52>
1a004e38:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a004e3a:	9305      	str	r3, [sp, #20]
1a004e3c:	e580      	b.n	1a004940 <_dtoa_r+0x868>
1a004e3e:	f8dd a008 	ldr.w	sl, [sp, #8]
1a004e42:	9b13      	ldr	r3, [sp, #76]	; 0x4c
1a004e44:	9305      	str	r3, [sp, #20]
1a004e46:	9a04      	ldr	r2, [sp, #16]
1a004e48:	e416      	b.n	1a004678 <_dtoa_r+0x5a0>
1a004e4a:	f1b9 0f39 	cmp.w	r9, #57	; 0x39
1a004e4e:	f107 0401 	add.w	r4, r7, #1
1a004e52:	d0d7      	beq.n	1a004e04 <_dtoa_r+0xd2c>
1a004e54:	9b02      	ldr	r3, [sp, #8]
1a004e56:	2b00      	cmp	r3, #0
1a004e58:	dcd0      	bgt.n	1a004dfc <_dtoa_r+0xd24>
1a004e5a:	e705      	b.n	1a004c68 <_dtoa_r+0xb90>
1a004e5c:	f47f af04 	bne.w	1a004c68 <_dtoa_r+0xb90>
1a004e60:	f019 0f01 	tst.w	r9, #1
1a004e64:	f43f af00 	beq.w	1a004c68 <_dtoa_r+0xb90>
1a004e68:	e7c5      	b.n	1a004df6 <_dtoa_r+0xd1e>
1a004e6a:	4629      	mov	r1, r5
1a004e6c:	2300      	movs	r3, #0
1a004e6e:	220a      	movs	r2, #10
1a004e70:	4658      	mov	r0, fp
1a004e72:	f000 fe89 	bl	1a005b88 <__multadd>
1a004e76:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a004e78:	2b00      	cmp	r3, #0
1a004e7a:	4605      	mov	r5, r0
1a004e7c:	dd09      	ble.n	1a004e92 <_dtoa_r+0xdba>
1a004e7e:	9306      	str	r3, [sp, #24]
1a004e80:	e491      	b.n	1a0047a6 <_dtoa_r+0x6ce>
1a004e82:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004e84:	2b02      	cmp	r3, #2
1a004e86:	dc09      	bgt.n	1a004e9c <_dtoa_r+0xdc4>
1a004e88:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a004e8a:	e510      	b.n	1a0048ae <_dtoa_r+0x7d6>
1a004e8c:	2602      	movs	r6, #2
1a004e8e:	f7ff ba8f 	b.w	1a0043b0 <_dtoa_r+0x2d8>
1a004e92:	9b20      	ldr	r3, [sp, #128]	; 0x80
1a004e94:	2b02      	cmp	r3, #2
1a004e96:	dc01      	bgt.n	1a004e9c <_dtoa_r+0xdc4>
1a004e98:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a004e9a:	e7f0      	b.n	1a004e7e <_dtoa_r+0xda6>
1a004e9c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a004e9e:	9306      	str	r3, [sp, #24]
1a004ea0:	e688      	b.n	1a004bb4 <_dtoa_r+0xadc>
1a004ea2:	4b07      	ldr	r3, [pc, #28]	; (1a004ec0 <_dtoa_r+0xde8>)
1a004ea4:	9304      	str	r3, [sp, #16]
1a004ea6:	f7ff b94f 	b.w	1a004148 <_dtoa_r+0x70>
1a004eaa:	f43f ac5f 	beq.w	1a00476c <_dtoa_r+0x694>
1a004eae:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
1a004eb2:	e559      	b.n	1a004968 <_dtoa_r+0x890>
1a004eb4:	40240000 	.word	0x40240000
1a004eb8:	401c0000 	.word	0x401c0000
1a004ebc:	3fe00000 	.word	0x3fe00000
1a004ec0:	1a007ca4 	.word	0x1a007ca4

1a004ec4 <__sflush_r>:
1a004ec4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
1a004ec8:	b29a      	uxth	r2, r3
1a004eca:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
1a004ece:	460c      	mov	r4, r1
1a004ed0:	0711      	lsls	r1, r2, #28
1a004ed2:	4680      	mov	r8, r0
1a004ed4:	d444      	bmi.n	1a004f60 <__sflush_r+0x9c>
1a004ed6:	6862      	ldr	r2, [r4, #4]
1a004ed8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a004edc:	2a00      	cmp	r2, #0
1a004ede:	81a3      	strh	r3, [r4, #12]
1a004ee0:	dd59      	ble.n	1a004f96 <__sflush_r+0xd2>
1a004ee2:	6aa5      	ldr	r5, [r4, #40]	; 0x28
1a004ee4:	2d00      	cmp	r5, #0
1a004ee6:	d053      	beq.n	1a004f90 <__sflush_r+0xcc>
1a004ee8:	2200      	movs	r2, #0
1a004eea:	b29b      	uxth	r3, r3
1a004eec:	f8d8 6000 	ldr.w	r6, [r8]
1a004ef0:	69e1      	ldr	r1, [r4, #28]
1a004ef2:	f8c8 2000 	str.w	r2, [r8]
1a004ef6:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
1a004efa:	f040 8083 	bne.w	1a005004 <__sflush_r+0x140>
1a004efe:	2301      	movs	r3, #1
1a004f00:	4640      	mov	r0, r8
1a004f02:	47a8      	blx	r5
1a004f04:	1c42      	adds	r2, r0, #1
1a004f06:	d04a      	beq.n	1a004f9e <__sflush_r+0xda>
1a004f08:	89a3      	ldrh	r3, [r4, #12]
1a004f0a:	6aa5      	ldr	r5, [r4, #40]	; 0x28
1a004f0c:	69e1      	ldr	r1, [r4, #28]
1a004f0e:	075b      	lsls	r3, r3, #29
1a004f10:	d505      	bpl.n	1a004f1e <__sflush_r+0x5a>
1a004f12:	6862      	ldr	r2, [r4, #4]
1a004f14:	6b23      	ldr	r3, [r4, #48]	; 0x30
1a004f16:	1a80      	subs	r0, r0, r2
1a004f18:	b10b      	cbz	r3, 1a004f1e <__sflush_r+0x5a>
1a004f1a:	6be3      	ldr	r3, [r4, #60]	; 0x3c
1a004f1c:	1ac0      	subs	r0, r0, r3
1a004f1e:	4602      	mov	r2, r0
1a004f20:	2300      	movs	r3, #0
1a004f22:	4640      	mov	r0, r8
1a004f24:	47a8      	blx	r5
1a004f26:	1c47      	adds	r7, r0, #1
1a004f28:	d045      	beq.n	1a004fb6 <__sflush_r+0xf2>
1a004f2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a004f2e:	6922      	ldr	r2, [r4, #16]
1a004f30:	6022      	str	r2, [r4, #0]
1a004f32:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
1a004f36:	2200      	movs	r2, #0
1a004f38:	81a3      	strh	r3, [r4, #12]
1a004f3a:	04db      	lsls	r3, r3, #19
1a004f3c:	6062      	str	r2, [r4, #4]
1a004f3e:	d500      	bpl.n	1a004f42 <__sflush_r+0x7e>
1a004f40:	6520      	str	r0, [r4, #80]	; 0x50
1a004f42:	6b21      	ldr	r1, [r4, #48]	; 0x30
1a004f44:	f8c8 6000 	str.w	r6, [r8]
1a004f48:	b311      	cbz	r1, 1a004f90 <__sflush_r+0xcc>
1a004f4a:	f104 0340 	add.w	r3, r4, #64	; 0x40
1a004f4e:	4299      	cmp	r1, r3
1a004f50:	d002      	beq.n	1a004f58 <__sflush_r+0x94>
1a004f52:	4640      	mov	r0, r8
1a004f54:	f000 f944 	bl	1a0051e0 <_free_r>
1a004f58:	2000      	movs	r0, #0
1a004f5a:	6320      	str	r0, [r4, #48]	; 0x30
1a004f5c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1a004f60:	6926      	ldr	r6, [r4, #16]
1a004f62:	b1ae      	cbz	r6, 1a004f90 <__sflush_r+0xcc>
1a004f64:	6825      	ldr	r5, [r4, #0]
1a004f66:	6026      	str	r6, [r4, #0]
1a004f68:	0792      	lsls	r2, r2, #30
1a004f6a:	bf0c      	ite	eq
1a004f6c:	6963      	ldreq	r3, [r4, #20]
1a004f6e:	2300      	movne	r3, #0
1a004f70:	1bad      	subs	r5, r5, r6
1a004f72:	60a3      	str	r3, [r4, #8]
1a004f74:	e00a      	b.n	1a004f8c <__sflush_r+0xc8>
1a004f76:	462b      	mov	r3, r5
1a004f78:	4632      	mov	r2, r6
1a004f7a:	6a67      	ldr	r7, [r4, #36]	; 0x24
1a004f7c:	69e1      	ldr	r1, [r4, #28]
1a004f7e:	4640      	mov	r0, r8
1a004f80:	47b8      	blx	r7
1a004f82:	2800      	cmp	r0, #0
1a004f84:	eba5 0500 	sub.w	r5, r5, r0
1a004f88:	4406      	add	r6, r0
1a004f8a:	dd2b      	ble.n	1a004fe4 <__sflush_r+0x120>
1a004f8c:	2d00      	cmp	r5, #0
1a004f8e:	dcf2      	bgt.n	1a004f76 <__sflush_r+0xb2>
1a004f90:	2000      	movs	r0, #0
1a004f92:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1a004f96:	6be2      	ldr	r2, [r4, #60]	; 0x3c
1a004f98:	2a00      	cmp	r2, #0
1a004f9a:	dca2      	bgt.n	1a004ee2 <__sflush_r+0x1e>
1a004f9c:	e7f8      	b.n	1a004f90 <__sflush_r+0xcc>
1a004f9e:	f8d8 3000 	ldr.w	r3, [r8]
1a004fa2:	2b00      	cmp	r3, #0
1a004fa4:	d0b0      	beq.n	1a004f08 <__sflush_r+0x44>
1a004fa6:	2b1d      	cmp	r3, #29
1a004fa8:	d001      	beq.n	1a004fae <__sflush_r+0xea>
1a004faa:	2b16      	cmp	r3, #22
1a004fac:	d12c      	bne.n	1a005008 <__sflush_r+0x144>
1a004fae:	f8c8 6000 	str.w	r6, [r8]
1a004fb2:	2000      	movs	r0, #0
1a004fb4:	e7ed      	b.n	1a004f92 <__sflush_r+0xce>
1a004fb6:	f8d8 1000 	ldr.w	r1, [r8]
1a004fba:	291d      	cmp	r1, #29
1a004fbc:	d81a      	bhi.n	1a004ff4 <__sflush_r+0x130>
1a004fbe:	4b15      	ldr	r3, [pc, #84]	; (1a005014 <__sflush_r+0x150>)
1a004fc0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a004fc4:	40cb      	lsrs	r3, r1
1a004fc6:	43db      	mvns	r3, r3
1a004fc8:	f013 0301 	ands.w	r3, r3, #1
1a004fcc:	d114      	bne.n	1a004ff8 <__sflush_r+0x134>
1a004fce:	6925      	ldr	r5, [r4, #16]
1a004fd0:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
1a004fd4:	e9c4 5300 	strd	r5, r3, [r4]
1a004fd8:	04d5      	lsls	r5, r2, #19
1a004fda:	81a2      	strh	r2, [r4, #12]
1a004fdc:	d5b1      	bpl.n	1a004f42 <__sflush_r+0x7e>
1a004fde:	2900      	cmp	r1, #0
1a004fe0:	d1af      	bne.n	1a004f42 <__sflush_r+0x7e>
1a004fe2:	e7ad      	b.n	1a004f40 <__sflush_r+0x7c>
1a004fe4:	89a3      	ldrh	r3, [r4, #12]
1a004fe6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a004fea:	81a3      	strh	r3, [r4, #12]
1a004fec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a004ff0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1a004ff4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a004ff8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
1a004ffc:	81a2      	strh	r2, [r4, #12]
1a004ffe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a005002:	e7c6      	b.n	1a004f92 <__sflush_r+0xce>
1a005004:	6d20      	ldr	r0, [r4, #80]	; 0x50
1a005006:	e782      	b.n	1a004f0e <__sflush_r+0x4a>
1a005008:	89a3      	ldrh	r3, [r4, #12]
1a00500a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a00500e:	81a3      	strh	r3, [r4, #12]
1a005010:	e7bf      	b.n	1a004f92 <__sflush_r+0xce>
1a005012:	bf00      	nop
1a005014:	20400001 	.word	0x20400001

1a005018 <_fflush_r>:
1a005018:	b538      	push	{r3, r4, r5, lr}
1a00501a:	460d      	mov	r5, r1
1a00501c:	4604      	mov	r4, r0
1a00501e:	b108      	cbz	r0, 1a005024 <_fflush_r+0xc>
1a005020:	6b83      	ldr	r3, [r0, #56]	; 0x38
1a005022:	b1a3      	cbz	r3, 1a00504e <_fflush_r+0x36>
1a005024:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
1a005028:	b1b8      	cbz	r0, 1a00505a <_fflush_r+0x42>
1a00502a:	6e6b      	ldr	r3, [r5, #100]	; 0x64
1a00502c:	07db      	lsls	r3, r3, #31
1a00502e:	d401      	bmi.n	1a005034 <_fflush_r+0x1c>
1a005030:	0581      	lsls	r1, r0, #22
1a005032:	d51a      	bpl.n	1a00506a <_fflush_r+0x52>
1a005034:	4620      	mov	r0, r4
1a005036:	4629      	mov	r1, r5
1a005038:	f7ff ff44 	bl	1a004ec4 <__sflush_r>
1a00503c:	6e6b      	ldr	r3, [r5, #100]	; 0x64
1a00503e:	07da      	lsls	r2, r3, #31
1a005040:	4604      	mov	r4, r0
1a005042:	d402      	bmi.n	1a00504a <_fflush_r+0x32>
1a005044:	89ab      	ldrh	r3, [r5, #12]
1a005046:	059b      	lsls	r3, r3, #22
1a005048:	d50a      	bpl.n	1a005060 <_fflush_r+0x48>
1a00504a:	4620      	mov	r0, r4
1a00504c:	bd38      	pop	{r3, r4, r5, pc}
1a00504e:	f000 f83f 	bl	1a0050d0 <__sinit>
1a005052:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
1a005056:	2800      	cmp	r0, #0
1a005058:	d1e7      	bne.n	1a00502a <_fflush_r+0x12>
1a00505a:	4604      	mov	r4, r0
1a00505c:	4620      	mov	r0, r4
1a00505e:	bd38      	pop	{r3, r4, r5, pc}
1a005060:	6da8      	ldr	r0, [r5, #88]	; 0x58
1a005062:	f7fb f99d 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a005066:	4620      	mov	r0, r4
1a005068:	bd38      	pop	{r3, r4, r5, pc}
1a00506a:	6da8      	ldr	r0, [r5, #88]	; 0x58
1a00506c:	f7fb f996 	bl	1a00039c <__retarget_lock_acquire_recursive>
1a005070:	e7e0      	b.n	1a005034 <_fflush_r+0x1c>
1a005072:	bf00      	nop

1a005074 <std>:
1a005074:	b510      	push	{r4, lr}
1a005076:	2300      	movs	r3, #0
1a005078:	4604      	mov	r4, r0
1a00507a:	8181      	strh	r1, [r0, #12]
1a00507c:	81c2      	strh	r2, [r0, #14]
1a00507e:	e9c0 3300 	strd	r3, r3, [r0]
1a005082:	6083      	str	r3, [r0, #8]
1a005084:	6643      	str	r3, [r0, #100]	; 0x64
1a005086:	e9c0 3304 	strd	r3, r3, [r0, #16]
1a00508a:	6183      	str	r3, [r0, #24]
1a00508c:	4619      	mov	r1, r3
1a00508e:	2208      	movs	r2, #8
1a005090:	305c      	adds	r0, #92	; 0x5c
1a005092:	f7fb f935 	bl	1a000300 <memset>
1a005096:	4807      	ldr	r0, [pc, #28]	; (1a0050b4 <std+0x40>)
1a005098:	4907      	ldr	r1, [pc, #28]	; (1a0050b8 <std+0x44>)
1a00509a:	4a08      	ldr	r2, [pc, #32]	; (1a0050bc <std+0x48>)
1a00509c:	4b08      	ldr	r3, [pc, #32]	; (1a0050c0 <std+0x4c>)
1a00509e:	62e3      	str	r3, [r4, #44]	; 0x2c
1a0050a0:	e9c4 4007 	strd	r4, r0, [r4, #28]
1a0050a4:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
1a0050a8:	f104 0058 	add.w	r0, r4, #88	; 0x58
1a0050ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
1a0050b0:	f7fb b970 	b.w	1a000394 <__retarget_lock_init_recursive>
1a0050b4:	1a0061bd 	.word	0x1a0061bd
1a0050b8:	1a0061e1 	.word	0x1a0061e1
1a0050bc:	1a00621d 	.word	0x1a00621d
1a0050c0:	1a00623d 	.word	0x1a00623d

1a0050c4 <_cleanup_r>:
1a0050c4:	4901      	ldr	r1, [pc, #4]	; (1a0050cc <_cleanup_r+0x8>)
1a0050c6:	f000 b97f 	b.w	1a0053c8 <_fwalk_reent>
1a0050ca:	bf00      	nop
1a0050cc:	1a0063ed 	.word	0x1a0063ed

1a0050d0 <__sinit>:
1a0050d0:	b510      	push	{r4, lr}
1a0050d2:	4604      	mov	r4, r0
1a0050d4:	4812      	ldr	r0, [pc, #72]	; (1a005120 <__sinit+0x50>)
1a0050d6:	f7fb f961 	bl	1a00039c <__retarget_lock_acquire_recursive>
1a0050da:	6ba2      	ldr	r2, [r4, #56]	; 0x38
1a0050dc:	b9d2      	cbnz	r2, 1a005114 <__sinit+0x44>
1a0050de:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
1a0050e2:	4810      	ldr	r0, [pc, #64]	; (1a005124 <__sinit+0x54>)
1a0050e4:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
1a0050e8:	2103      	movs	r1, #3
1a0050ea:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
1a0050ee:	63e0      	str	r0, [r4, #60]	; 0x3c
1a0050f0:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
1a0050f4:	6860      	ldr	r0, [r4, #4]
1a0050f6:	2104      	movs	r1, #4
1a0050f8:	f7ff ffbc 	bl	1a005074 <std>
1a0050fc:	2201      	movs	r2, #1
1a0050fe:	2109      	movs	r1, #9
1a005100:	68a0      	ldr	r0, [r4, #8]
1a005102:	f7ff ffb7 	bl	1a005074 <std>
1a005106:	2202      	movs	r2, #2
1a005108:	2112      	movs	r1, #18
1a00510a:	68e0      	ldr	r0, [r4, #12]
1a00510c:	f7ff ffb2 	bl	1a005074 <std>
1a005110:	2301      	movs	r3, #1
1a005112:	63a3      	str	r3, [r4, #56]	; 0x38
1a005114:	4802      	ldr	r0, [pc, #8]	; (1a005120 <__sinit+0x50>)
1a005116:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
1a00511a:	f7fb b941 	b.w	1a0003a0 <__retarget_lock_release_recursive>
1a00511e:	bf00      	nop
1a005120:	10000a30 	.word	0x10000a30
1a005124:	1a0050c5 	.word	0x1a0050c5

1a005128 <__sfp_lock_acquire>:
1a005128:	4801      	ldr	r0, [pc, #4]	; (1a005130 <__sfp_lock_acquire+0x8>)
1a00512a:	f7fb b937 	b.w	1a00039c <__retarget_lock_acquire_recursive>
1a00512e:	bf00      	nop
1a005130:	10000a44 	.word	0x10000a44

1a005134 <__sfp_lock_release>:
1a005134:	4801      	ldr	r0, [pc, #4]	; (1a00513c <__sfp_lock_release+0x8>)
1a005136:	f7fb b933 	b.w	1a0003a0 <__retarget_lock_release_recursive>
1a00513a:	bf00      	nop
1a00513c:	10000a44 	.word	0x10000a44

1a005140 <_malloc_trim_r>:
1a005140:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a005142:	4f24      	ldr	r7, [pc, #144]	; (1a0051d4 <_malloc_trim_r+0x94>)
1a005144:	460c      	mov	r4, r1
1a005146:	4606      	mov	r6, r0
1a005148:	f000 fce2 	bl	1a005b10 <__malloc_lock>
1a00514c:	68bb      	ldr	r3, [r7, #8]
1a00514e:	685d      	ldr	r5, [r3, #4]
1a005150:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
1a005154:	310f      	adds	r1, #15
1a005156:	f025 0503 	bic.w	r5, r5, #3
1a00515a:	4429      	add	r1, r5
1a00515c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
1a005160:	f021 010f 	bic.w	r1, r1, #15
1a005164:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
1a005168:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
1a00516c:	db07      	blt.n	1a00517e <_malloc_trim_r+0x3e>
1a00516e:	2100      	movs	r1, #0
1a005170:	4630      	mov	r0, r6
1a005172:	f001 f811 	bl	1a006198 <_sbrk_r>
1a005176:	68bb      	ldr	r3, [r7, #8]
1a005178:	442b      	add	r3, r5
1a00517a:	4298      	cmp	r0, r3
1a00517c:	d004      	beq.n	1a005188 <_malloc_trim_r+0x48>
1a00517e:	4630      	mov	r0, r6
1a005180:	f000 fccc 	bl	1a005b1c <__malloc_unlock>
1a005184:	2000      	movs	r0, #0
1a005186:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a005188:	4261      	negs	r1, r4
1a00518a:	4630      	mov	r0, r6
1a00518c:	f001 f804 	bl	1a006198 <_sbrk_r>
1a005190:	3001      	adds	r0, #1
1a005192:	d00d      	beq.n	1a0051b0 <_malloc_trim_r+0x70>
1a005194:	4b10      	ldr	r3, [pc, #64]	; (1a0051d8 <_malloc_trim_r+0x98>)
1a005196:	68ba      	ldr	r2, [r7, #8]
1a005198:	6819      	ldr	r1, [r3, #0]
1a00519a:	1b2d      	subs	r5, r5, r4
1a00519c:	f045 0501 	orr.w	r5, r5, #1
1a0051a0:	4630      	mov	r0, r6
1a0051a2:	1b09      	subs	r1, r1, r4
1a0051a4:	6055      	str	r5, [r2, #4]
1a0051a6:	6019      	str	r1, [r3, #0]
1a0051a8:	f000 fcb8 	bl	1a005b1c <__malloc_unlock>
1a0051ac:	2001      	movs	r0, #1
1a0051ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a0051b0:	2100      	movs	r1, #0
1a0051b2:	4630      	mov	r0, r6
1a0051b4:	f000 fff0 	bl	1a006198 <_sbrk_r>
1a0051b8:	68ba      	ldr	r2, [r7, #8]
1a0051ba:	1a83      	subs	r3, r0, r2
1a0051bc:	2b0f      	cmp	r3, #15
1a0051be:	ddde      	ble.n	1a00517e <_malloc_trim_r+0x3e>
1a0051c0:	4c06      	ldr	r4, [pc, #24]	; (1a0051dc <_malloc_trim_r+0x9c>)
1a0051c2:	4905      	ldr	r1, [pc, #20]	; (1a0051d8 <_malloc_trim_r+0x98>)
1a0051c4:	6824      	ldr	r4, [r4, #0]
1a0051c6:	f043 0301 	orr.w	r3, r3, #1
1a0051ca:	1b00      	subs	r0, r0, r4
1a0051cc:	6053      	str	r3, [r2, #4]
1a0051ce:	6008      	str	r0, [r1, #0]
1a0051d0:	e7d5      	b.n	1a00517e <_malloc_trim_r+0x3e>
1a0051d2:	bf00      	nop
1a0051d4:	10000434 	.word	0x10000434
1a0051d8:	100009f0 	.word	0x100009f0
1a0051dc:	1000083c 	.word	0x1000083c

1a0051e0 <_free_r>:
1a0051e0:	2900      	cmp	r1, #0
1a0051e2:	d053      	beq.n	1a00528c <_free_r+0xac>
1a0051e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0051e6:	460c      	mov	r4, r1
1a0051e8:	4606      	mov	r6, r0
1a0051ea:	f000 fc91 	bl	1a005b10 <__malloc_lock>
1a0051ee:	f854 cc04 	ldr.w	ip, [r4, #-4]
1a0051f2:	4f71      	ldr	r7, [pc, #452]	; (1a0053b8 <_free_r+0x1d8>)
1a0051f4:	f02c 0101 	bic.w	r1, ip, #1
1a0051f8:	f1a4 0508 	sub.w	r5, r4, #8
1a0051fc:	186b      	adds	r3, r5, r1
1a0051fe:	68b8      	ldr	r0, [r7, #8]
1a005200:	685a      	ldr	r2, [r3, #4]
1a005202:	4298      	cmp	r0, r3
1a005204:	f022 0203 	bic.w	r2, r2, #3
1a005208:	d053      	beq.n	1a0052b2 <_free_r+0xd2>
1a00520a:	f01c 0f01 	tst.w	ip, #1
1a00520e:	605a      	str	r2, [r3, #4]
1a005210:	eb03 0002 	add.w	r0, r3, r2
1a005214:	d13b      	bne.n	1a00528e <_free_r+0xae>
1a005216:	f854 cc08 	ldr.w	ip, [r4, #-8]
1a00521a:	6840      	ldr	r0, [r0, #4]
1a00521c:	eba5 050c 	sub.w	r5, r5, ip
1a005220:	f107 0e08 	add.w	lr, r7, #8
1a005224:	68ac      	ldr	r4, [r5, #8]
1a005226:	4574      	cmp	r4, lr
1a005228:	4461      	add	r1, ip
1a00522a:	f000 0001 	and.w	r0, r0, #1
1a00522e:	d075      	beq.n	1a00531c <_free_r+0x13c>
1a005230:	f8d5 c00c 	ldr.w	ip, [r5, #12]
1a005234:	f8c4 c00c 	str.w	ip, [r4, #12]
1a005238:	f8cc 4008 	str.w	r4, [ip, #8]
1a00523c:	b360      	cbz	r0, 1a005298 <_free_r+0xb8>
1a00523e:	f041 0301 	orr.w	r3, r1, #1
1a005242:	606b      	str	r3, [r5, #4]
1a005244:	5069      	str	r1, [r5, r1]
1a005246:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
1a00524a:	d350      	bcc.n	1a0052ee <_free_r+0x10e>
1a00524c:	0a4b      	lsrs	r3, r1, #9
1a00524e:	2b04      	cmp	r3, #4
1a005250:	d870      	bhi.n	1a005334 <_free_r+0x154>
1a005252:	098b      	lsrs	r3, r1, #6
1a005254:	f103 0439 	add.w	r4, r3, #57	; 0x39
1a005258:	00e4      	lsls	r4, r4, #3
1a00525a:	f103 0238 	add.w	r2, r3, #56	; 0x38
1a00525e:	1938      	adds	r0, r7, r4
1a005260:	593b      	ldr	r3, [r7, r4]
1a005262:	3808      	subs	r0, #8
1a005264:	4298      	cmp	r0, r3
1a005266:	d078      	beq.n	1a00535a <_free_r+0x17a>
1a005268:	685a      	ldr	r2, [r3, #4]
1a00526a:	f022 0203 	bic.w	r2, r2, #3
1a00526e:	428a      	cmp	r2, r1
1a005270:	d971      	bls.n	1a005356 <_free_r+0x176>
1a005272:	689b      	ldr	r3, [r3, #8]
1a005274:	4298      	cmp	r0, r3
1a005276:	d1f7      	bne.n	1a005268 <_free_r+0x88>
1a005278:	68c3      	ldr	r3, [r0, #12]
1a00527a:	e9c5 0302 	strd	r0, r3, [r5, #8]
1a00527e:	609d      	str	r5, [r3, #8]
1a005280:	60c5      	str	r5, [r0, #12]
1a005282:	4630      	mov	r0, r6
1a005284:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a005288:	f000 bc48 	b.w	1a005b1c <__malloc_unlock>
1a00528c:	4770      	bx	lr
1a00528e:	6840      	ldr	r0, [r0, #4]
1a005290:	f000 0001 	and.w	r0, r0, #1
1a005294:	2800      	cmp	r0, #0
1a005296:	d1d2      	bne.n	1a00523e <_free_r+0x5e>
1a005298:	6898      	ldr	r0, [r3, #8]
1a00529a:	4c48      	ldr	r4, [pc, #288]	; (1a0053bc <_free_r+0x1dc>)
1a00529c:	4411      	add	r1, r2
1a00529e:	42a0      	cmp	r0, r4
1a0052a0:	f041 0201 	orr.w	r2, r1, #1
1a0052a4:	d062      	beq.n	1a00536c <_free_r+0x18c>
1a0052a6:	68db      	ldr	r3, [r3, #12]
1a0052a8:	60c3      	str	r3, [r0, #12]
1a0052aa:	6098      	str	r0, [r3, #8]
1a0052ac:	606a      	str	r2, [r5, #4]
1a0052ae:	5069      	str	r1, [r5, r1]
1a0052b0:	e7c9      	b.n	1a005246 <_free_r+0x66>
1a0052b2:	f01c 0f01 	tst.w	ip, #1
1a0052b6:	440a      	add	r2, r1
1a0052b8:	d107      	bne.n	1a0052ca <_free_r+0xea>
1a0052ba:	f854 3c08 	ldr.w	r3, [r4, #-8]
1a0052be:	1aed      	subs	r5, r5, r3
1a0052c0:	441a      	add	r2, r3
1a0052c2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
1a0052c6:	60cb      	str	r3, [r1, #12]
1a0052c8:	6099      	str	r1, [r3, #8]
1a0052ca:	4b3d      	ldr	r3, [pc, #244]	; (1a0053c0 <_free_r+0x1e0>)
1a0052cc:	681b      	ldr	r3, [r3, #0]
1a0052ce:	f042 0101 	orr.w	r1, r2, #1
1a0052d2:	4293      	cmp	r3, r2
1a0052d4:	6069      	str	r1, [r5, #4]
1a0052d6:	60bd      	str	r5, [r7, #8]
1a0052d8:	d804      	bhi.n	1a0052e4 <_free_r+0x104>
1a0052da:	4b3a      	ldr	r3, [pc, #232]	; (1a0053c4 <_free_r+0x1e4>)
1a0052dc:	4630      	mov	r0, r6
1a0052de:	6819      	ldr	r1, [r3, #0]
1a0052e0:	f7ff ff2e 	bl	1a005140 <_malloc_trim_r>
1a0052e4:	4630      	mov	r0, r6
1a0052e6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a0052ea:	f000 bc17 	b.w	1a005b1c <__malloc_unlock>
1a0052ee:	08c9      	lsrs	r1, r1, #3
1a0052f0:	6878      	ldr	r0, [r7, #4]
1a0052f2:	1c4a      	adds	r2, r1, #1
1a0052f4:	2301      	movs	r3, #1
1a0052f6:	1089      	asrs	r1, r1, #2
1a0052f8:	408b      	lsls	r3, r1
1a0052fa:	4303      	orrs	r3, r0
1a0052fc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
1a005300:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
1a005304:	607b      	str	r3, [r7, #4]
1a005306:	3908      	subs	r1, #8
1a005308:	e9c5 0102 	strd	r0, r1, [r5, #8]
1a00530c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
1a005310:	60c5      	str	r5, [r0, #12]
1a005312:	4630      	mov	r0, r6
1a005314:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a005318:	f000 bc00 	b.w	1a005b1c <__malloc_unlock>
1a00531c:	2800      	cmp	r0, #0
1a00531e:	d145      	bne.n	1a0053ac <_free_r+0x1cc>
1a005320:	440a      	add	r2, r1
1a005322:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
1a005326:	f042 0001 	orr.w	r0, r2, #1
1a00532a:	60cb      	str	r3, [r1, #12]
1a00532c:	6099      	str	r1, [r3, #8]
1a00532e:	6068      	str	r0, [r5, #4]
1a005330:	50aa      	str	r2, [r5, r2]
1a005332:	e7d7      	b.n	1a0052e4 <_free_r+0x104>
1a005334:	2b14      	cmp	r3, #20
1a005336:	d908      	bls.n	1a00534a <_free_r+0x16a>
1a005338:	2b54      	cmp	r3, #84	; 0x54
1a00533a:	d81e      	bhi.n	1a00537a <_free_r+0x19a>
1a00533c:	0b0b      	lsrs	r3, r1, #12
1a00533e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
1a005342:	00e4      	lsls	r4, r4, #3
1a005344:	f103 026e 	add.w	r2, r3, #110	; 0x6e
1a005348:	e789      	b.n	1a00525e <_free_r+0x7e>
1a00534a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
1a00534e:	00e4      	lsls	r4, r4, #3
1a005350:	f103 025b 	add.w	r2, r3, #91	; 0x5b
1a005354:	e783      	b.n	1a00525e <_free_r+0x7e>
1a005356:	4618      	mov	r0, r3
1a005358:	e78e      	b.n	1a005278 <_free_r+0x98>
1a00535a:	1093      	asrs	r3, r2, #2
1a00535c:	6879      	ldr	r1, [r7, #4]
1a00535e:	2201      	movs	r2, #1
1a005360:	fa02 f303 	lsl.w	r3, r2, r3
1a005364:	430b      	orrs	r3, r1
1a005366:	607b      	str	r3, [r7, #4]
1a005368:	4603      	mov	r3, r0
1a00536a:	e786      	b.n	1a00527a <_free_r+0x9a>
1a00536c:	e9c7 5504 	strd	r5, r5, [r7, #16]
1a005370:	e9c5 0002 	strd	r0, r0, [r5, #8]
1a005374:	606a      	str	r2, [r5, #4]
1a005376:	5069      	str	r1, [r5, r1]
1a005378:	e7b4      	b.n	1a0052e4 <_free_r+0x104>
1a00537a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a00537e:	d806      	bhi.n	1a00538e <_free_r+0x1ae>
1a005380:	0bcb      	lsrs	r3, r1, #15
1a005382:	f103 0478 	add.w	r4, r3, #120	; 0x78
1a005386:	00e4      	lsls	r4, r4, #3
1a005388:	f103 0277 	add.w	r2, r3, #119	; 0x77
1a00538c:	e767      	b.n	1a00525e <_free_r+0x7e>
1a00538e:	f240 5254 	movw	r2, #1364	; 0x554
1a005392:	4293      	cmp	r3, r2
1a005394:	d806      	bhi.n	1a0053a4 <_free_r+0x1c4>
1a005396:	0c8b      	lsrs	r3, r1, #18
1a005398:	f103 047d 	add.w	r4, r3, #125	; 0x7d
1a00539c:	00e4      	lsls	r4, r4, #3
1a00539e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
1a0053a2:	e75c      	b.n	1a00525e <_free_r+0x7e>
1a0053a4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
1a0053a8:	227e      	movs	r2, #126	; 0x7e
1a0053aa:	e758      	b.n	1a00525e <_free_r+0x7e>
1a0053ac:	f041 0201 	orr.w	r2, r1, #1
1a0053b0:	606a      	str	r2, [r5, #4]
1a0053b2:	6019      	str	r1, [r3, #0]
1a0053b4:	e796      	b.n	1a0052e4 <_free_r+0x104>
1a0053b6:	bf00      	nop
1a0053b8:	10000434 	.word	0x10000434
1a0053bc:	1000043c 	.word	0x1000043c
1a0053c0:	10000840 	.word	0x10000840
1a0053c4:	10000a20 	.word	0x10000a20

1a0053c8 <_fwalk_reent>:
1a0053c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
1a0053cc:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
1a0053d0:	d01f      	beq.n	1a005412 <_fwalk_reent+0x4a>
1a0053d2:	4688      	mov	r8, r1
1a0053d4:	4606      	mov	r6, r0
1a0053d6:	f04f 0900 	mov.w	r9, #0
1a0053da:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
1a0053de:	3d01      	subs	r5, #1
1a0053e0:	d411      	bmi.n	1a005406 <_fwalk_reent+0x3e>
1a0053e2:	89a3      	ldrh	r3, [r4, #12]
1a0053e4:	2b01      	cmp	r3, #1
1a0053e6:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
1a0053ea:	4621      	mov	r1, r4
1a0053ec:	4630      	mov	r0, r6
1a0053ee:	d906      	bls.n	1a0053fe <_fwalk_reent+0x36>
1a0053f0:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
1a0053f4:	3301      	adds	r3, #1
1a0053f6:	d002      	beq.n	1a0053fe <_fwalk_reent+0x36>
1a0053f8:	47c0      	blx	r8
1a0053fa:	ea49 0900 	orr.w	r9, r9, r0
1a0053fe:	1c6b      	adds	r3, r5, #1
1a005400:	f104 0468 	add.w	r4, r4, #104	; 0x68
1a005404:	d1ed      	bne.n	1a0053e2 <_fwalk_reent+0x1a>
1a005406:	683f      	ldr	r7, [r7, #0]
1a005408:	2f00      	cmp	r7, #0
1a00540a:	d1e6      	bne.n	1a0053da <_fwalk_reent+0x12>
1a00540c:	4648      	mov	r0, r9
1a00540e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a005412:	46b9      	mov	r9, r7
1a005414:	4648      	mov	r0, r9
1a005416:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
1a00541a:	bf00      	nop

1a00541c <_localeconv_r>:
1a00541c:	4a04      	ldr	r2, [pc, #16]	; (1a005430 <_localeconv_r+0x14>)
1a00541e:	4b05      	ldr	r3, [pc, #20]	; (1a005434 <_localeconv_r+0x18>)
1a005420:	6812      	ldr	r2, [r2, #0]
1a005422:	6b50      	ldr	r0, [r2, #52]	; 0x34
1a005424:	2800      	cmp	r0, #0
1a005426:	bf08      	it	eq
1a005428:	4618      	moveq	r0, r3
1a00542a:	30f0      	adds	r0, #240	; 0xf0
1a00542c:	4770      	bx	lr
1a00542e:	bf00      	nop
1a005430:	10000000 	.word	0x10000000
1a005434:	10000844 	.word	0x10000844

1a005438 <__swhatbuf_r>:
1a005438:	b570      	push	{r4, r5, r6, lr}
1a00543a:	460c      	mov	r4, r1
1a00543c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
1a005440:	2900      	cmp	r1, #0
1a005442:	b096      	sub	sp, #88	; 0x58
1a005444:	4615      	mov	r5, r2
1a005446:	461e      	mov	r6, r3
1a005448:	da0f      	bge.n	1a00546a <__swhatbuf_r+0x32>
1a00544a:	89a2      	ldrh	r2, [r4, #12]
1a00544c:	2300      	movs	r3, #0
1a00544e:	f012 0080 	ands.w	r0, r2, #128	; 0x80
1a005452:	6033      	str	r3, [r6, #0]
1a005454:	d104      	bne.n	1a005460 <__swhatbuf_r+0x28>
1a005456:	f44f 6380 	mov.w	r3, #1024	; 0x400
1a00545a:	602b      	str	r3, [r5, #0]
1a00545c:	b016      	add	sp, #88	; 0x58
1a00545e:	bd70      	pop	{r4, r5, r6, pc}
1a005460:	2240      	movs	r2, #64	; 0x40
1a005462:	4618      	mov	r0, r3
1a005464:	602a      	str	r2, [r5, #0]
1a005466:	b016      	add	sp, #88	; 0x58
1a005468:	bd70      	pop	{r4, r5, r6, pc}
1a00546a:	466a      	mov	r2, sp
1a00546c:	f001 f8a8 	bl	1a0065c0 <_fstat_r>
1a005470:	2800      	cmp	r0, #0
1a005472:	dbea      	blt.n	1a00544a <__swhatbuf_r+0x12>
1a005474:	9b01      	ldr	r3, [sp, #4]
1a005476:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
1a00547a:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
1a00547e:	fab3 f383 	clz	r3, r3
1a005482:	095b      	lsrs	r3, r3, #5
1a005484:	f44f 6280 	mov.w	r2, #1024	; 0x400
1a005488:	f44f 6000 	mov.w	r0, #2048	; 0x800
1a00548c:	6033      	str	r3, [r6, #0]
1a00548e:	602a      	str	r2, [r5, #0]
1a005490:	b016      	add	sp, #88	; 0x58
1a005492:	bd70      	pop	{r4, r5, r6, pc}

1a005494 <__smakebuf_r>:
1a005494:	898a      	ldrh	r2, [r1, #12]
1a005496:	0792      	lsls	r2, r2, #30
1a005498:	460b      	mov	r3, r1
1a00549a:	d506      	bpl.n	1a0054aa <__smakebuf_r+0x16>
1a00549c:	f101 0243 	add.w	r2, r1, #67	; 0x43
1a0054a0:	2101      	movs	r1, #1
1a0054a2:	601a      	str	r2, [r3, #0]
1a0054a4:	e9c3 2104 	strd	r2, r1, [r3, #16]
1a0054a8:	4770      	bx	lr
1a0054aa:	b570      	push	{r4, r5, r6, lr}
1a0054ac:	b082      	sub	sp, #8
1a0054ae:	ab01      	add	r3, sp, #4
1a0054b0:	466a      	mov	r2, sp
1a0054b2:	460c      	mov	r4, r1
1a0054b4:	4605      	mov	r5, r0
1a0054b6:	f7ff ffbf 	bl	1a005438 <__swhatbuf_r>
1a0054ba:	9900      	ldr	r1, [sp, #0]
1a0054bc:	4606      	mov	r6, r0
1a0054be:	4628      	mov	r0, r5
1a0054c0:	f000 f832 	bl	1a005528 <_malloc_r>
1a0054c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a0054c8:	b1d8      	cbz	r0, 1a005502 <__smakebuf_r+0x6e>
1a0054ca:	4916      	ldr	r1, [pc, #88]	; (1a005524 <__smakebuf_r+0x90>)
1a0054cc:	63e9      	str	r1, [r5, #60]	; 0x3c
1a0054ce:	9a01      	ldr	r2, [sp, #4]
1a0054d0:	9900      	ldr	r1, [sp, #0]
1a0054d2:	6020      	str	r0, [r4, #0]
1a0054d4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0054d8:	81a3      	strh	r3, [r4, #12]
1a0054da:	e9c4 0104 	strd	r0, r1, [r4, #16]
1a0054de:	b91a      	cbnz	r2, 1a0054e8 <__smakebuf_r+0x54>
1a0054e0:	4333      	orrs	r3, r6
1a0054e2:	81a3      	strh	r3, [r4, #12]
1a0054e4:	b002      	add	sp, #8
1a0054e6:	bd70      	pop	{r4, r5, r6, pc}
1a0054e8:	4628      	mov	r0, r5
1a0054ea:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
1a0054ee:	f001 f9f9 	bl	1a0068e4 <_isatty_r>
1a0054f2:	b1a0      	cbz	r0, 1a00551e <__smakebuf_r+0x8a>
1a0054f4:	89a3      	ldrh	r3, [r4, #12]
1a0054f6:	f023 0303 	bic.w	r3, r3, #3
1a0054fa:	f043 0301 	orr.w	r3, r3, #1
1a0054fe:	b21b      	sxth	r3, r3
1a005500:	e7ee      	b.n	1a0054e0 <__smakebuf_r+0x4c>
1a005502:	059a      	lsls	r2, r3, #22
1a005504:	d4ee      	bmi.n	1a0054e4 <__smakebuf_r+0x50>
1a005506:	f023 0303 	bic.w	r3, r3, #3
1a00550a:	f104 0243 	add.w	r2, r4, #67	; 0x43
1a00550e:	f043 0302 	orr.w	r3, r3, #2
1a005512:	2101      	movs	r1, #1
1a005514:	81a3      	strh	r3, [r4, #12]
1a005516:	6022      	str	r2, [r4, #0]
1a005518:	e9c4 2104 	strd	r2, r1, [r4, #16]
1a00551c:	e7e2      	b.n	1a0054e4 <__smakebuf_r+0x50>
1a00551e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a005522:	e7dd      	b.n	1a0054e0 <__smakebuf_r+0x4c>
1a005524:	1a0050c5 	.word	0x1a0050c5

1a005528 <_malloc_r>:
1a005528:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a00552c:	f101 050b 	add.w	r5, r1, #11
1a005530:	2d16      	cmp	r5, #22
1a005532:	b083      	sub	sp, #12
1a005534:	4606      	mov	r6, r0
1a005536:	d823      	bhi.n	1a005580 <_malloc_r+0x58>
1a005538:	2910      	cmp	r1, #16
1a00553a:	f200 80b9 	bhi.w	1a0056b0 <_malloc_r+0x188>
1a00553e:	f000 fae7 	bl	1a005b10 <__malloc_lock>
1a005542:	2510      	movs	r5, #16
1a005544:	2318      	movs	r3, #24
1a005546:	2002      	movs	r0, #2
1a005548:	4fc5      	ldr	r7, [pc, #788]	; (1a005860 <_malloc_r+0x338>)
1a00554a:	443b      	add	r3, r7
1a00554c:	f1a3 0208 	sub.w	r2, r3, #8
1a005550:	685c      	ldr	r4, [r3, #4]
1a005552:	4294      	cmp	r4, r2
1a005554:	f000 8166 	beq.w	1a005824 <_malloc_r+0x2fc>
1a005558:	6863      	ldr	r3, [r4, #4]
1a00555a:	f023 0303 	bic.w	r3, r3, #3
1a00555e:	4423      	add	r3, r4
1a005560:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
1a005564:	685a      	ldr	r2, [r3, #4]
1a005566:	60e9      	str	r1, [r5, #12]
1a005568:	f042 0201 	orr.w	r2, r2, #1
1a00556c:	608d      	str	r5, [r1, #8]
1a00556e:	4630      	mov	r0, r6
1a005570:	605a      	str	r2, [r3, #4]
1a005572:	f000 fad3 	bl	1a005b1c <__malloc_unlock>
1a005576:	3408      	adds	r4, #8
1a005578:	4620      	mov	r0, r4
1a00557a:	b003      	add	sp, #12
1a00557c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a005580:	f035 0507 	bics.w	r5, r5, #7
1a005584:	f100 8094 	bmi.w	1a0056b0 <_malloc_r+0x188>
1a005588:	42a9      	cmp	r1, r5
1a00558a:	f200 8091 	bhi.w	1a0056b0 <_malloc_r+0x188>
1a00558e:	f000 fabf 	bl	1a005b10 <__malloc_lock>
1a005592:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
1a005596:	f0c0 8183 	bcc.w	1a0058a0 <_malloc_r+0x378>
1a00559a:	0a6b      	lsrs	r3, r5, #9
1a00559c:	f000 808f 	beq.w	1a0056be <_malloc_r+0x196>
1a0055a0:	2b04      	cmp	r3, #4
1a0055a2:	f200 8146 	bhi.w	1a005832 <_malloc_r+0x30a>
1a0055a6:	09ab      	lsrs	r3, r5, #6
1a0055a8:	f103 0039 	add.w	r0, r3, #57	; 0x39
1a0055ac:	f103 0c38 	add.w	ip, r3, #56	; 0x38
1a0055b0:	00c3      	lsls	r3, r0, #3
1a0055b2:	4fab      	ldr	r7, [pc, #684]	; (1a005860 <_malloc_r+0x338>)
1a0055b4:	443b      	add	r3, r7
1a0055b6:	f1a3 0108 	sub.w	r1, r3, #8
1a0055ba:	685c      	ldr	r4, [r3, #4]
1a0055bc:	42a1      	cmp	r1, r4
1a0055be:	d106      	bne.n	1a0055ce <_malloc_r+0xa6>
1a0055c0:	e00c      	b.n	1a0055dc <_malloc_r+0xb4>
1a0055c2:	2a00      	cmp	r2, #0
1a0055c4:	f280 811d 	bge.w	1a005802 <_malloc_r+0x2da>
1a0055c8:	68e4      	ldr	r4, [r4, #12]
1a0055ca:	42a1      	cmp	r1, r4
1a0055cc:	d006      	beq.n	1a0055dc <_malloc_r+0xb4>
1a0055ce:	6863      	ldr	r3, [r4, #4]
1a0055d0:	f023 0303 	bic.w	r3, r3, #3
1a0055d4:	1b5a      	subs	r2, r3, r5
1a0055d6:	2a0f      	cmp	r2, #15
1a0055d8:	ddf3      	ble.n	1a0055c2 <_malloc_r+0x9a>
1a0055da:	4660      	mov	r0, ip
1a0055dc:	693c      	ldr	r4, [r7, #16]
1a0055de:	f8df c294 	ldr.w	ip, [pc, #660]	; 1a005874 <_malloc_r+0x34c>
1a0055e2:	4564      	cmp	r4, ip
1a0055e4:	d071      	beq.n	1a0056ca <_malloc_r+0x1a2>
1a0055e6:	6863      	ldr	r3, [r4, #4]
1a0055e8:	f023 0303 	bic.w	r3, r3, #3
1a0055ec:	1b5a      	subs	r2, r3, r5
1a0055ee:	2a0f      	cmp	r2, #15
1a0055f0:	f300 8144 	bgt.w	1a00587c <_malloc_r+0x354>
1a0055f4:	2a00      	cmp	r2, #0
1a0055f6:	e9c7 cc04 	strd	ip, ip, [r7, #16]
1a0055fa:	f280 8126 	bge.w	1a00584a <_malloc_r+0x322>
1a0055fe:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
1a005602:	f080 8169 	bcs.w	1a0058d8 <_malloc_r+0x3b0>
1a005606:	08db      	lsrs	r3, r3, #3
1a005608:	1c59      	adds	r1, r3, #1
1a00560a:	687a      	ldr	r2, [r7, #4]
1a00560c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
1a005610:	f8c4 8008 	str.w	r8, [r4, #8]
1a005614:	f04f 0e01 	mov.w	lr, #1
1a005618:	109b      	asrs	r3, r3, #2
1a00561a:	fa0e f303 	lsl.w	r3, lr, r3
1a00561e:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
1a005622:	4313      	orrs	r3, r2
1a005624:	f1ae 0208 	sub.w	r2, lr, #8
1a005628:	60e2      	str	r2, [r4, #12]
1a00562a:	607b      	str	r3, [r7, #4]
1a00562c:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
1a005630:	f8c8 400c 	str.w	r4, [r8, #12]
1a005634:	1082      	asrs	r2, r0, #2
1a005636:	2401      	movs	r4, #1
1a005638:	4094      	lsls	r4, r2
1a00563a:	429c      	cmp	r4, r3
1a00563c:	d84b      	bhi.n	1a0056d6 <_malloc_r+0x1ae>
1a00563e:	421c      	tst	r4, r3
1a005640:	d106      	bne.n	1a005650 <_malloc_r+0x128>
1a005642:	f020 0003 	bic.w	r0, r0, #3
1a005646:	0064      	lsls	r4, r4, #1
1a005648:	421c      	tst	r4, r3
1a00564a:	f100 0004 	add.w	r0, r0, #4
1a00564e:	d0fa      	beq.n	1a005646 <_malloc_r+0x11e>
1a005650:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
1a005654:	46ce      	mov	lr, r9
1a005656:	4680      	mov	r8, r0
1a005658:	f8de 300c 	ldr.w	r3, [lr, #12]
1a00565c:	459e      	cmp	lr, r3
1a00565e:	d107      	bne.n	1a005670 <_malloc_r+0x148>
1a005660:	e122      	b.n	1a0058a8 <_malloc_r+0x380>
1a005662:	2a00      	cmp	r2, #0
1a005664:	f280 8129 	bge.w	1a0058ba <_malloc_r+0x392>
1a005668:	68db      	ldr	r3, [r3, #12]
1a00566a:	459e      	cmp	lr, r3
1a00566c:	f000 811c 	beq.w	1a0058a8 <_malloc_r+0x380>
1a005670:	6859      	ldr	r1, [r3, #4]
1a005672:	f021 0103 	bic.w	r1, r1, #3
1a005676:	1b4a      	subs	r2, r1, r5
1a005678:	2a0f      	cmp	r2, #15
1a00567a:	ddf2      	ble.n	1a005662 <_malloc_r+0x13a>
1a00567c:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
1a005680:	195c      	adds	r4, r3, r5
1a005682:	f045 0501 	orr.w	r5, r5, #1
1a005686:	605d      	str	r5, [r3, #4]
1a005688:	f042 0501 	orr.w	r5, r2, #1
1a00568c:	f8c8 e00c 	str.w	lr, [r8, #12]
1a005690:	4630      	mov	r0, r6
1a005692:	f8ce 8008 	str.w	r8, [lr, #8]
1a005696:	e9c7 4404 	strd	r4, r4, [r7, #16]
1a00569a:	e9c4 cc02 	strd	ip, ip, [r4, #8]
1a00569e:	6065      	str	r5, [r4, #4]
1a0056a0:	505a      	str	r2, [r3, r1]
1a0056a2:	9301      	str	r3, [sp, #4]
1a0056a4:	f000 fa3a 	bl	1a005b1c <__malloc_unlock>
1a0056a8:	9b01      	ldr	r3, [sp, #4]
1a0056aa:	f103 0408 	add.w	r4, r3, #8
1a0056ae:	e763      	b.n	1a005578 <_malloc_r+0x50>
1a0056b0:	2400      	movs	r4, #0
1a0056b2:	230c      	movs	r3, #12
1a0056b4:	4620      	mov	r0, r4
1a0056b6:	6033      	str	r3, [r6, #0]
1a0056b8:	b003      	add	sp, #12
1a0056ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0056be:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0056c2:	2040      	movs	r0, #64	; 0x40
1a0056c4:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
1a0056c8:	e773      	b.n	1a0055b2 <_malloc_r+0x8a>
1a0056ca:	687b      	ldr	r3, [r7, #4]
1a0056cc:	1082      	asrs	r2, r0, #2
1a0056ce:	2401      	movs	r4, #1
1a0056d0:	4094      	lsls	r4, r2
1a0056d2:	429c      	cmp	r4, r3
1a0056d4:	d9b3      	bls.n	1a00563e <_malloc_r+0x116>
1a0056d6:	68bc      	ldr	r4, [r7, #8]
1a0056d8:	6863      	ldr	r3, [r4, #4]
1a0056da:	f023 0903 	bic.w	r9, r3, #3
1a0056de:	45a9      	cmp	r9, r5
1a0056e0:	d303      	bcc.n	1a0056ea <_malloc_r+0x1c2>
1a0056e2:	eba9 0305 	sub.w	r3, r9, r5
1a0056e6:	2b0f      	cmp	r3, #15
1a0056e8:	dc7b      	bgt.n	1a0057e2 <_malloc_r+0x2ba>
1a0056ea:	4b5e      	ldr	r3, [pc, #376]	; (1a005864 <_malloc_r+0x33c>)
1a0056ec:	f8df a188 	ldr.w	sl, [pc, #392]	; 1a005878 <_malloc_r+0x350>
1a0056f0:	681a      	ldr	r2, [r3, #0]
1a0056f2:	f8da 3000 	ldr.w	r3, [sl]
1a0056f6:	3301      	adds	r3, #1
1a0056f8:	eb05 0802 	add.w	r8, r5, r2
1a0056fc:	f000 8148 	beq.w	1a005990 <_malloc_r+0x468>
1a005700:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
1a005704:	f108 080f 	add.w	r8, r8, #15
1a005708:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
1a00570c:	f028 080f 	bic.w	r8, r8, #15
1a005710:	4641      	mov	r1, r8
1a005712:	4630      	mov	r0, r6
1a005714:	f000 fd40 	bl	1a006198 <_sbrk_r>
1a005718:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
1a00571c:	4683      	mov	fp, r0
1a00571e:	f000 8104 	beq.w	1a00592a <_malloc_r+0x402>
1a005722:	eb04 0009 	add.w	r0, r4, r9
1a005726:	4558      	cmp	r0, fp
1a005728:	f200 80fd 	bhi.w	1a005926 <_malloc_r+0x3fe>
1a00572c:	4a4e      	ldr	r2, [pc, #312]	; (1a005868 <_malloc_r+0x340>)
1a00572e:	6813      	ldr	r3, [r2, #0]
1a005730:	4443      	add	r3, r8
1a005732:	6013      	str	r3, [r2, #0]
1a005734:	f000 814d 	beq.w	1a0059d2 <_malloc_r+0x4aa>
1a005738:	f8da 1000 	ldr.w	r1, [sl]
1a00573c:	3101      	adds	r1, #1
1a00573e:	bf1b      	ittet	ne
1a005740:	ebab 0000 	subne.w	r0, fp, r0
1a005744:	181b      	addne	r3, r3, r0
1a005746:	f8ca b000 	streq.w	fp, [sl]
1a00574a:	6013      	strne	r3, [r2, #0]
1a00574c:	f01b 0307 	ands.w	r3, fp, #7
1a005750:	f000 8134 	beq.w	1a0059bc <_malloc_r+0x494>
1a005754:	f1c3 0108 	rsb	r1, r3, #8
1a005758:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
1a00575c:	448b      	add	fp, r1
1a00575e:	3308      	adds	r3, #8
1a005760:	44d8      	add	r8, fp
1a005762:	f3c8 080b 	ubfx	r8, r8, #0, #12
1a005766:	eba3 0808 	sub.w	r8, r3, r8
1a00576a:	4641      	mov	r1, r8
1a00576c:	4630      	mov	r0, r6
1a00576e:	9201      	str	r2, [sp, #4]
1a005770:	f000 fd12 	bl	1a006198 <_sbrk_r>
1a005774:	1c43      	adds	r3, r0, #1
1a005776:	9a01      	ldr	r2, [sp, #4]
1a005778:	f000 8146 	beq.w	1a005a08 <_malloc_r+0x4e0>
1a00577c:	eba0 010b 	sub.w	r1, r0, fp
1a005780:	4441      	add	r1, r8
1a005782:	f041 0101 	orr.w	r1, r1, #1
1a005786:	6813      	ldr	r3, [r2, #0]
1a005788:	f8c7 b008 	str.w	fp, [r7, #8]
1a00578c:	4443      	add	r3, r8
1a00578e:	42bc      	cmp	r4, r7
1a005790:	f8cb 1004 	str.w	r1, [fp, #4]
1a005794:	6013      	str	r3, [r2, #0]
1a005796:	d015      	beq.n	1a0057c4 <_malloc_r+0x29c>
1a005798:	f1b9 0f0f 	cmp.w	r9, #15
1a00579c:	f240 8130 	bls.w	1a005a00 <_malloc_r+0x4d8>
1a0057a0:	6860      	ldr	r0, [r4, #4]
1a0057a2:	f1a9 010c 	sub.w	r1, r9, #12
1a0057a6:	f021 0107 	bic.w	r1, r1, #7
1a0057aa:	f000 0001 	and.w	r0, r0, #1
1a0057ae:	eb04 0c01 	add.w	ip, r4, r1
1a0057b2:	4308      	orrs	r0, r1
1a0057b4:	f04f 0e05 	mov.w	lr, #5
1a0057b8:	290f      	cmp	r1, #15
1a0057ba:	6060      	str	r0, [r4, #4]
1a0057bc:	e9cc ee01 	strd	lr, lr, [ip, #4]
1a0057c0:	f200 813a 	bhi.w	1a005a38 <_malloc_r+0x510>
1a0057c4:	4a29      	ldr	r2, [pc, #164]	; (1a00586c <_malloc_r+0x344>)
1a0057c6:	482a      	ldr	r0, [pc, #168]	; (1a005870 <_malloc_r+0x348>)
1a0057c8:	6811      	ldr	r1, [r2, #0]
1a0057ca:	68bc      	ldr	r4, [r7, #8]
1a0057cc:	428b      	cmp	r3, r1
1a0057ce:	6801      	ldr	r1, [r0, #0]
1a0057d0:	bf88      	it	hi
1a0057d2:	6013      	strhi	r3, [r2, #0]
1a0057d4:	6862      	ldr	r2, [r4, #4]
1a0057d6:	428b      	cmp	r3, r1
1a0057d8:	f022 0203 	bic.w	r2, r2, #3
1a0057dc:	bf88      	it	hi
1a0057de:	6003      	strhi	r3, [r0, #0]
1a0057e0:	e0a7      	b.n	1a005932 <_malloc_r+0x40a>
1a0057e2:	1962      	adds	r2, r4, r5
1a0057e4:	f043 0301 	orr.w	r3, r3, #1
1a0057e8:	f045 0501 	orr.w	r5, r5, #1
1a0057ec:	6065      	str	r5, [r4, #4]
1a0057ee:	4630      	mov	r0, r6
1a0057f0:	60ba      	str	r2, [r7, #8]
1a0057f2:	6053      	str	r3, [r2, #4]
1a0057f4:	f000 f992 	bl	1a005b1c <__malloc_unlock>
1a0057f8:	3408      	adds	r4, #8
1a0057fa:	4620      	mov	r0, r4
1a0057fc:	b003      	add	sp, #12
1a0057fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a005802:	4423      	add	r3, r4
1a005804:	68e1      	ldr	r1, [r4, #12]
1a005806:	685a      	ldr	r2, [r3, #4]
1a005808:	68a5      	ldr	r5, [r4, #8]
1a00580a:	f042 0201 	orr.w	r2, r2, #1
1a00580e:	60e9      	str	r1, [r5, #12]
1a005810:	4630      	mov	r0, r6
1a005812:	608d      	str	r5, [r1, #8]
1a005814:	605a      	str	r2, [r3, #4]
1a005816:	f000 f981 	bl	1a005b1c <__malloc_unlock>
1a00581a:	3408      	adds	r4, #8
1a00581c:	4620      	mov	r0, r4
1a00581e:	b003      	add	sp, #12
1a005820:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a005824:	68dc      	ldr	r4, [r3, #12]
1a005826:	42a3      	cmp	r3, r4
1a005828:	bf08      	it	eq
1a00582a:	3002      	addeq	r0, #2
1a00582c:	f43f aed6 	beq.w	1a0055dc <_malloc_r+0xb4>
1a005830:	e692      	b.n	1a005558 <_malloc_r+0x30>
1a005832:	2b14      	cmp	r3, #20
1a005834:	d971      	bls.n	1a00591a <_malloc_r+0x3f2>
1a005836:	2b54      	cmp	r3, #84	; 0x54
1a005838:	f200 80ad 	bhi.w	1a005996 <_malloc_r+0x46e>
1a00583c:	0b2b      	lsrs	r3, r5, #12
1a00583e:	f103 006f 	add.w	r0, r3, #111	; 0x6f
1a005842:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
1a005846:	00c3      	lsls	r3, r0, #3
1a005848:	e6b3      	b.n	1a0055b2 <_malloc_r+0x8a>
1a00584a:	4423      	add	r3, r4
1a00584c:	4630      	mov	r0, r6
1a00584e:	685a      	ldr	r2, [r3, #4]
1a005850:	f042 0201 	orr.w	r2, r2, #1
1a005854:	605a      	str	r2, [r3, #4]
1a005856:	3408      	adds	r4, #8
1a005858:	f000 f960 	bl	1a005b1c <__malloc_unlock>
1a00585c:	e68c      	b.n	1a005578 <_malloc_r+0x50>
1a00585e:	bf00      	nop
1a005860:	10000434 	.word	0x10000434
1a005864:	10000a20 	.word	0x10000a20
1a005868:	100009f0 	.word	0x100009f0
1a00586c:	10000a18 	.word	0x10000a18
1a005870:	10000a1c 	.word	0x10000a1c
1a005874:	1000043c 	.word	0x1000043c
1a005878:	1000083c 	.word	0x1000083c
1a00587c:	1961      	adds	r1, r4, r5
1a00587e:	f045 0e01 	orr.w	lr, r5, #1
1a005882:	f042 0501 	orr.w	r5, r2, #1
1a005886:	f8c4 e004 	str.w	lr, [r4, #4]
1a00588a:	4630      	mov	r0, r6
1a00588c:	e9c7 1104 	strd	r1, r1, [r7, #16]
1a005890:	e9c1 cc02 	strd	ip, ip, [r1, #8]
1a005894:	604d      	str	r5, [r1, #4]
1a005896:	50e2      	str	r2, [r4, r3]
1a005898:	f000 f940 	bl	1a005b1c <__malloc_unlock>
1a00589c:	3408      	adds	r4, #8
1a00589e:	e66b      	b.n	1a005578 <_malloc_r+0x50>
1a0058a0:	08e8      	lsrs	r0, r5, #3
1a0058a2:	f105 0308 	add.w	r3, r5, #8
1a0058a6:	e64f      	b.n	1a005548 <_malloc_r+0x20>
1a0058a8:	f108 0801 	add.w	r8, r8, #1
1a0058ac:	f018 0f03 	tst.w	r8, #3
1a0058b0:	f10e 0e08 	add.w	lr, lr, #8
1a0058b4:	f47f aed0 	bne.w	1a005658 <_malloc_r+0x130>
1a0058b8:	e052      	b.n	1a005960 <_malloc_r+0x438>
1a0058ba:	4419      	add	r1, r3
1a0058bc:	461c      	mov	r4, r3
1a0058be:	684a      	ldr	r2, [r1, #4]
1a0058c0:	68db      	ldr	r3, [r3, #12]
1a0058c2:	f854 5f08 	ldr.w	r5, [r4, #8]!
1a0058c6:	f042 0201 	orr.w	r2, r2, #1
1a0058ca:	604a      	str	r2, [r1, #4]
1a0058cc:	4630      	mov	r0, r6
1a0058ce:	60eb      	str	r3, [r5, #12]
1a0058d0:	609d      	str	r5, [r3, #8]
1a0058d2:	f000 f923 	bl	1a005b1c <__malloc_unlock>
1a0058d6:	e64f      	b.n	1a005578 <_malloc_r+0x50>
1a0058d8:	0a5a      	lsrs	r2, r3, #9
1a0058da:	2a04      	cmp	r2, #4
1a0058dc:	d935      	bls.n	1a00594a <_malloc_r+0x422>
1a0058de:	2a14      	cmp	r2, #20
1a0058e0:	d86f      	bhi.n	1a0059c2 <_malloc_r+0x49a>
1a0058e2:	f102 015c 	add.w	r1, r2, #92	; 0x5c
1a0058e6:	00c9      	lsls	r1, r1, #3
1a0058e8:	325b      	adds	r2, #91	; 0x5b
1a0058ea:	eb07 0e01 	add.w	lr, r7, r1
1a0058ee:	5879      	ldr	r1, [r7, r1]
1a0058f0:	f1ae 0e08 	sub.w	lr, lr, #8
1a0058f4:	458e      	cmp	lr, r1
1a0058f6:	d058      	beq.n	1a0059aa <_malloc_r+0x482>
1a0058f8:	684a      	ldr	r2, [r1, #4]
1a0058fa:	f022 0203 	bic.w	r2, r2, #3
1a0058fe:	429a      	cmp	r2, r3
1a005900:	d902      	bls.n	1a005908 <_malloc_r+0x3e0>
1a005902:	6889      	ldr	r1, [r1, #8]
1a005904:	458e      	cmp	lr, r1
1a005906:	d1f7      	bne.n	1a0058f8 <_malloc_r+0x3d0>
1a005908:	f8d1 e00c 	ldr.w	lr, [r1, #12]
1a00590c:	687b      	ldr	r3, [r7, #4]
1a00590e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
1a005912:	f8ce 4008 	str.w	r4, [lr, #8]
1a005916:	60cc      	str	r4, [r1, #12]
1a005918:	e68c      	b.n	1a005634 <_malloc_r+0x10c>
1a00591a:	f103 005c 	add.w	r0, r3, #92	; 0x5c
1a00591e:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
1a005922:	00c3      	lsls	r3, r0, #3
1a005924:	e645      	b.n	1a0055b2 <_malloc_r+0x8a>
1a005926:	42bc      	cmp	r4, r7
1a005928:	d072      	beq.n	1a005a10 <_malloc_r+0x4e8>
1a00592a:	68bc      	ldr	r4, [r7, #8]
1a00592c:	6862      	ldr	r2, [r4, #4]
1a00592e:	f022 0203 	bic.w	r2, r2, #3
1a005932:	4295      	cmp	r5, r2
1a005934:	eba2 0305 	sub.w	r3, r2, r5
1a005938:	d802      	bhi.n	1a005940 <_malloc_r+0x418>
1a00593a:	2b0f      	cmp	r3, #15
1a00593c:	f73f af51 	bgt.w	1a0057e2 <_malloc_r+0x2ba>
1a005940:	4630      	mov	r0, r6
1a005942:	f000 f8eb 	bl	1a005b1c <__malloc_unlock>
1a005946:	2400      	movs	r4, #0
1a005948:	e616      	b.n	1a005578 <_malloc_r+0x50>
1a00594a:	099a      	lsrs	r2, r3, #6
1a00594c:	f102 0139 	add.w	r1, r2, #57	; 0x39
1a005950:	00c9      	lsls	r1, r1, #3
1a005952:	3238      	adds	r2, #56	; 0x38
1a005954:	e7c9      	b.n	1a0058ea <_malloc_r+0x3c2>
1a005956:	f8d9 9000 	ldr.w	r9, [r9]
1a00595a:	4599      	cmp	r9, r3
1a00595c:	f040 8083 	bne.w	1a005a66 <_malloc_r+0x53e>
1a005960:	f010 0f03 	tst.w	r0, #3
1a005964:	f1a9 0308 	sub.w	r3, r9, #8
1a005968:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
1a00596c:	d1f3      	bne.n	1a005956 <_malloc_r+0x42e>
1a00596e:	687b      	ldr	r3, [r7, #4]
1a005970:	ea23 0304 	bic.w	r3, r3, r4
1a005974:	607b      	str	r3, [r7, #4]
1a005976:	0064      	lsls	r4, r4, #1
1a005978:	429c      	cmp	r4, r3
1a00597a:	f63f aeac 	bhi.w	1a0056d6 <_malloc_r+0x1ae>
1a00597e:	b91c      	cbnz	r4, 1a005988 <_malloc_r+0x460>
1a005980:	e6a9      	b.n	1a0056d6 <_malloc_r+0x1ae>
1a005982:	0064      	lsls	r4, r4, #1
1a005984:	f108 0804 	add.w	r8, r8, #4
1a005988:	421c      	tst	r4, r3
1a00598a:	d0fa      	beq.n	1a005982 <_malloc_r+0x45a>
1a00598c:	4640      	mov	r0, r8
1a00598e:	e65f      	b.n	1a005650 <_malloc_r+0x128>
1a005990:	f108 0810 	add.w	r8, r8, #16
1a005994:	e6bc      	b.n	1a005710 <_malloc_r+0x1e8>
1a005996:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a00599a:	d826      	bhi.n	1a0059ea <_malloc_r+0x4c2>
1a00599c:	0beb      	lsrs	r3, r5, #15
1a00599e:	f103 0078 	add.w	r0, r3, #120	; 0x78
1a0059a2:	f103 0c77 	add.w	ip, r3, #119	; 0x77
1a0059a6:	00c3      	lsls	r3, r0, #3
1a0059a8:	e603      	b.n	1a0055b2 <_malloc_r+0x8a>
1a0059aa:	687b      	ldr	r3, [r7, #4]
1a0059ac:	1092      	asrs	r2, r2, #2
1a0059ae:	f04f 0801 	mov.w	r8, #1
1a0059b2:	fa08 f202 	lsl.w	r2, r8, r2
1a0059b6:	4313      	orrs	r3, r2
1a0059b8:	607b      	str	r3, [r7, #4]
1a0059ba:	e7a8      	b.n	1a00590e <_malloc_r+0x3e6>
1a0059bc:	f44f 5380 	mov.w	r3, #4096	; 0x1000
1a0059c0:	e6ce      	b.n	1a005760 <_malloc_r+0x238>
1a0059c2:	2a54      	cmp	r2, #84	; 0x54
1a0059c4:	d829      	bhi.n	1a005a1a <_malloc_r+0x4f2>
1a0059c6:	0b1a      	lsrs	r2, r3, #12
1a0059c8:	f102 016f 	add.w	r1, r2, #111	; 0x6f
1a0059cc:	00c9      	lsls	r1, r1, #3
1a0059ce:	326e      	adds	r2, #110	; 0x6e
1a0059d0:	e78b      	b.n	1a0058ea <_malloc_r+0x3c2>
1a0059d2:	f3c0 010b 	ubfx	r1, r0, #0, #12
1a0059d6:	2900      	cmp	r1, #0
1a0059d8:	f47f aeae 	bne.w	1a005738 <_malloc_r+0x210>
1a0059dc:	eb09 0208 	add.w	r2, r9, r8
1a0059e0:	68b9      	ldr	r1, [r7, #8]
1a0059e2:	f042 0201 	orr.w	r2, r2, #1
1a0059e6:	604a      	str	r2, [r1, #4]
1a0059e8:	e6ec      	b.n	1a0057c4 <_malloc_r+0x29c>
1a0059ea:	f240 5254 	movw	r2, #1364	; 0x554
1a0059ee:	4293      	cmp	r3, r2
1a0059f0:	d81c      	bhi.n	1a005a2c <_malloc_r+0x504>
1a0059f2:	0cab      	lsrs	r3, r5, #18
1a0059f4:	f103 007d 	add.w	r0, r3, #125	; 0x7d
1a0059f8:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
1a0059fc:	00c3      	lsls	r3, r0, #3
1a0059fe:	e5d8      	b.n	1a0055b2 <_malloc_r+0x8a>
1a005a00:	2301      	movs	r3, #1
1a005a02:	f8cb 3004 	str.w	r3, [fp, #4]
1a005a06:	e79b      	b.n	1a005940 <_malloc_r+0x418>
1a005a08:	2101      	movs	r1, #1
1a005a0a:	f04f 0800 	mov.w	r8, #0
1a005a0e:	e6ba      	b.n	1a005786 <_malloc_r+0x25e>
1a005a10:	4a16      	ldr	r2, [pc, #88]	; (1a005a6c <_malloc_r+0x544>)
1a005a12:	6813      	ldr	r3, [r2, #0]
1a005a14:	4443      	add	r3, r8
1a005a16:	6013      	str	r3, [r2, #0]
1a005a18:	e68e      	b.n	1a005738 <_malloc_r+0x210>
1a005a1a:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
1a005a1e:	d814      	bhi.n	1a005a4a <_malloc_r+0x522>
1a005a20:	0bda      	lsrs	r2, r3, #15
1a005a22:	f102 0178 	add.w	r1, r2, #120	; 0x78
1a005a26:	00c9      	lsls	r1, r1, #3
1a005a28:	3277      	adds	r2, #119	; 0x77
1a005a2a:	e75e      	b.n	1a0058ea <_malloc_r+0x3c2>
1a005a2c:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
1a005a30:	207f      	movs	r0, #127	; 0x7f
1a005a32:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
1a005a36:	e5bc      	b.n	1a0055b2 <_malloc_r+0x8a>
1a005a38:	f104 0108 	add.w	r1, r4, #8
1a005a3c:	4630      	mov	r0, r6
1a005a3e:	9201      	str	r2, [sp, #4]
1a005a40:	f7ff fbce 	bl	1a0051e0 <_free_r>
1a005a44:	9a01      	ldr	r2, [sp, #4]
1a005a46:	6813      	ldr	r3, [r2, #0]
1a005a48:	e6bc      	b.n	1a0057c4 <_malloc_r+0x29c>
1a005a4a:	f240 5154 	movw	r1, #1364	; 0x554
1a005a4e:	428a      	cmp	r2, r1
1a005a50:	d805      	bhi.n	1a005a5e <_malloc_r+0x536>
1a005a52:	0c9a      	lsrs	r2, r3, #18
1a005a54:	f102 017d 	add.w	r1, r2, #125	; 0x7d
1a005a58:	00c9      	lsls	r1, r1, #3
1a005a5a:	327c      	adds	r2, #124	; 0x7c
1a005a5c:	e745      	b.n	1a0058ea <_malloc_r+0x3c2>
1a005a5e:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
1a005a62:	227e      	movs	r2, #126	; 0x7e
1a005a64:	e741      	b.n	1a0058ea <_malloc_r+0x3c2>
1a005a66:	687b      	ldr	r3, [r7, #4]
1a005a68:	e785      	b.n	1a005976 <_malloc_r+0x44e>
1a005a6a:	bf00      	nop
1a005a6c:	100009f0 	.word	0x100009f0

1a005a70 <memchr>:
1a005a70:	f001 01ff 	and.w	r1, r1, #255	; 0xff
1a005a74:	2a10      	cmp	r2, #16
1a005a76:	db2b      	blt.n	1a005ad0 <memchr+0x60>
1a005a78:	f010 0f07 	tst.w	r0, #7
1a005a7c:	d008      	beq.n	1a005a90 <memchr+0x20>
1a005a7e:	f810 3b01 	ldrb.w	r3, [r0], #1
1a005a82:	3a01      	subs	r2, #1
1a005a84:	428b      	cmp	r3, r1
1a005a86:	d02d      	beq.n	1a005ae4 <memchr+0x74>
1a005a88:	f010 0f07 	tst.w	r0, #7
1a005a8c:	b342      	cbz	r2, 1a005ae0 <memchr+0x70>
1a005a8e:	d1f6      	bne.n	1a005a7e <memchr+0xe>
1a005a90:	b4f0      	push	{r4, r5, r6, r7}
1a005a92:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
1a005a96:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
1a005a9a:	f022 0407 	bic.w	r4, r2, #7
1a005a9e:	f07f 0700 	mvns.w	r7, #0
1a005aa2:	2300      	movs	r3, #0
1a005aa4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
1a005aa8:	3c08      	subs	r4, #8
1a005aaa:	ea85 0501 	eor.w	r5, r5, r1
1a005aae:	ea86 0601 	eor.w	r6, r6, r1
1a005ab2:	fa85 f547 	uadd8	r5, r5, r7
1a005ab6:	faa3 f587 	sel	r5, r3, r7
1a005aba:	fa86 f647 	uadd8	r6, r6, r7
1a005abe:	faa5 f687 	sel	r6, r5, r7
1a005ac2:	b98e      	cbnz	r6, 1a005ae8 <memchr+0x78>
1a005ac4:	d1ee      	bne.n	1a005aa4 <memchr+0x34>
1a005ac6:	bcf0      	pop	{r4, r5, r6, r7}
1a005ac8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
1a005acc:	f002 0207 	and.w	r2, r2, #7
1a005ad0:	b132      	cbz	r2, 1a005ae0 <memchr+0x70>
1a005ad2:	f810 3b01 	ldrb.w	r3, [r0], #1
1a005ad6:	3a01      	subs	r2, #1
1a005ad8:	ea83 0301 	eor.w	r3, r3, r1
1a005adc:	b113      	cbz	r3, 1a005ae4 <memchr+0x74>
1a005ade:	d1f8      	bne.n	1a005ad2 <memchr+0x62>
1a005ae0:	2000      	movs	r0, #0
1a005ae2:	4770      	bx	lr
1a005ae4:	3801      	subs	r0, #1
1a005ae6:	4770      	bx	lr
1a005ae8:	2d00      	cmp	r5, #0
1a005aea:	bf06      	itte	eq
1a005aec:	4635      	moveq	r5, r6
1a005aee:	3803      	subeq	r0, #3
1a005af0:	3807      	subne	r0, #7
1a005af2:	f015 0f01 	tst.w	r5, #1
1a005af6:	d107      	bne.n	1a005b08 <memchr+0x98>
1a005af8:	3001      	adds	r0, #1
1a005afa:	f415 7f80 	tst.w	r5, #256	; 0x100
1a005afe:	bf02      	ittt	eq
1a005b00:	3001      	addeq	r0, #1
1a005b02:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
1a005b06:	3001      	addeq	r0, #1
1a005b08:	bcf0      	pop	{r4, r5, r6, r7}
1a005b0a:	3801      	subs	r0, #1
1a005b0c:	4770      	bx	lr
1a005b0e:	bf00      	nop

1a005b10 <__malloc_lock>:
1a005b10:	4801      	ldr	r0, [pc, #4]	; (1a005b18 <__malloc_lock+0x8>)
1a005b12:	f7fa bc43 	b.w	1a00039c <__retarget_lock_acquire_recursive>
1a005b16:	bf00      	nop
1a005b18:	10000a34 	.word	0x10000a34

1a005b1c <__malloc_unlock>:
1a005b1c:	4801      	ldr	r0, [pc, #4]	; (1a005b24 <__malloc_unlock+0x8>)
1a005b1e:	f7fa bc3f 	b.w	1a0003a0 <__retarget_lock_release_recursive>
1a005b22:	bf00      	nop
1a005b24:	10000a34 	.word	0x10000a34

1a005b28 <_Balloc>:
1a005b28:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
1a005b2a:	b570      	push	{r4, r5, r6, lr}
1a005b2c:	4605      	mov	r5, r0
1a005b2e:	460c      	mov	r4, r1
1a005b30:	b14b      	cbz	r3, 1a005b46 <_Balloc+0x1e>
1a005b32:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
1a005b36:	b180      	cbz	r0, 1a005b5a <_Balloc+0x32>
1a005b38:	6802      	ldr	r2, [r0, #0]
1a005b3a:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
1a005b3e:	2300      	movs	r3, #0
1a005b40:	e9c0 3303 	strd	r3, r3, [r0, #12]
1a005b44:	bd70      	pop	{r4, r5, r6, pc}
1a005b46:	2221      	movs	r2, #33	; 0x21
1a005b48:	2104      	movs	r1, #4
1a005b4a:	f000 fc09 	bl	1a006360 <_calloc_r>
1a005b4e:	4603      	mov	r3, r0
1a005b50:	64e8      	str	r0, [r5, #76]	; 0x4c
1a005b52:	2800      	cmp	r0, #0
1a005b54:	d1ed      	bne.n	1a005b32 <_Balloc+0xa>
1a005b56:	2000      	movs	r0, #0
1a005b58:	bd70      	pop	{r4, r5, r6, pc}
1a005b5a:	2101      	movs	r1, #1
1a005b5c:	fa01 f604 	lsl.w	r6, r1, r4
1a005b60:	1d72      	adds	r2, r6, #5
1a005b62:	4628      	mov	r0, r5
1a005b64:	0092      	lsls	r2, r2, #2
1a005b66:	f000 fbfb 	bl	1a006360 <_calloc_r>
1a005b6a:	2800      	cmp	r0, #0
1a005b6c:	d0f3      	beq.n	1a005b56 <_Balloc+0x2e>
1a005b6e:	e9c0 4601 	strd	r4, r6, [r0, #4]
1a005b72:	e7e4      	b.n	1a005b3e <_Balloc+0x16>

1a005b74 <_Bfree>:
1a005b74:	b131      	cbz	r1, 1a005b84 <_Bfree+0x10>
1a005b76:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
1a005b78:	684a      	ldr	r2, [r1, #4]
1a005b7a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
1a005b7e:	6008      	str	r0, [r1, #0]
1a005b80:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a005b84:	4770      	bx	lr
1a005b86:	bf00      	nop

1a005b88 <__multadd>:
1a005b88:	b5f0      	push	{r4, r5, r6, r7, lr}
1a005b8a:	690c      	ldr	r4, [r1, #16]
1a005b8c:	b083      	sub	sp, #12
1a005b8e:	460d      	mov	r5, r1
1a005b90:	4606      	mov	r6, r0
1a005b92:	f101 0c14 	add.w	ip, r1, #20
1a005b96:	2700      	movs	r7, #0
1a005b98:	f8dc 0000 	ldr.w	r0, [ip]
1a005b9c:	b281      	uxth	r1, r0
1a005b9e:	fb02 3301 	mla	r3, r2, r1, r3
1a005ba2:	0c01      	lsrs	r1, r0, #16
1a005ba4:	0c18      	lsrs	r0, r3, #16
1a005ba6:	fb02 0101 	mla	r1, r2, r1, r0
1a005baa:	b29b      	uxth	r3, r3
1a005bac:	3701      	adds	r7, #1
1a005bae:	eb03 4301 	add.w	r3, r3, r1, lsl #16
1a005bb2:	42bc      	cmp	r4, r7
1a005bb4:	f84c 3b04 	str.w	r3, [ip], #4
1a005bb8:	ea4f 4311 	mov.w	r3, r1, lsr #16
1a005bbc:	dcec      	bgt.n	1a005b98 <__multadd+0x10>
1a005bbe:	b13b      	cbz	r3, 1a005bd0 <__multadd+0x48>
1a005bc0:	68aa      	ldr	r2, [r5, #8]
1a005bc2:	42a2      	cmp	r2, r4
1a005bc4:	dd07      	ble.n	1a005bd6 <__multadd+0x4e>
1a005bc6:	eb05 0284 	add.w	r2, r5, r4, lsl #2
1a005bca:	3401      	adds	r4, #1
1a005bcc:	6153      	str	r3, [r2, #20]
1a005bce:	612c      	str	r4, [r5, #16]
1a005bd0:	4628      	mov	r0, r5
1a005bd2:	b003      	add	sp, #12
1a005bd4:	bdf0      	pop	{r4, r5, r6, r7, pc}
1a005bd6:	6869      	ldr	r1, [r5, #4]
1a005bd8:	9301      	str	r3, [sp, #4]
1a005bda:	3101      	adds	r1, #1
1a005bdc:	4630      	mov	r0, r6
1a005bde:	f7ff ffa3 	bl	1a005b28 <_Balloc>
1a005be2:	692a      	ldr	r2, [r5, #16]
1a005be4:	3202      	adds	r2, #2
1a005be6:	f105 010c 	add.w	r1, r5, #12
1a005bea:	4607      	mov	r7, r0
1a005bec:	0092      	lsls	r2, r2, #2
1a005bee:	300c      	adds	r0, #12
1a005bf0:	f7fc fa70 	bl	1a0020d4 <memcpy>
1a005bf4:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
1a005bf6:	6869      	ldr	r1, [r5, #4]
1a005bf8:	9b01      	ldr	r3, [sp, #4]
1a005bfa:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
1a005bfe:	6028      	str	r0, [r5, #0]
1a005c00:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
1a005c04:	463d      	mov	r5, r7
1a005c06:	e7de      	b.n	1a005bc6 <__multadd+0x3e>

1a005c08 <__hi0bits>:
1a005c08:	0c02      	lsrs	r2, r0, #16
1a005c0a:	0412      	lsls	r2, r2, #16
1a005c0c:	4603      	mov	r3, r0
1a005c0e:	b9c2      	cbnz	r2, 1a005c42 <__hi0bits+0x3a>
1a005c10:	0403      	lsls	r3, r0, #16
1a005c12:	2010      	movs	r0, #16
1a005c14:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
1a005c18:	bf04      	itt	eq
1a005c1a:	021b      	lsleq	r3, r3, #8
1a005c1c:	3008      	addeq	r0, #8
1a005c1e:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
1a005c22:	bf04      	itt	eq
1a005c24:	011b      	lsleq	r3, r3, #4
1a005c26:	3004      	addeq	r0, #4
1a005c28:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
1a005c2c:	bf04      	itt	eq
1a005c2e:	009b      	lsleq	r3, r3, #2
1a005c30:	3002      	addeq	r0, #2
1a005c32:	2b00      	cmp	r3, #0
1a005c34:	db04      	blt.n	1a005c40 <__hi0bits+0x38>
1a005c36:	005b      	lsls	r3, r3, #1
1a005c38:	d501      	bpl.n	1a005c3e <__hi0bits+0x36>
1a005c3a:	3001      	adds	r0, #1
1a005c3c:	4770      	bx	lr
1a005c3e:	2020      	movs	r0, #32
1a005c40:	4770      	bx	lr
1a005c42:	2000      	movs	r0, #0
1a005c44:	e7e6      	b.n	1a005c14 <__hi0bits+0xc>
1a005c46:	bf00      	nop

1a005c48 <__lo0bits>:
1a005c48:	6803      	ldr	r3, [r0, #0]
1a005c4a:	f013 0207 	ands.w	r2, r3, #7
1a005c4e:	4601      	mov	r1, r0
1a005c50:	d007      	beq.n	1a005c62 <__lo0bits+0x1a>
1a005c52:	07da      	lsls	r2, r3, #31
1a005c54:	d41f      	bmi.n	1a005c96 <__lo0bits+0x4e>
1a005c56:	0798      	lsls	r0, r3, #30
1a005c58:	d51f      	bpl.n	1a005c9a <__lo0bits+0x52>
1a005c5a:	085b      	lsrs	r3, r3, #1
1a005c5c:	600b      	str	r3, [r1, #0]
1a005c5e:	2001      	movs	r0, #1
1a005c60:	4770      	bx	lr
1a005c62:	b298      	uxth	r0, r3
1a005c64:	b1a0      	cbz	r0, 1a005c90 <__lo0bits+0x48>
1a005c66:	4610      	mov	r0, r2
1a005c68:	f013 0fff 	tst.w	r3, #255	; 0xff
1a005c6c:	bf04      	itt	eq
1a005c6e:	0a1b      	lsreq	r3, r3, #8
1a005c70:	3008      	addeq	r0, #8
1a005c72:	071a      	lsls	r2, r3, #28
1a005c74:	bf04      	itt	eq
1a005c76:	091b      	lsreq	r3, r3, #4
1a005c78:	3004      	addeq	r0, #4
1a005c7a:	079a      	lsls	r2, r3, #30
1a005c7c:	bf04      	itt	eq
1a005c7e:	089b      	lsreq	r3, r3, #2
1a005c80:	3002      	addeq	r0, #2
1a005c82:	07da      	lsls	r2, r3, #31
1a005c84:	d402      	bmi.n	1a005c8c <__lo0bits+0x44>
1a005c86:	085b      	lsrs	r3, r3, #1
1a005c88:	d00b      	beq.n	1a005ca2 <__lo0bits+0x5a>
1a005c8a:	3001      	adds	r0, #1
1a005c8c:	600b      	str	r3, [r1, #0]
1a005c8e:	4770      	bx	lr
1a005c90:	0c1b      	lsrs	r3, r3, #16
1a005c92:	2010      	movs	r0, #16
1a005c94:	e7e8      	b.n	1a005c68 <__lo0bits+0x20>
1a005c96:	2000      	movs	r0, #0
1a005c98:	4770      	bx	lr
1a005c9a:	089b      	lsrs	r3, r3, #2
1a005c9c:	600b      	str	r3, [r1, #0]
1a005c9e:	2002      	movs	r0, #2
1a005ca0:	4770      	bx	lr
1a005ca2:	2020      	movs	r0, #32
1a005ca4:	4770      	bx	lr
1a005ca6:	bf00      	nop

1a005ca8 <__i2b>:
1a005ca8:	b510      	push	{r4, lr}
1a005caa:	460c      	mov	r4, r1
1a005cac:	2101      	movs	r1, #1
1a005cae:	f7ff ff3b 	bl	1a005b28 <_Balloc>
1a005cb2:	2201      	movs	r2, #1
1a005cb4:	e9c0 2404 	strd	r2, r4, [r0, #16]
1a005cb8:	bd10      	pop	{r4, pc}
1a005cba:	bf00      	nop

1a005cbc <__multiply>:
1a005cbc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a005cc0:	690e      	ldr	r6, [r1, #16]
1a005cc2:	6914      	ldr	r4, [r2, #16]
1a005cc4:	42a6      	cmp	r6, r4
1a005cc6:	b083      	sub	sp, #12
1a005cc8:	460f      	mov	r7, r1
1a005cca:	4615      	mov	r5, r2
1a005ccc:	da04      	bge.n	1a005cd8 <__multiply+0x1c>
1a005cce:	4632      	mov	r2, r6
1a005cd0:	462f      	mov	r7, r5
1a005cd2:	4626      	mov	r6, r4
1a005cd4:	460d      	mov	r5, r1
1a005cd6:	4614      	mov	r4, r2
1a005cd8:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
1a005cdc:	eb06 0804 	add.w	r8, r6, r4
1a005ce0:	4543      	cmp	r3, r8
1a005ce2:	bfb8      	it	lt
1a005ce4:	3101      	addlt	r1, #1
1a005ce6:	f7ff ff1f 	bl	1a005b28 <_Balloc>
1a005cea:	f100 0914 	add.w	r9, r0, #20
1a005cee:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
1a005cf2:	45f1      	cmp	r9, lr
1a005cf4:	9000      	str	r0, [sp, #0]
1a005cf6:	d205      	bcs.n	1a005d04 <__multiply+0x48>
1a005cf8:	464b      	mov	r3, r9
1a005cfa:	2200      	movs	r2, #0
1a005cfc:	f843 2b04 	str.w	r2, [r3], #4
1a005d00:	459e      	cmp	lr, r3
1a005d02:	d8fb      	bhi.n	1a005cfc <__multiply+0x40>
1a005d04:	f105 0a14 	add.w	sl, r5, #20
1a005d08:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
1a005d0c:	f107 0314 	add.w	r3, r7, #20
1a005d10:	45a2      	cmp	sl, r4
1a005d12:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
1a005d16:	d261      	bcs.n	1a005ddc <__multiply+0x120>
1a005d18:	1b64      	subs	r4, r4, r5
1a005d1a:	3c15      	subs	r4, #21
1a005d1c:	f024 0403 	bic.w	r4, r4, #3
1a005d20:	f8cd e004 	str.w	lr, [sp, #4]
1a005d24:	44a2      	add	sl, r4
1a005d26:	f105 0210 	add.w	r2, r5, #16
1a005d2a:	469e      	mov	lr, r3
1a005d2c:	e005      	b.n	1a005d3a <__multiply+0x7e>
1a005d2e:	0c2d      	lsrs	r5, r5, #16
1a005d30:	d12b      	bne.n	1a005d8a <__multiply+0xce>
1a005d32:	4592      	cmp	sl, r2
1a005d34:	f109 0904 	add.w	r9, r9, #4
1a005d38:	d04e      	beq.n	1a005dd8 <__multiply+0x11c>
1a005d3a:	f852 5f04 	ldr.w	r5, [r2, #4]!
1a005d3e:	fa1f fb85 	uxth.w	fp, r5
1a005d42:	f1bb 0f00 	cmp.w	fp, #0
1a005d46:	d0f2      	beq.n	1a005d2e <__multiply+0x72>
1a005d48:	4677      	mov	r7, lr
1a005d4a:	464e      	mov	r6, r9
1a005d4c:	2000      	movs	r0, #0
1a005d4e:	e000      	b.n	1a005d52 <__multiply+0x96>
1a005d50:	4626      	mov	r6, r4
1a005d52:	f857 1b04 	ldr.w	r1, [r7], #4
1a005d56:	6834      	ldr	r4, [r6, #0]
1a005d58:	b28b      	uxth	r3, r1
1a005d5a:	b2a5      	uxth	r5, r4
1a005d5c:	0c09      	lsrs	r1, r1, #16
1a005d5e:	0c24      	lsrs	r4, r4, #16
1a005d60:	fb0b 5303 	mla	r3, fp, r3, r5
1a005d64:	4403      	add	r3, r0
1a005d66:	fb0b 4001 	mla	r0, fp, r1, r4
1a005d6a:	eb00 4013 	add.w	r0, r0, r3, lsr #16
1a005d6e:	4634      	mov	r4, r6
1a005d70:	b29b      	uxth	r3, r3
1a005d72:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
1a005d76:	45bc      	cmp	ip, r7
1a005d78:	ea4f 4010 	mov.w	r0, r0, lsr #16
1a005d7c:	f844 3b04 	str.w	r3, [r4], #4
1a005d80:	d8e6      	bhi.n	1a005d50 <__multiply+0x94>
1a005d82:	6070      	str	r0, [r6, #4]
1a005d84:	6815      	ldr	r5, [r2, #0]
1a005d86:	0c2d      	lsrs	r5, r5, #16
1a005d88:	d0d3      	beq.n	1a005d32 <__multiply+0x76>
1a005d8a:	f8d9 3000 	ldr.w	r3, [r9]
1a005d8e:	4676      	mov	r6, lr
1a005d90:	4618      	mov	r0, r3
1a005d92:	46cb      	mov	fp, r9
1a005d94:	2100      	movs	r1, #0
1a005d96:	e000      	b.n	1a005d9a <__multiply+0xde>
1a005d98:	46a3      	mov	fp, r4
1a005d9a:	8834      	ldrh	r4, [r6, #0]
1a005d9c:	0c00      	lsrs	r0, r0, #16
1a005d9e:	fb05 0004 	mla	r0, r5, r4, r0
1a005da2:	4401      	add	r1, r0
1a005da4:	b29b      	uxth	r3, r3
1a005da6:	465c      	mov	r4, fp
1a005da8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
1a005dac:	f844 3b04 	str.w	r3, [r4], #4
1a005db0:	f856 3b04 	ldr.w	r3, [r6], #4
1a005db4:	f8db 0004 	ldr.w	r0, [fp, #4]
1a005db8:	0c1b      	lsrs	r3, r3, #16
1a005dba:	b287      	uxth	r7, r0
1a005dbc:	fb05 7303 	mla	r3, r5, r3, r7
1a005dc0:	eb03 4311 	add.w	r3, r3, r1, lsr #16
1a005dc4:	45b4      	cmp	ip, r6
1a005dc6:	ea4f 4113 	mov.w	r1, r3, lsr #16
1a005dca:	d8e5      	bhi.n	1a005d98 <__multiply+0xdc>
1a005dcc:	4592      	cmp	sl, r2
1a005dce:	f8cb 3004 	str.w	r3, [fp, #4]
1a005dd2:	f109 0904 	add.w	r9, r9, #4
1a005dd6:	d1b0      	bne.n	1a005d3a <__multiply+0x7e>
1a005dd8:	f8dd e004 	ldr.w	lr, [sp, #4]
1a005ddc:	f1b8 0f00 	cmp.w	r8, #0
1a005de0:	dd0b      	ble.n	1a005dfa <__multiply+0x13e>
1a005de2:	f85e 3c04 	ldr.w	r3, [lr, #-4]
1a005de6:	f1ae 0e04 	sub.w	lr, lr, #4
1a005dea:	b11b      	cbz	r3, 1a005df4 <__multiply+0x138>
1a005dec:	e005      	b.n	1a005dfa <__multiply+0x13e>
1a005dee:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
1a005df2:	b913      	cbnz	r3, 1a005dfa <__multiply+0x13e>
1a005df4:	f1b8 0801 	subs.w	r8, r8, #1
1a005df8:	d1f9      	bne.n	1a005dee <__multiply+0x132>
1a005dfa:	9800      	ldr	r0, [sp, #0]
1a005dfc:	f8c0 8010 	str.w	r8, [r0, #16]
1a005e00:	b003      	add	sp, #12
1a005e02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a005e06:	bf00      	nop

1a005e08 <__pow5mult>:
1a005e08:	f012 0303 	ands.w	r3, r2, #3
1a005e0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
1a005e10:	4614      	mov	r4, r2
1a005e12:	4607      	mov	r7, r0
1a005e14:	d12e      	bne.n	1a005e74 <__pow5mult+0x6c>
1a005e16:	460d      	mov	r5, r1
1a005e18:	10a4      	asrs	r4, r4, #2
1a005e1a:	d01c      	beq.n	1a005e56 <__pow5mult+0x4e>
1a005e1c:	6cbe      	ldr	r6, [r7, #72]	; 0x48
1a005e1e:	b396      	cbz	r6, 1a005e86 <__pow5mult+0x7e>
1a005e20:	07e3      	lsls	r3, r4, #31
1a005e22:	f04f 0800 	mov.w	r8, #0
1a005e26:	d406      	bmi.n	1a005e36 <__pow5mult+0x2e>
1a005e28:	1064      	asrs	r4, r4, #1
1a005e2a:	d014      	beq.n	1a005e56 <__pow5mult+0x4e>
1a005e2c:	6830      	ldr	r0, [r6, #0]
1a005e2e:	b1a8      	cbz	r0, 1a005e5c <__pow5mult+0x54>
1a005e30:	4606      	mov	r6, r0
1a005e32:	07e3      	lsls	r3, r4, #31
1a005e34:	d5f8      	bpl.n	1a005e28 <__pow5mult+0x20>
1a005e36:	4632      	mov	r2, r6
1a005e38:	4629      	mov	r1, r5
1a005e3a:	4638      	mov	r0, r7
1a005e3c:	f7ff ff3e 	bl	1a005cbc <__multiply>
1a005e40:	b1b5      	cbz	r5, 1a005e70 <__pow5mult+0x68>
1a005e42:	686a      	ldr	r2, [r5, #4]
1a005e44:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a005e46:	1064      	asrs	r4, r4, #1
1a005e48:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a005e4c:	6029      	str	r1, [r5, #0]
1a005e4e:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
1a005e52:	4605      	mov	r5, r0
1a005e54:	d1ea      	bne.n	1a005e2c <__pow5mult+0x24>
1a005e56:	4628      	mov	r0, r5
1a005e58:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1a005e5c:	4632      	mov	r2, r6
1a005e5e:	4631      	mov	r1, r6
1a005e60:	4638      	mov	r0, r7
1a005e62:	f7ff ff2b 	bl	1a005cbc <__multiply>
1a005e66:	6030      	str	r0, [r6, #0]
1a005e68:	f8c0 8000 	str.w	r8, [r0]
1a005e6c:	4606      	mov	r6, r0
1a005e6e:	e7e0      	b.n	1a005e32 <__pow5mult+0x2a>
1a005e70:	4605      	mov	r5, r0
1a005e72:	e7d9      	b.n	1a005e28 <__pow5mult+0x20>
1a005e74:	3b01      	subs	r3, #1
1a005e76:	4a0b      	ldr	r2, [pc, #44]	; (1a005ea4 <__pow5mult+0x9c>)
1a005e78:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
1a005e7c:	2300      	movs	r3, #0
1a005e7e:	f7ff fe83 	bl	1a005b88 <__multadd>
1a005e82:	4605      	mov	r5, r0
1a005e84:	e7c8      	b.n	1a005e18 <__pow5mult+0x10>
1a005e86:	2101      	movs	r1, #1
1a005e88:	4638      	mov	r0, r7
1a005e8a:	f7ff fe4d 	bl	1a005b28 <_Balloc>
1a005e8e:	f240 2371 	movw	r3, #625	; 0x271
1a005e92:	6143      	str	r3, [r0, #20]
1a005e94:	2201      	movs	r2, #1
1a005e96:	2300      	movs	r3, #0
1a005e98:	6102      	str	r2, [r0, #16]
1a005e9a:	4606      	mov	r6, r0
1a005e9c:	64b8      	str	r0, [r7, #72]	; 0x48
1a005e9e:	6003      	str	r3, [r0, #0]
1a005ea0:	e7be      	b.n	1a005e20 <__pow5mult+0x18>
1a005ea2:	bf00      	nop
1a005ea4:	1a007da8 	.word	0x1a007da8

1a005ea8 <__lshift>:
1a005ea8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
1a005eac:	4691      	mov	r9, r2
1a005eae:	690a      	ldr	r2, [r1, #16]
1a005eb0:	460e      	mov	r6, r1
1a005eb2:	ea4f 1469 	mov.w	r4, r9, asr #5
1a005eb6:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
1a005eba:	eb04 0802 	add.w	r8, r4, r2
1a005ebe:	f108 0501 	add.w	r5, r8, #1
1a005ec2:	429d      	cmp	r5, r3
1a005ec4:	4607      	mov	r7, r0
1a005ec6:	dd04      	ble.n	1a005ed2 <__lshift+0x2a>
1a005ec8:	005b      	lsls	r3, r3, #1
1a005eca:	429d      	cmp	r5, r3
1a005ecc:	f101 0101 	add.w	r1, r1, #1
1a005ed0:	dcfa      	bgt.n	1a005ec8 <__lshift+0x20>
1a005ed2:	4638      	mov	r0, r7
1a005ed4:	f7ff fe28 	bl	1a005b28 <_Balloc>
1a005ed8:	2c00      	cmp	r4, #0
1a005eda:	f100 0314 	add.w	r3, r0, #20
1a005ede:	dd37      	ble.n	1a005f50 <__lshift+0xa8>
1a005ee0:	eb03 0184 	add.w	r1, r3, r4, lsl #2
1a005ee4:	2200      	movs	r2, #0
1a005ee6:	f843 2b04 	str.w	r2, [r3], #4
1a005eea:	428b      	cmp	r3, r1
1a005eec:	d1fb      	bne.n	1a005ee6 <__lshift+0x3e>
1a005eee:	6934      	ldr	r4, [r6, #16]
1a005ef0:	f106 0314 	add.w	r3, r6, #20
1a005ef4:	f019 091f 	ands.w	r9, r9, #31
1a005ef8:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
1a005efc:	d020      	beq.n	1a005f40 <__lshift+0x98>
1a005efe:	f1c9 0e20 	rsb	lr, r9, #32
1a005f02:	2200      	movs	r2, #0
1a005f04:	e000      	b.n	1a005f08 <__lshift+0x60>
1a005f06:	4651      	mov	r1, sl
1a005f08:	681c      	ldr	r4, [r3, #0]
1a005f0a:	468a      	mov	sl, r1
1a005f0c:	fa04 f409 	lsl.w	r4, r4, r9
1a005f10:	4314      	orrs	r4, r2
1a005f12:	f84a 4b04 	str.w	r4, [sl], #4
1a005f16:	f853 2b04 	ldr.w	r2, [r3], #4
1a005f1a:	4563      	cmp	r3, ip
1a005f1c:	fa22 f20e 	lsr.w	r2, r2, lr
1a005f20:	d3f1      	bcc.n	1a005f06 <__lshift+0x5e>
1a005f22:	604a      	str	r2, [r1, #4]
1a005f24:	b10a      	cbz	r2, 1a005f2a <__lshift+0x82>
1a005f26:	f108 0502 	add.w	r5, r8, #2
1a005f2a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a005f2c:	6872      	ldr	r2, [r6, #4]
1a005f2e:	3d01      	subs	r5, #1
1a005f30:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a005f34:	6105      	str	r5, [r0, #16]
1a005f36:	6031      	str	r1, [r6, #0]
1a005f38:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
1a005f3c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a005f40:	3904      	subs	r1, #4
1a005f42:	f853 2b04 	ldr.w	r2, [r3], #4
1a005f46:	f841 2f04 	str.w	r2, [r1, #4]!
1a005f4a:	459c      	cmp	ip, r3
1a005f4c:	d8f9      	bhi.n	1a005f42 <__lshift+0x9a>
1a005f4e:	e7ec      	b.n	1a005f2a <__lshift+0x82>
1a005f50:	4619      	mov	r1, r3
1a005f52:	e7cc      	b.n	1a005eee <__lshift+0x46>

1a005f54 <__mcmp>:
1a005f54:	b430      	push	{r4, r5}
1a005f56:	690b      	ldr	r3, [r1, #16]
1a005f58:	4605      	mov	r5, r0
1a005f5a:	6900      	ldr	r0, [r0, #16]
1a005f5c:	1ac0      	subs	r0, r0, r3
1a005f5e:	d10f      	bne.n	1a005f80 <__mcmp+0x2c>
1a005f60:	009b      	lsls	r3, r3, #2
1a005f62:	3514      	adds	r5, #20
1a005f64:	3114      	adds	r1, #20
1a005f66:	4419      	add	r1, r3
1a005f68:	442b      	add	r3, r5
1a005f6a:	e001      	b.n	1a005f70 <__mcmp+0x1c>
1a005f6c:	429d      	cmp	r5, r3
1a005f6e:	d207      	bcs.n	1a005f80 <__mcmp+0x2c>
1a005f70:	f853 4d04 	ldr.w	r4, [r3, #-4]!
1a005f74:	f851 2d04 	ldr.w	r2, [r1, #-4]!
1a005f78:	4294      	cmp	r4, r2
1a005f7a:	d0f7      	beq.n	1a005f6c <__mcmp+0x18>
1a005f7c:	d302      	bcc.n	1a005f84 <__mcmp+0x30>
1a005f7e:	2001      	movs	r0, #1
1a005f80:	bc30      	pop	{r4, r5}
1a005f82:	4770      	bx	lr
1a005f84:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a005f88:	e7fa      	b.n	1a005f80 <__mcmp+0x2c>
1a005f8a:	bf00      	nop

1a005f8c <__mdiff>:
1a005f8c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
1a005f90:	6913      	ldr	r3, [r2, #16]
1a005f92:	690d      	ldr	r5, [r1, #16]
1a005f94:	1aed      	subs	r5, r5, r3
1a005f96:	2d00      	cmp	r5, #0
1a005f98:	460e      	mov	r6, r1
1a005f9a:	4690      	mov	r8, r2
1a005f9c:	f101 0414 	add.w	r4, r1, #20
1a005fa0:	f102 0714 	add.w	r7, r2, #20
1a005fa4:	d114      	bne.n	1a005fd0 <__mdiff+0x44>
1a005fa6:	009b      	lsls	r3, r3, #2
1a005fa8:	18e2      	adds	r2, r4, r3
1a005faa:	443b      	add	r3, r7
1a005fac:	e001      	b.n	1a005fb2 <__mdiff+0x26>
1a005fae:	42a2      	cmp	r2, r4
1a005fb0:	d959      	bls.n	1a006066 <__mdiff+0xda>
1a005fb2:	f852 cd04 	ldr.w	ip, [r2, #-4]!
1a005fb6:	f853 1d04 	ldr.w	r1, [r3, #-4]!
1a005fba:	458c      	cmp	ip, r1
1a005fbc:	d0f7      	beq.n	1a005fae <__mdiff+0x22>
1a005fbe:	d209      	bcs.n	1a005fd4 <__mdiff+0x48>
1a005fc0:	4622      	mov	r2, r4
1a005fc2:	4633      	mov	r3, r6
1a005fc4:	463c      	mov	r4, r7
1a005fc6:	4646      	mov	r6, r8
1a005fc8:	4617      	mov	r7, r2
1a005fca:	4698      	mov	r8, r3
1a005fcc:	2501      	movs	r5, #1
1a005fce:	e001      	b.n	1a005fd4 <__mdiff+0x48>
1a005fd0:	dbf6      	blt.n	1a005fc0 <__mdiff+0x34>
1a005fd2:	2500      	movs	r5, #0
1a005fd4:	6871      	ldr	r1, [r6, #4]
1a005fd6:	f7ff fda7 	bl	1a005b28 <_Balloc>
1a005fda:	f8d8 3010 	ldr.w	r3, [r8, #16]
1a005fde:	6936      	ldr	r6, [r6, #16]
1a005fe0:	60c5      	str	r5, [r0, #12]
1a005fe2:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
1a005fe6:	46bc      	mov	ip, r7
1a005fe8:	f100 0514 	add.w	r5, r0, #20
1a005fec:	eb04 0786 	add.w	r7, r4, r6, lsl #2
1a005ff0:	2300      	movs	r3, #0
1a005ff2:	f85c 1b04 	ldr.w	r1, [ip], #4
1a005ff6:	f854 8b04 	ldr.w	r8, [r4], #4
1a005ffa:	b28a      	uxth	r2, r1
1a005ffc:	fa13 f388 	uxtah	r3, r3, r8
1a006000:	0c09      	lsrs	r1, r1, #16
1a006002:	1a9a      	subs	r2, r3, r2
1a006004:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
1a006008:	eb03 4322 	add.w	r3, r3, r2, asr #16
1a00600c:	b292      	uxth	r2, r2
1a00600e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
1a006012:	45e6      	cmp	lr, ip
1a006014:	f845 2b04 	str.w	r2, [r5], #4
1a006018:	ea4f 4323 	mov.w	r3, r3, asr #16
1a00601c:	d8e9      	bhi.n	1a005ff2 <__mdiff+0x66>
1a00601e:	42a7      	cmp	r7, r4
1a006020:	d917      	bls.n	1a006052 <__mdiff+0xc6>
1a006022:	46ae      	mov	lr, r5
1a006024:	46a4      	mov	ip, r4
1a006026:	f85c 2b04 	ldr.w	r2, [ip], #4
1a00602a:	fa13 f382 	uxtah	r3, r3, r2
1a00602e:	1419      	asrs	r1, r3, #16
1a006030:	eb01 4112 	add.w	r1, r1, r2, lsr #16
1a006034:	b29b      	uxth	r3, r3
1a006036:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
1a00603a:	4567      	cmp	r7, ip
1a00603c:	f84e 2b04 	str.w	r2, [lr], #4
1a006040:	ea4f 4321 	mov.w	r3, r1, asr #16
1a006044:	d8ef      	bhi.n	1a006026 <__mdiff+0x9a>
1a006046:	43e4      	mvns	r4, r4
1a006048:	4427      	add	r7, r4
1a00604a:	f027 0703 	bic.w	r7, r7, #3
1a00604e:	3704      	adds	r7, #4
1a006050:	443d      	add	r5, r7
1a006052:	3d04      	subs	r5, #4
1a006054:	b922      	cbnz	r2, 1a006060 <__mdiff+0xd4>
1a006056:	f855 3d04 	ldr.w	r3, [r5, #-4]!
1a00605a:	3e01      	subs	r6, #1
1a00605c:	2b00      	cmp	r3, #0
1a00605e:	d0fa      	beq.n	1a006056 <__mdiff+0xca>
1a006060:	6106      	str	r6, [r0, #16]
1a006062:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1a006066:	2100      	movs	r1, #0
1a006068:	f7ff fd5e 	bl	1a005b28 <_Balloc>
1a00606c:	2201      	movs	r2, #1
1a00606e:	2300      	movs	r3, #0
1a006070:	e9c0 2304 	strd	r2, r3, [r0, #16]
1a006074:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

1a006078 <__d2b>:
1a006078:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
1a00607c:	b083      	sub	sp, #12
1a00607e:	2101      	movs	r1, #1
1a006080:	461f      	mov	r7, r3
1a006082:	4616      	mov	r6, r2
1a006084:	9d0a      	ldr	r5, [sp, #40]	; 0x28
1a006086:	f7ff fd4f 	bl	1a005b28 <_Balloc>
1a00608a:	f3c7 540a 	ubfx	r4, r7, #20, #11
1a00608e:	4681      	mov	r9, r0
1a006090:	f3c7 0313 	ubfx	r3, r7, #0, #20
1a006094:	b10c      	cbz	r4, 1a00609a <__d2b+0x22>
1a006096:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
1a00609a:	2e00      	cmp	r6, #0
1a00609c:	9301      	str	r3, [sp, #4]
1a00609e:	d023      	beq.n	1a0060e8 <__d2b+0x70>
1a0060a0:	a802      	add	r0, sp, #8
1a0060a2:	f840 6d08 	str.w	r6, [r0, #-8]!
1a0060a6:	f7ff fdcf 	bl	1a005c48 <__lo0bits>
1a0060aa:	2800      	cmp	r0, #0
1a0060ac:	d135      	bne.n	1a00611a <__d2b+0xa2>
1a0060ae:	e9dd 2300 	ldrd	r2, r3, [sp]
1a0060b2:	f8c9 2014 	str.w	r2, [r9, #20]
1a0060b6:	2b00      	cmp	r3, #0
1a0060b8:	bf0c      	ite	eq
1a0060ba:	2101      	moveq	r1, #1
1a0060bc:	2102      	movne	r1, #2
1a0060be:	f8c9 3018 	str.w	r3, [r9, #24]
1a0060c2:	f8c9 1010 	str.w	r1, [r9, #16]
1a0060c6:	b9dc      	cbnz	r4, 1a006100 <__d2b+0x88>
1a0060c8:	eb09 0381 	add.w	r3, r9, r1, lsl #2
1a0060cc:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
1a0060d0:	6028      	str	r0, [r5, #0]
1a0060d2:	6918      	ldr	r0, [r3, #16]
1a0060d4:	f7ff fd98 	bl	1a005c08 <__hi0bits>
1a0060d8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a0060da:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
1a0060de:	6018      	str	r0, [r3, #0]
1a0060e0:	4648      	mov	r0, r9
1a0060e2:	b003      	add	sp, #12
1a0060e4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
1a0060e8:	a801      	add	r0, sp, #4
1a0060ea:	f7ff fdad 	bl	1a005c48 <__lo0bits>
1a0060ee:	9b01      	ldr	r3, [sp, #4]
1a0060f0:	f8c9 3014 	str.w	r3, [r9, #20]
1a0060f4:	2101      	movs	r1, #1
1a0060f6:	3020      	adds	r0, #32
1a0060f8:	f8c9 1010 	str.w	r1, [r9, #16]
1a0060fc:	2c00      	cmp	r4, #0
1a0060fe:	d0e3      	beq.n	1a0060c8 <__d2b+0x50>
1a006100:	f2a4 4833 	subw	r8, r4, #1075	; 0x433
1a006104:	eb08 0300 	add.w	r3, r8, r0
1a006108:	602b      	str	r3, [r5, #0]
1a00610a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
1a00610c:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
1a006110:	6018      	str	r0, [r3, #0]
1a006112:	4648      	mov	r0, r9
1a006114:	b003      	add	sp, #12
1a006116:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
1a00611a:	e9dd 1300 	ldrd	r1, r3, [sp]
1a00611e:	f1c0 0220 	rsb	r2, r0, #32
1a006122:	fa03 f202 	lsl.w	r2, r3, r2
1a006126:	430a      	orrs	r2, r1
1a006128:	40c3      	lsrs	r3, r0
1a00612a:	9301      	str	r3, [sp, #4]
1a00612c:	f8c9 2014 	str.w	r2, [r9, #20]
1a006130:	e7c1      	b.n	1a0060b6 <__d2b+0x3e>
1a006132:	bf00      	nop

1a006134 <frexp>:
1a006134:	f8df c05c 	ldr.w	ip, [pc, #92]	; 1a006194 <frexp+0x60>
1a006138:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00613a:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
1a00613e:	2700      	movs	r7, #0
1a006140:	4563      	cmp	r3, ip
1a006142:	4604      	mov	r4, r0
1a006144:	460d      	mov	r5, r1
1a006146:	4616      	mov	r6, r2
1a006148:	6017      	str	r7, [r2, #0]
1a00614a:	dc1e      	bgt.n	1a00618a <frexp+0x56>
1a00614c:	4684      	mov	ip, r0
1a00614e:	ea53 0c0c 	orrs.w	ip, r3, ip
1a006152:	d01a      	beq.n	1a00618a <frexp+0x56>
1a006154:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
1a006158:	460a      	mov	r2, r1
1a00615a:	da09      	bge.n	1a006170 <frexp+0x3c>
1a00615c:	2200      	movs	r2, #0
1a00615e:	4b0c      	ldr	r3, [pc, #48]	; (1a006190 <frexp+0x5c>)
1a006160:	f001 f87e 	bl	1a007260 <__aeabi_dmul>
1a006164:	f06f 0735 	mvn.w	r7, #53	; 0x35
1a006168:	4604      	mov	r4, r0
1a00616a:	460a      	mov	r2, r1
1a00616c:	f021 4300 	bic.w	r3, r1, #2147483648	; 0x80000000
1a006170:	f022 42ff 	bic.w	r2, r2, #2139095040	; 0x7f800000
1a006174:	151b      	asrs	r3, r3, #20
1a006176:	f422 02e0 	bic.w	r2, r2, #7340032	; 0x700000
1a00617a:	f2a3 33fe 	subw	r3, r3, #1022	; 0x3fe
1a00617e:	f042 557f 	orr.w	r5, r2, #1069547520	; 0x3fc00000
1a006182:	443b      	add	r3, r7
1a006184:	f445 1500 	orr.w	r5, r5, #2097152	; 0x200000
1a006188:	6033      	str	r3, [r6, #0]
1a00618a:	4620      	mov	r0, r4
1a00618c:	4629      	mov	r1, r5
1a00618e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a006190:	43500000 	.word	0x43500000
1a006194:	7fefffff 	.word	0x7fefffff

1a006198 <_sbrk_r>:
1a006198:	b538      	push	{r3, r4, r5, lr}
1a00619a:	4c07      	ldr	r4, [pc, #28]	; (1a0061b8 <_sbrk_r+0x20>)
1a00619c:	2300      	movs	r3, #0
1a00619e:	4605      	mov	r5, r0
1a0061a0:	4608      	mov	r0, r1
1a0061a2:	6023      	str	r3, [r4, #0]
1a0061a4:	f7fa fd40 	bl	1a000c28 <_sbrk>
1a0061a8:	1c43      	adds	r3, r0, #1
1a0061aa:	d000      	beq.n	1a0061ae <_sbrk_r+0x16>
1a0061ac:	bd38      	pop	{r3, r4, r5, pc}
1a0061ae:	6823      	ldr	r3, [r4, #0]
1a0061b0:	2b00      	cmp	r3, #0
1a0061b2:	d0fb      	beq.n	1a0061ac <_sbrk_r+0x14>
1a0061b4:	602b      	str	r3, [r5, #0]
1a0061b6:	bd38      	pop	{r3, r4, r5, pc}
1a0061b8:	10000a4c 	.word	0x10000a4c

1a0061bc <__sread>:
1a0061bc:	b510      	push	{r4, lr}
1a0061be:	460c      	mov	r4, r1
1a0061c0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
1a0061c4:	f000 fc3e 	bl	1a006a44 <_read_r>
1a0061c8:	2800      	cmp	r0, #0
1a0061ca:	db03      	blt.n	1a0061d4 <__sread+0x18>
1a0061cc:	6d23      	ldr	r3, [r4, #80]	; 0x50
1a0061ce:	4403      	add	r3, r0
1a0061d0:	6523      	str	r3, [r4, #80]	; 0x50
1a0061d2:	bd10      	pop	{r4, pc}
1a0061d4:	89a3      	ldrh	r3, [r4, #12]
1a0061d6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
1a0061da:	81a3      	strh	r3, [r4, #12]
1a0061dc:	bd10      	pop	{r4, pc}
1a0061de:	bf00      	nop

1a0061e0 <__swrite>:
1a0061e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
1a0061e4:	4616      	mov	r6, r2
1a0061e6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
1a0061ea:	461f      	mov	r7, r3
1a0061ec:	05d3      	lsls	r3, r2, #23
1a0061ee:	460c      	mov	r4, r1
1a0061f0:	4605      	mov	r5, r0
1a0061f2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
1a0061f6:	d507      	bpl.n	1a006208 <__swrite+0x28>
1a0061f8:	2200      	movs	r2, #0
1a0061fa:	2302      	movs	r3, #2
1a0061fc:	f000 fb92 	bl	1a006924 <_lseek_r>
1a006200:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a006204:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
1a006208:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
1a00620c:	81a2      	strh	r2, [r4, #12]
1a00620e:	463b      	mov	r3, r7
1a006210:	4632      	mov	r2, r6
1a006212:	4628      	mov	r0, r5
1a006214:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
1a006218:	f000 b88c 	b.w	1a006334 <_write_r>

1a00621c <__sseek>:
1a00621c:	b510      	push	{r4, lr}
1a00621e:	460c      	mov	r4, r1
1a006220:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
1a006224:	f000 fb7e 	bl	1a006924 <_lseek_r>
1a006228:	89a3      	ldrh	r3, [r4, #12]
1a00622a:	1c42      	adds	r2, r0, #1
1a00622c:	bf0e      	itee	eq
1a00622e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
1a006232:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
1a006236:	6520      	strne	r0, [r4, #80]	; 0x50
1a006238:	81a3      	strh	r3, [r4, #12]
1a00623a:	bd10      	pop	{r4, pc}

1a00623c <__sclose>:
1a00623c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
1a006240:	f000 b8c2 	b.w	1a0063c8 <_close_r>

1a006244 <strncpy>:
1a006244:	ea40 0301 	orr.w	r3, r0, r1
1a006248:	079b      	lsls	r3, r3, #30
1a00624a:	b470      	push	{r4, r5, r6}
1a00624c:	d12a      	bne.n	1a0062a4 <strncpy+0x60>
1a00624e:	2a03      	cmp	r2, #3
1a006250:	d928      	bls.n	1a0062a4 <strncpy+0x60>
1a006252:	460c      	mov	r4, r1
1a006254:	4603      	mov	r3, r0
1a006256:	4621      	mov	r1, r4
1a006258:	f854 6b04 	ldr.w	r6, [r4], #4
1a00625c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
1a006260:	ea25 0506 	bic.w	r5, r5, r6
1a006264:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
1a006268:	d106      	bne.n	1a006278 <strncpy+0x34>
1a00626a:	3a04      	subs	r2, #4
1a00626c:	2a03      	cmp	r2, #3
1a00626e:	f843 6b04 	str.w	r6, [r3], #4
1a006272:	4621      	mov	r1, r4
1a006274:	d8ef      	bhi.n	1a006256 <strncpy+0x12>
1a006276:	b19a      	cbz	r2, 1a0062a0 <strncpy+0x5c>
1a006278:	780c      	ldrb	r4, [r1, #0]
1a00627a:	701c      	strb	r4, [r3, #0]
1a00627c:	3a01      	subs	r2, #1
1a00627e:	3301      	adds	r3, #1
1a006280:	b13c      	cbz	r4, 1a006292 <strncpy+0x4e>
1a006282:	b16a      	cbz	r2, 1a0062a0 <strncpy+0x5c>
1a006284:	f811 4f01 	ldrb.w	r4, [r1, #1]!
1a006288:	f803 4b01 	strb.w	r4, [r3], #1
1a00628c:	3a01      	subs	r2, #1
1a00628e:	2c00      	cmp	r4, #0
1a006290:	d1f7      	bne.n	1a006282 <strncpy+0x3e>
1a006292:	b12a      	cbz	r2, 1a0062a0 <strncpy+0x5c>
1a006294:	441a      	add	r2, r3
1a006296:	2100      	movs	r1, #0
1a006298:	f803 1b01 	strb.w	r1, [r3], #1
1a00629c:	4293      	cmp	r3, r2
1a00629e:	d1fb      	bne.n	1a006298 <strncpy+0x54>
1a0062a0:	bc70      	pop	{r4, r5, r6}
1a0062a2:	4770      	bx	lr
1a0062a4:	4603      	mov	r3, r0
1a0062a6:	e7e6      	b.n	1a006276 <strncpy+0x32>

1a0062a8 <__sprint_r.part.0>:
1a0062a8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a0062ac:	6e4b      	ldr	r3, [r1, #100]	; 0x64
1a0062ae:	049c      	lsls	r4, r3, #18
1a0062b0:	4692      	mov	sl, r2
1a0062b2:	d52d      	bpl.n	1a006310 <__sprint_r.part.0+0x68>
1a0062b4:	6893      	ldr	r3, [r2, #8]
1a0062b6:	6812      	ldr	r2, [r2, #0]
1a0062b8:	b343      	cbz	r3, 1a00630c <__sprint_r.part.0+0x64>
1a0062ba:	460e      	mov	r6, r1
1a0062bc:	4607      	mov	r7, r0
1a0062be:	f102 0908 	add.w	r9, r2, #8
1a0062c2:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
1a0062c6:	ea5f 089b 	movs.w	r8, fp, lsr #2
1a0062ca:	d015      	beq.n	1a0062f8 <__sprint_r.part.0+0x50>
1a0062cc:	3d04      	subs	r5, #4
1a0062ce:	2400      	movs	r4, #0
1a0062d0:	e001      	b.n	1a0062d6 <__sprint_r.part.0+0x2e>
1a0062d2:	45a0      	cmp	r8, r4
1a0062d4:	d00e      	beq.n	1a0062f4 <__sprint_r.part.0+0x4c>
1a0062d6:	4632      	mov	r2, r6
1a0062d8:	f855 1f04 	ldr.w	r1, [r5, #4]!
1a0062dc:	4638      	mov	r0, r7
1a0062de:	f000 f93d 	bl	1a00655c <_fputwc_r>
1a0062e2:	1c43      	adds	r3, r0, #1
1a0062e4:	f104 0401 	add.w	r4, r4, #1
1a0062e8:	d1f3      	bne.n	1a0062d2 <__sprint_r.part.0+0x2a>
1a0062ea:	2300      	movs	r3, #0
1a0062ec:	e9ca 3301 	strd	r3, r3, [sl, #4]
1a0062f0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0062f4:	f8da 3008 	ldr.w	r3, [sl, #8]
1a0062f8:	f02b 0b03 	bic.w	fp, fp, #3
1a0062fc:	eba3 030b 	sub.w	r3, r3, fp
1a006300:	f8ca 3008 	str.w	r3, [sl, #8]
1a006304:	f109 0908 	add.w	r9, r9, #8
1a006308:	2b00      	cmp	r3, #0
1a00630a:	d1da      	bne.n	1a0062c2 <__sprint_r.part.0+0x1a>
1a00630c:	2000      	movs	r0, #0
1a00630e:	e7ec      	b.n	1a0062ea <__sprint_r.part.0+0x42>
1a006310:	f000 f96a 	bl	1a0065e8 <__sfvwrite_r>
1a006314:	2300      	movs	r3, #0
1a006316:	e9ca 3301 	strd	r3, r3, [sl, #4]
1a00631a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a00631e:	bf00      	nop

1a006320 <__sprint_r>:
1a006320:	6893      	ldr	r3, [r2, #8]
1a006322:	b10b      	cbz	r3, 1a006328 <__sprint_r+0x8>
1a006324:	f7ff bfc0 	b.w	1a0062a8 <__sprint_r.part.0>
1a006328:	b410      	push	{r4}
1a00632a:	4618      	mov	r0, r3
1a00632c:	6053      	str	r3, [r2, #4]
1a00632e:	f85d 4b04 	ldr.w	r4, [sp], #4
1a006332:	4770      	bx	lr

1a006334 <_write_r>:
1a006334:	b570      	push	{r4, r5, r6, lr}
1a006336:	460d      	mov	r5, r1
1a006338:	4c08      	ldr	r4, [pc, #32]	; (1a00635c <_write_r+0x28>)
1a00633a:	4611      	mov	r1, r2
1a00633c:	4606      	mov	r6, r0
1a00633e:	461a      	mov	r2, r3
1a006340:	4628      	mov	r0, r5
1a006342:	2300      	movs	r3, #0
1a006344:	6023      	str	r3, [r4, #0]
1a006346:	f7fa f921 	bl	1a00058c <_write>
1a00634a:	1c43      	adds	r3, r0, #1
1a00634c:	d000      	beq.n	1a006350 <_write_r+0x1c>
1a00634e:	bd70      	pop	{r4, r5, r6, pc}
1a006350:	6823      	ldr	r3, [r4, #0]
1a006352:	2b00      	cmp	r3, #0
1a006354:	d0fb      	beq.n	1a00634e <_write_r+0x1a>
1a006356:	6033      	str	r3, [r6, #0]
1a006358:	bd70      	pop	{r4, r5, r6, pc}
1a00635a:	bf00      	nop
1a00635c:	10000a4c 	.word	0x10000a4c

1a006360 <_calloc_r>:
1a006360:	b510      	push	{r4, lr}
1a006362:	fb02 f101 	mul.w	r1, r2, r1
1a006366:	f7ff f8df 	bl	1a005528 <_malloc_r>
1a00636a:	4604      	mov	r4, r0
1a00636c:	b1d8      	cbz	r0, 1a0063a6 <_calloc_r+0x46>
1a00636e:	f850 2c04 	ldr.w	r2, [r0, #-4]
1a006372:	f022 0203 	bic.w	r2, r2, #3
1a006376:	3a04      	subs	r2, #4
1a006378:	2a24      	cmp	r2, #36	; 0x24
1a00637a:	d81d      	bhi.n	1a0063b8 <_calloc_r+0x58>
1a00637c:	2a13      	cmp	r2, #19
1a00637e:	d914      	bls.n	1a0063aa <_calloc_r+0x4a>
1a006380:	2300      	movs	r3, #0
1a006382:	2a1b      	cmp	r2, #27
1a006384:	e9c0 3300 	strd	r3, r3, [r0]
1a006388:	d91b      	bls.n	1a0063c2 <_calloc_r+0x62>
1a00638a:	2a24      	cmp	r2, #36	; 0x24
1a00638c:	e9c0 3302 	strd	r3, r3, [r0, #8]
1a006390:	bf0a      	itet	eq
1a006392:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
1a006396:	f100 0210 	addne.w	r2, r0, #16
1a00639a:	f100 0218 	addeq.w	r2, r0, #24
1a00639e:	2300      	movs	r3, #0
1a0063a0:	e9c2 3300 	strd	r3, r3, [r2]
1a0063a4:	6093      	str	r3, [r2, #8]
1a0063a6:	4620      	mov	r0, r4
1a0063a8:	bd10      	pop	{r4, pc}
1a0063aa:	4602      	mov	r2, r0
1a0063ac:	2300      	movs	r3, #0
1a0063ae:	e9c2 3300 	strd	r3, r3, [r2]
1a0063b2:	6093      	str	r3, [r2, #8]
1a0063b4:	4620      	mov	r0, r4
1a0063b6:	bd10      	pop	{r4, pc}
1a0063b8:	2100      	movs	r1, #0
1a0063ba:	f7f9 ffa1 	bl	1a000300 <memset>
1a0063be:	4620      	mov	r0, r4
1a0063c0:	bd10      	pop	{r4, pc}
1a0063c2:	f100 0208 	add.w	r2, r0, #8
1a0063c6:	e7f1      	b.n	1a0063ac <_calloc_r+0x4c>

1a0063c8 <_close_r>:
1a0063c8:	b538      	push	{r3, r4, r5, lr}
1a0063ca:	4c07      	ldr	r4, [pc, #28]	; (1a0063e8 <_close_r+0x20>)
1a0063cc:	2300      	movs	r3, #0
1a0063ce:	4605      	mov	r5, r0
1a0063d0:	4608      	mov	r0, r1
1a0063d2:	6023      	str	r3, [r4, #0]
1a0063d4:	f7fa f8f6 	bl	1a0005c4 <_close>
1a0063d8:	1c43      	adds	r3, r0, #1
1a0063da:	d000      	beq.n	1a0063de <_close_r+0x16>
1a0063dc:	bd38      	pop	{r3, r4, r5, pc}
1a0063de:	6823      	ldr	r3, [r4, #0]
1a0063e0:	2b00      	cmp	r3, #0
1a0063e2:	d0fb      	beq.n	1a0063dc <_close_r+0x14>
1a0063e4:	602b      	str	r3, [r5, #0]
1a0063e6:	bd38      	pop	{r3, r4, r5, pc}
1a0063e8:	10000a4c 	.word	0x10000a4c

1a0063ec <_fclose_r>:
1a0063ec:	b570      	push	{r4, r5, r6, lr}
1a0063ee:	2900      	cmp	r1, #0
1a0063f0:	d048      	beq.n	1a006484 <_fclose_r+0x98>
1a0063f2:	4605      	mov	r5, r0
1a0063f4:	460c      	mov	r4, r1
1a0063f6:	b110      	cbz	r0, 1a0063fe <_fclose_r+0x12>
1a0063f8:	6b83      	ldr	r3, [r0, #56]	; 0x38
1a0063fa:	2b00      	cmp	r3, #0
1a0063fc:	d048      	beq.n	1a006490 <_fclose_r+0xa4>
1a0063fe:	6e62      	ldr	r2, [r4, #100]	; 0x64
1a006400:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a006404:	07d0      	lsls	r0, r2, #31
1a006406:	d440      	bmi.n	1a00648a <_fclose_r+0x9e>
1a006408:	0599      	lsls	r1, r3, #22
1a00640a:	d530      	bpl.n	1a00646e <_fclose_r+0x82>
1a00640c:	4621      	mov	r1, r4
1a00640e:	4628      	mov	r0, r5
1a006410:	f7fe fd58 	bl	1a004ec4 <__sflush_r>
1a006414:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
1a006416:	4606      	mov	r6, r0
1a006418:	b133      	cbz	r3, 1a006428 <_fclose_r+0x3c>
1a00641a:	69e1      	ldr	r1, [r4, #28]
1a00641c:	4628      	mov	r0, r5
1a00641e:	4798      	blx	r3
1a006420:	2800      	cmp	r0, #0
1a006422:	bfb8      	it	lt
1a006424:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
1a006428:	89a3      	ldrh	r3, [r4, #12]
1a00642a:	061a      	lsls	r2, r3, #24
1a00642c:	d43c      	bmi.n	1a0064a8 <_fclose_r+0xbc>
1a00642e:	6b21      	ldr	r1, [r4, #48]	; 0x30
1a006430:	b141      	cbz	r1, 1a006444 <_fclose_r+0x58>
1a006432:	f104 0340 	add.w	r3, r4, #64	; 0x40
1a006436:	4299      	cmp	r1, r3
1a006438:	d002      	beq.n	1a006440 <_fclose_r+0x54>
1a00643a:	4628      	mov	r0, r5
1a00643c:	f7fe fed0 	bl	1a0051e0 <_free_r>
1a006440:	2300      	movs	r3, #0
1a006442:	6323      	str	r3, [r4, #48]	; 0x30
1a006444:	6c61      	ldr	r1, [r4, #68]	; 0x44
1a006446:	b121      	cbz	r1, 1a006452 <_fclose_r+0x66>
1a006448:	4628      	mov	r0, r5
1a00644a:	f7fe fec9 	bl	1a0051e0 <_free_r>
1a00644e:	2300      	movs	r3, #0
1a006450:	6463      	str	r3, [r4, #68]	; 0x44
1a006452:	f7fe fe69 	bl	1a005128 <__sfp_lock_acquire>
1a006456:	6e63      	ldr	r3, [r4, #100]	; 0x64
1a006458:	2200      	movs	r2, #0
1a00645a:	07db      	lsls	r3, r3, #31
1a00645c:	81a2      	strh	r2, [r4, #12]
1a00645e:	d51f      	bpl.n	1a0064a0 <_fclose_r+0xb4>
1a006460:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a006462:	f7f9 ff99 	bl	1a000398 <__retarget_lock_close_recursive>
1a006466:	f7fe fe65 	bl	1a005134 <__sfp_lock_release>
1a00646a:	4630      	mov	r0, r6
1a00646c:	bd70      	pop	{r4, r5, r6, pc}
1a00646e:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a006470:	f7f9 ff94 	bl	1a00039c <__retarget_lock_acquire_recursive>
1a006474:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a006478:	2b00      	cmp	r3, #0
1a00647a:	d1c7      	bne.n	1a00640c <_fclose_r+0x20>
1a00647c:	6e66      	ldr	r6, [r4, #100]	; 0x64
1a00647e:	f016 0601 	ands.w	r6, r6, #1
1a006482:	d016      	beq.n	1a0064b2 <_fclose_r+0xc6>
1a006484:	2600      	movs	r6, #0
1a006486:	4630      	mov	r0, r6
1a006488:	bd70      	pop	{r4, r5, r6, pc}
1a00648a:	2b00      	cmp	r3, #0
1a00648c:	d0fa      	beq.n	1a006484 <_fclose_r+0x98>
1a00648e:	e7bd      	b.n	1a00640c <_fclose_r+0x20>
1a006490:	f7fe fe1e 	bl	1a0050d0 <__sinit>
1a006494:	6e62      	ldr	r2, [r4, #100]	; 0x64
1a006496:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a00649a:	07d0      	lsls	r0, r2, #31
1a00649c:	d4f5      	bmi.n	1a00648a <_fclose_r+0x9e>
1a00649e:	e7b3      	b.n	1a006408 <_fclose_r+0x1c>
1a0064a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a0064a2:	f7f9 ff7d 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a0064a6:	e7db      	b.n	1a006460 <_fclose_r+0x74>
1a0064a8:	6921      	ldr	r1, [r4, #16]
1a0064aa:	4628      	mov	r0, r5
1a0064ac:	f7fe fe98 	bl	1a0051e0 <_free_r>
1a0064b0:	e7bd      	b.n	1a00642e <_fclose_r+0x42>
1a0064b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a0064b4:	f7f9 ff74 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a0064b8:	4630      	mov	r0, r6
1a0064ba:	bd70      	pop	{r4, r5, r6, pc}

1a0064bc <__fputwc>:
1a0064bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
1a0064c0:	b082      	sub	sp, #8
1a0064c2:	4681      	mov	r9, r0
1a0064c4:	4688      	mov	r8, r1
1a0064c6:	4614      	mov	r4, r2
1a0064c8:	f000 fa1e 	bl	1a006908 <__locale_mb_cur_max>
1a0064cc:	2801      	cmp	r0, #1
1a0064ce:	d103      	bne.n	1a0064d8 <__fputwc+0x1c>
1a0064d0:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
1a0064d4:	2bfe      	cmp	r3, #254	; 0xfe
1a0064d6:	d933      	bls.n	1a006540 <__fputwc+0x84>
1a0064d8:	4642      	mov	r2, r8
1a0064da:	f104 035c 	add.w	r3, r4, #92	; 0x5c
1a0064de:	a901      	add	r1, sp, #4
1a0064e0:	4648      	mov	r0, r9
1a0064e2:	f000 fccb 	bl	1a006e7c <_wcrtomb_r>
1a0064e6:	1c42      	adds	r2, r0, #1
1a0064e8:	4606      	mov	r6, r0
1a0064ea:	d02f      	beq.n	1a00654c <__fputwc+0x90>
1a0064ec:	b320      	cbz	r0, 1a006538 <__fputwc+0x7c>
1a0064ee:	f89d c004 	ldrb.w	ip, [sp, #4]
1a0064f2:	2500      	movs	r5, #0
1a0064f4:	f10d 0a04 	add.w	sl, sp, #4
1a0064f8:	e009      	b.n	1a00650e <__fputwc+0x52>
1a0064fa:	6823      	ldr	r3, [r4, #0]
1a0064fc:	1c5a      	adds	r2, r3, #1
1a0064fe:	6022      	str	r2, [r4, #0]
1a006500:	f883 c000 	strb.w	ip, [r3]
1a006504:	3501      	adds	r5, #1
1a006506:	42b5      	cmp	r5, r6
1a006508:	d216      	bcs.n	1a006538 <__fputwc+0x7c>
1a00650a:	f815 c00a 	ldrb.w	ip, [r5, sl]
1a00650e:	68a3      	ldr	r3, [r4, #8]
1a006510:	3b01      	subs	r3, #1
1a006512:	2b00      	cmp	r3, #0
1a006514:	60a3      	str	r3, [r4, #8]
1a006516:	daf0      	bge.n	1a0064fa <__fputwc+0x3e>
1a006518:	69a7      	ldr	r7, [r4, #24]
1a00651a:	42bb      	cmp	r3, r7
1a00651c:	4661      	mov	r1, ip
1a00651e:	4622      	mov	r2, r4
1a006520:	4648      	mov	r0, r9
1a006522:	db02      	blt.n	1a00652a <__fputwc+0x6e>
1a006524:	f1bc 0f0a 	cmp.w	ip, #10
1a006528:	d1e7      	bne.n	1a0064fa <__fputwc+0x3e>
1a00652a:	f000 fc4f 	bl	1a006dcc <__swbuf_r>
1a00652e:	1c43      	adds	r3, r0, #1
1a006530:	d1e8      	bne.n	1a006504 <__fputwc+0x48>
1a006532:	b002      	add	sp, #8
1a006534:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a006538:	4640      	mov	r0, r8
1a00653a:	b002      	add	sp, #8
1a00653c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a006540:	fa5f fc88 	uxtb.w	ip, r8
1a006544:	4606      	mov	r6, r0
1a006546:	f88d c004 	strb.w	ip, [sp, #4]
1a00654a:	e7d2      	b.n	1a0064f2 <__fputwc+0x36>
1a00654c:	89a3      	ldrh	r3, [r4, #12]
1a00654e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a006552:	81a3      	strh	r3, [r4, #12]
1a006554:	b002      	add	sp, #8
1a006556:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a00655a:	bf00      	nop

1a00655c <_fputwc_r>:
1a00655c:	b530      	push	{r4, r5, lr}
1a00655e:	4605      	mov	r5, r0
1a006560:	6e50      	ldr	r0, [r2, #100]	; 0x64
1a006562:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
1a006566:	07c0      	lsls	r0, r0, #31
1a006568:	4614      	mov	r4, r2
1a00656a:	b083      	sub	sp, #12
1a00656c:	b29a      	uxth	r2, r3
1a00656e:	d401      	bmi.n	1a006574 <_fputwc_r+0x18>
1a006570:	0590      	lsls	r0, r2, #22
1a006572:	d51c      	bpl.n	1a0065ae <_fputwc_r+0x52>
1a006574:	0490      	lsls	r0, r2, #18
1a006576:	d406      	bmi.n	1a006586 <_fputwc_r+0x2a>
1a006578:	6e62      	ldr	r2, [r4, #100]	; 0x64
1a00657a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
1a00657e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
1a006582:	81a3      	strh	r3, [r4, #12]
1a006584:	6662      	str	r2, [r4, #100]	; 0x64
1a006586:	4628      	mov	r0, r5
1a006588:	4622      	mov	r2, r4
1a00658a:	f7ff ff97 	bl	1a0064bc <__fputwc>
1a00658e:	6e63      	ldr	r3, [r4, #100]	; 0x64
1a006590:	07da      	lsls	r2, r3, #31
1a006592:	4605      	mov	r5, r0
1a006594:	d402      	bmi.n	1a00659c <_fputwc_r+0x40>
1a006596:	89a3      	ldrh	r3, [r4, #12]
1a006598:	059b      	lsls	r3, r3, #22
1a00659a:	d502      	bpl.n	1a0065a2 <_fputwc_r+0x46>
1a00659c:	4628      	mov	r0, r5
1a00659e:	b003      	add	sp, #12
1a0065a0:	bd30      	pop	{r4, r5, pc}
1a0065a2:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a0065a4:	f7f9 fefc 	bl	1a0003a0 <__retarget_lock_release_recursive>
1a0065a8:	4628      	mov	r0, r5
1a0065aa:	b003      	add	sp, #12
1a0065ac:	bd30      	pop	{r4, r5, pc}
1a0065ae:	6da0      	ldr	r0, [r4, #88]	; 0x58
1a0065b0:	9101      	str	r1, [sp, #4]
1a0065b2:	f7f9 fef3 	bl	1a00039c <__retarget_lock_acquire_recursive>
1a0065b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a0065ba:	9901      	ldr	r1, [sp, #4]
1a0065bc:	b29a      	uxth	r2, r3
1a0065be:	e7d9      	b.n	1a006574 <_fputwc_r+0x18>

1a0065c0 <_fstat_r>:
1a0065c0:	b538      	push	{r3, r4, r5, lr}
1a0065c2:	460b      	mov	r3, r1
1a0065c4:	4c07      	ldr	r4, [pc, #28]	; (1a0065e4 <_fstat_r+0x24>)
1a0065c6:	4605      	mov	r5, r0
1a0065c8:	4611      	mov	r1, r2
1a0065ca:	4618      	mov	r0, r3
1a0065cc:	2300      	movs	r3, #0
1a0065ce:	6023      	str	r3, [r4, #0]
1a0065d0:	f7f9 ff58 	bl	1a000484 <_fstat>
1a0065d4:	1c43      	adds	r3, r0, #1
1a0065d6:	d000      	beq.n	1a0065da <_fstat_r+0x1a>
1a0065d8:	bd38      	pop	{r3, r4, r5, pc}
1a0065da:	6823      	ldr	r3, [r4, #0]
1a0065dc:	2b00      	cmp	r3, #0
1a0065de:	d0fb      	beq.n	1a0065d8 <_fstat_r+0x18>
1a0065e0:	602b      	str	r3, [r5, #0]
1a0065e2:	bd38      	pop	{r3, r4, r5, pc}
1a0065e4:	10000a4c 	.word	0x10000a4c

1a0065e8 <__sfvwrite_r>:
1a0065e8:	6893      	ldr	r3, [r2, #8]
1a0065ea:	2b00      	cmp	r3, #0
1a0065ec:	f000 80e4 	beq.w	1a0067b8 <__sfvwrite_r+0x1d0>
1a0065f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a0065f4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
1a0065f8:	b29b      	uxth	r3, r3
1a0065fa:	460c      	mov	r4, r1
1a0065fc:	0719      	lsls	r1, r3, #28
1a0065fe:	b083      	sub	sp, #12
1a006600:	4682      	mov	sl, r0
1a006602:	4690      	mov	r8, r2
1a006604:	d535      	bpl.n	1a006672 <__sfvwrite_r+0x8a>
1a006606:	6922      	ldr	r2, [r4, #16]
1a006608:	b39a      	cbz	r2, 1a006672 <__sfvwrite_r+0x8a>
1a00660a:	f013 0202 	ands.w	r2, r3, #2
1a00660e:	f8d8 6000 	ldr.w	r6, [r8]
1a006612:	d03d      	beq.n	1a006690 <__sfvwrite_r+0xa8>
1a006614:	2700      	movs	r7, #0
1a006616:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
1a00661a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
1a00661e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 1a0068e0 <__sfvwrite_r+0x2f8>
1a006622:	463d      	mov	r5, r7
1a006624:	454d      	cmp	r5, r9
1a006626:	462b      	mov	r3, r5
1a006628:	463a      	mov	r2, r7
1a00662a:	bf28      	it	cs
1a00662c:	464b      	movcs	r3, r9
1a00662e:	4661      	mov	r1, ip
1a006630:	4650      	mov	r0, sl
1a006632:	b1d5      	cbz	r5, 1a00666a <__sfvwrite_r+0x82>
1a006634:	47d8      	blx	fp
1a006636:	2800      	cmp	r0, #0
1a006638:	f340 80c6 	ble.w	1a0067c8 <__sfvwrite_r+0x1e0>
1a00663c:	f8d8 3008 	ldr.w	r3, [r8, #8]
1a006640:	1a1b      	subs	r3, r3, r0
1a006642:	4407      	add	r7, r0
1a006644:	1a2d      	subs	r5, r5, r0
1a006646:	f8c8 3008 	str.w	r3, [r8, #8]
1a00664a:	2b00      	cmp	r3, #0
1a00664c:	f000 80b0 	beq.w	1a0067b0 <__sfvwrite_r+0x1c8>
1a006650:	f8d4 c01c 	ldr.w	ip, [r4, #28]
1a006654:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
1a006658:	454d      	cmp	r5, r9
1a00665a:	462b      	mov	r3, r5
1a00665c:	463a      	mov	r2, r7
1a00665e:	bf28      	it	cs
1a006660:	464b      	movcs	r3, r9
1a006662:	4661      	mov	r1, ip
1a006664:	4650      	mov	r0, sl
1a006666:	2d00      	cmp	r5, #0
1a006668:	d1e4      	bne.n	1a006634 <__sfvwrite_r+0x4c>
1a00666a:	e9d6 7500 	ldrd	r7, r5, [r6]
1a00666e:	3608      	adds	r6, #8
1a006670:	e7d8      	b.n	1a006624 <__sfvwrite_r+0x3c>
1a006672:	4621      	mov	r1, r4
1a006674:	4650      	mov	r0, sl
1a006676:	f7fd fc35 	bl	1a003ee4 <__swsetup_r>
1a00667a:	2800      	cmp	r0, #0
1a00667c:	f040 812a 	bne.w	1a0068d4 <__sfvwrite_r+0x2ec>
1a006680:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a006684:	f8d8 6000 	ldr.w	r6, [r8]
1a006688:	b29b      	uxth	r3, r3
1a00668a:	f013 0202 	ands.w	r2, r3, #2
1a00668e:	d1c1      	bne.n	1a006614 <__sfvwrite_r+0x2c>
1a006690:	f013 0901 	ands.w	r9, r3, #1
1a006694:	d15d      	bne.n	1a006752 <__sfvwrite_r+0x16a>
1a006696:	68a7      	ldr	r7, [r4, #8]
1a006698:	6820      	ldr	r0, [r4, #0]
1a00669a:	464d      	mov	r5, r9
1a00669c:	2d00      	cmp	r5, #0
1a00669e:	d054      	beq.n	1a00674a <__sfvwrite_r+0x162>
1a0066a0:	059a      	lsls	r2, r3, #22
1a0066a2:	f140 809b 	bpl.w	1a0067dc <__sfvwrite_r+0x1f4>
1a0066a6:	42af      	cmp	r7, r5
1a0066a8:	46bb      	mov	fp, r7
1a0066aa:	f200 80d8 	bhi.w	1a00685e <__sfvwrite_r+0x276>
1a0066ae:	f413 6f90 	tst.w	r3, #1152	; 0x480
1a0066b2:	d02f      	beq.n	1a006714 <__sfvwrite_r+0x12c>
1a0066b4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
1a0066b8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
1a0066bc:	eba0 0b01 	sub.w	fp, r0, r1
1a0066c0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
1a0066c4:	1c68      	adds	r0, r5, #1
1a0066c6:	107f      	asrs	r7, r7, #1
1a0066c8:	4458      	add	r0, fp
1a0066ca:	42b8      	cmp	r0, r7
1a0066cc:	463a      	mov	r2, r7
1a0066ce:	bf84      	itt	hi
1a0066d0:	4607      	movhi	r7, r0
1a0066d2:	463a      	movhi	r2, r7
1a0066d4:	055b      	lsls	r3, r3, #21
1a0066d6:	f140 80d3 	bpl.w	1a006880 <__sfvwrite_r+0x298>
1a0066da:	4611      	mov	r1, r2
1a0066dc:	4650      	mov	r0, sl
1a0066de:	f7fe ff23 	bl	1a005528 <_malloc_r>
1a0066e2:	2800      	cmp	r0, #0
1a0066e4:	f000 80f0 	beq.w	1a0068c8 <__sfvwrite_r+0x2e0>
1a0066e8:	465a      	mov	r2, fp
1a0066ea:	6921      	ldr	r1, [r4, #16]
1a0066ec:	9001      	str	r0, [sp, #4]
1a0066ee:	f7fb fcf1 	bl	1a0020d4 <memcpy>
1a0066f2:	89a2      	ldrh	r2, [r4, #12]
1a0066f4:	9b01      	ldr	r3, [sp, #4]
1a0066f6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
1a0066fa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
1a0066fe:	81a2      	strh	r2, [r4, #12]
1a006700:	eba7 020b 	sub.w	r2, r7, fp
1a006704:	eb03 000b 	add.w	r0, r3, fp
1a006708:	6167      	str	r7, [r4, #20]
1a00670a:	6123      	str	r3, [r4, #16]
1a00670c:	6020      	str	r0, [r4, #0]
1a00670e:	60a2      	str	r2, [r4, #8]
1a006710:	462f      	mov	r7, r5
1a006712:	46ab      	mov	fp, r5
1a006714:	465a      	mov	r2, fp
1a006716:	4649      	mov	r1, r9
1a006718:	f000 f930 	bl	1a00697c <memmove>
1a00671c:	68a2      	ldr	r2, [r4, #8]
1a00671e:	6823      	ldr	r3, [r4, #0]
1a006720:	1bd2      	subs	r2, r2, r7
1a006722:	445b      	add	r3, fp
1a006724:	462f      	mov	r7, r5
1a006726:	60a2      	str	r2, [r4, #8]
1a006728:	6023      	str	r3, [r4, #0]
1a00672a:	2500      	movs	r5, #0
1a00672c:	f8d8 3008 	ldr.w	r3, [r8, #8]
1a006730:	1bdb      	subs	r3, r3, r7
1a006732:	44b9      	add	r9, r7
1a006734:	f8c8 3008 	str.w	r3, [r8, #8]
1a006738:	2b00      	cmp	r3, #0
1a00673a:	d039      	beq.n	1a0067b0 <__sfvwrite_r+0x1c8>
1a00673c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a006740:	68a7      	ldr	r7, [r4, #8]
1a006742:	6820      	ldr	r0, [r4, #0]
1a006744:	b29b      	uxth	r3, r3
1a006746:	2d00      	cmp	r5, #0
1a006748:	d1aa      	bne.n	1a0066a0 <__sfvwrite_r+0xb8>
1a00674a:	e9d6 9500 	ldrd	r9, r5, [r6]
1a00674e:	3608      	adds	r6, #8
1a006750:	e7a4      	b.n	1a00669c <__sfvwrite_r+0xb4>
1a006752:	4633      	mov	r3, r6
1a006754:	4691      	mov	r9, r2
1a006756:	4610      	mov	r0, r2
1a006758:	4617      	mov	r7, r2
1a00675a:	464e      	mov	r6, r9
1a00675c:	469b      	mov	fp, r3
1a00675e:	2f00      	cmp	r7, #0
1a006760:	d06b      	beq.n	1a00683a <__sfvwrite_r+0x252>
1a006762:	2800      	cmp	r0, #0
1a006764:	d071      	beq.n	1a00684a <__sfvwrite_r+0x262>
1a006766:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
1a00676a:	6820      	ldr	r0, [r4, #0]
1a00676c:	45b9      	cmp	r9, r7
1a00676e:	464b      	mov	r3, r9
1a006770:	bf28      	it	cs
1a006772:	463b      	movcs	r3, r7
1a006774:	4288      	cmp	r0, r1
1a006776:	d903      	bls.n	1a006780 <__sfvwrite_r+0x198>
1a006778:	68a5      	ldr	r5, [r4, #8]
1a00677a:	4415      	add	r5, r2
1a00677c:	42ab      	cmp	r3, r5
1a00677e:	dc71      	bgt.n	1a006864 <__sfvwrite_r+0x27c>
1a006780:	429a      	cmp	r2, r3
1a006782:	f300 8093 	bgt.w	1a0068ac <__sfvwrite_r+0x2c4>
1a006786:	4613      	mov	r3, r2
1a006788:	6a65      	ldr	r5, [r4, #36]	; 0x24
1a00678a:	69e1      	ldr	r1, [r4, #28]
1a00678c:	4632      	mov	r2, r6
1a00678e:	4650      	mov	r0, sl
1a006790:	47a8      	blx	r5
1a006792:	1e05      	subs	r5, r0, #0
1a006794:	dd18      	ble.n	1a0067c8 <__sfvwrite_r+0x1e0>
1a006796:	ebb9 0905 	subs.w	r9, r9, r5
1a00679a:	d00f      	beq.n	1a0067bc <__sfvwrite_r+0x1d4>
1a00679c:	2001      	movs	r0, #1
1a00679e:	f8d8 3008 	ldr.w	r3, [r8, #8]
1a0067a2:	1b5b      	subs	r3, r3, r5
1a0067a4:	442e      	add	r6, r5
1a0067a6:	1b7f      	subs	r7, r7, r5
1a0067a8:	f8c8 3008 	str.w	r3, [r8, #8]
1a0067ac:	2b00      	cmp	r3, #0
1a0067ae:	d1d6      	bne.n	1a00675e <__sfvwrite_r+0x176>
1a0067b0:	2000      	movs	r0, #0
1a0067b2:	b003      	add	sp, #12
1a0067b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0067b8:	2000      	movs	r0, #0
1a0067ba:	4770      	bx	lr
1a0067bc:	4621      	mov	r1, r4
1a0067be:	4650      	mov	r0, sl
1a0067c0:	f7fe fc2a 	bl	1a005018 <_fflush_r>
1a0067c4:	2800      	cmp	r0, #0
1a0067c6:	d0ea      	beq.n	1a00679e <__sfvwrite_r+0x1b6>
1a0067c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a0067cc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
1a0067d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a0067d4:	81a3      	strh	r3, [r4, #12]
1a0067d6:	b003      	add	sp, #12
1a0067d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0067dc:	6923      	ldr	r3, [r4, #16]
1a0067de:	4283      	cmp	r3, r0
1a0067e0:	d315      	bcc.n	1a00680e <__sfvwrite_r+0x226>
1a0067e2:	6961      	ldr	r1, [r4, #20]
1a0067e4:	42a9      	cmp	r1, r5
1a0067e6:	d812      	bhi.n	1a00680e <__sfvwrite_r+0x226>
1a0067e8:	4b3c      	ldr	r3, [pc, #240]	; (1a0068dc <__sfvwrite_r+0x2f4>)
1a0067ea:	6a67      	ldr	r7, [r4, #36]	; 0x24
1a0067ec:	429d      	cmp	r5, r3
1a0067ee:	bf94      	ite	ls
1a0067f0:	462b      	movls	r3, r5
1a0067f2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
1a0067f6:	464a      	mov	r2, r9
1a0067f8:	fb93 f3f1 	sdiv	r3, r3, r1
1a0067fc:	4650      	mov	r0, sl
1a0067fe:	fb01 f303 	mul.w	r3, r1, r3
1a006802:	69e1      	ldr	r1, [r4, #28]
1a006804:	47b8      	blx	r7
1a006806:	1e07      	subs	r7, r0, #0
1a006808:	ddde      	ble.n	1a0067c8 <__sfvwrite_r+0x1e0>
1a00680a:	1bed      	subs	r5, r5, r7
1a00680c:	e78e      	b.n	1a00672c <__sfvwrite_r+0x144>
1a00680e:	42af      	cmp	r7, r5
1a006810:	bf28      	it	cs
1a006812:	462f      	movcs	r7, r5
1a006814:	463a      	mov	r2, r7
1a006816:	4649      	mov	r1, r9
1a006818:	f000 f8b0 	bl	1a00697c <memmove>
1a00681c:	68a3      	ldr	r3, [r4, #8]
1a00681e:	6822      	ldr	r2, [r4, #0]
1a006820:	1bdb      	subs	r3, r3, r7
1a006822:	443a      	add	r2, r7
1a006824:	60a3      	str	r3, [r4, #8]
1a006826:	6022      	str	r2, [r4, #0]
1a006828:	2b00      	cmp	r3, #0
1a00682a:	d1ee      	bne.n	1a00680a <__sfvwrite_r+0x222>
1a00682c:	4621      	mov	r1, r4
1a00682e:	4650      	mov	r0, sl
1a006830:	f7fe fbf2 	bl	1a005018 <_fflush_r>
1a006834:	2800      	cmp	r0, #0
1a006836:	d0e8      	beq.n	1a00680a <__sfvwrite_r+0x222>
1a006838:	e7c6      	b.n	1a0067c8 <__sfvwrite_r+0x1e0>
1a00683a:	f10b 0308 	add.w	r3, fp, #8
1a00683e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
1a006842:	469b      	mov	fp, r3
1a006844:	3308      	adds	r3, #8
1a006846:	2f00      	cmp	r7, #0
1a006848:	d0f9      	beq.n	1a00683e <__sfvwrite_r+0x256>
1a00684a:	463a      	mov	r2, r7
1a00684c:	210a      	movs	r1, #10
1a00684e:	4630      	mov	r0, r6
1a006850:	f7ff f90e 	bl	1a005a70 <memchr>
1a006854:	b338      	cbz	r0, 1a0068a6 <__sfvwrite_r+0x2be>
1a006856:	3001      	adds	r0, #1
1a006858:	eba0 0906 	sub.w	r9, r0, r6
1a00685c:	e783      	b.n	1a006766 <__sfvwrite_r+0x17e>
1a00685e:	462f      	mov	r7, r5
1a006860:	46ab      	mov	fp, r5
1a006862:	e757      	b.n	1a006714 <__sfvwrite_r+0x12c>
1a006864:	4631      	mov	r1, r6
1a006866:	462a      	mov	r2, r5
1a006868:	f000 f888 	bl	1a00697c <memmove>
1a00686c:	6823      	ldr	r3, [r4, #0]
1a00686e:	442b      	add	r3, r5
1a006870:	6023      	str	r3, [r4, #0]
1a006872:	4621      	mov	r1, r4
1a006874:	4650      	mov	r0, sl
1a006876:	f7fe fbcf 	bl	1a005018 <_fflush_r>
1a00687a:	2800      	cmp	r0, #0
1a00687c:	d08b      	beq.n	1a006796 <__sfvwrite_r+0x1ae>
1a00687e:	e7a3      	b.n	1a0067c8 <__sfvwrite_r+0x1e0>
1a006880:	4650      	mov	r0, sl
1a006882:	f000 f8f5 	bl	1a006a70 <_realloc_r>
1a006886:	4603      	mov	r3, r0
1a006888:	2800      	cmp	r0, #0
1a00688a:	f47f af39 	bne.w	1a006700 <__sfvwrite_r+0x118>
1a00688e:	6921      	ldr	r1, [r4, #16]
1a006890:	4650      	mov	r0, sl
1a006892:	f7fe fca5 	bl	1a0051e0 <_free_r>
1a006896:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a00689a:	220c      	movs	r2, #12
1a00689c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0068a0:	f8ca 2000 	str.w	r2, [sl]
1a0068a4:	e792      	b.n	1a0067cc <__sfvwrite_r+0x1e4>
1a0068a6:	f107 0901 	add.w	r9, r7, #1
1a0068aa:	e75c      	b.n	1a006766 <__sfvwrite_r+0x17e>
1a0068ac:	461a      	mov	r2, r3
1a0068ae:	4631      	mov	r1, r6
1a0068b0:	9301      	str	r3, [sp, #4]
1a0068b2:	f000 f863 	bl	1a00697c <memmove>
1a0068b6:	9b01      	ldr	r3, [sp, #4]
1a0068b8:	68a1      	ldr	r1, [r4, #8]
1a0068ba:	6822      	ldr	r2, [r4, #0]
1a0068bc:	1ac9      	subs	r1, r1, r3
1a0068be:	441a      	add	r2, r3
1a0068c0:	60a1      	str	r1, [r4, #8]
1a0068c2:	6022      	str	r2, [r4, #0]
1a0068c4:	461d      	mov	r5, r3
1a0068c6:	e766      	b.n	1a006796 <__sfvwrite_r+0x1ae>
1a0068c8:	230c      	movs	r3, #12
1a0068ca:	f8ca 3000 	str.w	r3, [sl]
1a0068ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1a0068d2:	e77b      	b.n	1a0067cc <__sfvwrite_r+0x1e4>
1a0068d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a0068d8:	e76b      	b.n	1a0067b2 <__sfvwrite_r+0x1ca>
1a0068da:	bf00      	nop
1a0068dc:	7ffffffe 	.word	0x7ffffffe
1a0068e0:	7ffffc00 	.word	0x7ffffc00

1a0068e4 <_isatty_r>:
1a0068e4:	b538      	push	{r3, r4, r5, lr}
1a0068e6:	4c07      	ldr	r4, [pc, #28]	; (1a006904 <_isatty_r+0x20>)
1a0068e8:	2300      	movs	r3, #0
1a0068ea:	4605      	mov	r5, r0
1a0068ec:	4608      	mov	r0, r1
1a0068ee:	6023      	str	r3, [r4, #0]
1a0068f0:	f7f9 fdd8 	bl	1a0004a4 <_isatty>
1a0068f4:	1c43      	adds	r3, r0, #1
1a0068f6:	d000      	beq.n	1a0068fa <_isatty_r+0x16>
1a0068f8:	bd38      	pop	{r3, r4, r5, pc}
1a0068fa:	6823      	ldr	r3, [r4, #0]
1a0068fc:	2b00      	cmp	r3, #0
1a0068fe:	d0fb      	beq.n	1a0068f8 <_isatty_r+0x14>
1a006900:	602b      	str	r3, [r5, #0]
1a006902:	bd38      	pop	{r3, r4, r5, pc}
1a006904:	10000a4c 	.word	0x10000a4c

1a006908 <__locale_mb_cur_max>:
1a006908:	4b04      	ldr	r3, [pc, #16]	; (1a00691c <__locale_mb_cur_max+0x14>)
1a00690a:	4a05      	ldr	r2, [pc, #20]	; (1a006920 <__locale_mb_cur_max+0x18>)
1a00690c:	681b      	ldr	r3, [r3, #0]
1a00690e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
1a006910:	2b00      	cmp	r3, #0
1a006912:	bf08      	it	eq
1a006914:	4613      	moveq	r3, r2
1a006916:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
1a00691a:	4770      	bx	lr
1a00691c:	10000000 	.word	0x10000000
1a006920:	10000844 	.word	0x10000844

1a006924 <_lseek_r>:
1a006924:	b570      	push	{r4, r5, r6, lr}
1a006926:	460d      	mov	r5, r1
1a006928:	4c08      	ldr	r4, [pc, #32]	; (1a00694c <_lseek_r+0x28>)
1a00692a:	4611      	mov	r1, r2
1a00692c:	4606      	mov	r6, r0
1a00692e:	461a      	mov	r2, r3
1a006930:	4628      	mov	r0, r5
1a006932:	2300      	movs	r3, #0
1a006934:	6023      	str	r3, [r4, #0]
1a006936:	f7f9 fdc0 	bl	1a0004ba <_lseek>
1a00693a:	1c43      	adds	r3, r0, #1
1a00693c:	d000      	beq.n	1a006940 <_lseek_r+0x1c>
1a00693e:	bd70      	pop	{r4, r5, r6, pc}
1a006940:	6823      	ldr	r3, [r4, #0]
1a006942:	2b00      	cmp	r3, #0
1a006944:	d0fb      	beq.n	1a00693e <_lseek_r+0x1a>
1a006946:	6033      	str	r3, [r6, #0]
1a006948:	bd70      	pop	{r4, r5, r6, pc}
1a00694a:	bf00      	nop
1a00694c:	10000a4c 	.word	0x10000a4c

1a006950 <__ascii_mbtowc>:
1a006950:	b082      	sub	sp, #8
1a006952:	b149      	cbz	r1, 1a006968 <__ascii_mbtowc+0x18>
1a006954:	b15a      	cbz	r2, 1a00696e <__ascii_mbtowc+0x1e>
1a006956:	b16b      	cbz	r3, 1a006974 <__ascii_mbtowc+0x24>
1a006958:	7813      	ldrb	r3, [r2, #0]
1a00695a:	600b      	str	r3, [r1, #0]
1a00695c:	7812      	ldrb	r2, [r2, #0]
1a00695e:	1c10      	adds	r0, r2, #0
1a006960:	bf18      	it	ne
1a006962:	2001      	movne	r0, #1
1a006964:	b002      	add	sp, #8
1a006966:	4770      	bx	lr
1a006968:	a901      	add	r1, sp, #4
1a00696a:	2a00      	cmp	r2, #0
1a00696c:	d1f3      	bne.n	1a006956 <__ascii_mbtowc+0x6>
1a00696e:	4610      	mov	r0, r2
1a006970:	b002      	add	sp, #8
1a006972:	4770      	bx	lr
1a006974:	f06f 0001 	mvn.w	r0, #1
1a006978:	e7f4      	b.n	1a006964 <__ascii_mbtowc+0x14>
1a00697a:	bf00      	nop

1a00697c <memmove>:
1a00697c:	4288      	cmp	r0, r1
1a00697e:	b4f0      	push	{r4, r5, r6, r7}
1a006980:	d90d      	bls.n	1a00699e <memmove+0x22>
1a006982:	188b      	adds	r3, r1, r2
1a006984:	4283      	cmp	r3, r0
1a006986:	d90a      	bls.n	1a00699e <memmove+0x22>
1a006988:	1884      	adds	r4, r0, r2
1a00698a:	b132      	cbz	r2, 1a00699a <memmove+0x1e>
1a00698c:	4622      	mov	r2, r4
1a00698e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
1a006992:	f802 4d01 	strb.w	r4, [r2, #-1]!
1a006996:	4299      	cmp	r1, r3
1a006998:	d1f9      	bne.n	1a00698e <memmove+0x12>
1a00699a:	bcf0      	pop	{r4, r5, r6, r7}
1a00699c:	4770      	bx	lr
1a00699e:	2a0f      	cmp	r2, #15
1a0069a0:	d949      	bls.n	1a006a36 <memmove+0xba>
1a0069a2:	ea40 0301 	orr.w	r3, r0, r1
1a0069a6:	079b      	lsls	r3, r3, #30
1a0069a8:	d147      	bne.n	1a006a3a <memmove+0xbe>
1a0069aa:	f1a2 0310 	sub.w	r3, r2, #16
1a0069ae:	091b      	lsrs	r3, r3, #4
1a0069b0:	f101 0720 	add.w	r7, r1, #32
1a0069b4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
1a0069b8:	f101 0410 	add.w	r4, r1, #16
1a0069bc:	f100 0510 	add.w	r5, r0, #16
1a0069c0:	f854 6c10 	ldr.w	r6, [r4, #-16]
1a0069c4:	f845 6c10 	str.w	r6, [r5, #-16]
1a0069c8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
1a0069cc:	f845 6c0c 	str.w	r6, [r5, #-12]
1a0069d0:	f854 6c08 	ldr.w	r6, [r4, #-8]
1a0069d4:	f845 6c08 	str.w	r6, [r5, #-8]
1a0069d8:	f854 6c04 	ldr.w	r6, [r4, #-4]
1a0069dc:	f845 6c04 	str.w	r6, [r5, #-4]
1a0069e0:	3410      	adds	r4, #16
1a0069e2:	42bc      	cmp	r4, r7
1a0069e4:	f105 0510 	add.w	r5, r5, #16
1a0069e8:	d1ea      	bne.n	1a0069c0 <memmove+0x44>
1a0069ea:	3301      	adds	r3, #1
1a0069ec:	f002 050f 	and.w	r5, r2, #15
1a0069f0:	011b      	lsls	r3, r3, #4
1a0069f2:	2d03      	cmp	r5, #3
1a0069f4:	4419      	add	r1, r3
1a0069f6:	4403      	add	r3, r0
1a0069f8:	d921      	bls.n	1a006a3e <memmove+0xc2>
1a0069fa:	1f1f      	subs	r7, r3, #4
1a0069fc:	460e      	mov	r6, r1
1a0069fe:	462c      	mov	r4, r5
1a006a00:	3c04      	subs	r4, #4
1a006a02:	f856 cb04 	ldr.w	ip, [r6], #4
1a006a06:	f847 cf04 	str.w	ip, [r7, #4]!
1a006a0a:	2c03      	cmp	r4, #3
1a006a0c:	d8f8      	bhi.n	1a006a00 <memmove+0x84>
1a006a0e:	1f2c      	subs	r4, r5, #4
1a006a10:	f024 0403 	bic.w	r4, r4, #3
1a006a14:	3404      	adds	r4, #4
1a006a16:	4423      	add	r3, r4
1a006a18:	4421      	add	r1, r4
1a006a1a:	f002 0203 	and.w	r2, r2, #3
1a006a1e:	2a00      	cmp	r2, #0
1a006a20:	d0bb      	beq.n	1a00699a <memmove+0x1e>
1a006a22:	3b01      	subs	r3, #1
1a006a24:	440a      	add	r2, r1
1a006a26:	f811 4b01 	ldrb.w	r4, [r1], #1
1a006a2a:	f803 4f01 	strb.w	r4, [r3, #1]!
1a006a2e:	4291      	cmp	r1, r2
1a006a30:	d1f9      	bne.n	1a006a26 <memmove+0xaa>
1a006a32:	bcf0      	pop	{r4, r5, r6, r7}
1a006a34:	4770      	bx	lr
1a006a36:	4603      	mov	r3, r0
1a006a38:	e7f1      	b.n	1a006a1e <memmove+0xa2>
1a006a3a:	4603      	mov	r3, r0
1a006a3c:	e7f1      	b.n	1a006a22 <memmove+0xa6>
1a006a3e:	462a      	mov	r2, r5
1a006a40:	e7ed      	b.n	1a006a1e <memmove+0xa2>
1a006a42:	bf00      	nop

1a006a44 <_read_r>:
1a006a44:	b570      	push	{r4, r5, r6, lr}
1a006a46:	460d      	mov	r5, r1
1a006a48:	4c08      	ldr	r4, [pc, #32]	; (1a006a6c <_read_r+0x28>)
1a006a4a:	4611      	mov	r1, r2
1a006a4c:	4606      	mov	r6, r0
1a006a4e:	461a      	mov	r2, r3
1a006a50:	4628      	mov	r0, r5
1a006a52:	2300      	movs	r3, #0
1a006a54:	6023      	str	r3, [r4, #0]
1a006a56:	f7f9 fd3d 	bl	1a0004d4 <_read>
1a006a5a:	1c43      	adds	r3, r0, #1
1a006a5c:	d000      	beq.n	1a006a60 <_read_r+0x1c>
1a006a5e:	bd70      	pop	{r4, r5, r6, pc}
1a006a60:	6823      	ldr	r3, [r4, #0]
1a006a62:	2b00      	cmp	r3, #0
1a006a64:	d0fb      	beq.n	1a006a5e <_read_r+0x1a>
1a006a66:	6033      	str	r3, [r6, #0]
1a006a68:	bd70      	pop	{r4, r5, r6, pc}
1a006a6a:	bf00      	nop
1a006a6c:	10000a4c 	.word	0x10000a4c

1a006a70 <_realloc_r>:
1a006a70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a006a74:	4692      	mov	sl, r2
1a006a76:	b083      	sub	sp, #12
1a006a78:	2900      	cmp	r1, #0
1a006a7a:	f000 80a1 	beq.w	1a006bc0 <_realloc_r+0x150>
1a006a7e:	460d      	mov	r5, r1
1a006a80:	4680      	mov	r8, r0
1a006a82:	f10a 040b 	add.w	r4, sl, #11
1a006a86:	f7ff f843 	bl	1a005b10 <__malloc_lock>
1a006a8a:	f855 2c04 	ldr.w	r2, [r5, #-4]
1a006a8e:	2c16      	cmp	r4, #22
1a006a90:	f022 0603 	bic.w	r6, r2, #3
1a006a94:	f1a5 0708 	sub.w	r7, r5, #8
1a006a98:	d83e      	bhi.n	1a006b18 <_realloc_r+0xa8>
1a006a9a:	2410      	movs	r4, #16
1a006a9c:	4621      	mov	r1, r4
1a006a9e:	45a2      	cmp	sl, r4
1a006aa0:	d83f      	bhi.n	1a006b22 <_realloc_r+0xb2>
1a006aa2:	428e      	cmp	r6, r1
1a006aa4:	eb07 0906 	add.w	r9, r7, r6
1a006aa8:	da74      	bge.n	1a006b94 <_realloc_r+0x124>
1a006aaa:	4bc7      	ldr	r3, [pc, #796]	; (1a006dc8 <_realloc_r+0x358>)
1a006aac:	6898      	ldr	r0, [r3, #8]
1a006aae:	4548      	cmp	r0, r9
1a006ab0:	f000 80aa 	beq.w	1a006c08 <_realloc_r+0x198>
1a006ab4:	f8d9 0004 	ldr.w	r0, [r9, #4]
1a006ab8:	f020 0301 	bic.w	r3, r0, #1
1a006abc:	444b      	add	r3, r9
1a006abe:	685b      	ldr	r3, [r3, #4]
1a006ac0:	07db      	lsls	r3, r3, #31
1a006ac2:	f140 8083 	bpl.w	1a006bcc <_realloc_r+0x15c>
1a006ac6:	07d2      	lsls	r2, r2, #31
1a006ac8:	d534      	bpl.n	1a006b34 <_realloc_r+0xc4>
1a006aca:	4651      	mov	r1, sl
1a006acc:	4640      	mov	r0, r8
1a006ace:	f7fe fd2b 	bl	1a005528 <_malloc_r>
1a006ad2:	4682      	mov	sl, r0
1a006ad4:	b1e0      	cbz	r0, 1a006b10 <_realloc_r+0xa0>
1a006ad6:	f855 3c04 	ldr.w	r3, [r5, #-4]
1a006ada:	f023 0301 	bic.w	r3, r3, #1
1a006ade:	443b      	add	r3, r7
1a006ae0:	f1a0 0208 	sub.w	r2, r0, #8
1a006ae4:	4293      	cmp	r3, r2
1a006ae6:	f000 80f9 	beq.w	1a006cdc <_realloc_r+0x26c>
1a006aea:	1f32      	subs	r2, r6, #4
1a006aec:	2a24      	cmp	r2, #36	; 0x24
1a006aee:	f200 8107 	bhi.w	1a006d00 <_realloc_r+0x290>
1a006af2:	2a13      	cmp	r2, #19
1a006af4:	6829      	ldr	r1, [r5, #0]
1a006af6:	f200 80e6 	bhi.w	1a006cc6 <_realloc_r+0x256>
1a006afa:	4603      	mov	r3, r0
1a006afc:	462a      	mov	r2, r5
1a006afe:	6019      	str	r1, [r3, #0]
1a006b00:	6851      	ldr	r1, [r2, #4]
1a006b02:	6059      	str	r1, [r3, #4]
1a006b04:	6892      	ldr	r2, [r2, #8]
1a006b06:	609a      	str	r2, [r3, #8]
1a006b08:	4629      	mov	r1, r5
1a006b0a:	4640      	mov	r0, r8
1a006b0c:	f7fe fb68 	bl	1a0051e0 <_free_r>
1a006b10:	4640      	mov	r0, r8
1a006b12:	f7ff f803 	bl	1a005b1c <__malloc_unlock>
1a006b16:	e04f      	b.n	1a006bb8 <_realloc_r+0x148>
1a006b18:	f024 0407 	bic.w	r4, r4, #7
1a006b1c:	2c00      	cmp	r4, #0
1a006b1e:	4621      	mov	r1, r4
1a006b20:	dabd      	bge.n	1a006a9e <_realloc_r+0x2e>
1a006b22:	f04f 0a00 	mov.w	sl, #0
1a006b26:	230c      	movs	r3, #12
1a006b28:	4650      	mov	r0, sl
1a006b2a:	f8c8 3000 	str.w	r3, [r8]
1a006b2e:	b003      	add	sp, #12
1a006b30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a006b34:	f855 3c08 	ldr.w	r3, [r5, #-8]
1a006b38:	eba7 0b03 	sub.w	fp, r7, r3
1a006b3c:	f8db 2004 	ldr.w	r2, [fp, #4]
1a006b40:	f022 0203 	bic.w	r2, r2, #3
1a006b44:	18b3      	adds	r3, r6, r2
1a006b46:	428b      	cmp	r3, r1
1a006b48:	dbbf      	blt.n	1a006aca <_realloc_r+0x5a>
1a006b4a:	46da      	mov	sl, fp
1a006b4c:	f8db 100c 	ldr.w	r1, [fp, #12]
1a006b50:	f85a 0f08 	ldr.w	r0, [sl, #8]!
1a006b54:	1f32      	subs	r2, r6, #4
1a006b56:	2a24      	cmp	r2, #36	; 0x24
1a006b58:	60c1      	str	r1, [r0, #12]
1a006b5a:	eb0b 0903 	add.w	r9, fp, r3
1a006b5e:	6088      	str	r0, [r1, #8]
1a006b60:	f200 80c6 	bhi.w	1a006cf0 <_realloc_r+0x280>
1a006b64:	2a13      	cmp	r2, #19
1a006b66:	6829      	ldr	r1, [r5, #0]
1a006b68:	f240 80c0 	bls.w	1a006cec <_realloc_r+0x27c>
1a006b6c:	f8cb 1008 	str.w	r1, [fp, #8]
1a006b70:	6869      	ldr	r1, [r5, #4]
1a006b72:	f8cb 100c 	str.w	r1, [fp, #12]
1a006b76:	2a1b      	cmp	r2, #27
1a006b78:	68a9      	ldr	r1, [r5, #8]
1a006b7a:	f200 80d8 	bhi.w	1a006d2e <_realloc_r+0x2be>
1a006b7e:	f10b 0210 	add.w	r2, fp, #16
1a006b82:	3508      	adds	r5, #8
1a006b84:	6011      	str	r1, [r2, #0]
1a006b86:	6869      	ldr	r1, [r5, #4]
1a006b88:	6051      	str	r1, [r2, #4]
1a006b8a:	68a9      	ldr	r1, [r5, #8]
1a006b8c:	6091      	str	r1, [r2, #8]
1a006b8e:	461e      	mov	r6, r3
1a006b90:	465f      	mov	r7, fp
1a006b92:	4655      	mov	r5, sl
1a006b94:	687b      	ldr	r3, [r7, #4]
1a006b96:	1b32      	subs	r2, r6, r4
1a006b98:	2a0f      	cmp	r2, #15
1a006b9a:	f003 0301 	and.w	r3, r3, #1
1a006b9e:	d822      	bhi.n	1a006be6 <_realloc_r+0x176>
1a006ba0:	4333      	orrs	r3, r6
1a006ba2:	607b      	str	r3, [r7, #4]
1a006ba4:	f8d9 3004 	ldr.w	r3, [r9, #4]
1a006ba8:	f043 0301 	orr.w	r3, r3, #1
1a006bac:	f8c9 3004 	str.w	r3, [r9, #4]
1a006bb0:	4640      	mov	r0, r8
1a006bb2:	f7fe ffb3 	bl	1a005b1c <__malloc_unlock>
1a006bb6:	46aa      	mov	sl, r5
1a006bb8:	4650      	mov	r0, sl
1a006bba:	b003      	add	sp, #12
1a006bbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a006bc0:	4611      	mov	r1, r2
1a006bc2:	b003      	add	sp, #12
1a006bc4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a006bc8:	f7fe bcae 	b.w	1a005528 <_malloc_r>
1a006bcc:	f020 0003 	bic.w	r0, r0, #3
1a006bd0:	1833      	adds	r3, r6, r0
1a006bd2:	428b      	cmp	r3, r1
1a006bd4:	db61      	blt.n	1a006c9a <_realloc_r+0x22a>
1a006bd6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
1a006bda:	461e      	mov	r6, r3
1a006bdc:	60ca      	str	r2, [r1, #12]
1a006bde:	eb07 0903 	add.w	r9, r7, r3
1a006be2:	6091      	str	r1, [r2, #8]
1a006be4:	e7d6      	b.n	1a006b94 <_realloc_r+0x124>
1a006be6:	1939      	adds	r1, r7, r4
1a006be8:	4323      	orrs	r3, r4
1a006bea:	f042 0201 	orr.w	r2, r2, #1
1a006bee:	607b      	str	r3, [r7, #4]
1a006bf0:	604a      	str	r2, [r1, #4]
1a006bf2:	f8d9 3004 	ldr.w	r3, [r9, #4]
1a006bf6:	f043 0301 	orr.w	r3, r3, #1
1a006bfa:	3108      	adds	r1, #8
1a006bfc:	f8c9 3004 	str.w	r3, [r9, #4]
1a006c00:	4640      	mov	r0, r8
1a006c02:	f7fe faed 	bl	1a0051e0 <_free_r>
1a006c06:	e7d3      	b.n	1a006bb0 <_realloc_r+0x140>
1a006c08:	6840      	ldr	r0, [r0, #4]
1a006c0a:	f020 0903 	bic.w	r9, r0, #3
1a006c0e:	44b1      	add	r9, r6
1a006c10:	f104 0010 	add.w	r0, r4, #16
1a006c14:	4581      	cmp	r9, r0
1a006c16:	da77      	bge.n	1a006d08 <_realloc_r+0x298>
1a006c18:	07d2      	lsls	r2, r2, #31
1a006c1a:	f53f af56 	bmi.w	1a006aca <_realloc_r+0x5a>
1a006c1e:	f855 2c08 	ldr.w	r2, [r5, #-8]
1a006c22:	eba7 0b02 	sub.w	fp, r7, r2
1a006c26:	f8db 2004 	ldr.w	r2, [fp, #4]
1a006c2a:	f022 0203 	bic.w	r2, r2, #3
1a006c2e:	4491      	add	r9, r2
1a006c30:	4548      	cmp	r0, r9
1a006c32:	dc87      	bgt.n	1a006b44 <_realloc_r+0xd4>
1a006c34:	46da      	mov	sl, fp
1a006c36:	f8db 100c 	ldr.w	r1, [fp, #12]
1a006c3a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
1a006c3e:	1f32      	subs	r2, r6, #4
1a006c40:	2a24      	cmp	r2, #36	; 0x24
1a006c42:	60c1      	str	r1, [r0, #12]
1a006c44:	6088      	str	r0, [r1, #8]
1a006c46:	f200 80a1 	bhi.w	1a006d8c <_realloc_r+0x31c>
1a006c4a:	2a13      	cmp	r2, #19
1a006c4c:	6829      	ldr	r1, [r5, #0]
1a006c4e:	f240 809b 	bls.w	1a006d88 <_realloc_r+0x318>
1a006c52:	f8cb 1008 	str.w	r1, [fp, #8]
1a006c56:	6869      	ldr	r1, [r5, #4]
1a006c58:	f8cb 100c 	str.w	r1, [fp, #12]
1a006c5c:	2a1b      	cmp	r2, #27
1a006c5e:	68a9      	ldr	r1, [r5, #8]
1a006c60:	f200 809b 	bhi.w	1a006d9a <_realloc_r+0x32a>
1a006c64:	f10b 0210 	add.w	r2, fp, #16
1a006c68:	3508      	adds	r5, #8
1a006c6a:	6011      	str	r1, [r2, #0]
1a006c6c:	6869      	ldr	r1, [r5, #4]
1a006c6e:	6051      	str	r1, [r2, #4]
1a006c70:	68a9      	ldr	r1, [r5, #8]
1a006c72:	6091      	str	r1, [r2, #8]
1a006c74:	eb0b 0104 	add.w	r1, fp, r4
1a006c78:	eba9 0204 	sub.w	r2, r9, r4
1a006c7c:	f042 0201 	orr.w	r2, r2, #1
1a006c80:	6099      	str	r1, [r3, #8]
1a006c82:	604a      	str	r2, [r1, #4]
1a006c84:	f8db 3004 	ldr.w	r3, [fp, #4]
1a006c88:	f003 0301 	and.w	r3, r3, #1
1a006c8c:	431c      	orrs	r4, r3
1a006c8e:	4640      	mov	r0, r8
1a006c90:	f8cb 4004 	str.w	r4, [fp, #4]
1a006c94:	f7fe ff42 	bl	1a005b1c <__malloc_unlock>
1a006c98:	e78e      	b.n	1a006bb8 <_realloc_r+0x148>
1a006c9a:	07d3      	lsls	r3, r2, #31
1a006c9c:	f53f af15 	bmi.w	1a006aca <_realloc_r+0x5a>
1a006ca0:	f855 3c08 	ldr.w	r3, [r5, #-8]
1a006ca4:	eba7 0b03 	sub.w	fp, r7, r3
1a006ca8:	f8db 2004 	ldr.w	r2, [fp, #4]
1a006cac:	f022 0203 	bic.w	r2, r2, #3
1a006cb0:	4410      	add	r0, r2
1a006cb2:	1983      	adds	r3, r0, r6
1a006cb4:	428b      	cmp	r3, r1
1a006cb6:	f6ff af45 	blt.w	1a006b44 <_realloc_r+0xd4>
1a006cba:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
1a006cbe:	46da      	mov	sl, fp
1a006cc0:	60ca      	str	r2, [r1, #12]
1a006cc2:	6091      	str	r1, [r2, #8]
1a006cc4:	e742      	b.n	1a006b4c <_realloc_r+0xdc>
1a006cc6:	6001      	str	r1, [r0, #0]
1a006cc8:	686b      	ldr	r3, [r5, #4]
1a006cca:	6043      	str	r3, [r0, #4]
1a006ccc:	2a1b      	cmp	r2, #27
1a006cce:	d83a      	bhi.n	1a006d46 <_realloc_r+0x2d6>
1a006cd0:	f105 0208 	add.w	r2, r5, #8
1a006cd4:	f100 0308 	add.w	r3, r0, #8
1a006cd8:	68a9      	ldr	r1, [r5, #8]
1a006cda:	e710      	b.n	1a006afe <_realloc_r+0x8e>
1a006cdc:	f850 3c04 	ldr.w	r3, [r0, #-4]
1a006ce0:	f023 0303 	bic.w	r3, r3, #3
1a006ce4:	441e      	add	r6, r3
1a006ce6:	eb07 0906 	add.w	r9, r7, r6
1a006cea:	e753      	b.n	1a006b94 <_realloc_r+0x124>
1a006cec:	4652      	mov	r2, sl
1a006cee:	e749      	b.n	1a006b84 <_realloc_r+0x114>
1a006cf0:	4629      	mov	r1, r5
1a006cf2:	4650      	mov	r0, sl
1a006cf4:	461e      	mov	r6, r3
1a006cf6:	465f      	mov	r7, fp
1a006cf8:	f7ff fe40 	bl	1a00697c <memmove>
1a006cfc:	4655      	mov	r5, sl
1a006cfe:	e749      	b.n	1a006b94 <_realloc_r+0x124>
1a006d00:	4629      	mov	r1, r5
1a006d02:	f7ff fe3b 	bl	1a00697c <memmove>
1a006d06:	e6ff      	b.n	1a006b08 <_realloc_r+0x98>
1a006d08:	4427      	add	r7, r4
1a006d0a:	eba9 0904 	sub.w	r9, r9, r4
1a006d0e:	f049 0201 	orr.w	r2, r9, #1
1a006d12:	609f      	str	r7, [r3, #8]
1a006d14:	607a      	str	r2, [r7, #4]
1a006d16:	f855 3c04 	ldr.w	r3, [r5, #-4]
1a006d1a:	f003 0301 	and.w	r3, r3, #1
1a006d1e:	431c      	orrs	r4, r3
1a006d20:	4640      	mov	r0, r8
1a006d22:	f845 4c04 	str.w	r4, [r5, #-4]
1a006d26:	f7fe fef9 	bl	1a005b1c <__malloc_unlock>
1a006d2a:	46aa      	mov	sl, r5
1a006d2c:	e744      	b.n	1a006bb8 <_realloc_r+0x148>
1a006d2e:	f8cb 1010 	str.w	r1, [fp, #16]
1a006d32:	68e9      	ldr	r1, [r5, #12]
1a006d34:	f8cb 1014 	str.w	r1, [fp, #20]
1a006d38:	2a24      	cmp	r2, #36	; 0x24
1a006d3a:	d010      	beq.n	1a006d5e <_realloc_r+0x2ee>
1a006d3c:	6929      	ldr	r1, [r5, #16]
1a006d3e:	f10b 0218 	add.w	r2, fp, #24
1a006d42:	3510      	adds	r5, #16
1a006d44:	e71e      	b.n	1a006b84 <_realloc_r+0x114>
1a006d46:	68ab      	ldr	r3, [r5, #8]
1a006d48:	6083      	str	r3, [r0, #8]
1a006d4a:	68eb      	ldr	r3, [r5, #12]
1a006d4c:	60c3      	str	r3, [r0, #12]
1a006d4e:	2a24      	cmp	r2, #36	; 0x24
1a006d50:	d010      	beq.n	1a006d74 <_realloc_r+0x304>
1a006d52:	f105 0210 	add.w	r2, r5, #16
1a006d56:	f100 0310 	add.w	r3, r0, #16
1a006d5a:	6929      	ldr	r1, [r5, #16]
1a006d5c:	e6cf      	b.n	1a006afe <_realloc_r+0x8e>
1a006d5e:	692a      	ldr	r2, [r5, #16]
1a006d60:	f8cb 2018 	str.w	r2, [fp, #24]
1a006d64:	696a      	ldr	r2, [r5, #20]
1a006d66:	f8cb 201c 	str.w	r2, [fp, #28]
1a006d6a:	69a9      	ldr	r1, [r5, #24]
1a006d6c:	f10b 0220 	add.w	r2, fp, #32
1a006d70:	3518      	adds	r5, #24
1a006d72:	e707      	b.n	1a006b84 <_realloc_r+0x114>
1a006d74:	692b      	ldr	r3, [r5, #16]
1a006d76:	6103      	str	r3, [r0, #16]
1a006d78:	696b      	ldr	r3, [r5, #20]
1a006d7a:	6143      	str	r3, [r0, #20]
1a006d7c:	69a9      	ldr	r1, [r5, #24]
1a006d7e:	f105 0218 	add.w	r2, r5, #24
1a006d82:	f100 0318 	add.w	r3, r0, #24
1a006d86:	e6ba      	b.n	1a006afe <_realloc_r+0x8e>
1a006d88:	4652      	mov	r2, sl
1a006d8a:	e76e      	b.n	1a006c6a <_realloc_r+0x1fa>
1a006d8c:	4629      	mov	r1, r5
1a006d8e:	4650      	mov	r0, sl
1a006d90:	9301      	str	r3, [sp, #4]
1a006d92:	f7ff fdf3 	bl	1a00697c <memmove>
1a006d96:	9b01      	ldr	r3, [sp, #4]
1a006d98:	e76c      	b.n	1a006c74 <_realloc_r+0x204>
1a006d9a:	f8cb 1010 	str.w	r1, [fp, #16]
1a006d9e:	68e9      	ldr	r1, [r5, #12]
1a006da0:	f8cb 1014 	str.w	r1, [fp, #20]
1a006da4:	2a24      	cmp	r2, #36	; 0x24
1a006da6:	d004      	beq.n	1a006db2 <_realloc_r+0x342>
1a006da8:	6929      	ldr	r1, [r5, #16]
1a006daa:	f10b 0218 	add.w	r2, fp, #24
1a006dae:	3510      	adds	r5, #16
1a006db0:	e75b      	b.n	1a006c6a <_realloc_r+0x1fa>
1a006db2:	692a      	ldr	r2, [r5, #16]
1a006db4:	f8cb 2018 	str.w	r2, [fp, #24]
1a006db8:	696a      	ldr	r2, [r5, #20]
1a006dba:	f8cb 201c 	str.w	r2, [fp, #28]
1a006dbe:	69a9      	ldr	r1, [r5, #24]
1a006dc0:	f10b 0220 	add.w	r2, fp, #32
1a006dc4:	3518      	adds	r5, #24
1a006dc6:	e750      	b.n	1a006c6a <_realloc_r+0x1fa>
1a006dc8:	10000434 	.word	0x10000434

1a006dcc <__swbuf_r>:
1a006dcc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a006dce:	460d      	mov	r5, r1
1a006dd0:	4614      	mov	r4, r2
1a006dd2:	4606      	mov	r6, r0
1a006dd4:	b110      	cbz	r0, 1a006ddc <__swbuf_r+0x10>
1a006dd6:	6b83      	ldr	r3, [r0, #56]	; 0x38
1a006dd8:	2b00      	cmp	r3, #0
1a006dda:	d043      	beq.n	1a006e64 <__swbuf_r+0x98>
1a006ddc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a006de0:	69a3      	ldr	r3, [r4, #24]
1a006de2:	60a3      	str	r3, [r4, #8]
1a006de4:	b291      	uxth	r1, r2
1a006de6:	0708      	lsls	r0, r1, #28
1a006de8:	d51b      	bpl.n	1a006e22 <__swbuf_r+0x56>
1a006dea:	6923      	ldr	r3, [r4, #16]
1a006dec:	b1cb      	cbz	r3, 1a006e22 <__swbuf_r+0x56>
1a006dee:	b2ed      	uxtb	r5, r5
1a006df0:	0489      	lsls	r1, r1, #18
1a006df2:	462f      	mov	r7, r5
1a006df4:	d522      	bpl.n	1a006e3c <__swbuf_r+0x70>
1a006df6:	6822      	ldr	r2, [r4, #0]
1a006df8:	6961      	ldr	r1, [r4, #20]
1a006dfa:	1ad3      	subs	r3, r2, r3
1a006dfc:	4299      	cmp	r1, r3
1a006dfe:	dd29      	ble.n	1a006e54 <__swbuf_r+0x88>
1a006e00:	3301      	adds	r3, #1
1a006e02:	68a1      	ldr	r1, [r4, #8]
1a006e04:	1c50      	adds	r0, r2, #1
1a006e06:	3901      	subs	r1, #1
1a006e08:	60a1      	str	r1, [r4, #8]
1a006e0a:	6020      	str	r0, [r4, #0]
1a006e0c:	7015      	strb	r5, [r2, #0]
1a006e0e:	6962      	ldr	r2, [r4, #20]
1a006e10:	429a      	cmp	r2, r3
1a006e12:	d02a      	beq.n	1a006e6a <__swbuf_r+0x9e>
1a006e14:	89a3      	ldrh	r3, [r4, #12]
1a006e16:	07db      	lsls	r3, r3, #31
1a006e18:	d501      	bpl.n	1a006e1e <__swbuf_r+0x52>
1a006e1a:	2d0a      	cmp	r5, #10
1a006e1c:	d025      	beq.n	1a006e6a <__swbuf_r+0x9e>
1a006e1e:	4638      	mov	r0, r7
1a006e20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a006e22:	4621      	mov	r1, r4
1a006e24:	4630      	mov	r0, r6
1a006e26:	f7fd f85d 	bl	1a003ee4 <__swsetup_r>
1a006e2a:	bb20      	cbnz	r0, 1a006e76 <__swbuf_r+0xaa>
1a006e2c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
1a006e30:	6923      	ldr	r3, [r4, #16]
1a006e32:	b291      	uxth	r1, r2
1a006e34:	b2ed      	uxtb	r5, r5
1a006e36:	0489      	lsls	r1, r1, #18
1a006e38:	462f      	mov	r7, r5
1a006e3a:	d4dc      	bmi.n	1a006df6 <__swbuf_r+0x2a>
1a006e3c:	6e61      	ldr	r1, [r4, #100]	; 0x64
1a006e3e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
1a006e42:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
1a006e46:	81a2      	strh	r2, [r4, #12]
1a006e48:	6822      	ldr	r2, [r4, #0]
1a006e4a:	6661      	str	r1, [r4, #100]	; 0x64
1a006e4c:	6961      	ldr	r1, [r4, #20]
1a006e4e:	1ad3      	subs	r3, r2, r3
1a006e50:	4299      	cmp	r1, r3
1a006e52:	dcd5      	bgt.n	1a006e00 <__swbuf_r+0x34>
1a006e54:	4621      	mov	r1, r4
1a006e56:	4630      	mov	r0, r6
1a006e58:	f7fe f8de 	bl	1a005018 <_fflush_r>
1a006e5c:	b958      	cbnz	r0, 1a006e76 <__swbuf_r+0xaa>
1a006e5e:	6822      	ldr	r2, [r4, #0]
1a006e60:	2301      	movs	r3, #1
1a006e62:	e7ce      	b.n	1a006e02 <__swbuf_r+0x36>
1a006e64:	f7fe f934 	bl	1a0050d0 <__sinit>
1a006e68:	e7b8      	b.n	1a006ddc <__swbuf_r+0x10>
1a006e6a:	4621      	mov	r1, r4
1a006e6c:	4630      	mov	r0, r6
1a006e6e:	f7fe f8d3 	bl	1a005018 <_fflush_r>
1a006e72:	2800      	cmp	r0, #0
1a006e74:	d0d3      	beq.n	1a006e1e <__swbuf_r+0x52>
1a006e76:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
1a006e7a:	e7d0      	b.n	1a006e1e <__swbuf_r+0x52>

1a006e7c <_wcrtomb_r>:
1a006e7c:	b5f0      	push	{r4, r5, r6, r7, lr}
1a006e7e:	4c11      	ldr	r4, [pc, #68]	; (1a006ec4 <_wcrtomb_r+0x48>)
1a006e80:	6824      	ldr	r4, [r4, #0]
1a006e82:	b085      	sub	sp, #20
1a006e84:	4606      	mov	r6, r0
1a006e86:	6b64      	ldr	r4, [r4, #52]	; 0x34
1a006e88:	461f      	mov	r7, r3
1a006e8a:	b151      	cbz	r1, 1a006ea2 <_wcrtomb_r+0x26>
1a006e8c:	4d0e      	ldr	r5, [pc, #56]	; (1a006ec8 <_wcrtomb_r+0x4c>)
1a006e8e:	2c00      	cmp	r4, #0
1a006e90:	bf08      	it	eq
1a006e92:	462c      	moveq	r4, r5
1a006e94:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
1a006e98:	47a0      	blx	r4
1a006e9a:	1c43      	adds	r3, r0, #1
1a006e9c:	d00c      	beq.n	1a006eb8 <_wcrtomb_r+0x3c>
1a006e9e:	b005      	add	sp, #20
1a006ea0:	bdf0      	pop	{r4, r5, r6, r7, pc}
1a006ea2:	4a09      	ldr	r2, [pc, #36]	; (1a006ec8 <_wcrtomb_r+0x4c>)
1a006ea4:	2c00      	cmp	r4, #0
1a006ea6:	bf08      	it	eq
1a006ea8:	4614      	moveq	r4, r2
1a006eaa:	460a      	mov	r2, r1
1a006eac:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
1a006eb0:	a901      	add	r1, sp, #4
1a006eb2:	47a0      	blx	r4
1a006eb4:	1c43      	adds	r3, r0, #1
1a006eb6:	d1f2      	bne.n	1a006e9e <_wcrtomb_r+0x22>
1a006eb8:	2200      	movs	r2, #0
1a006eba:	238a      	movs	r3, #138	; 0x8a
1a006ebc:	603a      	str	r2, [r7, #0]
1a006ebe:	6033      	str	r3, [r6, #0]
1a006ec0:	b005      	add	sp, #20
1a006ec2:	bdf0      	pop	{r4, r5, r6, r7, pc}
1a006ec4:	10000000 	.word	0x10000000
1a006ec8:	10000844 	.word	0x10000844

1a006ecc <__ascii_wctomb>:
1a006ecc:	b121      	cbz	r1, 1a006ed8 <__ascii_wctomb+0xc>
1a006ece:	2aff      	cmp	r2, #255	; 0xff
1a006ed0:	d804      	bhi.n	1a006edc <__ascii_wctomb+0x10>
1a006ed2:	700a      	strb	r2, [r1, #0]
1a006ed4:	2001      	movs	r0, #1
1a006ed6:	4770      	bx	lr
1a006ed8:	4608      	mov	r0, r1
1a006eda:	4770      	bx	lr
1a006edc:	238a      	movs	r3, #138	; 0x8a
1a006ede:	6003      	str	r3, [r0, #0]
1a006ee0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a006ee4:	4770      	bx	lr
1a006ee6:	bf00      	nop

1a006ee8 <__aeabi_drsub>:
1a006ee8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
1a006eec:	e002      	b.n	1a006ef4 <__adddf3>
1a006eee:	bf00      	nop

1a006ef0 <__aeabi_dsub>:
1a006ef0:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

1a006ef4 <__adddf3>:
1a006ef4:	b530      	push	{r4, r5, lr}
1a006ef6:	ea4f 0441 	mov.w	r4, r1, lsl #1
1a006efa:	ea4f 0543 	mov.w	r5, r3, lsl #1
1a006efe:	ea94 0f05 	teq	r4, r5
1a006f02:	bf08      	it	eq
1a006f04:	ea90 0f02 	teqeq	r0, r2
1a006f08:	bf1f      	itttt	ne
1a006f0a:	ea54 0c00 	orrsne.w	ip, r4, r0
1a006f0e:	ea55 0c02 	orrsne.w	ip, r5, r2
1a006f12:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
1a006f16:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
1a006f1a:	f000 80e2 	beq.w	1a0070e2 <__adddf3+0x1ee>
1a006f1e:	ea4f 5454 	mov.w	r4, r4, lsr #21
1a006f22:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
1a006f26:	bfb8      	it	lt
1a006f28:	426d      	neglt	r5, r5
1a006f2a:	dd0c      	ble.n	1a006f46 <__adddf3+0x52>
1a006f2c:	442c      	add	r4, r5
1a006f2e:	ea80 0202 	eor.w	r2, r0, r2
1a006f32:	ea81 0303 	eor.w	r3, r1, r3
1a006f36:	ea82 0000 	eor.w	r0, r2, r0
1a006f3a:	ea83 0101 	eor.w	r1, r3, r1
1a006f3e:	ea80 0202 	eor.w	r2, r0, r2
1a006f42:	ea81 0303 	eor.w	r3, r1, r3
1a006f46:	2d36      	cmp	r5, #54	; 0x36
1a006f48:	bf88      	it	hi
1a006f4a:	bd30      	pophi	{r4, r5, pc}
1a006f4c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
1a006f50:	ea4f 3101 	mov.w	r1, r1, lsl #12
1a006f54:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
1a006f58:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
1a006f5c:	d002      	beq.n	1a006f64 <__adddf3+0x70>
1a006f5e:	4240      	negs	r0, r0
1a006f60:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
1a006f64:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
1a006f68:	ea4f 3303 	mov.w	r3, r3, lsl #12
1a006f6c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
1a006f70:	d002      	beq.n	1a006f78 <__adddf3+0x84>
1a006f72:	4252      	negs	r2, r2
1a006f74:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
1a006f78:	ea94 0f05 	teq	r4, r5
1a006f7c:	f000 80a7 	beq.w	1a0070ce <__adddf3+0x1da>
1a006f80:	f1a4 0401 	sub.w	r4, r4, #1
1a006f84:	f1d5 0e20 	rsbs	lr, r5, #32
1a006f88:	db0d      	blt.n	1a006fa6 <__adddf3+0xb2>
1a006f8a:	fa02 fc0e 	lsl.w	ip, r2, lr
1a006f8e:	fa22 f205 	lsr.w	r2, r2, r5
1a006f92:	1880      	adds	r0, r0, r2
1a006f94:	f141 0100 	adc.w	r1, r1, #0
1a006f98:	fa03 f20e 	lsl.w	r2, r3, lr
1a006f9c:	1880      	adds	r0, r0, r2
1a006f9e:	fa43 f305 	asr.w	r3, r3, r5
1a006fa2:	4159      	adcs	r1, r3
1a006fa4:	e00e      	b.n	1a006fc4 <__adddf3+0xd0>
1a006fa6:	f1a5 0520 	sub.w	r5, r5, #32
1a006faa:	f10e 0e20 	add.w	lr, lr, #32
1a006fae:	2a01      	cmp	r2, #1
1a006fb0:	fa03 fc0e 	lsl.w	ip, r3, lr
1a006fb4:	bf28      	it	cs
1a006fb6:	f04c 0c02 	orrcs.w	ip, ip, #2
1a006fba:	fa43 f305 	asr.w	r3, r3, r5
1a006fbe:	18c0      	adds	r0, r0, r3
1a006fc0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
1a006fc4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
1a006fc8:	d507      	bpl.n	1a006fda <__adddf3+0xe6>
1a006fca:	f04f 0e00 	mov.w	lr, #0
1a006fce:	f1dc 0c00 	rsbs	ip, ip, #0
1a006fd2:	eb7e 0000 	sbcs.w	r0, lr, r0
1a006fd6:	eb6e 0101 	sbc.w	r1, lr, r1
1a006fda:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
1a006fde:	d31b      	bcc.n	1a007018 <__adddf3+0x124>
1a006fe0:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
1a006fe4:	d30c      	bcc.n	1a007000 <__adddf3+0x10c>
1a006fe6:	0849      	lsrs	r1, r1, #1
1a006fe8:	ea5f 0030 	movs.w	r0, r0, rrx
1a006fec:	ea4f 0c3c 	mov.w	ip, ip, rrx
1a006ff0:	f104 0401 	add.w	r4, r4, #1
1a006ff4:	ea4f 5244 	mov.w	r2, r4, lsl #21
1a006ff8:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
1a006ffc:	f080 809a 	bcs.w	1a007134 <__adddf3+0x240>
1a007000:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
1a007004:	bf08      	it	eq
1a007006:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
1a00700a:	f150 0000 	adcs.w	r0, r0, #0
1a00700e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
1a007012:	ea41 0105 	orr.w	r1, r1, r5
1a007016:	bd30      	pop	{r4, r5, pc}
1a007018:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
1a00701c:	4140      	adcs	r0, r0
1a00701e:	eb41 0101 	adc.w	r1, r1, r1
1a007022:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
1a007026:	f1a4 0401 	sub.w	r4, r4, #1
1a00702a:	d1e9      	bne.n	1a007000 <__adddf3+0x10c>
1a00702c:	f091 0f00 	teq	r1, #0
1a007030:	bf04      	itt	eq
1a007032:	4601      	moveq	r1, r0
1a007034:	2000      	moveq	r0, #0
1a007036:	fab1 f381 	clz	r3, r1
1a00703a:	bf08      	it	eq
1a00703c:	3320      	addeq	r3, #32
1a00703e:	f1a3 030b 	sub.w	r3, r3, #11
1a007042:	f1b3 0220 	subs.w	r2, r3, #32
1a007046:	da0c      	bge.n	1a007062 <__adddf3+0x16e>
1a007048:	320c      	adds	r2, #12
1a00704a:	dd08      	ble.n	1a00705e <__adddf3+0x16a>
1a00704c:	f102 0c14 	add.w	ip, r2, #20
1a007050:	f1c2 020c 	rsb	r2, r2, #12
1a007054:	fa01 f00c 	lsl.w	r0, r1, ip
1a007058:	fa21 f102 	lsr.w	r1, r1, r2
1a00705c:	e00c      	b.n	1a007078 <__adddf3+0x184>
1a00705e:	f102 0214 	add.w	r2, r2, #20
1a007062:	bfd8      	it	le
1a007064:	f1c2 0c20 	rsble	ip, r2, #32
1a007068:	fa01 f102 	lsl.w	r1, r1, r2
1a00706c:	fa20 fc0c 	lsr.w	ip, r0, ip
1a007070:	bfdc      	itt	le
1a007072:	ea41 010c 	orrle.w	r1, r1, ip
1a007076:	4090      	lslle	r0, r2
1a007078:	1ae4      	subs	r4, r4, r3
1a00707a:	bfa2      	ittt	ge
1a00707c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
1a007080:	4329      	orrge	r1, r5
1a007082:	bd30      	popge	{r4, r5, pc}
1a007084:	ea6f 0404 	mvn.w	r4, r4
1a007088:	3c1f      	subs	r4, #31
1a00708a:	da1c      	bge.n	1a0070c6 <__adddf3+0x1d2>
1a00708c:	340c      	adds	r4, #12
1a00708e:	dc0e      	bgt.n	1a0070ae <__adddf3+0x1ba>
1a007090:	f104 0414 	add.w	r4, r4, #20
1a007094:	f1c4 0220 	rsb	r2, r4, #32
1a007098:	fa20 f004 	lsr.w	r0, r0, r4
1a00709c:	fa01 f302 	lsl.w	r3, r1, r2
1a0070a0:	ea40 0003 	orr.w	r0, r0, r3
1a0070a4:	fa21 f304 	lsr.w	r3, r1, r4
1a0070a8:	ea45 0103 	orr.w	r1, r5, r3
1a0070ac:	bd30      	pop	{r4, r5, pc}
1a0070ae:	f1c4 040c 	rsb	r4, r4, #12
1a0070b2:	f1c4 0220 	rsb	r2, r4, #32
1a0070b6:	fa20 f002 	lsr.w	r0, r0, r2
1a0070ba:	fa01 f304 	lsl.w	r3, r1, r4
1a0070be:	ea40 0003 	orr.w	r0, r0, r3
1a0070c2:	4629      	mov	r1, r5
1a0070c4:	bd30      	pop	{r4, r5, pc}
1a0070c6:	fa21 f004 	lsr.w	r0, r1, r4
1a0070ca:	4629      	mov	r1, r5
1a0070cc:	bd30      	pop	{r4, r5, pc}
1a0070ce:	f094 0f00 	teq	r4, #0
1a0070d2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
1a0070d6:	bf06      	itte	eq
1a0070d8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
1a0070dc:	3401      	addeq	r4, #1
1a0070de:	3d01      	subne	r5, #1
1a0070e0:	e74e      	b.n	1a006f80 <__adddf3+0x8c>
1a0070e2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
1a0070e6:	bf18      	it	ne
1a0070e8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
1a0070ec:	d029      	beq.n	1a007142 <__adddf3+0x24e>
1a0070ee:	ea94 0f05 	teq	r4, r5
1a0070f2:	bf08      	it	eq
1a0070f4:	ea90 0f02 	teqeq	r0, r2
1a0070f8:	d005      	beq.n	1a007106 <__adddf3+0x212>
1a0070fa:	ea54 0c00 	orrs.w	ip, r4, r0
1a0070fe:	bf04      	itt	eq
1a007100:	4619      	moveq	r1, r3
1a007102:	4610      	moveq	r0, r2
1a007104:	bd30      	pop	{r4, r5, pc}
1a007106:	ea91 0f03 	teq	r1, r3
1a00710a:	bf1e      	ittt	ne
1a00710c:	2100      	movne	r1, #0
1a00710e:	2000      	movne	r0, #0
1a007110:	bd30      	popne	{r4, r5, pc}
1a007112:	ea5f 5c54 	movs.w	ip, r4, lsr #21
1a007116:	d105      	bne.n	1a007124 <__adddf3+0x230>
1a007118:	0040      	lsls	r0, r0, #1
1a00711a:	4149      	adcs	r1, r1
1a00711c:	bf28      	it	cs
1a00711e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
1a007122:	bd30      	pop	{r4, r5, pc}
1a007124:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
1a007128:	bf3c      	itt	cc
1a00712a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
1a00712e:	bd30      	popcc	{r4, r5, pc}
1a007130:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
1a007134:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
1a007138:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
1a00713c:	f04f 0000 	mov.w	r0, #0
1a007140:	bd30      	pop	{r4, r5, pc}
1a007142:	ea7f 5c64 	mvns.w	ip, r4, asr #21
1a007146:	bf1a      	itte	ne
1a007148:	4619      	movne	r1, r3
1a00714a:	4610      	movne	r0, r2
1a00714c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
1a007150:	bf1c      	itt	ne
1a007152:	460b      	movne	r3, r1
1a007154:	4602      	movne	r2, r0
1a007156:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
1a00715a:	bf06      	itte	eq
1a00715c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
1a007160:	ea91 0f03 	teqeq	r1, r3
1a007164:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
1a007168:	bd30      	pop	{r4, r5, pc}
1a00716a:	bf00      	nop

1a00716c <__aeabi_ui2d>:
1a00716c:	f090 0f00 	teq	r0, #0
1a007170:	bf04      	itt	eq
1a007172:	2100      	moveq	r1, #0
1a007174:	4770      	bxeq	lr
1a007176:	b530      	push	{r4, r5, lr}
1a007178:	f44f 6480 	mov.w	r4, #1024	; 0x400
1a00717c:	f104 0432 	add.w	r4, r4, #50	; 0x32
1a007180:	f04f 0500 	mov.w	r5, #0
1a007184:	f04f 0100 	mov.w	r1, #0
1a007188:	e750      	b.n	1a00702c <__adddf3+0x138>
1a00718a:	bf00      	nop

1a00718c <__aeabi_i2d>:
1a00718c:	f090 0f00 	teq	r0, #0
1a007190:	bf04      	itt	eq
1a007192:	2100      	moveq	r1, #0
1a007194:	4770      	bxeq	lr
1a007196:	b530      	push	{r4, r5, lr}
1a007198:	f44f 6480 	mov.w	r4, #1024	; 0x400
1a00719c:	f104 0432 	add.w	r4, r4, #50	; 0x32
1a0071a0:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
1a0071a4:	bf48      	it	mi
1a0071a6:	4240      	negmi	r0, r0
1a0071a8:	f04f 0100 	mov.w	r1, #0
1a0071ac:	e73e      	b.n	1a00702c <__adddf3+0x138>
1a0071ae:	bf00      	nop

1a0071b0 <__aeabi_f2d>:
1a0071b0:	0042      	lsls	r2, r0, #1
1a0071b2:	ea4f 01e2 	mov.w	r1, r2, asr #3
1a0071b6:	ea4f 0131 	mov.w	r1, r1, rrx
1a0071ba:	ea4f 7002 	mov.w	r0, r2, lsl #28
1a0071be:	bf1f      	itttt	ne
1a0071c0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
1a0071c4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
1a0071c8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
1a0071cc:	4770      	bxne	lr
1a0071ce:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
1a0071d2:	bf08      	it	eq
1a0071d4:	4770      	bxeq	lr
1a0071d6:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
1a0071da:	bf04      	itt	eq
1a0071dc:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
1a0071e0:	4770      	bxeq	lr
1a0071e2:	b530      	push	{r4, r5, lr}
1a0071e4:	f44f 7460 	mov.w	r4, #896	; 0x380
1a0071e8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
1a0071ec:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
1a0071f0:	e71c      	b.n	1a00702c <__adddf3+0x138>
1a0071f2:	bf00      	nop

1a0071f4 <__aeabi_ul2d>:
1a0071f4:	ea50 0201 	orrs.w	r2, r0, r1
1a0071f8:	bf08      	it	eq
1a0071fa:	4770      	bxeq	lr
1a0071fc:	b530      	push	{r4, r5, lr}
1a0071fe:	f04f 0500 	mov.w	r5, #0
1a007202:	e00a      	b.n	1a00721a <__aeabi_l2d+0x16>

1a007204 <__aeabi_l2d>:
1a007204:	ea50 0201 	orrs.w	r2, r0, r1
1a007208:	bf08      	it	eq
1a00720a:	4770      	bxeq	lr
1a00720c:	b530      	push	{r4, r5, lr}
1a00720e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
1a007212:	d502      	bpl.n	1a00721a <__aeabi_l2d+0x16>
1a007214:	4240      	negs	r0, r0
1a007216:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
1a00721a:	f44f 6480 	mov.w	r4, #1024	; 0x400
1a00721e:	f104 0432 	add.w	r4, r4, #50	; 0x32
1a007222:	ea5f 5c91 	movs.w	ip, r1, lsr #22
1a007226:	f43f aed8 	beq.w	1a006fda <__adddf3+0xe6>
1a00722a:	f04f 0203 	mov.w	r2, #3
1a00722e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
1a007232:	bf18      	it	ne
1a007234:	3203      	addne	r2, #3
1a007236:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
1a00723a:	bf18      	it	ne
1a00723c:	3203      	addne	r2, #3
1a00723e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
1a007242:	f1c2 0320 	rsb	r3, r2, #32
1a007246:	fa00 fc03 	lsl.w	ip, r0, r3
1a00724a:	fa20 f002 	lsr.w	r0, r0, r2
1a00724e:	fa01 fe03 	lsl.w	lr, r1, r3
1a007252:	ea40 000e 	orr.w	r0, r0, lr
1a007256:	fa21 f102 	lsr.w	r1, r1, r2
1a00725a:	4414      	add	r4, r2
1a00725c:	e6bd      	b.n	1a006fda <__adddf3+0xe6>
1a00725e:	bf00      	nop

1a007260 <__aeabi_dmul>:
1a007260:	b570      	push	{r4, r5, r6, lr}
1a007262:	f04f 0cff 	mov.w	ip, #255	; 0xff
1a007266:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
1a00726a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
1a00726e:	bf1d      	ittte	ne
1a007270:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
1a007274:	ea94 0f0c 	teqne	r4, ip
1a007278:	ea95 0f0c 	teqne	r5, ip
1a00727c:	f000 f8de 	bleq	1a00743c <__aeabi_dmul+0x1dc>
1a007280:	442c      	add	r4, r5
1a007282:	ea81 0603 	eor.w	r6, r1, r3
1a007286:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
1a00728a:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
1a00728e:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
1a007292:	bf18      	it	ne
1a007294:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
1a007298:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
1a00729c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
1a0072a0:	d038      	beq.n	1a007314 <__aeabi_dmul+0xb4>
1a0072a2:	fba0 ce02 	umull	ip, lr, r0, r2
1a0072a6:	f04f 0500 	mov.w	r5, #0
1a0072aa:	fbe1 e502 	umlal	lr, r5, r1, r2
1a0072ae:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
1a0072b2:	fbe0 e503 	umlal	lr, r5, r0, r3
1a0072b6:	f04f 0600 	mov.w	r6, #0
1a0072ba:	fbe1 5603 	umlal	r5, r6, r1, r3
1a0072be:	f09c 0f00 	teq	ip, #0
1a0072c2:	bf18      	it	ne
1a0072c4:	f04e 0e01 	orrne.w	lr, lr, #1
1a0072c8:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
1a0072cc:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
1a0072d0:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
1a0072d4:	d204      	bcs.n	1a0072e0 <__aeabi_dmul+0x80>
1a0072d6:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
1a0072da:	416d      	adcs	r5, r5
1a0072dc:	eb46 0606 	adc.w	r6, r6, r6
1a0072e0:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
1a0072e4:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
1a0072e8:	ea4f 20c5 	mov.w	r0, r5, lsl #11
1a0072ec:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
1a0072f0:	ea4f 2ece 	mov.w	lr, lr, lsl #11
1a0072f4:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
1a0072f8:	bf88      	it	hi
1a0072fa:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
1a0072fe:	d81e      	bhi.n	1a00733e <__aeabi_dmul+0xde>
1a007300:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
1a007304:	bf08      	it	eq
1a007306:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
1a00730a:	f150 0000 	adcs.w	r0, r0, #0
1a00730e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
1a007312:	bd70      	pop	{r4, r5, r6, pc}
1a007314:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
1a007318:	ea46 0101 	orr.w	r1, r6, r1
1a00731c:	ea40 0002 	orr.w	r0, r0, r2
1a007320:	ea81 0103 	eor.w	r1, r1, r3
1a007324:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
1a007328:	bfc2      	ittt	gt
1a00732a:	ebd4 050c 	rsbsgt	r5, r4, ip
1a00732e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
1a007332:	bd70      	popgt	{r4, r5, r6, pc}
1a007334:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
1a007338:	f04f 0e00 	mov.w	lr, #0
1a00733c:	3c01      	subs	r4, #1
1a00733e:	f300 80ab 	bgt.w	1a007498 <__aeabi_dmul+0x238>
1a007342:	f114 0f36 	cmn.w	r4, #54	; 0x36
1a007346:	bfde      	ittt	le
1a007348:	2000      	movle	r0, #0
1a00734a:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
1a00734e:	bd70      	pople	{r4, r5, r6, pc}
1a007350:	f1c4 0400 	rsb	r4, r4, #0
1a007354:	3c20      	subs	r4, #32
1a007356:	da35      	bge.n	1a0073c4 <__aeabi_dmul+0x164>
1a007358:	340c      	adds	r4, #12
1a00735a:	dc1b      	bgt.n	1a007394 <__aeabi_dmul+0x134>
1a00735c:	f104 0414 	add.w	r4, r4, #20
1a007360:	f1c4 0520 	rsb	r5, r4, #32
1a007364:	fa00 f305 	lsl.w	r3, r0, r5
1a007368:	fa20 f004 	lsr.w	r0, r0, r4
1a00736c:	fa01 f205 	lsl.w	r2, r1, r5
1a007370:	ea40 0002 	orr.w	r0, r0, r2
1a007374:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
1a007378:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
1a00737c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
1a007380:	fa21 f604 	lsr.w	r6, r1, r4
1a007384:	eb42 0106 	adc.w	r1, r2, r6
1a007388:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
1a00738c:	bf08      	it	eq
1a00738e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
1a007392:	bd70      	pop	{r4, r5, r6, pc}
1a007394:	f1c4 040c 	rsb	r4, r4, #12
1a007398:	f1c4 0520 	rsb	r5, r4, #32
1a00739c:	fa00 f304 	lsl.w	r3, r0, r4
1a0073a0:	fa20 f005 	lsr.w	r0, r0, r5
1a0073a4:	fa01 f204 	lsl.w	r2, r1, r4
1a0073a8:	ea40 0002 	orr.w	r0, r0, r2
1a0073ac:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
1a0073b0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
1a0073b4:	f141 0100 	adc.w	r1, r1, #0
1a0073b8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
1a0073bc:	bf08      	it	eq
1a0073be:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
1a0073c2:	bd70      	pop	{r4, r5, r6, pc}
1a0073c4:	f1c4 0520 	rsb	r5, r4, #32
1a0073c8:	fa00 f205 	lsl.w	r2, r0, r5
1a0073cc:	ea4e 0e02 	orr.w	lr, lr, r2
1a0073d0:	fa20 f304 	lsr.w	r3, r0, r4
1a0073d4:	fa01 f205 	lsl.w	r2, r1, r5
1a0073d8:	ea43 0302 	orr.w	r3, r3, r2
1a0073dc:	fa21 f004 	lsr.w	r0, r1, r4
1a0073e0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
1a0073e4:	fa21 f204 	lsr.w	r2, r1, r4
1a0073e8:	ea20 0002 	bic.w	r0, r0, r2
1a0073ec:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
1a0073f0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
1a0073f4:	bf08      	it	eq
1a0073f6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
1a0073fa:	bd70      	pop	{r4, r5, r6, pc}
1a0073fc:	f094 0f00 	teq	r4, #0
1a007400:	d10f      	bne.n	1a007422 <__aeabi_dmul+0x1c2>
1a007402:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
1a007406:	0040      	lsls	r0, r0, #1
1a007408:	eb41 0101 	adc.w	r1, r1, r1
1a00740c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
1a007410:	bf08      	it	eq
1a007412:	3c01      	subeq	r4, #1
1a007414:	d0f7      	beq.n	1a007406 <__aeabi_dmul+0x1a6>
1a007416:	ea41 0106 	orr.w	r1, r1, r6
1a00741a:	f095 0f00 	teq	r5, #0
1a00741e:	bf18      	it	ne
1a007420:	4770      	bxne	lr
1a007422:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
1a007426:	0052      	lsls	r2, r2, #1
1a007428:	eb43 0303 	adc.w	r3, r3, r3
1a00742c:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
1a007430:	bf08      	it	eq
1a007432:	3d01      	subeq	r5, #1
1a007434:	d0f7      	beq.n	1a007426 <__aeabi_dmul+0x1c6>
1a007436:	ea43 0306 	orr.w	r3, r3, r6
1a00743a:	4770      	bx	lr
1a00743c:	ea94 0f0c 	teq	r4, ip
1a007440:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
1a007444:	bf18      	it	ne
1a007446:	ea95 0f0c 	teqne	r5, ip
1a00744a:	d00c      	beq.n	1a007466 <__aeabi_dmul+0x206>
1a00744c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
1a007450:	bf18      	it	ne
1a007452:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
1a007456:	d1d1      	bne.n	1a0073fc <__aeabi_dmul+0x19c>
1a007458:	ea81 0103 	eor.w	r1, r1, r3
1a00745c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
1a007460:	f04f 0000 	mov.w	r0, #0
1a007464:	bd70      	pop	{r4, r5, r6, pc}
1a007466:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
1a00746a:	bf06      	itte	eq
1a00746c:	4610      	moveq	r0, r2
1a00746e:	4619      	moveq	r1, r3
1a007470:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
1a007474:	d019      	beq.n	1a0074aa <__aeabi_dmul+0x24a>
1a007476:	ea94 0f0c 	teq	r4, ip
1a00747a:	d102      	bne.n	1a007482 <__aeabi_dmul+0x222>
1a00747c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
1a007480:	d113      	bne.n	1a0074aa <__aeabi_dmul+0x24a>
1a007482:	ea95 0f0c 	teq	r5, ip
1a007486:	d105      	bne.n	1a007494 <__aeabi_dmul+0x234>
1a007488:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
1a00748c:	bf1c      	itt	ne
1a00748e:	4610      	movne	r0, r2
1a007490:	4619      	movne	r1, r3
1a007492:	d10a      	bne.n	1a0074aa <__aeabi_dmul+0x24a>
1a007494:	ea81 0103 	eor.w	r1, r1, r3
1a007498:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
1a00749c:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
1a0074a0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
1a0074a4:	f04f 0000 	mov.w	r0, #0
1a0074a8:	bd70      	pop	{r4, r5, r6, pc}
1a0074aa:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
1a0074ae:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
1a0074b2:	bd70      	pop	{r4, r5, r6, pc}

1a0074b4 <__aeabi_ddiv>:
1a0074b4:	b570      	push	{r4, r5, r6, lr}
1a0074b6:	f04f 0cff 	mov.w	ip, #255	; 0xff
1a0074ba:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
1a0074be:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
1a0074c2:	bf1d      	ittte	ne
1a0074c4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
1a0074c8:	ea94 0f0c 	teqne	r4, ip
1a0074cc:	ea95 0f0c 	teqne	r5, ip
1a0074d0:	f000 f8a7 	bleq	1a007622 <__aeabi_ddiv+0x16e>
1a0074d4:	eba4 0405 	sub.w	r4, r4, r5
1a0074d8:	ea81 0e03 	eor.w	lr, r1, r3
1a0074dc:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
1a0074e0:	ea4f 3101 	mov.w	r1, r1, lsl #12
1a0074e4:	f000 8088 	beq.w	1a0075f8 <__aeabi_ddiv+0x144>
1a0074e8:	ea4f 3303 	mov.w	r3, r3, lsl #12
1a0074ec:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
1a0074f0:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
1a0074f4:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
1a0074f8:	ea4f 2202 	mov.w	r2, r2, lsl #8
1a0074fc:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
1a007500:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
1a007504:	ea4f 2600 	mov.w	r6, r0, lsl #8
1a007508:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
1a00750c:	429d      	cmp	r5, r3
1a00750e:	bf08      	it	eq
1a007510:	4296      	cmpeq	r6, r2
1a007512:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
1a007516:	f504 7440 	add.w	r4, r4, #768	; 0x300
1a00751a:	d202      	bcs.n	1a007522 <__aeabi_ddiv+0x6e>
1a00751c:	085b      	lsrs	r3, r3, #1
1a00751e:	ea4f 0232 	mov.w	r2, r2, rrx
1a007522:	1ab6      	subs	r6, r6, r2
1a007524:	eb65 0503 	sbc.w	r5, r5, r3
1a007528:	085b      	lsrs	r3, r3, #1
1a00752a:	ea4f 0232 	mov.w	r2, r2, rrx
1a00752e:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
1a007532:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
1a007536:	ebb6 0e02 	subs.w	lr, r6, r2
1a00753a:	eb75 0e03 	sbcs.w	lr, r5, r3
1a00753e:	bf22      	ittt	cs
1a007540:	1ab6      	subcs	r6, r6, r2
1a007542:	4675      	movcs	r5, lr
1a007544:	ea40 000c 	orrcs.w	r0, r0, ip
1a007548:	085b      	lsrs	r3, r3, #1
1a00754a:	ea4f 0232 	mov.w	r2, r2, rrx
1a00754e:	ebb6 0e02 	subs.w	lr, r6, r2
1a007552:	eb75 0e03 	sbcs.w	lr, r5, r3
1a007556:	bf22      	ittt	cs
1a007558:	1ab6      	subcs	r6, r6, r2
1a00755a:	4675      	movcs	r5, lr
1a00755c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
1a007560:	085b      	lsrs	r3, r3, #1
1a007562:	ea4f 0232 	mov.w	r2, r2, rrx
1a007566:	ebb6 0e02 	subs.w	lr, r6, r2
1a00756a:	eb75 0e03 	sbcs.w	lr, r5, r3
1a00756e:	bf22      	ittt	cs
1a007570:	1ab6      	subcs	r6, r6, r2
1a007572:	4675      	movcs	r5, lr
1a007574:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
1a007578:	085b      	lsrs	r3, r3, #1
1a00757a:	ea4f 0232 	mov.w	r2, r2, rrx
1a00757e:	ebb6 0e02 	subs.w	lr, r6, r2
1a007582:	eb75 0e03 	sbcs.w	lr, r5, r3
1a007586:	bf22      	ittt	cs
1a007588:	1ab6      	subcs	r6, r6, r2
1a00758a:	4675      	movcs	r5, lr
1a00758c:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
1a007590:	ea55 0e06 	orrs.w	lr, r5, r6
1a007594:	d018      	beq.n	1a0075c8 <__aeabi_ddiv+0x114>
1a007596:	ea4f 1505 	mov.w	r5, r5, lsl #4
1a00759a:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
1a00759e:	ea4f 1606 	mov.w	r6, r6, lsl #4
1a0075a2:	ea4f 03c3 	mov.w	r3, r3, lsl #3
1a0075a6:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
1a0075aa:	ea4f 02c2 	mov.w	r2, r2, lsl #3
1a0075ae:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
1a0075b2:	d1c0      	bne.n	1a007536 <__aeabi_ddiv+0x82>
1a0075b4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
1a0075b8:	d10b      	bne.n	1a0075d2 <__aeabi_ddiv+0x11e>
1a0075ba:	ea41 0100 	orr.w	r1, r1, r0
1a0075be:	f04f 0000 	mov.w	r0, #0
1a0075c2:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
1a0075c6:	e7b6      	b.n	1a007536 <__aeabi_ddiv+0x82>
1a0075c8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
1a0075cc:	bf04      	itt	eq
1a0075ce:	4301      	orreq	r1, r0
1a0075d0:	2000      	moveq	r0, #0
1a0075d2:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
1a0075d6:	bf88      	it	hi
1a0075d8:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
1a0075dc:	f63f aeaf 	bhi.w	1a00733e <__aeabi_dmul+0xde>
1a0075e0:	ebb5 0c03 	subs.w	ip, r5, r3
1a0075e4:	bf04      	itt	eq
1a0075e6:	ebb6 0c02 	subseq.w	ip, r6, r2
1a0075ea:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
1a0075ee:	f150 0000 	adcs.w	r0, r0, #0
1a0075f2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
1a0075f6:	bd70      	pop	{r4, r5, r6, pc}
1a0075f8:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
1a0075fc:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
1a007600:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
1a007604:	bfc2      	ittt	gt
1a007606:	ebd4 050c 	rsbsgt	r5, r4, ip
1a00760a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
1a00760e:	bd70      	popgt	{r4, r5, r6, pc}
1a007610:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
1a007614:	f04f 0e00 	mov.w	lr, #0
1a007618:	3c01      	subs	r4, #1
1a00761a:	e690      	b.n	1a00733e <__aeabi_dmul+0xde>
1a00761c:	ea45 0e06 	orr.w	lr, r5, r6
1a007620:	e68d      	b.n	1a00733e <__aeabi_dmul+0xde>
1a007622:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
1a007626:	ea94 0f0c 	teq	r4, ip
1a00762a:	bf08      	it	eq
1a00762c:	ea95 0f0c 	teqeq	r5, ip
1a007630:	f43f af3b 	beq.w	1a0074aa <__aeabi_dmul+0x24a>
1a007634:	ea94 0f0c 	teq	r4, ip
1a007638:	d10a      	bne.n	1a007650 <__aeabi_ddiv+0x19c>
1a00763a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
1a00763e:	f47f af34 	bne.w	1a0074aa <__aeabi_dmul+0x24a>
1a007642:	ea95 0f0c 	teq	r5, ip
1a007646:	f47f af25 	bne.w	1a007494 <__aeabi_dmul+0x234>
1a00764a:	4610      	mov	r0, r2
1a00764c:	4619      	mov	r1, r3
1a00764e:	e72c      	b.n	1a0074aa <__aeabi_dmul+0x24a>
1a007650:	ea95 0f0c 	teq	r5, ip
1a007654:	d106      	bne.n	1a007664 <__aeabi_ddiv+0x1b0>
1a007656:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
1a00765a:	f43f aefd 	beq.w	1a007458 <__aeabi_dmul+0x1f8>
1a00765e:	4610      	mov	r0, r2
1a007660:	4619      	mov	r1, r3
1a007662:	e722      	b.n	1a0074aa <__aeabi_dmul+0x24a>
1a007664:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
1a007668:	bf18      	it	ne
1a00766a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
1a00766e:	f47f aec5 	bne.w	1a0073fc <__aeabi_dmul+0x19c>
1a007672:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
1a007676:	f47f af0d 	bne.w	1a007494 <__aeabi_dmul+0x234>
1a00767a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
1a00767e:	f47f aeeb 	bne.w	1a007458 <__aeabi_dmul+0x1f8>
1a007682:	e712      	b.n	1a0074aa <__aeabi_dmul+0x24a>

1a007684 <__gedf2>:
1a007684:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
1a007688:	e006      	b.n	1a007698 <__cmpdf2+0x4>
1a00768a:	bf00      	nop

1a00768c <__ledf2>:
1a00768c:	f04f 0c01 	mov.w	ip, #1
1a007690:	e002      	b.n	1a007698 <__cmpdf2+0x4>
1a007692:	bf00      	nop

1a007694 <__cmpdf2>:
1a007694:	f04f 0c01 	mov.w	ip, #1
1a007698:	f84d cd04 	str.w	ip, [sp, #-4]!
1a00769c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
1a0076a0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
1a0076a4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
1a0076a8:	bf18      	it	ne
1a0076aa:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
1a0076ae:	d01b      	beq.n	1a0076e8 <__cmpdf2+0x54>
1a0076b0:	b001      	add	sp, #4
1a0076b2:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
1a0076b6:	bf0c      	ite	eq
1a0076b8:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
1a0076bc:	ea91 0f03 	teqne	r1, r3
1a0076c0:	bf02      	ittt	eq
1a0076c2:	ea90 0f02 	teqeq	r0, r2
1a0076c6:	2000      	moveq	r0, #0
1a0076c8:	4770      	bxeq	lr
1a0076ca:	f110 0f00 	cmn.w	r0, #0
1a0076ce:	ea91 0f03 	teq	r1, r3
1a0076d2:	bf58      	it	pl
1a0076d4:	4299      	cmppl	r1, r3
1a0076d6:	bf08      	it	eq
1a0076d8:	4290      	cmpeq	r0, r2
1a0076da:	bf2c      	ite	cs
1a0076dc:	17d8      	asrcs	r0, r3, #31
1a0076de:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
1a0076e2:	f040 0001 	orr.w	r0, r0, #1
1a0076e6:	4770      	bx	lr
1a0076e8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
1a0076ec:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
1a0076f0:	d102      	bne.n	1a0076f8 <__cmpdf2+0x64>
1a0076f2:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
1a0076f6:	d107      	bne.n	1a007708 <__cmpdf2+0x74>
1a0076f8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
1a0076fc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
1a007700:	d1d6      	bne.n	1a0076b0 <__cmpdf2+0x1c>
1a007702:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
1a007706:	d0d3      	beq.n	1a0076b0 <__cmpdf2+0x1c>
1a007708:	f85d 0b04 	ldr.w	r0, [sp], #4
1a00770c:	4770      	bx	lr
1a00770e:	bf00      	nop

1a007710 <__aeabi_cdrcmple>:
1a007710:	4684      	mov	ip, r0
1a007712:	4610      	mov	r0, r2
1a007714:	4662      	mov	r2, ip
1a007716:	468c      	mov	ip, r1
1a007718:	4619      	mov	r1, r3
1a00771a:	4663      	mov	r3, ip
1a00771c:	e000      	b.n	1a007720 <__aeabi_cdcmpeq>
1a00771e:	bf00      	nop

1a007720 <__aeabi_cdcmpeq>:
1a007720:	b501      	push	{r0, lr}
1a007722:	f7ff ffb7 	bl	1a007694 <__cmpdf2>
1a007726:	2800      	cmp	r0, #0
1a007728:	bf48      	it	mi
1a00772a:	f110 0f00 	cmnmi.w	r0, #0
1a00772e:	bd01      	pop	{r0, pc}

1a007730 <__aeabi_dcmpeq>:
1a007730:	f84d ed08 	str.w	lr, [sp, #-8]!
1a007734:	f7ff fff4 	bl	1a007720 <__aeabi_cdcmpeq>
1a007738:	bf0c      	ite	eq
1a00773a:	2001      	moveq	r0, #1
1a00773c:	2000      	movne	r0, #0
1a00773e:	f85d fb08 	ldr.w	pc, [sp], #8
1a007742:	bf00      	nop

1a007744 <__aeabi_dcmplt>:
1a007744:	f84d ed08 	str.w	lr, [sp, #-8]!
1a007748:	f7ff ffea 	bl	1a007720 <__aeabi_cdcmpeq>
1a00774c:	bf34      	ite	cc
1a00774e:	2001      	movcc	r0, #1
1a007750:	2000      	movcs	r0, #0
1a007752:	f85d fb08 	ldr.w	pc, [sp], #8
1a007756:	bf00      	nop

1a007758 <__aeabi_dcmple>:
1a007758:	f84d ed08 	str.w	lr, [sp, #-8]!
1a00775c:	f7ff ffe0 	bl	1a007720 <__aeabi_cdcmpeq>
1a007760:	bf94      	ite	ls
1a007762:	2001      	movls	r0, #1
1a007764:	2000      	movhi	r0, #0
1a007766:	f85d fb08 	ldr.w	pc, [sp], #8
1a00776a:	bf00      	nop

1a00776c <__aeabi_dcmpge>:
1a00776c:	f84d ed08 	str.w	lr, [sp, #-8]!
1a007770:	f7ff ffce 	bl	1a007710 <__aeabi_cdrcmple>
1a007774:	bf94      	ite	ls
1a007776:	2001      	movls	r0, #1
1a007778:	2000      	movhi	r0, #0
1a00777a:	f85d fb08 	ldr.w	pc, [sp], #8
1a00777e:	bf00      	nop

1a007780 <__aeabi_dcmpgt>:
1a007780:	f84d ed08 	str.w	lr, [sp, #-8]!
1a007784:	f7ff ffc4 	bl	1a007710 <__aeabi_cdrcmple>
1a007788:	bf34      	ite	cc
1a00778a:	2001      	movcc	r0, #1
1a00778c:	2000      	movcs	r0, #0
1a00778e:	f85d fb08 	ldr.w	pc, [sp], #8
1a007792:	bf00      	nop

1a007794 <__aeabi_dcmpun>:
1a007794:	ea4f 0c41 	mov.w	ip, r1, lsl #1
1a007798:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
1a00779c:	d102      	bne.n	1a0077a4 <__aeabi_dcmpun+0x10>
1a00779e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
1a0077a2:	d10a      	bne.n	1a0077ba <__aeabi_dcmpun+0x26>
1a0077a4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
1a0077a8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
1a0077ac:	d102      	bne.n	1a0077b4 <__aeabi_dcmpun+0x20>
1a0077ae:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
1a0077b2:	d102      	bne.n	1a0077ba <__aeabi_dcmpun+0x26>
1a0077b4:	f04f 0000 	mov.w	r0, #0
1a0077b8:	4770      	bx	lr
1a0077ba:	f04f 0001 	mov.w	r0, #1
1a0077be:	4770      	bx	lr

1a0077c0 <__aeabi_d2iz>:
1a0077c0:	ea4f 0241 	mov.w	r2, r1, lsl #1
1a0077c4:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
1a0077c8:	d215      	bcs.n	1a0077f6 <__aeabi_d2iz+0x36>
1a0077ca:	d511      	bpl.n	1a0077f0 <__aeabi_d2iz+0x30>
1a0077cc:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
1a0077d0:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
1a0077d4:	d912      	bls.n	1a0077fc <__aeabi_d2iz+0x3c>
1a0077d6:	ea4f 23c1 	mov.w	r3, r1, lsl #11
1a0077da:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
1a0077de:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
1a0077e2:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
1a0077e6:	fa23 f002 	lsr.w	r0, r3, r2
1a0077ea:	bf18      	it	ne
1a0077ec:	4240      	negne	r0, r0
1a0077ee:	4770      	bx	lr
1a0077f0:	f04f 0000 	mov.w	r0, #0
1a0077f4:	4770      	bx	lr
1a0077f6:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
1a0077fa:	d105      	bne.n	1a007808 <__aeabi_d2iz+0x48>
1a0077fc:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
1a007800:	bf08      	it	eq
1a007802:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
1a007806:	4770      	bx	lr
1a007808:	f04f 0000 	mov.w	r0, #0
1a00780c:	4770      	bx	lr
1a00780e:	bf00      	nop

1a007810 <__aeabi_uldivmod>:
1a007810:	b953      	cbnz	r3, 1a007828 <__aeabi_uldivmod+0x18>
1a007812:	b94a      	cbnz	r2, 1a007828 <__aeabi_uldivmod+0x18>
1a007814:	2900      	cmp	r1, #0
1a007816:	bf08      	it	eq
1a007818:	2800      	cmpeq	r0, #0
1a00781a:	bf1c      	itt	ne
1a00781c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
1a007820:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
1a007824:	f000 b972 	b.w	1a007b0c <__aeabi_idiv0>
1a007828:	f1ad 0c08 	sub.w	ip, sp, #8
1a00782c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
1a007830:	f000 f806 	bl	1a007840 <__udivmoddi4>
1a007834:	f8dd e004 	ldr.w	lr, [sp, #4]
1a007838:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1a00783c:	b004      	add	sp, #16
1a00783e:	4770      	bx	lr

1a007840 <__udivmoddi4>:
1a007840:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
1a007844:	9e08      	ldr	r6, [sp, #32]
1a007846:	4604      	mov	r4, r0
1a007848:	4688      	mov	r8, r1
1a00784a:	2b00      	cmp	r3, #0
1a00784c:	d14b      	bne.n	1a0078e6 <__udivmoddi4+0xa6>
1a00784e:	428a      	cmp	r2, r1
1a007850:	4615      	mov	r5, r2
1a007852:	d967      	bls.n	1a007924 <__udivmoddi4+0xe4>
1a007854:	fab2 f282 	clz	r2, r2
1a007858:	b14a      	cbz	r2, 1a00786e <__udivmoddi4+0x2e>
1a00785a:	f1c2 0720 	rsb	r7, r2, #32
1a00785e:	fa01 f302 	lsl.w	r3, r1, r2
1a007862:	fa20 f707 	lsr.w	r7, r0, r7
1a007866:	4095      	lsls	r5, r2
1a007868:	ea47 0803 	orr.w	r8, r7, r3
1a00786c:	4094      	lsls	r4, r2
1a00786e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
1a007872:	0c23      	lsrs	r3, r4, #16
1a007874:	fbb8 f7fe 	udiv	r7, r8, lr
1a007878:	fa1f fc85 	uxth.w	ip, r5
1a00787c:	fb0e 8817 	mls	r8, lr, r7, r8
1a007880:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
1a007884:	fb07 f10c 	mul.w	r1, r7, ip
1a007888:	4299      	cmp	r1, r3
1a00788a:	d909      	bls.n	1a0078a0 <__udivmoddi4+0x60>
1a00788c:	18eb      	adds	r3, r5, r3
1a00788e:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
1a007892:	f080 811b 	bcs.w	1a007acc <__udivmoddi4+0x28c>
1a007896:	4299      	cmp	r1, r3
1a007898:	f240 8118 	bls.w	1a007acc <__udivmoddi4+0x28c>
1a00789c:	3f02      	subs	r7, #2
1a00789e:	442b      	add	r3, r5
1a0078a0:	1a5b      	subs	r3, r3, r1
1a0078a2:	b2a4      	uxth	r4, r4
1a0078a4:	fbb3 f0fe 	udiv	r0, r3, lr
1a0078a8:	fb0e 3310 	mls	r3, lr, r0, r3
1a0078ac:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
1a0078b0:	fb00 fc0c 	mul.w	ip, r0, ip
1a0078b4:	45a4      	cmp	ip, r4
1a0078b6:	d909      	bls.n	1a0078cc <__udivmoddi4+0x8c>
1a0078b8:	192c      	adds	r4, r5, r4
1a0078ba:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
1a0078be:	f080 8107 	bcs.w	1a007ad0 <__udivmoddi4+0x290>
1a0078c2:	45a4      	cmp	ip, r4
1a0078c4:	f240 8104 	bls.w	1a007ad0 <__udivmoddi4+0x290>
1a0078c8:	3802      	subs	r0, #2
1a0078ca:	442c      	add	r4, r5
1a0078cc:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
1a0078d0:	eba4 040c 	sub.w	r4, r4, ip
1a0078d4:	2700      	movs	r7, #0
1a0078d6:	b11e      	cbz	r6, 1a0078e0 <__udivmoddi4+0xa0>
1a0078d8:	40d4      	lsrs	r4, r2
1a0078da:	2300      	movs	r3, #0
1a0078dc:	e9c6 4300 	strd	r4, r3, [r6]
1a0078e0:	4639      	mov	r1, r7
1a0078e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a0078e6:	428b      	cmp	r3, r1
1a0078e8:	d909      	bls.n	1a0078fe <__udivmoddi4+0xbe>
1a0078ea:	2e00      	cmp	r6, #0
1a0078ec:	f000 80eb 	beq.w	1a007ac6 <__udivmoddi4+0x286>
1a0078f0:	2700      	movs	r7, #0
1a0078f2:	e9c6 0100 	strd	r0, r1, [r6]
1a0078f6:	4638      	mov	r0, r7
1a0078f8:	4639      	mov	r1, r7
1a0078fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1a0078fe:	fab3 f783 	clz	r7, r3
1a007902:	2f00      	cmp	r7, #0
1a007904:	d147      	bne.n	1a007996 <__udivmoddi4+0x156>
1a007906:	428b      	cmp	r3, r1
1a007908:	d302      	bcc.n	1a007910 <__udivmoddi4+0xd0>
1a00790a:	4282      	cmp	r2, r0
1a00790c:	f200 80fa 	bhi.w	1a007b04 <__udivmoddi4+0x2c4>
1a007910:	1a84      	subs	r4, r0, r2
1a007912:	eb61 0303 	sbc.w	r3, r1, r3
1a007916:	2001      	movs	r0, #1
1a007918:	4698      	mov	r8, r3
1a00791a:	2e00      	cmp	r6, #0
1a00791c:	d0e0      	beq.n	1a0078e0 <__udivmoddi4+0xa0>
1a00791e:	e9c6 4800 	strd	r4, r8, [r6]
1a007922:	e7dd      	b.n	1a0078e0 <__udivmoddi4+0xa0>
1a007924:	b902      	cbnz	r2, 1a007928 <__udivmoddi4+0xe8>
1a007926:	deff      	udf	#255	; 0xff
1a007928:	fab2 f282 	clz	r2, r2
1a00792c:	2a00      	cmp	r2, #0
1a00792e:	f040 808f 	bne.w	1a007a50 <__udivmoddi4+0x210>
1a007932:	1b49      	subs	r1, r1, r5
1a007934:	ea4f 4e15 	mov.w	lr, r5, lsr #16
1a007938:	fa1f f885 	uxth.w	r8, r5
1a00793c:	2701      	movs	r7, #1
1a00793e:	fbb1 fcfe 	udiv	ip, r1, lr
1a007942:	0c23      	lsrs	r3, r4, #16
1a007944:	fb0e 111c 	mls	r1, lr, ip, r1
1a007948:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
1a00794c:	fb08 f10c 	mul.w	r1, r8, ip
1a007950:	4299      	cmp	r1, r3
1a007952:	d907      	bls.n	1a007964 <__udivmoddi4+0x124>
1a007954:	18eb      	adds	r3, r5, r3
1a007956:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
1a00795a:	d202      	bcs.n	1a007962 <__udivmoddi4+0x122>
1a00795c:	4299      	cmp	r1, r3
1a00795e:	f200 80cd 	bhi.w	1a007afc <__udivmoddi4+0x2bc>
1a007962:	4684      	mov	ip, r0
1a007964:	1a59      	subs	r1, r3, r1
1a007966:	b2a3      	uxth	r3, r4
1a007968:	fbb1 f0fe 	udiv	r0, r1, lr
1a00796c:	fb0e 1410 	mls	r4, lr, r0, r1
1a007970:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
1a007974:	fb08 f800 	mul.w	r8, r8, r0
1a007978:	45a0      	cmp	r8, r4
1a00797a:	d907      	bls.n	1a00798c <__udivmoddi4+0x14c>
1a00797c:	192c      	adds	r4, r5, r4
1a00797e:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
1a007982:	d202      	bcs.n	1a00798a <__udivmoddi4+0x14a>
1a007984:	45a0      	cmp	r8, r4
1a007986:	f200 80b6 	bhi.w	1a007af6 <__udivmoddi4+0x2b6>
1a00798a:	4618      	mov	r0, r3
1a00798c:	eba4 0408 	sub.w	r4, r4, r8
1a007990:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
1a007994:	e79f      	b.n	1a0078d6 <__udivmoddi4+0x96>
1a007996:	f1c7 0c20 	rsb	ip, r7, #32
1a00799a:	40bb      	lsls	r3, r7
1a00799c:	fa22 fe0c 	lsr.w	lr, r2, ip
1a0079a0:	ea4e 0e03 	orr.w	lr, lr, r3
1a0079a4:	fa01 f407 	lsl.w	r4, r1, r7
1a0079a8:	fa20 f50c 	lsr.w	r5, r0, ip
1a0079ac:	fa21 f30c 	lsr.w	r3, r1, ip
1a0079b0:	ea4f 481e 	mov.w	r8, lr, lsr #16
1a0079b4:	4325      	orrs	r5, r4
1a0079b6:	fbb3 f9f8 	udiv	r9, r3, r8
1a0079ba:	0c2c      	lsrs	r4, r5, #16
1a0079bc:	fb08 3319 	mls	r3, r8, r9, r3
1a0079c0:	fa1f fa8e 	uxth.w	sl, lr
1a0079c4:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
1a0079c8:	fb09 f40a 	mul.w	r4, r9, sl
1a0079cc:	429c      	cmp	r4, r3
1a0079ce:	fa02 f207 	lsl.w	r2, r2, r7
1a0079d2:	fa00 f107 	lsl.w	r1, r0, r7
1a0079d6:	d90b      	bls.n	1a0079f0 <__udivmoddi4+0x1b0>
1a0079d8:	eb1e 0303 	adds.w	r3, lr, r3
1a0079dc:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
1a0079e0:	f080 8087 	bcs.w	1a007af2 <__udivmoddi4+0x2b2>
1a0079e4:	429c      	cmp	r4, r3
1a0079e6:	f240 8084 	bls.w	1a007af2 <__udivmoddi4+0x2b2>
1a0079ea:	f1a9 0902 	sub.w	r9, r9, #2
1a0079ee:	4473      	add	r3, lr
1a0079f0:	1b1b      	subs	r3, r3, r4
1a0079f2:	b2ad      	uxth	r5, r5
1a0079f4:	fbb3 f0f8 	udiv	r0, r3, r8
1a0079f8:	fb08 3310 	mls	r3, r8, r0, r3
1a0079fc:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
1a007a00:	fb00 fa0a 	mul.w	sl, r0, sl
1a007a04:	45a2      	cmp	sl, r4
1a007a06:	d908      	bls.n	1a007a1a <__udivmoddi4+0x1da>
1a007a08:	eb1e 0404 	adds.w	r4, lr, r4
1a007a0c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
1a007a10:	d26b      	bcs.n	1a007aea <__udivmoddi4+0x2aa>
1a007a12:	45a2      	cmp	sl, r4
1a007a14:	d969      	bls.n	1a007aea <__udivmoddi4+0x2aa>
1a007a16:	3802      	subs	r0, #2
1a007a18:	4474      	add	r4, lr
1a007a1a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
1a007a1e:	fba0 8902 	umull	r8, r9, r0, r2
1a007a22:	eba4 040a 	sub.w	r4, r4, sl
1a007a26:	454c      	cmp	r4, r9
1a007a28:	46c2      	mov	sl, r8
1a007a2a:	464b      	mov	r3, r9
1a007a2c:	d354      	bcc.n	1a007ad8 <__udivmoddi4+0x298>
1a007a2e:	d051      	beq.n	1a007ad4 <__udivmoddi4+0x294>
1a007a30:	2e00      	cmp	r6, #0
1a007a32:	d069      	beq.n	1a007b08 <__udivmoddi4+0x2c8>
1a007a34:	ebb1 050a 	subs.w	r5, r1, sl
1a007a38:	eb64 0403 	sbc.w	r4, r4, r3
1a007a3c:	fa04 fc0c 	lsl.w	ip, r4, ip
1a007a40:	40fd      	lsrs	r5, r7
1a007a42:	40fc      	lsrs	r4, r7
1a007a44:	ea4c 0505 	orr.w	r5, ip, r5
1a007a48:	e9c6 5400 	strd	r5, r4, [r6]
1a007a4c:	2700      	movs	r7, #0
1a007a4e:	e747      	b.n	1a0078e0 <__udivmoddi4+0xa0>
1a007a50:	f1c2 0320 	rsb	r3, r2, #32
1a007a54:	fa20 f703 	lsr.w	r7, r0, r3
1a007a58:	4095      	lsls	r5, r2
1a007a5a:	fa01 f002 	lsl.w	r0, r1, r2
1a007a5e:	fa21 f303 	lsr.w	r3, r1, r3
1a007a62:	ea4f 4e15 	mov.w	lr, r5, lsr #16
1a007a66:	4338      	orrs	r0, r7
1a007a68:	0c01      	lsrs	r1, r0, #16
1a007a6a:	fbb3 f7fe 	udiv	r7, r3, lr
1a007a6e:	fa1f f885 	uxth.w	r8, r5
1a007a72:	fb0e 3317 	mls	r3, lr, r7, r3
1a007a76:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
1a007a7a:	fb07 f308 	mul.w	r3, r7, r8
1a007a7e:	428b      	cmp	r3, r1
1a007a80:	fa04 f402 	lsl.w	r4, r4, r2
1a007a84:	d907      	bls.n	1a007a96 <__udivmoddi4+0x256>
1a007a86:	1869      	adds	r1, r5, r1
1a007a88:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
1a007a8c:	d22f      	bcs.n	1a007aee <__udivmoddi4+0x2ae>
1a007a8e:	428b      	cmp	r3, r1
1a007a90:	d92d      	bls.n	1a007aee <__udivmoddi4+0x2ae>
1a007a92:	3f02      	subs	r7, #2
1a007a94:	4429      	add	r1, r5
1a007a96:	1acb      	subs	r3, r1, r3
1a007a98:	b281      	uxth	r1, r0
1a007a9a:	fbb3 f0fe 	udiv	r0, r3, lr
1a007a9e:	fb0e 3310 	mls	r3, lr, r0, r3
1a007aa2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
1a007aa6:	fb00 f308 	mul.w	r3, r0, r8
1a007aaa:	428b      	cmp	r3, r1
1a007aac:	d907      	bls.n	1a007abe <__udivmoddi4+0x27e>
1a007aae:	1869      	adds	r1, r5, r1
1a007ab0:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
1a007ab4:	d217      	bcs.n	1a007ae6 <__udivmoddi4+0x2a6>
1a007ab6:	428b      	cmp	r3, r1
1a007ab8:	d915      	bls.n	1a007ae6 <__udivmoddi4+0x2a6>
1a007aba:	3802      	subs	r0, #2
1a007abc:	4429      	add	r1, r5
1a007abe:	1ac9      	subs	r1, r1, r3
1a007ac0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
1a007ac4:	e73b      	b.n	1a00793e <__udivmoddi4+0xfe>
1a007ac6:	4637      	mov	r7, r6
1a007ac8:	4630      	mov	r0, r6
1a007aca:	e709      	b.n	1a0078e0 <__udivmoddi4+0xa0>
1a007acc:	4607      	mov	r7, r0
1a007ace:	e6e7      	b.n	1a0078a0 <__udivmoddi4+0x60>
1a007ad0:	4618      	mov	r0, r3
1a007ad2:	e6fb      	b.n	1a0078cc <__udivmoddi4+0x8c>
1a007ad4:	4541      	cmp	r1, r8
1a007ad6:	d2ab      	bcs.n	1a007a30 <__udivmoddi4+0x1f0>
1a007ad8:	ebb8 0a02 	subs.w	sl, r8, r2
1a007adc:	eb69 020e 	sbc.w	r2, r9, lr
1a007ae0:	3801      	subs	r0, #1
1a007ae2:	4613      	mov	r3, r2
1a007ae4:	e7a4      	b.n	1a007a30 <__udivmoddi4+0x1f0>
1a007ae6:	4660      	mov	r0, ip
1a007ae8:	e7e9      	b.n	1a007abe <__udivmoddi4+0x27e>
1a007aea:	4618      	mov	r0, r3
1a007aec:	e795      	b.n	1a007a1a <__udivmoddi4+0x1da>
1a007aee:	4667      	mov	r7, ip
1a007af0:	e7d1      	b.n	1a007a96 <__udivmoddi4+0x256>
1a007af2:	4681      	mov	r9, r0
1a007af4:	e77c      	b.n	1a0079f0 <__udivmoddi4+0x1b0>
1a007af6:	3802      	subs	r0, #2
1a007af8:	442c      	add	r4, r5
1a007afa:	e747      	b.n	1a00798c <__udivmoddi4+0x14c>
1a007afc:	f1ac 0c02 	sub.w	ip, ip, #2
1a007b00:	442b      	add	r3, r5
1a007b02:	e72f      	b.n	1a007964 <__udivmoddi4+0x124>
1a007b04:	4638      	mov	r0, r7
1a007b06:	e708      	b.n	1a00791a <__udivmoddi4+0xda>
1a007b08:	4637      	mov	r7, r6
1a007b0a:	e6e9      	b.n	1a0078e0 <__udivmoddi4+0xa0>

1a007b0c <__aeabi_idiv0>:
1a007b0c:	4770      	bx	lr
1a007b0e:	bf00      	nop
1a007b10:	00000a0d 	.word	0x00000a0d
1a007b14:	76206c65 	.word	0x76206c65
1a007b18:	726f6c61 	.word	0x726f6c61
1a007b1c:	20656420 	.word	0x20656420
1a007b20:	65206970 	.word	0x65206970
1a007b24:	66252073 	.word	0x66252073
1a007b28:	ff000a0d 	.word	0xff000a0d

1a007b2c <ExtRateIn>:
1a007b2c:	00000000                                ....

1a007b30 <OscRateIn>:
1a007b30:	00b71b00                                ....

1a007b34 <leds>:
1a007b34:	02050202 0a020014 00100e00 0b010b02     ................
1a007b44:	0c020010 00100c01 00050002 01020014     ................
1a007b54:	00140105                                ....

1a007b58 <keys>:
1a007b58:	04000001 01010050 00500800 09000201     ....P.....P.....
1a007b68:	06010050 00500901                       P.....P.

1a007b70 <InitClkStates>:
1a007b70:	00010100 00010909 0001090a 01010701     ................
1a007b80:	00010902 00010906 0101090c 0001090d     ................
1a007b90:	0001090e 0001090f 00010910 00010911     ................
1a007ba0:	00010912 00010913 00011114 00011119     ................
1a007bb0:	0001111a 0001111b                       ........

1a007bb8 <UART_PClock>:
1a007bb8:	00820081 00a200a1                       ........

1a007bc0 <UART_BClock>:
1a007bc0:	01a201c2 01620182                       ......b.

1a007bc8 <periph_to_base>:
1a007bc8:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a007bd8:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a007be8:	000100e0 01000100 01200003 00060120     .......... . ...
1a007bf8:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a007c08:	01820013 00120182 01a201a2 01c20011     ................
1a007c18:	001001c2 01e201e2 0202000f 000e0202     ................
1a007c28:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a007c38:	0f0f0f03 ffff00ff 00464e49 00666e69     ........INF.inf.
1a007c48:	004e414e 006e616e 33323130 37363534     NAN.nan.01234567
1a007c58:	62613938 66656463 00000000 33323130     89abcdef....0123
1a007c68:	37363534 42413938 46454443 00000000     456789ABCDEF....
1a007c78:	6c756e28 0000296c ffff0030              (null)..0...

1a007c84 <blanks.8605>:
1a007c84:	20202020 20202020 20202020 20202020                     

1a007c94 <zeroes.8606>:
1a007c94:	30303030 30303030 30303030 30303030     0000000000000000
1a007ca4:	69666e49 7974696e 00000000 004e614e     Infinity....NaN.
1a007cb4:	ffffffff                                ....

1a007cb8 <__mprec_bigtens>:
1a007cb8:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
1a007cc8:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
1a007cd8:	7f73bf3c 75154fdd                       <.s..O.u

1a007ce0 <__mprec_tens>:
1a007ce0:	00000000 3ff00000 00000000 40240000     .......?......$@
1a007cf0:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
1a007d00:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
1a007d10:	00000000 412e8480 00000000 416312d0     .......A......cA
1a007d20:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
1a007d30:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
1a007d40:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
1a007d50:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
1a007d60:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
1a007d70:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
1a007d80:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
1a007d90:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
1a007da0:	79d99db4 44ea7843                       ...yCx.D

1a007da8 <p05.7367>:
1a007da8:	00000005 00000019 0000007d 00000043     ........}...C...
1a007db8:	49534f50 ffff0058 0000002e              POSIX.......

1a007dc4 <_ctype_>:
1a007dc4:	20202000 20202020 28282020 20282828     .         ((((( 
1a007dd4:	20202020 20202020 20202020 20202020                     
1a007de4:	10108820 10101010 10101010 10101010      ...............
1a007df4:	04040410 04040404 10040404 10101010     ................
1a007e04:	41411010 41414141 01010101 01010101     ..AAAAAA........
1a007e14:	01010101 01010101 01010101 10101010     ................
1a007e24:	42421010 42424242 02020202 02020202     ..BBBBBB........
1a007e34:	02020202 02020202 02020202 10101010     ................
1a007e44:	00000020 00000000 00000000 00000000      ...............
	...
1a007ec4:	ffffff00                                ....

Disassembly of section .init:

1a007ec8 <_init>:
1a007ec8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a007eca:	bf00      	nop

Disassembly of section .fini:

1a007ecc <_fini>:
1a007ecc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a007ece:	bf00      	nop
