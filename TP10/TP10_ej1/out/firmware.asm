
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 bd 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	c5 0a 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 9d 03 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a dd 0a 00 1a fd 0a 00 1a 1d 0b 00 1a     ................
1a0000cc:	3d 0b 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     =...............
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002a7c 	.word	0x1a002a7c
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
1a0003a6:	f000 ff44 	bl	1a001232 <Chip_UART_IRQRBHandler>
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
1a000482:	f000 f9ed 	bl	1a000860 <sysInit>
1a000486:	f107 0328 	add.w	r3, r7, #40	; 0x28
1a00048a:	4618      	mov	r0, r3
1a00048c:	f002 f87a 	bl	1a002584 <mallinfo>
1a000490:	2001      	movs	r0, #1
1a000492:	f001 fd1d 	bl	1a001ed0 <malloc>
1a000496:	4603      	mov	r3, r0
1a000498:	65bb      	str	r3, [r7, #88]	; 0x58
1a00049a:	2001      	movs	r0, #1
1a00049c:	f001 fd18 	bl	1a001ed0 <malloc>
1a0004a0:	4603      	mov	r3, r0
1a0004a2:	657b      	str	r3, [r7, #84]	; 0x54
1a0004a4:	2064      	movs	r0, #100	; 0x64
1a0004a6:	f001 fd13 	bl	1a001ed0 <malloc>
1a0004aa:	4603      	mov	r3, r0
1a0004ac:	653b      	str	r3, [r7, #80]	; 0x50
1a0004ae:	6dbb      	ldr	r3, [r7, #88]	; 0x58
1a0004b0:	220a      	movs	r2, #10
1a0004b2:	701a      	strb	r2, [r3, #0]
1a0004b4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
1a0004b6:	22cd      	movs	r2, #205	; 0xcd
1a0004b8:	701a      	strb	r2, [r3, #0]
1a0004ba:	6d3b      	ldr	r3, [r7, #80]	; 0x50
1a0004bc:	2287      	movs	r2, #135	; 0x87
1a0004be:	701a      	strb	r2, [r3, #0]
1a0004c0:	2301      	movs	r3, #1
1a0004c2:	f887 305f 	strb.w	r3, [r7, #95]	; 0x5f
1a0004c6:	e00b      	b.n	1a0004e0 <main+0x64>
1a0004c8:	f897 305f 	ldrb.w	r3, [r7, #95]	; 0x5f
1a0004cc:	6d3a      	ldr	r2, [r7, #80]	; 0x50
1a0004ce:	4413      	add	r3, r2
1a0004d0:	f897 205f 	ldrb.w	r2, [r7, #95]	; 0x5f
1a0004d4:	701a      	strb	r2, [r3, #0]
1a0004d6:	f897 305f 	ldrb.w	r3, [r7, #95]	; 0x5f
1a0004da:	3301      	adds	r3, #1
1a0004dc:	f887 305f 	strb.w	r3, [r7, #95]	; 0x5f
1a0004e0:	f897 305f 	ldrb.w	r3, [r7, #95]	; 0x5f
1a0004e4:	2b63      	cmp	r3, #99	; 0x63
1a0004e6:	d9ef      	bls.n	1a0004c8 <main+0x4c>
1a0004e8:	463b      	mov	r3, r7
1a0004ea:	4618      	mov	r0, r3
1a0004ec:	f002 f84a 	bl	1a002584 <mallinfo>
1a0004f0:	f107 0428 	add.w	r4, r7, #40	; 0x28
1a0004f4:	463d      	mov	r5, r7
1a0004f6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004f8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004fa:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a0004fc:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a0004fe:	e895 0003 	ldmia.w	r5, {r0, r1}
1a000502:	e884 0003 	stmia.w	r4, {r0, r1}
1a000506:	6db8      	ldr	r0, [r7, #88]	; 0x58
1a000508:	f001 fcea 	bl	1a001ee0 <free>
1a00050c:	6d78      	ldr	r0, [r7, #84]	; 0x54
1a00050e:	f001 fce7 	bl	1a001ee0 <free>
1a000512:	6d38      	ldr	r0, [r7, #80]	; 0x50
1a000514:	f001 fce4 	bl	1a001ee0 <free>
1a000518:	463b      	mov	r3, r7
1a00051a:	4618      	mov	r0, r3
1a00051c:	f002 f832 	bl	1a002584 <mallinfo>
1a000520:	f107 0428 	add.w	r4, r7, #40	; 0x28
1a000524:	463d      	mov	r5, r7
1a000526:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a000528:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a00052a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a00052c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a00052e:	e895 0003 	ldmia.w	r5, {r0, r1}
1a000532:	e884 0003 	stmia.w	r4, {r0, r1}
1a000536:	e7fe      	b.n	1a000536 <main+0xba>

1a000538 <NVIC_EnableIRQ>:
1a000538:	b480      	push	{r7}
1a00053a:	b083      	sub	sp, #12
1a00053c:	af00      	add	r7, sp, #0
1a00053e:	4603      	mov	r3, r0
1a000540:	71fb      	strb	r3, [r7, #7]
1a000542:	79fb      	ldrb	r3, [r7, #7]
1a000544:	f003 031f 	and.w	r3, r3, #31
1a000548:	2201      	movs	r2, #1
1a00054a:	fa02 f103 	lsl.w	r1, r2, r3
1a00054e:	4a06      	ldr	r2, [pc, #24]	; (1a000568 <NVIC_EnableIRQ+0x30>)
1a000550:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000554:	095b      	lsrs	r3, r3, #5
1a000556:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00055a:	bf00      	nop
1a00055c:	370c      	adds	r7, #12
1a00055e:	46bd      	mov	sp, r7
1a000560:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000564:	4770      	bx	lr
1a000566:	bf00      	nop
1a000568:	e000e100 	.word	0xe000e100

1a00056c <NVIC_ClearPendingIRQ>:
1a00056c:	b480      	push	{r7}
1a00056e:	b083      	sub	sp, #12
1a000570:	af00      	add	r7, sp, #0
1a000572:	4603      	mov	r3, r0
1a000574:	71fb      	strb	r3, [r7, #7]
1a000576:	79fb      	ldrb	r3, [r7, #7]
1a000578:	f003 031f 	and.w	r3, r3, #31
1a00057c:	2201      	movs	r2, #1
1a00057e:	fa02 f103 	lsl.w	r1, r2, r3
1a000582:	4a06      	ldr	r2, [pc, #24]	; (1a00059c <NVIC_ClearPendingIRQ+0x30>)
1a000584:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000588:	095b      	lsrs	r3, r3, #5
1a00058a:	3360      	adds	r3, #96	; 0x60
1a00058c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000590:	bf00      	nop
1a000592:	370c      	adds	r7, #12
1a000594:	46bd      	mov	sp, r7
1a000596:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00059a:	4770      	bx	lr
1a00059c:	e000e100 	.word	0xe000e100

1a0005a0 <NVIC_SetPriority>:
1a0005a0:	b480      	push	{r7}
1a0005a2:	b083      	sub	sp, #12
1a0005a4:	af00      	add	r7, sp, #0
1a0005a6:	4603      	mov	r3, r0
1a0005a8:	6039      	str	r1, [r7, #0]
1a0005aa:	71fb      	strb	r3, [r7, #7]
1a0005ac:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005b0:	2b00      	cmp	r3, #0
1a0005b2:	da0b      	bge.n	1a0005cc <NVIC_SetPriority+0x2c>
1a0005b4:	683b      	ldr	r3, [r7, #0]
1a0005b6:	b2da      	uxtb	r2, r3
1a0005b8:	490c      	ldr	r1, [pc, #48]	; (1a0005ec <NVIC_SetPriority+0x4c>)
1a0005ba:	79fb      	ldrb	r3, [r7, #7]
1a0005bc:	f003 030f 	and.w	r3, r3, #15
1a0005c0:	3b04      	subs	r3, #4
1a0005c2:	0152      	lsls	r2, r2, #5
1a0005c4:	b2d2      	uxtb	r2, r2
1a0005c6:	440b      	add	r3, r1
1a0005c8:	761a      	strb	r2, [r3, #24]
1a0005ca:	e009      	b.n	1a0005e0 <NVIC_SetPriority+0x40>
1a0005cc:	683b      	ldr	r3, [r7, #0]
1a0005ce:	b2da      	uxtb	r2, r3
1a0005d0:	4907      	ldr	r1, [pc, #28]	; (1a0005f0 <NVIC_SetPriority+0x50>)
1a0005d2:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005d6:	0152      	lsls	r2, r2, #5
1a0005d8:	b2d2      	uxtb	r2, r2
1a0005da:	440b      	add	r3, r1
1a0005dc:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0005e0:	bf00      	nop
1a0005e2:	370c      	adds	r7, #12
1a0005e4:	46bd      	mov	sp, r7
1a0005e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005ea:	4770      	bx	lr
1a0005ec:	e000ed00 	.word	0xe000ed00
1a0005f0:	e000e100 	.word	0xe000e100

1a0005f4 <SysTick_Config>:
1a0005f4:	b580      	push	{r7, lr}
1a0005f6:	b082      	sub	sp, #8
1a0005f8:	af00      	add	r7, sp, #0
1a0005fa:	6078      	str	r0, [r7, #4]
1a0005fc:	687b      	ldr	r3, [r7, #4]
1a0005fe:	3b01      	subs	r3, #1
1a000600:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a000604:	d301      	bcc.n	1a00060a <SysTick_Config+0x16>
1a000606:	2301      	movs	r3, #1
1a000608:	e00f      	b.n	1a00062a <SysTick_Config+0x36>
1a00060a:	4a0a      	ldr	r2, [pc, #40]	; (1a000634 <SysTick_Config+0x40>)
1a00060c:	687b      	ldr	r3, [r7, #4]
1a00060e:	3b01      	subs	r3, #1
1a000610:	6053      	str	r3, [r2, #4]
1a000612:	2107      	movs	r1, #7
1a000614:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000618:	f7ff ffc2 	bl	1a0005a0 <NVIC_SetPriority>
1a00061c:	4b05      	ldr	r3, [pc, #20]	; (1a000634 <SysTick_Config+0x40>)
1a00061e:	2200      	movs	r2, #0
1a000620:	609a      	str	r2, [r3, #8]
1a000622:	4b04      	ldr	r3, [pc, #16]	; (1a000634 <SysTick_Config+0x40>)
1a000624:	2207      	movs	r2, #7
1a000626:	601a      	str	r2, [r3, #0]
1a000628:	2300      	movs	r3, #0
1a00062a:	4618      	mov	r0, r3
1a00062c:	3708      	adds	r7, #8
1a00062e:	46bd      	mov	sp, r7
1a000630:	bd80      	pop	{r7, pc}
1a000632:	bf00      	nop
1a000634:	e000e010 	.word	0xe000e010

1a000638 <Chip_SCU_PinMuxSet>:
1a000638:	b480      	push	{r7}
1a00063a:	b083      	sub	sp, #12
1a00063c:	af00      	add	r7, sp, #0
1a00063e:	4603      	mov	r3, r0
1a000640:	71fb      	strb	r3, [r7, #7]
1a000642:	460b      	mov	r3, r1
1a000644:	71bb      	strb	r3, [r7, #6]
1a000646:	4613      	mov	r3, r2
1a000648:	80bb      	strh	r3, [r7, #4]
1a00064a:	4807      	ldr	r0, [pc, #28]	; (1a000668 <Chip_SCU_PinMuxSet+0x30>)
1a00064c:	79f9      	ldrb	r1, [r7, #7]
1a00064e:	79bb      	ldrb	r3, [r7, #6]
1a000650:	88ba      	ldrh	r2, [r7, #4]
1a000652:	0149      	lsls	r1, r1, #5
1a000654:	440b      	add	r3, r1
1a000656:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a00065a:	bf00      	nop
1a00065c:	370c      	adds	r7, #12
1a00065e:	46bd      	mov	sp, r7
1a000660:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000664:	4770      	bx	lr
1a000666:	bf00      	nop
1a000668:	40086000 	.word	0x40086000

1a00066c <Chip_SCU_GPIOIntPinSel>:
1a00066c:	b480      	push	{r7}
1a00066e:	b085      	sub	sp, #20
1a000670:	af00      	add	r7, sp, #0
1a000672:	4603      	mov	r3, r0
1a000674:	71fb      	strb	r3, [r7, #7]
1a000676:	460b      	mov	r3, r1
1a000678:	71bb      	strb	r3, [r7, #6]
1a00067a:	4613      	mov	r3, r2
1a00067c:	717b      	strb	r3, [r7, #5]
1a00067e:	79fb      	ldrb	r3, [r7, #7]
1a000680:	00db      	lsls	r3, r3, #3
1a000682:	f003 0318 	and.w	r3, r3, #24
1a000686:	60fb      	str	r3, [r7, #12]
1a000688:	79bb      	ldrb	r3, [r7, #6]
1a00068a:	015b      	lsls	r3, r3, #5
1a00068c:	b2da      	uxtb	r2, r3
1a00068e:	797b      	ldrb	r3, [r7, #5]
1a000690:	f003 031f 	and.w	r3, r3, #31
1a000694:	431a      	orrs	r2, r3
1a000696:	68fb      	ldr	r3, [r7, #12]
1a000698:	fa02 f303 	lsl.w	r3, r2, r3
1a00069c:	60bb      	str	r3, [r7, #8]
1a00069e:	4a0f      	ldr	r2, [pc, #60]	; (1a0006dc <Chip_SCU_GPIOIntPinSel+0x70>)
1a0006a0:	79fb      	ldrb	r3, [r7, #7]
1a0006a2:	089b      	lsrs	r3, r3, #2
1a0006a4:	b2db      	uxtb	r3, r3
1a0006a6:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a0006aa:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0006ae:	21ff      	movs	r1, #255	; 0xff
1a0006b0:	68fa      	ldr	r2, [r7, #12]
1a0006b2:	fa01 f202 	lsl.w	r2, r1, r2
1a0006b6:	43d2      	mvns	r2, r2
1a0006b8:	401a      	ands	r2, r3
1a0006ba:	4908      	ldr	r1, [pc, #32]	; (1a0006dc <Chip_SCU_GPIOIntPinSel+0x70>)
1a0006bc:	79fb      	ldrb	r3, [r7, #7]
1a0006be:	089b      	lsrs	r3, r3, #2
1a0006c0:	b2db      	uxtb	r3, r3
1a0006c2:	4618      	mov	r0, r3
1a0006c4:	68bb      	ldr	r3, [r7, #8]
1a0006c6:	431a      	orrs	r2, r3
1a0006c8:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a0006cc:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a0006d0:	bf00      	nop
1a0006d2:	3714      	adds	r7, #20
1a0006d4:	46bd      	mov	sp, r7
1a0006d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006da:	4770      	bx	lr
1a0006dc:	40086000 	.word	0x40086000

1a0006e0 <Chip_GPIO_SetPinDIROutput>:
1a0006e0:	b480      	push	{r7}
1a0006e2:	b083      	sub	sp, #12
1a0006e4:	af00      	add	r7, sp, #0
1a0006e6:	6078      	str	r0, [r7, #4]
1a0006e8:	460b      	mov	r3, r1
1a0006ea:	70fb      	strb	r3, [r7, #3]
1a0006ec:	4613      	mov	r3, r2
1a0006ee:	70bb      	strb	r3, [r7, #2]
1a0006f0:	78fa      	ldrb	r2, [r7, #3]
1a0006f2:	687b      	ldr	r3, [r7, #4]
1a0006f4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0006f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0006fc:	78bb      	ldrb	r3, [r7, #2]
1a0006fe:	2201      	movs	r2, #1
1a000700:	fa02 f303 	lsl.w	r3, r2, r3
1a000704:	78fa      	ldrb	r2, [r7, #3]
1a000706:	4319      	orrs	r1, r3
1a000708:	687b      	ldr	r3, [r7, #4]
1a00070a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00070e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000712:	bf00      	nop
1a000714:	370c      	adds	r7, #12
1a000716:	46bd      	mov	sp, r7
1a000718:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00071c:	4770      	bx	lr

1a00071e <Chip_GPIO_SetPinDIRInput>:
1a00071e:	b480      	push	{r7}
1a000720:	b083      	sub	sp, #12
1a000722:	af00      	add	r7, sp, #0
1a000724:	6078      	str	r0, [r7, #4]
1a000726:	460b      	mov	r3, r1
1a000728:	70fb      	strb	r3, [r7, #3]
1a00072a:	4613      	mov	r3, r2
1a00072c:	70bb      	strb	r3, [r7, #2]
1a00072e:	78fa      	ldrb	r2, [r7, #3]
1a000730:	687b      	ldr	r3, [r7, #4]
1a000732:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000736:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a00073a:	78bb      	ldrb	r3, [r7, #2]
1a00073c:	2201      	movs	r2, #1
1a00073e:	fa02 f303 	lsl.w	r3, r2, r3
1a000742:	43db      	mvns	r3, r3
1a000744:	78fa      	ldrb	r2, [r7, #3]
1a000746:	4019      	ands	r1, r3
1a000748:	687b      	ldr	r3, [r7, #4]
1a00074a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00074e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000752:	bf00      	nop
1a000754:	370c      	adds	r7, #12
1a000756:	46bd      	mov	sp, r7
1a000758:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00075c:	4770      	bx	lr

1a00075e <Chip_GPIO_SetPinOutLow>:
1a00075e:	b480      	push	{r7}
1a000760:	b083      	sub	sp, #12
1a000762:	af00      	add	r7, sp, #0
1a000764:	6078      	str	r0, [r7, #4]
1a000766:	460b      	mov	r3, r1
1a000768:	70fb      	strb	r3, [r7, #3]
1a00076a:	4613      	mov	r3, r2
1a00076c:	70bb      	strb	r3, [r7, #2]
1a00076e:	78bb      	ldrb	r3, [r7, #2]
1a000770:	2201      	movs	r2, #1
1a000772:	fa02 f303 	lsl.w	r3, r2, r3
1a000776:	78fa      	ldrb	r2, [r7, #3]
1a000778:	4619      	mov	r1, r3
1a00077a:	687b      	ldr	r3, [r7, #4]
1a00077c:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000780:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000784:	bf00      	nop
1a000786:	370c      	adds	r7, #12
1a000788:	46bd      	mov	sp, r7
1a00078a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00078e:	4770      	bx	lr

1a000790 <Chip_PININT_SetPinModeEdge>:
1a000790:	b480      	push	{r7}
1a000792:	b083      	sub	sp, #12
1a000794:	af00      	add	r7, sp, #0
1a000796:	6078      	str	r0, [r7, #4]
1a000798:	6039      	str	r1, [r7, #0]
1a00079a:	687b      	ldr	r3, [r7, #4]
1a00079c:	681a      	ldr	r2, [r3, #0]
1a00079e:	683b      	ldr	r3, [r7, #0]
1a0007a0:	43db      	mvns	r3, r3
1a0007a2:	401a      	ands	r2, r3
1a0007a4:	687b      	ldr	r3, [r7, #4]
1a0007a6:	601a      	str	r2, [r3, #0]
1a0007a8:	bf00      	nop
1a0007aa:	370c      	adds	r7, #12
1a0007ac:	46bd      	mov	sp, r7
1a0007ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007b2:	4770      	bx	lr

1a0007b4 <Chip_PININT_EnableIntLow>:
1a0007b4:	b480      	push	{r7}
1a0007b6:	b083      	sub	sp, #12
1a0007b8:	af00      	add	r7, sp, #0
1a0007ba:	6078      	str	r0, [r7, #4]
1a0007bc:	6039      	str	r1, [r7, #0]
1a0007be:	687b      	ldr	r3, [r7, #4]
1a0007c0:	683a      	ldr	r2, [r7, #0]
1a0007c2:	615a      	str	r2, [r3, #20]
1a0007c4:	bf00      	nop
1a0007c6:	370c      	adds	r7, #12
1a0007c8:	46bd      	mov	sp, r7
1a0007ca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ce:	4770      	bx	lr

1a0007d0 <Chip_PININT_ClearIntStatus>:
1a0007d0:	b480      	push	{r7}
1a0007d2:	b083      	sub	sp, #12
1a0007d4:	af00      	add	r7, sp, #0
1a0007d6:	6078      	str	r0, [r7, #4]
1a0007d8:	6039      	str	r1, [r7, #0]
1a0007da:	687b      	ldr	r3, [r7, #4]
1a0007dc:	683a      	ldr	r2, [r7, #0]
1a0007de:	625a      	str	r2, [r3, #36]	; 0x24
1a0007e0:	bf00      	nop
1a0007e2:	370c      	adds	r7, #12
1a0007e4:	46bd      	mov	sp, r7
1a0007e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ea:	4770      	bx	lr

1a0007ec <Chip_UART_TXEnable>:
1a0007ec:	b480      	push	{r7}
1a0007ee:	b083      	sub	sp, #12
1a0007f0:	af00      	add	r7, sp, #0
1a0007f2:	6078      	str	r0, [r7, #4]
1a0007f4:	687b      	ldr	r3, [r7, #4]
1a0007f6:	2201      	movs	r2, #1
1a0007f8:	65da      	str	r2, [r3, #92]	; 0x5c
1a0007fa:	bf00      	nop
1a0007fc:	370c      	adds	r7, #12
1a0007fe:	46bd      	mov	sp, r7
1a000800:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000804:	4770      	bx	lr

1a000806 <Chip_UART_IntEnable>:
1a000806:	b480      	push	{r7}
1a000808:	b083      	sub	sp, #12
1a00080a:	af00      	add	r7, sp, #0
1a00080c:	6078      	str	r0, [r7, #4]
1a00080e:	6039      	str	r1, [r7, #0]
1a000810:	687b      	ldr	r3, [r7, #4]
1a000812:	685a      	ldr	r2, [r3, #4]
1a000814:	683b      	ldr	r3, [r7, #0]
1a000816:	431a      	orrs	r2, r3
1a000818:	687b      	ldr	r3, [r7, #4]
1a00081a:	605a      	str	r2, [r3, #4]
1a00081c:	bf00      	nop
1a00081e:	370c      	adds	r7, #12
1a000820:	46bd      	mov	sp, r7
1a000822:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000826:	4770      	bx	lr

1a000828 <Chip_UART_SetupFIFOS>:
1a000828:	b480      	push	{r7}
1a00082a:	b083      	sub	sp, #12
1a00082c:	af00      	add	r7, sp, #0
1a00082e:	6078      	str	r0, [r7, #4]
1a000830:	6039      	str	r1, [r7, #0]
1a000832:	687b      	ldr	r3, [r7, #4]
1a000834:	683a      	ldr	r2, [r7, #0]
1a000836:	609a      	str	r2, [r3, #8]
1a000838:	bf00      	nop
1a00083a:	370c      	adds	r7, #12
1a00083c:	46bd      	mov	sp, r7
1a00083e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000842:	4770      	bx	lr

1a000844 <Chip_UART_ConfigData>:
1a000844:	b480      	push	{r7}
1a000846:	b083      	sub	sp, #12
1a000848:	af00      	add	r7, sp, #0
1a00084a:	6078      	str	r0, [r7, #4]
1a00084c:	6039      	str	r1, [r7, #0]
1a00084e:	687b      	ldr	r3, [r7, #4]
1a000850:	683a      	ldr	r2, [r7, #0]
1a000852:	60da      	str	r2, [r3, #12]
1a000854:	bf00      	nop
1a000856:	370c      	adds	r7, #12
1a000858:	46bd      	mov	sp, r7
1a00085a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00085e:	4770      	bx	lr

1a000860 <sysInit>:
1a000860:	b590      	push	{r4, r7, lr}
1a000862:	b083      	sub	sp, #12
1a000864:	af00      	add	r7, sp, #0
1a000866:	f000 fae5 	bl	1a000e34 <Chip_SetupXtalClocking>
1a00086a:	f001 fad7 	bl	1a001e1c <SystemCoreClockUpdate>
1a00086e:	f000 fd23 	bl	1a0012b8 <StopWatch_Init>
1a000872:	f000 f9bb 	bl	1a000bec <fpuInit>
1a000876:	488c      	ldr	r0, [pc, #560]	; (1a000aa8 <sysInit+0x248>)
1a000878:	f001 fadc 	bl	1a001e34 <Chip_GPIO_Init>
1a00087c:	2300      	movs	r3, #0
1a00087e:	607b      	str	r3, [r7, #4]
1a000880:	e04e      	b.n	1a000920 <sysInit+0xc0>
1a000882:	498a      	ldr	r1, [pc, #552]	; (1a000aac <sysInit+0x24c>)
1a000884:	687a      	ldr	r2, [r7, #4]
1a000886:	4613      	mov	r3, r2
1a000888:	005b      	lsls	r3, r3, #1
1a00088a:	4413      	add	r3, r2
1a00088c:	005b      	lsls	r3, r3, #1
1a00088e:	440b      	add	r3, r1
1a000890:	7818      	ldrb	r0, [r3, #0]
1a000892:	4986      	ldr	r1, [pc, #536]	; (1a000aac <sysInit+0x24c>)
1a000894:	687a      	ldr	r2, [r7, #4]
1a000896:	4613      	mov	r3, r2
1a000898:	005b      	lsls	r3, r3, #1
1a00089a:	4413      	add	r3, r2
1a00089c:	005b      	lsls	r3, r3, #1
1a00089e:	440b      	add	r3, r1
1a0008a0:	3301      	adds	r3, #1
1a0008a2:	781c      	ldrb	r4, [r3, #0]
1a0008a4:	4981      	ldr	r1, [pc, #516]	; (1a000aac <sysInit+0x24c>)
1a0008a6:	687a      	ldr	r2, [r7, #4]
1a0008a8:	4613      	mov	r3, r2
1a0008aa:	005b      	lsls	r3, r3, #1
1a0008ac:	4413      	add	r3, r2
1a0008ae:	005b      	lsls	r3, r3, #1
1a0008b0:	440b      	add	r3, r1
1a0008b2:	3304      	adds	r3, #4
1a0008b4:	881b      	ldrh	r3, [r3, #0]
1a0008b6:	461a      	mov	r2, r3
1a0008b8:	4621      	mov	r1, r4
1a0008ba:	f7ff febd 	bl	1a000638 <Chip_SCU_PinMuxSet>
1a0008be:	497b      	ldr	r1, [pc, #492]	; (1a000aac <sysInit+0x24c>)
1a0008c0:	687a      	ldr	r2, [r7, #4]
1a0008c2:	4613      	mov	r3, r2
1a0008c4:	005b      	lsls	r3, r3, #1
1a0008c6:	4413      	add	r3, r2
1a0008c8:	005b      	lsls	r3, r3, #1
1a0008ca:	440b      	add	r3, r1
1a0008cc:	3302      	adds	r3, #2
1a0008ce:	7818      	ldrb	r0, [r3, #0]
1a0008d0:	4976      	ldr	r1, [pc, #472]	; (1a000aac <sysInit+0x24c>)
1a0008d2:	687a      	ldr	r2, [r7, #4]
1a0008d4:	4613      	mov	r3, r2
1a0008d6:	005b      	lsls	r3, r3, #1
1a0008d8:	4413      	add	r3, r2
1a0008da:	005b      	lsls	r3, r3, #1
1a0008dc:	440b      	add	r3, r1
1a0008de:	3303      	adds	r3, #3
1a0008e0:	781b      	ldrb	r3, [r3, #0]
1a0008e2:	461a      	mov	r2, r3
1a0008e4:	4601      	mov	r1, r0
1a0008e6:	4870      	ldr	r0, [pc, #448]	; (1a000aa8 <sysInit+0x248>)
1a0008e8:	f7ff fefa 	bl	1a0006e0 <Chip_GPIO_SetPinDIROutput>
1a0008ec:	496f      	ldr	r1, [pc, #444]	; (1a000aac <sysInit+0x24c>)
1a0008ee:	687a      	ldr	r2, [r7, #4]
1a0008f0:	4613      	mov	r3, r2
1a0008f2:	005b      	lsls	r3, r3, #1
1a0008f4:	4413      	add	r3, r2
1a0008f6:	005b      	lsls	r3, r3, #1
1a0008f8:	440b      	add	r3, r1
1a0008fa:	3302      	adds	r3, #2
1a0008fc:	7818      	ldrb	r0, [r3, #0]
1a0008fe:	496b      	ldr	r1, [pc, #428]	; (1a000aac <sysInit+0x24c>)
1a000900:	687a      	ldr	r2, [r7, #4]
1a000902:	4613      	mov	r3, r2
1a000904:	005b      	lsls	r3, r3, #1
1a000906:	4413      	add	r3, r2
1a000908:	005b      	lsls	r3, r3, #1
1a00090a:	440b      	add	r3, r1
1a00090c:	3303      	adds	r3, #3
1a00090e:	781b      	ldrb	r3, [r3, #0]
1a000910:	461a      	mov	r2, r3
1a000912:	4601      	mov	r1, r0
1a000914:	4864      	ldr	r0, [pc, #400]	; (1a000aa8 <sysInit+0x248>)
1a000916:	f7ff ff22 	bl	1a00075e <Chip_GPIO_SetPinOutLow>
1a00091a:	687b      	ldr	r3, [r7, #4]
1a00091c:	3301      	adds	r3, #1
1a00091e:	607b      	str	r3, [r7, #4]
1a000920:	687b      	ldr	r3, [r7, #4]
1a000922:	2b05      	cmp	r3, #5
1a000924:	d9ad      	bls.n	1a000882 <sysInit+0x22>
1a000926:	2300      	movs	r3, #0
1a000928:	607b      	str	r3, [r7, #4]
1a00092a:	e037      	b.n	1a00099c <sysInit+0x13c>
1a00092c:	4960      	ldr	r1, [pc, #384]	; (1a000ab0 <sysInit+0x250>)
1a00092e:	687a      	ldr	r2, [r7, #4]
1a000930:	4613      	mov	r3, r2
1a000932:	005b      	lsls	r3, r3, #1
1a000934:	4413      	add	r3, r2
1a000936:	005b      	lsls	r3, r3, #1
1a000938:	440b      	add	r3, r1
1a00093a:	7818      	ldrb	r0, [r3, #0]
1a00093c:	495c      	ldr	r1, [pc, #368]	; (1a000ab0 <sysInit+0x250>)
1a00093e:	687a      	ldr	r2, [r7, #4]
1a000940:	4613      	mov	r3, r2
1a000942:	005b      	lsls	r3, r3, #1
1a000944:	4413      	add	r3, r2
1a000946:	005b      	lsls	r3, r3, #1
1a000948:	440b      	add	r3, r1
1a00094a:	3301      	adds	r3, #1
1a00094c:	781c      	ldrb	r4, [r3, #0]
1a00094e:	4958      	ldr	r1, [pc, #352]	; (1a000ab0 <sysInit+0x250>)
1a000950:	687a      	ldr	r2, [r7, #4]
1a000952:	4613      	mov	r3, r2
1a000954:	005b      	lsls	r3, r3, #1
1a000956:	4413      	add	r3, r2
1a000958:	005b      	lsls	r3, r3, #1
1a00095a:	440b      	add	r3, r1
1a00095c:	3304      	adds	r3, #4
1a00095e:	881b      	ldrh	r3, [r3, #0]
1a000960:	461a      	mov	r2, r3
1a000962:	4621      	mov	r1, r4
1a000964:	f7ff fe68 	bl	1a000638 <Chip_SCU_PinMuxSet>
1a000968:	4951      	ldr	r1, [pc, #324]	; (1a000ab0 <sysInit+0x250>)
1a00096a:	687a      	ldr	r2, [r7, #4]
1a00096c:	4613      	mov	r3, r2
1a00096e:	005b      	lsls	r3, r3, #1
1a000970:	4413      	add	r3, r2
1a000972:	005b      	lsls	r3, r3, #1
1a000974:	440b      	add	r3, r1
1a000976:	3302      	adds	r3, #2
1a000978:	7818      	ldrb	r0, [r3, #0]
1a00097a:	494d      	ldr	r1, [pc, #308]	; (1a000ab0 <sysInit+0x250>)
1a00097c:	687a      	ldr	r2, [r7, #4]
1a00097e:	4613      	mov	r3, r2
1a000980:	005b      	lsls	r3, r3, #1
1a000982:	4413      	add	r3, r2
1a000984:	005b      	lsls	r3, r3, #1
1a000986:	440b      	add	r3, r1
1a000988:	3303      	adds	r3, #3
1a00098a:	781b      	ldrb	r3, [r3, #0]
1a00098c:	461a      	mov	r2, r3
1a00098e:	4601      	mov	r1, r0
1a000990:	4845      	ldr	r0, [pc, #276]	; (1a000aa8 <sysInit+0x248>)
1a000992:	f7ff fec4 	bl	1a00071e <Chip_GPIO_SetPinDIRInput>
1a000996:	687b      	ldr	r3, [r7, #4]
1a000998:	3301      	adds	r3, #1
1a00099a:	607b      	str	r3, [r7, #4]
1a00099c:	687b      	ldr	r3, [r7, #4]
1a00099e:	2b03      	cmp	r3, #3
1a0009a0:	d9c4      	bls.n	1a00092c <sysInit+0xcc>
1a0009a2:	221e      	movs	r2, #30
1a0009a4:	2101      	movs	r1, #1
1a0009a6:	2007      	movs	r0, #7
1a0009a8:	f7ff fe46 	bl	1a000638 <Chip_SCU_PinMuxSet>
1a0009ac:	22d6      	movs	r2, #214	; 0xd6
1a0009ae:	2102      	movs	r1, #2
1a0009b0:	2007      	movs	r0, #7
1a0009b2:	f7ff fe41 	bl	1a000638 <Chip_SCU_PinMuxSet>
1a0009b6:	483f      	ldr	r0, [pc, #252]	; (1a000ab4 <sysInit+0x254>)
1a0009b8:	f000 fb78 	bl	1a0010ac <Chip_UART_Init>
1a0009bc:	2103      	movs	r1, #3
1a0009be:	483d      	ldr	r0, [pc, #244]	; (1a000ab4 <sysInit+0x254>)
1a0009c0:	f7ff ff40 	bl	1a000844 <Chip_UART_ConfigData>
1a0009c4:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0009c8:	483a      	ldr	r0, [pc, #232]	; (1a000ab4 <sysInit+0x254>)
1a0009ca:	f000 fbb3 	bl	1a001134 <Chip_UART_SetBaud>
1a0009ce:	21c7      	movs	r1, #199	; 0xc7
1a0009d0:	4838      	ldr	r0, [pc, #224]	; (1a000ab4 <sysInit+0x254>)
1a0009d2:	f7ff ff29 	bl	1a000828 <Chip_UART_SetupFIFOS>
1a0009d6:	2101      	movs	r1, #1
1a0009d8:	4836      	ldr	r0, [pc, #216]	; (1a000ab4 <sysInit+0x254>)
1a0009da:	f7ff ff14 	bl	1a000806 <Chip_UART_IntEnable>
1a0009de:	2300      	movs	r3, #0
1a0009e0:	607b      	str	r3, [r7, #4]
1a0009e2:	e032      	b.n	1a000a4a <sysInit+0x1ea>
1a0009e4:	687b      	ldr	r3, [r7, #4]
1a0009e6:	b2d8      	uxtb	r0, r3
1a0009e8:	4931      	ldr	r1, [pc, #196]	; (1a000ab0 <sysInit+0x250>)
1a0009ea:	687a      	ldr	r2, [r7, #4]
1a0009ec:	4613      	mov	r3, r2
1a0009ee:	005b      	lsls	r3, r3, #1
1a0009f0:	4413      	add	r3, r2
1a0009f2:	005b      	lsls	r3, r3, #1
1a0009f4:	440b      	add	r3, r1
1a0009f6:	3302      	adds	r3, #2
1a0009f8:	781c      	ldrb	r4, [r3, #0]
1a0009fa:	492d      	ldr	r1, [pc, #180]	; (1a000ab0 <sysInit+0x250>)
1a0009fc:	687a      	ldr	r2, [r7, #4]
1a0009fe:	4613      	mov	r3, r2
1a000a00:	005b      	lsls	r3, r3, #1
1a000a02:	4413      	add	r3, r2
1a000a04:	005b      	lsls	r3, r3, #1
1a000a06:	440b      	add	r3, r1
1a000a08:	3303      	adds	r3, #3
1a000a0a:	781b      	ldrb	r3, [r3, #0]
1a000a0c:	461a      	mov	r2, r3
1a000a0e:	4621      	mov	r1, r4
1a000a10:	f7ff fe2c 	bl	1a00066c <Chip_SCU_GPIOIntPinSel>
1a000a14:	2201      	movs	r2, #1
1a000a16:	687b      	ldr	r3, [r7, #4]
1a000a18:	fa02 f303 	lsl.w	r3, r2, r3
1a000a1c:	4619      	mov	r1, r3
1a000a1e:	4826      	ldr	r0, [pc, #152]	; (1a000ab8 <sysInit+0x258>)
1a000a20:	f7ff fed6 	bl	1a0007d0 <Chip_PININT_ClearIntStatus>
1a000a24:	2201      	movs	r2, #1
1a000a26:	687b      	ldr	r3, [r7, #4]
1a000a28:	fa02 f303 	lsl.w	r3, r2, r3
1a000a2c:	4619      	mov	r1, r3
1a000a2e:	4822      	ldr	r0, [pc, #136]	; (1a000ab8 <sysInit+0x258>)
1a000a30:	f7ff feae 	bl	1a000790 <Chip_PININT_SetPinModeEdge>
1a000a34:	2201      	movs	r2, #1
1a000a36:	687b      	ldr	r3, [r7, #4]
1a000a38:	fa02 f303 	lsl.w	r3, r2, r3
1a000a3c:	4619      	mov	r1, r3
1a000a3e:	481e      	ldr	r0, [pc, #120]	; (1a000ab8 <sysInit+0x258>)
1a000a40:	f7ff feb8 	bl	1a0007b4 <Chip_PININT_EnableIntLow>
1a000a44:	687b      	ldr	r3, [r7, #4]
1a000a46:	3301      	adds	r3, #1
1a000a48:	607b      	str	r3, [r7, #4]
1a000a4a:	687b      	ldr	r3, [r7, #4]
1a000a4c:	2b03      	cmp	r3, #3
1a000a4e:	ddc9      	ble.n	1a0009e4 <sysInit+0x184>
1a000a50:	2020      	movs	r0, #32
1a000a52:	f7ff fd8b 	bl	1a00056c <NVIC_ClearPendingIRQ>
1a000a56:	2021      	movs	r0, #33	; 0x21
1a000a58:	f7ff fd88 	bl	1a00056c <NVIC_ClearPendingIRQ>
1a000a5c:	2022      	movs	r0, #34	; 0x22
1a000a5e:	f7ff fd85 	bl	1a00056c <NVIC_ClearPendingIRQ>
1a000a62:	2023      	movs	r0, #35	; 0x23
1a000a64:	f7ff fd82 	bl	1a00056c <NVIC_ClearPendingIRQ>
1a000a68:	2020      	movs	r0, #32
1a000a6a:	f7ff fd65 	bl	1a000538 <NVIC_EnableIRQ>
1a000a6e:	2021      	movs	r0, #33	; 0x21
1a000a70:	f7ff fd62 	bl	1a000538 <NVIC_EnableIRQ>
1a000a74:	2022      	movs	r0, #34	; 0x22
1a000a76:	f7ff fd5f 	bl	1a000538 <NVIC_EnableIRQ>
1a000a7a:	2023      	movs	r0, #35	; 0x23
1a000a7c:	f7ff fd5c 	bl	1a000538 <NVIC_EnableIRQ>
1a000a80:	201a      	movs	r0, #26
1a000a82:	f7ff fd59 	bl	1a000538 <NVIC_EnableIRQ>
1a000a86:	480b      	ldr	r0, [pc, #44]	; (1a000ab4 <sysInit+0x254>)
1a000a88:	f7ff feb0 	bl	1a0007ec <Chip_UART_TXEnable>
1a000a8c:	4b0b      	ldr	r3, [pc, #44]	; (1a000abc <sysInit+0x25c>)
1a000a8e:	681b      	ldr	r3, [r3, #0]
1a000a90:	4a0b      	ldr	r2, [pc, #44]	; (1a000ac0 <sysInit+0x260>)
1a000a92:	fba2 2303 	umull	r2, r3, r2, r3
1a000a96:	099b      	lsrs	r3, r3, #6
1a000a98:	4618      	mov	r0, r3
1a000a9a:	f7ff fdab 	bl	1a0005f4 <SysTick_Config>
1a000a9e:	bf00      	nop
1a000aa0:	370c      	adds	r7, #12
1a000aa2:	46bd      	mov	sp, r7
1a000aa4:	bd90      	pop	{r4, r7, pc}
1a000aa6:	bf00      	nop
1a000aa8:	400f4000 	.word	0x400f4000
1a000aac:	1a002968 	.word	0x1a002968
1a000ab0:	1a00298c 	.word	0x1a00298c
1a000ab4:	400c1000 	.word	0x400c1000
1a000ab8:	40087000 	.word	0x40087000
1a000abc:	100008dc 	.word	0x100008dc
1a000ac0:	10624dd3 	.word	0x10624dd3

1a000ac4 <SysTick_Handler>:
1a000ac4:	b480      	push	{r7}
1a000ac6:	af00      	add	r7, sp, #0
1a000ac8:	4b03      	ldr	r3, [pc, #12]	; (1a000ad8 <SysTick_Handler+0x14>)
1a000aca:	2201      	movs	r2, #1
1a000acc:	701a      	strb	r2, [r3, #0]
1a000ace:	bf00      	nop
1a000ad0:	46bd      	mov	sp, r7
1a000ad2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ad6:	4770      	bx	lr
1a000ad8:	1000086d 	.word	0x1000086d

1a000adc <GPIO0_IRQHandler>:
1a000adc:	b580      	push	{r7, lr}
1a000ade:	af00      	add	r7, sp, #0
1a000ae0:	4b04      	ldr	r3, [pc, #16]	; (1a000af4 <GPIO0_IRQHandler+0x18>)
1a000ae2:	2201      	movs	r2, #1
1a000ae4:	701a      	strb	r2, [r3, #0]
1a000ae6:	2101      	movs	r1, #1
1a000ae8:	4803      	ldr	r0, [pc, #12]	; (1a000af8 <GPIO0_IRQHandler+0x1c>)
1a000aea:	f7ff fe71 	bl	1a0007d0 <Chip_PININT_ClearIntStatus>
1a000aee:	bf00      	nop
1a000af0:	bd80      	pop	{r7, pc}
1a000af2:	bf00      	nop
1a000af4:	1000086c 	.word	0x1000086c
1a000af8:	40087000 	.word	0x40087000

1a000afc <GPIO1_IRQHandler>:
1a000afc:	b580      	push	{r7, lr}
1a000afe:	af00      	add	r7, sp, #0
1a000b00:	4b04      	ldr	r3, [pc, #16]	; (1a000b14 <GPIO1_IRQHandler+0x18>)
1a000b02:	2202      	movs	r2, #2
1a000b04:	701a      	strb	r2, [r3, #0]
1a000b06:	2102      	movs	r1, #2
1a000b08:	4803      	ldr	r0, [pc, #12]	; (1a000b18 <GPIO1_IRQHandler+0x1c>)
1a000b0a:	f7ff fe61 	bl	1a0007d0 <Chip_PININT_ClearIntStatus>
1a000b0e:	bf00      	nop
1a000b10:	bd80      	pop	{r7, pc}
1a000b12:	bf00      	nop
1a000b14:	1000086c 	.word	0x1000086c
1a000b18:	40087000 	.word	0x40087000

1a000b1c <GPIO2_IRQHandler>:
1a000b1c:	b580      	push	{r7, lr}
1a000b1e:	af00      	add	r7, sp, #0
1a000b20:	4b04      	ldr	r3, [pc, #16]	; (1a000b34 <GPIO2_IRQHandler+0x18>)
1a000b22:	2203      	movs	r2, #3
1a000b24:	701a      	strb	r2, [r3, #0]
1a000b26:	2104      	movs	r1, #4
1a000b28:	4803      	ldr	r0, [pc, #12]	; (1a000b38 <GPIO2_IRQHandler+0x1c>)
1a000b2a:	f7ff fe51 	bl	1a0007d0 <Chip_PININT_ClearIntStatus>
1a000b2e:	bf00      	nop
1a000b30:	bd80      	pop	{r7, pc}
1a000b32:	bf00      	nop
1a000b34:	1000086c 	.word	0x1000086c
1a000b38:	40087000 	.word	0x40087000

1a000b3c <GPIO3_IRQHandler>:
1a000b3c:	b580      	push	{r7, lr}
1a000b3e:	af00      	add	r7, sp, #0
1a000b40:	4b04      	ldr	r3, [pc, #16]	; (1a000b54 <GPIO3_IRQHandler+0x18>)
1a000b42:	2204      	movs	r2, #4
1a000b44:	701a      	strb	r2, [r3, #0]
1a000b46:	2108      	movs	r1, #8
1a000b48:	4803      	ldr	r0, [pc, #12]	; (1a000b58 <GPIO3_IRQHandler+0x1c>)
1a000b4a:	f7ff fe41 	bl	1a0007d0 <Chip_PININT_ClearIntStatus>
1a000b4e:	bf00      	nop
1a000b50:	bd80      	pop	{r7, pc}
1a000b52:	bf00      	nop
1a000b54:	1000086c 	.word	0x1000086c
1a000b58:	40087000 	.word	0x40087000

1a000b5c <_sbrk>:
1a000b5c:	b580      	push	{r7, lr}
1a000b5e:	b084      	sub	sp, #16
1a000b60:	af00      	add	r7, sp, #0
1a000b62:	6078      	str	r0, [r7, #4]
1a000b64:	4b0d      	ldr	r3, [pc, #52]	; (1a000b9c <_sbrk+0x40>)
1a000b66:	681b      	ldr	r3, [r3, #0]
1a000b68:	60fb      	str	r3, [r7, #12]
1a000b6a:	4b0c      	ldr	r3, [pc, #48]	; (1a000b9c <_sbrk+0x40>)
1a000b6c:	681a      	ldr	r2, [r3, #0]
1a000b6e:	687b      	ldr	r3, [r7, #4]
1a000b70:	4413      	add	r3, r2
1a000b72:	4a0a      	ldr	r2, [pc, #40]	; (1a000b9c <_sbrk+0x40>)
1a000b74:	6013      	str	r3, [r2, #0]
1a000b76:	4b09      	ldr	r3, [pc, #36]	; (1a000b9c <_sbrk+0x40>)
1a000b78:	681b      	ldr	r3, [r3, #0]
1a000b7a:	4a09      	ldr	r2, [pc, #36]	; (1a000ba0 <_sbrk+0x44>)
1a000b7c:	4293      	cmp	r3, r2
1a000b7e:	d307      	bcc.n	1a000b90 <_sbrk+0x34>
1a000b80:	4a06      	ldr	r2, [pc, #24]	; (1a000b9c <_sbrk+0x40>)
1a000b82:	68fb      	ldr	r3, [r7, #12]
1a000b84:	6013      	str	r3, [r2, #0]
1a000b86:	4b07      	ldr	r3, [pc, #28]	; (1a000ba4 <_sbrk+0x48>)
1a000b88:	220c      	movs	r2, #12
1a000b8a:	601a      	str	r2, [r3, #0]
1a000b8c:	f001 f998 	bl	1a001ec0 <abort>
1a000b90:	68fb      	ldr	r3, [r7, #12]
1a000b92:	4618      	mov	r0, r3
1a000b94:	3710      	adds	r7, #16
1a000b96:	46bd      	mov	sp, r7
1a000b98:	bd80      	pop	{r7, pc}
1a000b9a:	bf00      	nop
1a000b9c:	10000430 	.word	0x10000430
1a000ba0:	1008a000 	.word	0x1008a000
1a000ba4:	100008e0 	.word	0x100008e0

1a000ba8 <_kill>:
1a000ba8:	b480      	push	{r7}
1a000baa:	b083      	sub	sp, #12
1a000bac:	af00      	add	r7, sp, #0
1a000bae:	6078      	str	r0, [r7, #4]
1a000bb0:	6039      	str	r1, [r7, #0]
1a000bb2:	4b05      	ldr	r3, [pc, #20]	; (1a000bc8 <_kill+0x20>)
1a000bb4:	2216      	movs	r2, #22
1a000bb6:	601a      	str	r2, [r3, #0]
1a000bb8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a000bbc:	4618      	mov	r0, r3
1a000bbe:	370c      	adds	r7, #12
1a000bc0:	46bd      	mov	sp, r7
1a000bc2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bc6:	4770      	bx	lr
1a000bc8:	100008e0 	.word	0x100008e0

1a000bcc <_getpid>:
1a000bcc:	b480      	push	{r7}
1a000bce:	af00      	add	r7, sp, #0
1a000bd0:	2301      	movs	r3, #1
1a000bd2:	4618      	mov	r0, r3
1a000bd4:	46bd      	mov	sp, r7
1a000bd6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bda:	4770      	bx	lr

1a000bdc <_exit>:
1a000bdc:	b580      	push	{r7, lr}
1a000bde:	b082      	sub	sp, #8
1a000be0:	af00      	add	r7, sp, #0
1a000be2:	6078      	str	r0, [r7, #4]
1a000be4:	6878      	ldr	r0, [r7, #4]
1a000be6:	f001 f967 	bl	1a001eb8 <_Exit>
1a000bea:	Address 0x000000001a000bea is out of bounds.


1a000bec <fpuInit>:
1a000bec:	b480      	push	{r7}
1a000bee:	b089      	sub	sp, #36	; 0x24
1a000bf0:	af00      	add	r7, sp, #0
1a000bf2:	4b16      	ldr	r3, [pc, #88]	; (1a000c4c <fpuInit+0x60>)
1a000bf4:	61fb      	str	r3, [r7, #28]
1a000bf6:	4b16      	ldr	r3, [pc, #88]	; (1a000c50 <fpuInit+0x64>)
1a000bf8:	61bb      	str	r3, [r7, #24]
1a000bfa:	4b16      	ldr	r3, [pc, #88]	; (1a000c54 <fpuInit+0x68>)
1a000bfc:	617b      	str	r3, [r7, #20]
1a000bfe:	2300      	movs	r3, #0
1a000c00:	74fb      	strb	r3, [r7, #19]
1a000c02:	69bb      	ldr	r3, [r7, #24]
1a000c04:	681b      	ldr	r3, [r3, #0]
1a000c06:	60bb      	str	r3, [r7, #8]
1a000c08:	697b      	ldr	r3, [r7, #20]
1a000c0a:	681b      	ldr	r3, [r3, #0]
1a000c0c:	607b      	str	r3, [r7, #4]
1a000c0e:	68bb      	ldr	r3, [r7, #8]
1a000c10:	4a11      	ldr	r2, [pc, #68]	; (1a000c58 <fpuInit+0x6c>)
1a000c12:	4293      	cmp	r3, r2
1a000c14:	d105      	bne.n	1a000c22 <fpuInit+0x36>
1a000c16:	687b      	ldr	r3, [r7, #4]
1a000c18:	4a10      	ldr	r2, [pc, #64]	; (1a000c5c <fpuInit+0x70>)
1a000c1a:	4293      	cmp	r3, r2
1a000c1c:	d101      	bne.n	1a000c22 <fpuInit+0x36>
1a000c1e:	2301      	movs	r3, #1
1a000c20:	e000      	b.n	1a000c24 <fpuInit+0x38>
1a000c22:	2300      	movs	r3, #0
1a000c24:	74fb      	strb	r3, [r7, #19]
1a000c26:	7cfb      	ldrb	r3, [r7, #19]
1a000c28:	2b00      	cmp	r3, #0
1a000c2a:	d009      	beq.n	1a000c40 <fpuInit+0x54>
1a000c2c:	69fb      	ldr	r3, [r7, #28]
1a000c2e:	681b      	ldr	r3, [r3, #0]
1a000c30:	60fb      	str	r3, [r7, #12]
1a000c32:	68fb      	ldr	r3, [r7, #12]
1a000c34:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000c38:	60fb      	str	r3, [r7, #12]
1a000c3a:	68fa      	ldr	r2, [r7, #12]
1a000c3c:	69fb      	ldr	r3, [r7, #28]
1a000c3e:	601a      	str	r2, [r3, #0]
1a000c40:	bf00      	nop
1a000c42:	3724      	adds	r7, #36	; 0x24
1a000c44:	46bd      	mov	sp, r7
1a000c46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c4a:	4770      	bx	lr
1a000c4c:	e000ed88 	.word	0xe000ed88
1a000c50:	e000ef40 	.word	0xe000ef40
1a000c54:	e000ef44 	.word	0xe000ef44
1a000c58:	10110021 	.word	0x10110021
1a000c5c:	11000011 	.word	0x11000011

1a000c60 <Chip_Clock_DisableMainPLL>:
1a000c60:	b480      	push	{r7}
1a000c62:	af00      	add	r7, sp, #0
1a000c64:	4b05      	ldr	r3, [pc, #20]	; (1a000c7c <Chip_Clock_DisableMainPLL+0x1c>)
1a000c66:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000c68:	4a04      	ldr	r2, [pc, #16]	; (1a000c7c <Chip_Clock_DisableMainPLL+0x1c>)
1a000c6a:	f043 0301 	orr.w	r3, r3, #1
1a000c6e:	6453      	str	r3, [r2, #68]	; 0x44
1a000c70:	bf00      	nop
1a000c72:	46bd      	mov	sp, r7
1a000c74:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c78:	4770      	bx	lr
1a000c7a:	bf00      	nop
1a000c7c:	40050000 	.word	0x40050000

1a000c80 <Chip_Clock_SetupMainPLL>:
1a000c80:	b480      	push	{r7}
1a000c82:	b083      	sub	sp, #12
1a000c84:	af00      	add	r7, sp, #0
1a000c86:	6078      	str	r0, [r7, #4]
1a000c88:	687b      	ldr	r3, [r7, #4]
1a000c8a:	681b      	ldr	r3, [r3, #0]
1a000c8c:	461a      	mov	r2, r3
1a000c8e:	687b      	ldr	r3, [r7, #4]
1a000c90:	791b      	ldrb	r3, [r3, #4]
1a000c92:	061b      	lsls	r3, r3, #24
1a000c94:	4313      	orrs	r3, r2
1a000c96:	687a      	ldr	r2, [r7, #4]
1a000c98:	6912      	ldr	r2, [r2, #16]
1a000c9a:	0412      	lsls	r2, r2, #16
1a000c9c:	4313      	orrs	r3, r2
1a000c9e:	687a      	ldr	r2, [r7, #4]
1a000ca0:	6892      	ldr	r2, [r2, #8]
1a000ca2:	0312      	lsls	r2, r2, #12
1a000ca4:	4313      	orrs	r3, r2
1a000ca6:	687a      	ldr	r2, [r7, #4]
1a000ca8:	68d2      	ldr	r2, [r2, #12]
1a000caa:	0212      	lsls	r2, r2, #8
1a000cac:	4313      	orrs	r3, r2
1a000cae:	4a05      	ldr	r2, [pc, #20]	; (1a000cc4 <Chip_Clock_SetupMainPLL+0x44>)
1a000cb0:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000cb4:	6453      	str	r3, [r2, #68]	; 0x44
1a000cb6:	bf00      	nop
1a000cb8:	370c      	adds	r7, #12
1a000cba:	46bd      	mov	sp, r7
1a000cbc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cc0:	4770      	bx	lr
1a000cc2:	bf00      	nop
1a000cc4:	40050000 	.word	0x40050000

1a000cc8 <Chip_Clock_MainPLLLocked>:
1a000cc8:	b480      	push	{r7}
1a000cca:	af00      	add	r7, sp, #0
1a000ccc:	4b06      	ldr	r3, [pc, #24]	; (1a000ce8 <Chip_Clock_MainPLLLocked+0x20>)
1a000cce:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000cd0:	f003 0301 	and.w	r3, r3, #1
1a000cd4:	2b00      	cmp	r3, #0
1a000cd6:	bf14      	ite	ne
1a000cd8:	2301      	movne	r3, #1
1a000cda:	2300      	moveq	r3, #0
1a000cdc:	b2db      	uxtb	r3, r3
1a000cde:	4618      	mov	r0, r3
1a000ce0:	46bd      	mov	sp, r7
1a000ce2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ce6:	4770      	bx	lr
1a000ce8:	40050000 	.word	0x40050000

1a000cec <Chip_SetupCoreClock>:
1a000cec:	b590      	push	{r4, r7, lr}
1a000cee:	b08f      	sub	sp, #60	; 0x3c
1a000cf0:	af00      	add	r7, sp, #0
1a000cf2:	4603      	mov	r3, r0
1a000cf4:	6039      	str	r1, [r7, #0]
1a000cf6:	71fb      	strb	r3, [r7, #7]
1a000cf8:	4613      	mov	r3, r2
1a000cfa:	71bb      	strb	r3, [r7, #6]
1a000cfc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000d00:	62bb      	str	r3, [r7, #40]	; 0x28
1a000d02:	2300      	movs	r3, #0
1a000d04:	633b      	str	r3, [r7, #48]	; 0x30
1a000d06:	2300      	movs	r3, #0
1a000d08:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000d0a:	79fb      	ldrb	r3, [r7, #7]
1a000d0c:	2b06      	cmp	r3, #6
1a000d0e:	d101      	bne.n	1a000d14 <Chip_SetupCoreClock+0x28>
1a000d10:	f000 fd6c 	bl	1a0017ec <Chip_Clock_EnableCrystal>
1a000d14:	79f9      	ldrb	r1, [r7, #7]
1a000d16:	2300      	movs	r3, #0
1a000d18:	2201      	movs	r2, #1
1a000d1a:	2004      	movs	r0, #4
1a000d1c:	f000 ff58 	bl	1a001bd0 <Chip_Clock_SetBaseClock>
1a000d20:	f7ff ff9e 	bl	1a000c60 <Chip_Clock_DisableMainPLL>
1a000d24:	79fb      	ldrb	r3, [r7, #7]
1a000d26:	733b      	strb	r3, [r7, #12]
1a000d28:	f107 0308 	add.w	r3, r7, #8
1a000d2c:	4619      	mov	r1, r3
1a000d2e:	6838      	ldr	r0, [r7, #0]
1a000d30:	f000 fd94 	bl	1a00185c <Chip_Clock_CalcMainPLLValue>
1a000d34:	683b      	ldr	r3, [r7, #0]
1a000d36:	4a3d      	ldr	r2, [pc, #244]	; (1a000e2c <Chip_SetupCoreClock+0x140>)
1a000d38:	4293      	cmp	r3, r2
1a000d3a:	d916      	bls.n	1a000d6a <Chip_SetupCoreClock+0x7e>
1a000d3c:	68bb      	ldr	r3, [r7, #8]
1a000d3e:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000d42:	2b00      	cmp	r3, #0
1a000d44:	d000      	beq.n	1a000d48 <Chip_SetupCoreClock+0x5c>
1a000d46:	e7fe      	b.n	1a000d46 <Chip_SetupCoreClock+0x5a>
1a000d48:	68bb      	ldr	r3, [r7, #8]
1a000d4a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000d4e:	2b00      	cmp	r3, #0
1a000d50:	d006      	beq.n	1a000d60 <Chip_SetupCoreClock+0x74>
1a000d52:	2301      	movs	r3, #1
1a000d54:	633b      	str	r3, [r7, #48]	; 0x30
1a000d56:	68bb      	ldr	r3, [r7, #8]
1a000d58:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000d5c:	60bb      	str	r3, [r7, #8]
1a000d5e:	e004      	b.n	1a000d6a <Chip_SetupCoreClock+0x7e>
1a000d60:	2301      	movs	r3, #1
1a000d62:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000d64:	697b      	ldr	r3, [r7, #20]
1a000d66:	3301      	adds	r3, #1
1a000d68:	617b      	str	r3, [r7, #20]
1a000d6a:	f107 0308 	add.w	r3, r7, #8
1a000d6e:	4618      	mov	r0, r3
1a000d70:	f7ff ff86 	bl	1a000c80 <Chip_Clock_SetupMainPLL>
1a000d74:	bf00      	nop
1a000d76:	f7ff ffa7 	bl	1a000cc8 <Chip_Clock_MainPLLLocked>
1a000d7a:	4603      	mov	r3, r0
1a000d7c:	2b00      	cmp	r3, #0
1a000d7e:	d0fa      	beq.n	1a000d76 <Chip_SetupCoreClock+0x8a>
1a000d80:	2300      	movs	r3, #0
1a000d82:	2201      	movs	r2, #1
1a000d84:	2109      	movs	r1, #9
1a000d86:	2004      	movs	r0, #4
1a000d88:	f000 ff22 	bl	1a001bd0 <Chip_Clock_SetBaseClock>
1a000d8c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000d8e:	2b00      	cmp	r3, #0
1a000d90:	d012      	beq.n	1a000db8 <Chip_SetupCoreClock+0xcc>
1a000d92:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000d96:	62bb      	str	r3, [r7, #40]	; 0x28
1a000d98:	bf00      	nop
1a000d9a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000d9c:	1e5a      	subs	r2, r3, #1
1a000d9e:	62ba      	str	r2, [r7, #40]	; 0x28
1a000da0:	2b00      	cmp	r3, #0
1a000da2:	d1fa      	bne.n	1a000d9a <Chip_SetupCoreClock+0xae>
1a000da4:	68bb      	ldr	r3, [r7, #8]
1a000da6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000daa:	60bb      	str	r3, [r7, #8]
1a000dac:	f107 0308 	add.w	r3, r7, #8
1a000db0:	4618      	mov	r0, r3
1a000db2:	f7ff ff65 	bl	1a000c80 <Chip_Clock_SetupMainPLL>
1a000db6:	e013      	b.n	1a000de0 <Chip_SetupCoreClock+0xf4>
1a000db8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000dba:	2b00      	cmp	r3, #0
1a000dbc:	d010      	beq.n	1a000de0 <Chip_SetupCoreClock+0xf4>
1a000dbe:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000dc2:	62bb      	str	r3, [r7, #40]	; 0x28
1a000dc4:	bf00      	nop
1a000dc6:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000dc8:	1e5a      	subs	r2, r3, #1
1a000dca:	62ba      	str	r2, [r7, #40]	; 0x28
1a000dcc:	2b00      	cmp	r3, #0
1a000dce:	d1fa      	bne.n	1a000dc6 <Chip_SetupCoreClock+0xda>
1a000dd0:	697b      	ldr	r3, [r7, #20]
1a000dd2:	3b01      	subs	r3, #1
1a000dd4:	617b      	str	r3, [r7, #20]
1a000dd6:	f107 0308 	add.w	r3, r7, #8
1a000dda:	4618      	mov	r0, r3
1a000ddc:	f7ff ff50 	bl	1a000c80 <Chip_Clock_SetupMainPLL>
1a000de0:	79bb      	ldrb	r3, [r7, #6]
1a000de2:	2b00      	cmp	r3, #0
1a000de4:	d01e      	beq.n	1a000e24 <Chip_SetupCoreClock+0x138>
1a000de6:	2300      	movs	r3, #0
1a000de8:	637b      	str	r3, [r7, #52]	; 0x34
1a000dea:	e018      	b.n	1a000e1e <Chip_SetupCoreClock+0x132>
1a000dec:	4a10      	ldr	r2, [pc, #64]	; (1a000e30 <Chip_SetupCoreClock+0x144>)
1a000dee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000df0:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000df4:	4a0e      	ldr	r2, [pc, #56]	; (1a000e30 <Chip_SetupCoreClock+0x144>)
1a000df6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000df8:	009b      	lsls	r3, r3, #2
1a000dfa:	4413      	add	r3, r2
1a000dfc:	7859      	ldrb	r1, [r3, #1]
1a000dfe:	4a0c      	ldr	r2, [pc, #48]	; (1a000e30 <Chip_SetupCoreClock+0x144>)
1a000e00:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e02:	009b      	lsls	r3, r3, #2
1a000e04:	4413      	add	r3, r2
1a000e06:	789c      	ldrb	r4, [r3, #2]
1a000e08:	4a09      	ldr	r2, [pc, #36]	; (1a000e30 <Chip_SetupCoreClock+0x144>)
1a000e0a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e0c:	009b      	lsls	r3, r3, #2
1a000e0e:	4413      	add	r3, r2
1a000e10:	78db      	ldrb	r3, [r3, #3]
1a000e12:	4622      	mov	r2, r4
1a000e14:	f000 fedc 	bl	1a001bd0 <Chip_Clock_SetBaseClock>
1a000e18:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e1a:	3301      	adds	r3, #1
1a000e1c:	637b      	str	r3, [r7, #52]	; 0x34
1a000e1e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e20:	2b11      	cmp	r3, #17
1a000e22:	d9e3      	bls.n	1a000dec <Chip_SetupCoreClock+0x100>
1a000e24:	bf00      	nop
1a000e26:	373c      	adds	r7, #60	; 0x3c
1a000e28:	46bd      	mov	sp, r7
1a000e2a:	bd90      	pop	{r4, r7, pc}
1a000e2c:	068e7780 	.word	0x068e7780
1a000e30:	1a0029a4 	.word	0x1a0029a4

1a000e34 <Chip_SetupXtalClocking>:
1a000e34:	b580      	push	{r7, lr}
1a000e36:	af00      	add	r7, sp, #0
1a000e38:	2201      	movs	r2, #1
1a000e3a:	4903      	ldr	r1, [pc, #12]	; (1a000e48 <Chip_SetupXtalClocking+0x14>)
1a000e3c:	2006      	movs	r0, #6
1a000e3e:	f7ff ff55 	bl	1a000cec <Chip_SetupCoreClock>
1a000e42:	bf00      	nop
1a000e44:	bd80      	pop	{r7, pc}
1a000e46:	bf00      	nop
1a000e48:	0c28cb00 	.word	0x0c28cb00

1a000e4c <RingBuffer_IsEmpty>:
1a000e4c:	b480      	push	{r7}
1a000e4e:	b083      	sub	sp, #12
1a000e50:	af00      	add	r7, sp, #0
1a000e52:	6078      	str	r0, [r7, #4]
1a000e54:	687b      	ldr	r3, [r7, #4]
1a000e56:	330c      	adds	r3, #12
1a000e58:	681a      	ldr	r2, [r3, #0]
1a000e5a:	687b      	ldr	r3, [r7, #4]
1a000e5c:	3310      	adds	r3, #16
1a000e5e:	681b      	ldr	r3, [r3, #0]
1a000e60:	429a      	cmp	r2, r3
1a000e62:	bf0c      	ite	eq
1a000e64:	2301      	moveq	r3, #1
1a000e66:	2300      	movne	r3, #0
1a000e68:	b2db      	uxtb	r3, r3
1a000e6a:	4618      	mov	r0, r3
1a000e6c:	370c      	adds	r7, #12
1a000e6e:	46bd      	mov	sp, r7
1a000e70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e74:	4770      	bx	lr

1a000e76 <Chip_UART_TXDisable>:
1a000e76:	b480      	push	{r7}
1a000e78:	b083      	sub	sp, #12
1a000e7a:	af00      	add	r7, sp, #0
1a000e7c:	6078      	str	r0, [r7, #4]
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	2200      	movs	r2, #0
1a000e82:	65da      	str	r2, [r3, #92]	; 0x5c
1a000e84:	bf00      	nop
1a000e86:	370c      	adds	r7, #12
1a000e88:	46bd      	mov	sp, r7
1a000e8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e8e:	4770      	bx	lr

1a000e90 <Chip_UART_SendByte>:
1a000e90:	b480      	push	{r7}
1a000e92:	b083      	sub	sp, #12
1a000e94:	af00      	add	r7, sp, #0
1a000e96:	6078      	str	r0, [r7, #4]
1a000e98:	460b      	mov	r3, r1
1a000e9a:	70fb      	strb	r3, [r7, #3]
1a000e9c:	78fa      	ldrb	r2, [r7, #3]
1a000e9e:	687b      	ldr	r3, [r7, #4]
1a000ea0:	601a      	str	r2, [r3, #0]
1a000ea2:	bf00      	nop
1a000ea4:	370c      	adds	r7, #12
1a000ea6:	46bd      	mov	sp, r7
1a000ea8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000eac:	4770      	bx	lr

1a000eae <Chip_UART_ReadByte>:
1a000eae:	b480      	push	{r7}
1a000eb0:	b083      	sub	sp, #12
1a000eb2:	af00      	add	r7, sp, #0
1a000eb4:	6078      	str	r0, [r7, #4]
1a000eb6:	687b      	ldr	r3, [r7, #4]
1a000eb8:	681b      	ldr	r3, [r3, #0]
1a000eba:	b2db      	uxtb	r3, r3
1a000ebc:	4618      	mov	r0, r3
1a000ebe:	370c      	adds	r7, #12
1a000ec0:	46bd      	mov	sp, r7
1a000ec2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ec6:	4770      	bx	lr

1a000ec8 <Chip_UART_IntDisable>:
1a000ec8:	b480      	push	{r7}
1a000eca:	b083      	sub	sp, #12
1a000ecc:	af00      	add	r7, sp, #0
1a000ece:	6078      	str	r0, [r7, #4]
1a000ed0:	6039      	str	r1, [r7, #0]
1a000ed2:	687b      	ldr	r3, [r7, #4]
1a000ed4:	685a      	ldr	r2, [r3, #4]
1a000ed6:	683b      	ldr	r3, [r7, #0]
1a000ed8:	43db      	mvns	r3, r3
1a000eda:	401a      	ands	r2, r3
1a000edc:	687b      	ldr	r3, [r7, #4]
1a000ede:	605a      	str	r2, [r3, #4]
1a000ee0:	bf00      	nop
1a000ee2:	370c      	adds	r7, #12
1a000ee4:	46bd      	mov	sp, r7
1a000ee6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000eea:	4770      	bx	lr

1a000eec <Chip_UART_ReadIntIDReg>:
1a000eec:	b480      	push	{r7}
1a000eee:	b083      	sub	sp, #12
1a000ef0:	af00      	add	r7, sp, #0
1a000ef2:	6078      	str	r0, [r7, #4]
1a000ef4:	687b      	ldr	r3, [r7, #4]
1a000ef6:	689b      	ldr	r3, [r3, #8]
1a000ef8:	4618      	mov	r0, r3
1a000efa:	370c      	adds	r7, #12
1a000efc:	46bd      	mov	sp, r7
1a000efe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f02:	4770      	bx	lr

1a000f04 <Chip_UART_SetupFIFOS>:
1a000f04:	b480      	push	{r7}
1a000f06:	b083      	sub	sp, #12
1a000f08:	af00      	add	r7, sp, #0
1a000f0a:	6078      	str	r0, [r7, #4]
1a000f0c:	6039      	str	r1, [r7, #0]
1a000f0e:	687b      	ldr	r3, [r7, #4]
1a000f10:	683a      	ldr	r2, [r7, #0]
1a000f12:	609a      	str	r2, [r3, #8]
1a000f14:	bf00      	nop
1a000f16:	370c      	adds	r7, #12
1a000f18:	46bd      	mov	sp, r7
1a000f1a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f1e:	4770      	bx	lr

1a000f20 <Chip_UART_ConfigData>:
1a000f20:	b480      	push	{r7}
1a000f22:	b083      	sub	sp, #12
1a000f24:	af00      	add	r7, sp, #0
1a000f26:	6078      	str	r0, [r7, #4]
1a000f28:	6039      	str	r1, [r7, #0]
1a000f2a:	687b      	ldr	r3, [r7, #4]
1a000f2c:	683a      	ldr	r2, [r7, #0]
1a000f2e:	60da      	str	r2, [r3, #12]
1a000f30:	bf00      	nop
1a000f32:	370c      	adds	r7, #12
1a000f34:	46bd      	mov	sp, r7
1a000f36:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f3a:	4770      	bx	lr

1a000f3c <Chip_UART_EnableDivisorAccess>:
1a000f3c:	b480      	push	{r7}
1a000f3e:	b083      	sub	sp, #12
1a000f40:	af00      	add	r7, sp, #0
1a000f42:	6078      	str	r0, [r7, #4]
1a000f44:	687b      	ldr	r3, [r7, #4]
1a000f46:	68db      	ldr	r3, [r3, #12]
1a000f48:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000f4c:	687b      	ldr	r3, [r7, #4]
1a000f4e:	60da      	str	r2, [r3, #12]
1a000f50:	bf00      	nop
1a000f52:	370c      	adds	r7, #12
1a000f54:	46bd      	mov	sp, r7
1a000f56:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f5a:	4770      	bx	lr

1a000f5c <Chip_UART_DisableDivisorAccess>:
1a000f5c:	b480      	push	{r7}
1a000f5e:	b083      	sub	sp, #12
1a000f60:	af00      	add	r7, sp, #0
1a000f62:	6078      	str	r0, [r7, #4]
1a000f64:	687b      	ldr	r3, [r7, #4]
1a000f66:	68db      	ldr	r3, [r3, #12]
1a000f68:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000f6c:	687b      	ldr	r3, [r7, #4]
1a000f6e:	60da      	str	r2, [r3, #12]
1a000f70:	bf00      	nop
1a000f72:	370c      	adds	r7, #12
1a000f74:	46bd      	mov	sp, r7
1a000f76:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f7a:	4770      	bx	lr

1a000f7c <Chip_UART_SetDivisorLatches>:
1a000f7c:	b480      	push	{r7}
1a000f7e:	b083      	sub	sp, #12
1a000f80:	af00      	add	r7, sp, #0
1a000f82:	6078      	str	r0, [r7, #4]
1a000f84:	460b      	mov	r3, r1
1a000f86:	70fb      	strb	r3, [r7, #3]
1a000f88:	4613      	mov	r3, r2
1a000f8a:	70bb      	strb	r3, [r7, #2]
1a000f8c:	78fa      	ldrb	r2, [r7, #3]
1a000f8e:	687b      	ldr	r3, [r7, #4]
1a000f90:	601a      	str	r2, [r3, #0]
1a000f92:	78ba      	ldrb	r2, [r7, #2]
1a000f94:	687b      	ldr	r3, [r7, #4]
1a000f96:	605a      	str	r2, [r3, #4]
1a000f98:	bf00      	nop
1a000f9a:	370c      	adds	r7, #12
1a000f9c:	46bd      	mov	sp, r7
1a000f9e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fa2:	4770      	bx	lr

1a000fa4 <Chip_UART_ReadLineStatus>:
1a000fa4:	b480      	push	{r7}
1a000fa6:	b083      	sub	sp, #12
1a000fa8:	af00      	add	r7, sp, #0
1a000faa:	6078      	str	r0, [r7, #4]
1a000fac:	687b      	ldr	r3, [r7, #4]
1a000fae:	695b      	ldr	r3, [r3, #20]
1a000fb0:	4618      	mov	r0, r3
1a000fb2:	370c      	adds	r7, #12
1a000fb4:	46bd      	mov	sp, r7
1a000fb6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fba:	4770      	bx	lr

1a000fbc <Chip_UART_SetAutoBaudReg>:
1a000fbc:	b480      	push	{r7}
1a000fbe:	b083      	sub	sp, #12
1a000fc0:	af00      	add	r7, sp, #0
1a000fc2:	6078      	str	r0, [r7, #4]
1a000fc4:	6039      	str	r1, [r7, #0]
1a000fc6:	687b      	ldr	r3, [r7, #4]
1a000fc8:	6a1a      	ldr	r2, [r3, #32]
1a000fca:	683b      	ldr	r3, [r7, #0]
1a000fcc:	431a      	orrs	r2, r3
1a000fce:	687b      	ldr	r3, [r7, #4]
1a000fd0:	621a      	str	r2, [r3, #32]
1a000fd2:	bf00      	nop
1a000fd4:	370c      	adds	r7, #12
1a000fd6:	46bd      	mov	sp, r7
1a000fd8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fdc:	4770      	bx	lr
1a000fde:	Address 0x000000001a000fde is out of bounds.


1a000fe0 <Chip_UART_GetIndex>:
1a000fe0:	b480      	push	{r7}
1a000fe2:	b085      	sub	sp, #20
1a000fe4:	af00      	add	r7, sp, #0
1a000fe6:	6078      	str	r0, [r7, #4]
1a000fe8:	687b      	ldr	r3, [r7, #4]
1a000fea:	60fb      	str	r3, [r7, #12]
1a000fec:	68fb      	ldr	r3, [r7, #12]
1a000fee:	4a10      	ldr	r2, [pc, #64]	; (1a001030 <Chip_UART_GetIndex+0x50>)
1a000ff0:	4293      	cmp	r3, r2
1a000ff2:	d00f      	beq.n	1a001014 <Chip_UART_GetIndex+0x34>
1a000ff4:	4a0e      	ldr	r2, [pc, #56]	; (1a001030 <Chip_UART_GetIndex+0x50>)
1a000ff6:	4293      	cmp	r3, r2
1a000ff8:	d803      	bhi.n	1a001002 <Chip_UART_GetIndex+0x22>
1a000ffa:	4a0e      	ldr	r2, [pc, #56]	; (1a001034 <Chip_UART_GetIndex+0x54>)
1a000ffc:	4293      	cmp	r3, r2
1a000ffe:	d007      	beq.n	1a001010 <Chip_UART_GetIndex+0x30>
1a001000:	e00e      	b.n	1a001020 <Chip_UART_GetIndex+0x40>
1a001002:	4a0d      	ldr	r2, [pc, #52]	; (1a001038 <Chip_UART_GetIndex+0x58>)
1a001004:	4293      	cmp	r3, r2
1a001006:	d007      	beq.n	1a001018 <Chip_UART_GetIndex+0x38>
1a001008:	4a0c      	ldr	r2, [pc, #48]	; (1a00103c <Chip_UART_GetIndex+0x5c>)
1a00100a:	4293      	cmp	r3, r2
1a00100c:	d006      	beq.n	1a00101c <Chip_UART_GetIndex+0x3c>
1a00100e:	e007      	b.n	1a001020 <Chip_UART_GetIndex+0x40>
1a001010:	2300      	movs	r3, #0
1a001012:	e006      	b.n	1a001022 <Chip_UART_GetIndex+0x42>
1a001014:	2301      	movs	r3, #1
1a001016:	e004      	b.n	1a001022 <Chip_UART_GetIndex+0x42>
1a001018:	2302      	movs	r3, #2
1a00101a:	e002      	b.n	1a001022 <Chip_UART_GetIndex+0x42>
1a00101c:	2303      	movs	r3, #3
1a00101e:	e000      	b.n	1a001022 <Chip_UART_GetIndex+0x42>
1a001020:	2300      	movs	r3, #0
1a001022:	4618      	mov	r0, r3
1a001024:	3714      	adds	r7, #20
1a001026:	46bd      	mov	sp, r7
1a001028:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00102c:	4770      	bx	lr
1a00102e:	bf00      	nop
1a001030:	40082000 	.word	0x40082000
1a001034:	40081000 	.word	0x40081000
1a001038:	400c1000 	.word	0x400c1000
1a00103c:	400c2000 	.word	0x400c2000

1a001040 <Chip_UART_ABIntHandler>:
1a001040:	b580      	push	{r7, lr}
1a001042:	b082      	sub	sp, #8
1a001044:	af00      	add	r7, sp, #0
1a001046:	6078      	str	r0, [r7, #4]
1a001048:	6878      	ldr	r0, [r7, #4]
1a00104a:	f7ff ff4f 	bl	1a000eec <Chip_UART_ReadIntIDReg>
1a00104e:	4603      	mov	r3, r0
1a001050:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a001054:	2b00      	cmp	r3, #0
1a001056:	d011      	beq.n	1a00107c <Chip_UART_ABIntHandler+0x3c>
1a001058:	f44f 7180 	mov.w	r1, #256	; 0x100
1a00105c:	6878      	ldr	r0, [r7, #4]
1a00105e:	f7ff ffad 	bl	1a000fbc <Chip_UART_SetAutoBaudReg>
1a001062:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001066:	6878      	ldr	r0, [r7, #4]
1a001068:	f7ff ff2e 	bl	1a000ec8 <Chip_UART_IntDisable>
1a00106c:	4b0e      	ldr	r3, [pc, #56]	; (1a0010a8 <Chip_UART_ABIntHandler+0x68>)
1a00106e:	781b      	ldrb	r3, [r3, #0]
1a001070:	b2db      	uxtb	r3, r3
1a001072:	2b00      	cmp	r3, #0
1a001074:	d102      	bne.n	1a00107c <Chip_UART_ABIntHandler+0x3c>
1a001076:	4b0c      	ldr	r3, [pc, #48]	; (1a0010a8 <Chip_UART_ABIntHandler+0x68>)
1a001078:	2201      	movs	r2, #1
1a00107a:	701a      	strb	r2, [r3, #0]
1a00107c:	6878      	ldr	r0, [r7, #4]
1a00107e:	f7ff ff35 	bl	1a000eec <Chip_UART_ReadIntIDReg>
1a001082:	4603      	mov	r3, r0
1a001084:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001088:	2b00      	cmp	r3, #0
1a00108a:	d009      	beq.n	1a0010a0 <Chip_UART_ABIntHandler+0x60>
1a00108c:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001090:	6878      	ldr	r0, [r7, #4]
1a001092:	f7ff ff93 	bl	1a000fbc <Chip_UART_SetAutoBaudReg>
1a001096:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00109a:	6878      	ldr	r0, [r7, #4]
1a00109c:	f7ff ff14 	bl	1a000ec8 <Chip_UART_IntDisable>
1a0010a0:	bf00      	nop
1a0010a2:	3708      	adds	r7, #8
1a0010a4:	46bd      	mov	sp, r7
1a0010a6:	bd80      	pop	{r7, pc}
1a0010a8:	1000086e 	.word	0x1000086e

1a0010ac <Chip_UART_Init>:
1a0010ac:	b580      	push	{r7, lr}
1a0010ae:	b084      	sub	sp, #16
1a0010b0:	af00      	add	r7, sp, #0
1a0010b2:	6078      	str	r0, [r7, #4]
1a0010b4:	68fb      	ldr	r3, [r7, #12]
1a0010b6:	6878      	ldr	r0, [r7, #4]
1a0010b8:	f7ff ff92 	bl	1a000fe0 <Chip_UART_GetIndex>
1a0010bc:	4602      	mov	r2, r0
1a0010be:	4b1b      	ldr	r3, [pc, #108]	; (1a00112c <Chip_UART_Init+0x80>)
1a0010c0:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0010c4:	2301      	movs	r3, #1
1a0010c6:	2201      	movs	r2, #1
1a0010c8:	2101      	movs	r1, #1
1a0010ca:	f000 fdf5 	bl	1a001cb8 <Chip_Clock_EnableOpts>
1a0010ce:	2107      	movs	r1, #7
1a0010d0:	6878      	ldr	r0, [r7, #4]
1a0010d2:	f7ff ff17 	bl	1a000f04 <Chip_UART_SetupFIFOS>
1a0010d6:	6878      	ldr	r0, [r7, #4]
1a0010d8:	f7ff fecd 	bl	1a000e76 <Chip_UART_TXDisable>
1a0010dc:	687b      	ldr	r3, [r7, #4]
1a0010de:	2200      	movs	r2, #0
1a0010e0:	605a      	str	r2, [r3, #4]
1a0010e2:	687b      	ldr	r3, [r7, #4]
1a0010e4:	2200      	movs	r2, #0
1a0010e6:	60da      	str	r2, [r3, #12]
1a0010e8:	687b      	ldr	r3, [r7, #4]
1a0010ea:	2200      	movs	r2, #0
1a0010ec:	621a      	str	r2, [r3, #32]
1a0010ee:	687b      	ldr	r3, [r7, #4]
1a0010f0:	2200      	movs	r2, #0
1a0010f2:	64da      	str	r2, [r3, #76]	; 0x4c
1a0010f4:	687b      	ldr	r3, [r7, #4]
1a0010f6:	2200      	movs	r2, #0
1a0010f8:	655a      	str	r2, [r3, #84]	; 0x54
1a0010fa:	687b      	ldr	r3, [r7, #4]
1a0010fc:	2200      	movs	r2, #0
1a0010fe:	651a      	str	r2, [r3, #80]	; 0x50
1a001100:	687b      	ldr	r3, [r7, #4]
1a001102:	4a0b      	ldr	r2, [pc, #44]	; (1a001130 <Chip_UART_Init+0x84>)
1a001104:	4293      	cmp	r3, r2
1a001106:	d105      	bne.n	1a001114 <Chip_UART_Init+0x68>
1a001108:	687b      	ldr	r3, [r7, #4]
1a00110a:	2200      	movs	r2, #0
1a00110c:	611a      	str	r2, [r3, #16]
1a00110e:	687b      	ldr	r3, [r7, #4]
1a001110:	699b      	ldr	r3, [r3, #24]
1a001112:	60fb      	str	r3, [r7, #12]
1a001114:	2103      	movs	r1, #3
1a001116:	6878      	ldr	r0, [r7, #4]
1a001118:	f7ff ff02 	bl	1a000f20 <Chip_UART_ConfigData>
1a00111c:	687b      	ldr	r3, [r7, #4]
1a00111e:	2210      	movs	r2, #16
1a001120:	629a      	str	r2, [r3, #40]	; 0x28
1a001122:	bf00      	nop
1a001124:	3710      	adds	r7, #16
1a001126:	46bd      	mov	sp, r7
1a001128:	bd80      	pop	{r7, pc}
1a00112a:	bf00      	nop
1a00112c:	1a0029ec 	.word	0x1a0029ec
1a001130:	40082000 	.word	0x40082000

1a001134 <Chip_UART_SetBaud>:
1a001134:	b580      	push	{r7, lr}
1a001136:	b086      	sub	sp, #24
1a001138:	af00      	add	r7, sp, #0
1a00113a:	6078      	str	r0, [r7, #4]
1a00113c:	6039      	str	r1, [r7, #0]
1a00113e:	6878      	ldr	r0, [r7, #4]
1a001140:	f7ff ff4e 	bl	1a000fe0 <Chip_UART_GetIndex>
1a001144:	4602      	mov	r2, r0
1a001146:	4b16      	ldr	r3, [pc, #88]	; (1a0011a0 <Chip_UART_SetBaud+0x6c>)
1a001148:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a00114c:	4618      	mov	r0, r3
1a00114e:	f000 fe21 	bl	1a001d94 <Chip_Clock_GetRate>
1a001152:	6178      	str	r0, [r7, #20]
1a001154:	683b      	ldr	r3, [r7, #0]
1a001156:	011b      	lsls	r3, r3, #4
1a001158:	697a      	ldr	r2, [r7, #20]
1a00115a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00115e:	613b      	str	r3, [r7, #16]
1a001160:	693b      	ldr	r3, [r7, #16]
1a001162:	0a1b      	lsrs	r3, r3, #8
1a001164:	60fb      	str	r3, [r7, #12]
1a001166:	68fb      	ldr	r3, [r7, #12]
1a001168:	021b      	lsls	r3, r3, #8
1a00116a:	693a      	ldr	r2, [r7, #16]
1a00116c:	1ad3      	subs	r3, r2, r3
1a00116e:	60bb      	str	r3, [r7, #8]
1a001170:	6878      	ldr	r0, [r7, #4]
1a001172:	f7ff fee3 	bl	1a000f3c <Chip_UART_EnableDivisorAccess>
1a001176:	68bb      	ldr	r3, [r7, #8]
1a001178:	b2db      	uxtb	r3, r3
1a00117a:	68fa      	ldr	r2, [r7, #12]
1a00117c:	b2d2      	uxtb	r2, r2
1a00117e:	4619      	mov	r1, r3
1a001180:	6878      	ldr	r0, [r7, #4]
1a001182:	f7ff fefb 	bl	1a000f7c <Chip_UART_SetDivisorLatches>
1a001186:	6878      	ldr	r0, [r7, #4]
1a001188:	f7ff fee8 	bl	1a000f5c <Chip_UART_DisableDivisorAccess>
1a00118c:	697a      	ldr	r2, [r7, #20]
1a00118e:	693b      	ldr	r3, [r7, #16]
1a001190:	fbb2 f3f3 	udiv	r3, r2, r3
1a001194:	091b      	lsrs	r3, r3, #4
1a001196:	4618      	mov	r0, r3
1a001198:	3718      	adds	r7, #24
1a00119a:	46bd      	mov	sp, r7
1a00119c:	bd80      	pop	{r7, pc}
1a00119e:	bf00      	nop
1a0011a0:	1a0029f4 	.word	0x1a0029f4

1a0011a4 <Chip_UART_RXIntHandlerRB>:
1a0011a4:	b580      	push	{r7, lr}
1a0011a6:	b084      	sub	sp, #16
1a0011a8:	af00      	add	r7, sp, #0
1a0011aa:	6078      	str	r0, [r7, #4]
1a0011ac:	6039      	str	r1, [r7, #0]
1a0011ae:	e00a      	b.n	1a0011c6 <Chip_UART_RXIntHandlerRB+0x22>
1a0011b0:	6878      	ldr	r0, [r7, #4]
1a0011b2:	f7ff fe7c 	bl	1a000eae <Chip_UART_ReadByte>
1a0011b6:	4603      	mov	r3, r0
1a0011b8:	73fb      	strb	r3, [r7, #15]
1a0011ba:	f107 030f 	add.w	r3, r7, #15
1a0011be:	4619      	mov	r1, r3
1a0011c0:	6838      	ldr	r0, [r7, #0]
1a0011c2:	f000 f8ec 	bl	1a00139e <RingBuffer_Insert>
1a0011c6:	6878      	ldr	r0, [r7, #4]
1a0011c8:	f7ff feec 	bl	1a000fa4 <Chip_UART_ReadLineStatus>
1a0011cc:	4603      	mov	r3, r0
1a0011ce:	f003 0301 	and.w	r3, r3, #1
1a0011d2:	2b00      	cmp	r3, #0
1a0011d4:	d1ec      	bne.n	1a0011b0 <Chip_UART_RXIntHandlerRB+0xc>
1a0011d6:	bf00      	nop
1a0011d8:	3710      	adds	r7, #16
1a0011da:	46bd      	mov	sp, r7
1a0011dc:	bd80      	pop	{r7, pc}

1a0011de <Chip_UART_TXIntHandlerRB>:
1a0011de:	b580      	push	{r7, lr}
1a0011e0:	b084      	sub	sp, #16
1a0011e2:	af00      	add	r7, sp, #0
1a0011e4:	6078      	str	r0, [r7, #4]
1a0011e6:	6039      	str	r1, [r7, #0]
1a0011e8:	e004      	b.n	1a0011f4 <Chip_UART_TXIntHandlerRB+0x16>
1a0011ea:	7bfb      	ldrb	r3, [r7, #15]
1a0011ec:	4619      	mov	r1, r3
1a0011ee:	6878      	ldr	r0, [r7, #4]
1a0011f0:	f7ff fe4e 	bl	1a000e90 <Chip_UART_SendByte>
1a0011f4:	6878      	ldr	r0, [r7, #4]
1a0011f6:	f7ff fed5 	bl	1a000fa4 <Chip_UART_ReadLineStatus>
1a0011fa:	4603      	mov	r3, r0
1a0011fc:	f003 0320 	and.w	r3, r3, #32
1a001200:	2b00      	cmp	r3, #0
1a001202:	d008      	beq.n	1a001216 <Chip_UART_TXIntHandlerRB+0x38>
1a001204:	f107 030f 	add.w	r3, r7, #15
1a001208:	4619      	mov	r1, r3
1a00120a:	6838      	ldr	r0, [r7, #0]
1a00120c:	f000 f8f5 	bl	1a0013fa <RingBuffer_Pop>
1a001210:	4603      	mov	r3, r0
1a001212:	2b00      	cmp	r3, #0
1a001214:	d1e9      	bne.n	1a0011ea <Chip_UART_TXIntHandlerRB+0xc>
1a001216:	6838      	ldr	r0, [r7, #0]
1a001218:	f7ff fe18 	bl	1a000e4c <RingBuffer_IsEmpty>
1a00121c:	4603      	mov	r3, r0
1a00121e:	2b00      	cmp	r3, #0
1a001220:	d003      	beq.n	1a00122a <Chip_UART_TXIntHandlerRB+0x4c>
1a001222:	2102      	movs	r1, #2
1a001224:	6878      	ldr	r0, [r7, #4]
1a001226:	f7ff fe4f 	bl	1a000ec8 <Chip_UART_IntDisable>
1a00122a:	bf00      	nop
1a00122c:	3710      	adds	r7, #16
1a00122e:	46bd      	mov	sp, r7
1a001230:	bd80      	pop	{r7, pc}

1a001232 <Chip_UART_IRQRBHandler>:
1a001232:	b580      	push	{r7, lr}
1a001234:	b084      	sub	sp, #16
1a001236:	af00      	add	r7, sp, #0
1a001238:	60f8      	str	r0, [r7, #12]
1a00123a:	60b9      	str	r1, [r7, #8]
1a00123c:	607a      	str	r2, [r7, #4]
1a00123e:	68fb      	ldr	r3, [r7, #12]
1a001240:	685b      	ldr	r3, [r3, #4]
1a001242:	f003 0302 	and.w	r3, r3, #2
1a001246:	2b00      	cmp	r3, #0
1a001248:	d00d      	beq.n	1a001266 <Chip_UART_IRQRBHandler+0x34>
1a00124a:	6879      	ldr	r1, [r7, #4]
1a00124c:	68f8      	ldr	r0, [r7, #12]
1a00124e:	f7ff ffc6 	bl	1a0011de <Chip_UART_TXIntHandlerRB>
1a001252:	6878      	ldr	r0, [r7, #4]
1a001254:	f7ff fdfa 	bl	1a000e4c <RingBuffer_IsEmpty>
1a001258:	4603      	mov	r3, r0
1a00125a:	2b00      	cmp	r3, #0
1a00125c:	d003      	beq.n	1a001266 <Chip_UART_IRQRBHandler+0x34>
1a00125e:	2102      	movs	r1, #2
1a001260:	68f8      	ldr	r0, [r7, #12]
1a001262:	f7ff fe31 	bl	1a000ec8 <Chip_UART_IntDisable>
1a001266:	68b9      	ldr	r1, [r7, #8]
1a001268:	68f8      	ldr	r0, [r7, #12]
1a00126a:	f7ff ff9b 	bl	1a0011a4 <Chip_UART_RXIntHandlerRB>
1a00126e:	68f8      	ldr	r0, [r7, #12]
1a001270:	f7ff fee6 	bl	1a001040 <Chip_UART_ABIntHandler>
1a001274:	bf00      	nop
1a001276:	3710      	adds	r7, #16
1a001278:	46bd      	mov	sp, r7
1a00127a:	bd80      	pop	{r7, pc}

1a00127c <Chip_TIMER_Enable>:
1a00127c:	b480      	push	{r7}
1a00127e:	b083      	sub	sp, #12
1a001280:	af00      	add	r7, sp, #0
1a001282:	6078      	str	r0, [r7, #4]
1a001284:	687b      	ldr	r3, [r7, #4]
1a001286:	685b      	ldr	r3, [r3, #4]
1a001288:	f043 0201 	orr.w	r2, r3, #1
1a00128c:	687b      	ldr	r3, [r7, #4]
1a00128e:	605a      	str	r2, [r3, #4]
1a001290:	bf00      	nop
1a001292:	370c      	adds	r7, #12
1a001294:	46bd      	mov	sp, r7
1a001296:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00129a:	4770      	bx	lr

1a00129c <Chip_TIMER_PrescaleSet>:
1a00129c:	b480      	push	{r7}
1a00129e:	b083      	sub	sp, #12
1a0012a0:	af00      	add	r7, sp, #0
1a0012a2:	6078      	str	r0, [r7, #4]
1a0012a4:	6039      	str	r1, [r7, #0]
1a0012a6:	687b      	ldr	r3, [r7, #4]
1a0012a8:	683a      	ldr	r2, [r7, #0]
1a0012aa:	60da      	str	r2, [r3, #12]
1a0012ac:	bf00      	nop
1a0012ae:	370c      	adds	r7, #12
1a0012b0:	46bd      	mov	sp, r7
1a0012b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012b6:	4770      	bx	lr

1a0012b8 <StopWatch_Init>:
1a0012b8:	b580      	push	{r7, lr}
1a0012ba:	b082      	sub	sp, #8
1a0012bc:	af00      	add	r7, sp, #0
1a0012be:	2308      	movs	r3, #8
1a0012c0:	607b      	str	r3, [r7, #4]
1a0012c2:	4814      	ldr	r0, [pc, #80]	; (1a001314 <StopWatch_Init+0x5c>)
1a0012c4:	f000 fde8 	bl	1a001e98 <Chip_TIMER_Init>
1a0012c8:	687b      	ldr	r3, [r7, #4]
1a0012ca:	3b01      	subs	r3, #1
1a0012cc:	4619      	mov	r1, r3
1a0012ce:	4811      	ldr	r0, [pc, #68]	; (1a001314 <StopWatch_Init+0x5c>)
1a0012d0:	f7ff ffe4 	bl	1a00129c <Chip_TIMER_PrescaleSet>
1a0012d4:	480f      	ldr	r0, [pc, #60]	; (1a001314 <StopWatch_Init+0x5c>)
1a0012d6:	f7ff ffd1 	bl	1a00127c <Chip_TIMER_Enable>
1a0012da:	2084      	movs	r0, #132	; 0x84
1a0012dc:	f000 fd5a 	bl	1a001d94 <Chip_Clock_GetRate>
1a0012e0:	4602      	mov	r2, r0
1a0012e2:	687b      	ldr	r3, [r7, #4]
1a0012e4:	fbb2 f3f3 	udiv	r3, r2, r3
1a0012e8:	4a0b      	ldr	r2, [pc, #44]	; (1a001318 <StopWatch_Init+0x60>)
1a0012ea:	6013      	str	r3, [r2, #0]
1a0012ec:	4b0a      	ldr	r3, [pc, #40]	; (1a001318 <StopWatch_Init+0x60>)
1a0012ee:	681b      	ldr	r3, [r3, #0]
1a0012f0:	4a0a      	ldr	r2, [pc, #40]	; (1a00131c <StopWatch_Init+0x64>)
1a0012f2:	fba2 2303 	umull	r2, r3, r2, r3
1a0012f6:	099b      	lsrs	r3, r3, #6
1a0012f8:	4a09      	ldr	r2, [pc, #36]	; (1a001320 <StopWatch_Init+0x68>)
1a0012fa:	6013      	str	r3, [r2, #0]
1a0012fc:	4b06      	ldr	r3, [pc, #24]	; (1a001318 <StopWatch_Init+0x60>)
1a0012fe:	681b      	ldr	r3, [r3, #0]
1a001300:	4a08      	ldr	r2, [pc, #32]	; (1a001324 <StopWatch_Init+0x6c>)
1a001302:	fba2 2303 	umull	r2, r3, r2, r3
1a001306:	0c9b      	lsrs	r3, r3, #18
1a001308:	4a07      	ldr	r2, [pc, #28]	; (1a001328 <StopWatch_Init+0x70>)
1a00130a:	6013      	str	r3, [r2, #0]
1a00130c:	bf00      	nop
1a00130e:	3708      	adds	r7, #8
1a001310:	46bd      	mov	sp, r7
1a001312:	bd80      	pop	{r7, pc}
1a001314:	40084000 	.word	0x40084000
1a001318:	10000870 	.word	0x10000870
1a00131c:	10624dd3 	.word	0x10624dd3
1a001320:	10000874 	.word	0x10000874
1a001324:	431bde83 	.word	0x431bde83
1a001328:	10000878 	.word	0x10000878

1a00132c <RingBuffer_GetCount>:
1a00132c:	b480      	push	{r7}
1a00132e:	b083      	sub	sp, #12
1a001330:	af00      	add	r7, sp, #0
1a001332:	6078      	str	r0, [r7, #4]
1a001334:	687b      	ldr	r3, [r7, #4]
1a001336:	330c      	adds	r3, #12
1a001338:	681a      	ldr	r2, [r3, #0]
1a00133a:	687b      	ldr	r3, [r7, #4]
1a00133c:	3310      	adds	r3, #16
1a00133e:	681b      	ldr	r3, [r3, #0]
1a001340:	1ad3      	subs	r3, r2, r3
1a001342:	4618      	mov	r0, r3
1a001344:	370c      	adds	r7, #12
1a001346:	46bd      	mov	sp, r7
1a001348:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00134c:	4770      	bx	lr

1a00134e <RingBuffer_IsFull>:
1a00134e:	b580      	push	{r7, lr}
1a001350:	b082      	sub	sp, #8
1a001352:	af00      	add	r7, sp, #0
1a001354:	6078      	str	r0, [r7, #4]
1a001356:	6878      	ldr	r0, [r7, #4]
1a001358:	f7ff ffe8 	bl	1a00132c <RingBuffer_GetCount>
1a00135c:	4602      	mov	r2, r0
1a00135e:	687b      	ldr	r3, [r7, #4]
1a001360:	685b      	ldr	r3, [r3, #4]
1a001362:	429a      	cmp	r2, r3
1a001364:	bfac      	ite	ge
1a001366:	2301      	movge	r3, #1
1a001368:	2300      	movlt	r3, #0
1a00136a:	b2db      	uxtb	r3, r3
1a00136c:	4618      	mov	r0, r3
1a00136e:	3708      	adds	r7, #8
1a001370:	46bd      	mov	sp, r7
1a001372:	bd80      	pop	{r7, pc}

1a001374 <RingBuffer_IsEmpty>:
1a001374:	b480      	push	{r7}
1a001376:	b083      	sub	sp, #12
1a001378:	af00      	add	r7, sp, #0
1a00137a:	6078      	str	r0, [r7, #4]
1a00137c:	687b      	ldr	r3, [r7, #4]
1a00137e:	330c      	adds	r3, #12
1a001380:	681a      	ldr	r2, [r3, #0]
1a001382:	687b      	ldr	r3, [r7, #4]
1a001384:	3310      	adds	r3, #16
1a001386:	681b      	ldr	r3, [r3, #0]
1a001388:	429a      	cmp	r2, r3
1a00138a:	bf0c      	ite	eq
1a00138c:	2301      	moveq	r3, #1
1a00138e:	2300      	movne	r3, #0
1a001390:	b2db      	uxtb	r3, r3
1a001392:	4618      	mov	r0, r3
1a001394:	370c      	adds	r7, #12
1a001396:	46bd      	mov	sp, r7
1a001398:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00139c:	4770      	bx	lr

1a00139e <RingBuffer_Insert>:
1a00139e:	b580      	push	{r7, lr}
1a0013a0:	b084      	sub	sp, #16
1a0013a2:	af00      	add	r7, sp, #0
1a0013a4:	6078      	str	r0, [r7, #4]
1a0013a6:	6039      	str	r1, [r7, #0]
1a0013a8:	687b      	ldr	r3, [r7, #4]
1a0013aa:	681b      	ldr	r3, [r3, #0]
1a0013ac:	60fb      	str	r3, [r7, #12]
1a0013ae:	6878      	ldr	r0, [r7, #4]
1a0013b0:	f7ff ffcd 	bl	1a00134e <RingBuffer_IsFull>
1a0013b4:	4603      	mov	r3, r0
1a0013b6:	2b00      	cmp	r3, #0
1a0013b8:	d001      	beq.n	1a0013be <RingBuffer_Insert+0x20>
1a0013ba:	2300      	movs	r3, #0
1a0013bc:	e019      	b.n	1a0013f2 <RingBuffer_Insert+0x54>
1a0013be:	687b      	ldr	r3, [r7, #4]
1a0013c0:	68db      	ldr	r3, [r3, #12]
1a0013c2:	687a      	ldr	r2, [r7, #4]
1a0013c4:	6852      	ldr	r2, [r2, #4]
1a0013c6:	3a01      	subs	r2, #1
1a0013c8:	4013      	ands	r3, r2
1a0013ca:	687a      	ldr	r2, [r7, #4]
1a0013cc:	6892      	ldr	r2, [r2, #8]
1a0013ce:	fb02 f303 	mul.w	r3, r2, r3
1a0013d2:	68fa      	ldr	r2, [r7, #12]
1a0013d4:	4413      	add	r3, r2
1a0013d6:	60fb      	str	r3, [r7, #12]
1a0013d8:	687b      	ldr	r3, [r7, #4]
1a0013da:	689b      	ldr	r3, [r3, #8]
1a0013dc:	461a      	mov	r2, r3
1a0013de:	6839      	ldr	r1, [r7, #0]
1a0013e0:	68f8      	ldr	r0, [r7, #12]
1a0013e2:	f001 f829 	bl	1a002438 <memcpy>
1a0013e6:	687b      	ldr	r3, [r7, #4]
1a0013e8:	68db      	ldr	r3, [r3, #12]
1a0013ea:	1c5a      	adds	r2, r3, #1
1a0013ec:	687b      	ldr	r3, [r7, #4]
1a0013ee:	60da      	str	r2, [r3, #12]
1a0013f0:	2301      	movs	r3, #1
1a0013f2:	4618      	mov	r0, r3
1a0013f4:	3710      	adds	r7, #16
1a0013f6:	46bd      	mov	sp, r7
1a0013f8:	bd80      	pop	{r7, pc}

1a0013fa <RingBuffer_Pop>:
1a0013fa:	b580      	push	{r7, lr}
1a0013fc:	b084      	sub	sp, #16
1a0013fe:	af00      	add	r7, sp, #0
1a001400:	6078      	str	r0, [r7, #4]
1a001402:	6039      	str	r1, [r7, #0]
1a001404:	687b      	ldr	r3, [r7, #4]
1a001406:	681b      	ldr	r3, [r3, #0]
1a001408:	60fb      	str	r3, [r7, #12]
1a00140a:	6878      	ldr	r0, [r7, #4]
1a00140c:	f7ff ffb2 	bl	1a001374 <RingBuffer_IsEmpty>
1a001410:	4603      	mov	r3, r0
1a001412:	2b00      	cmp	r3, #0
1a001414:	d001      	beq.n	1a00141a <RingBuffer_Pop+0x20>
1a001416:	2300      	movs	r3, #0
1a001418:	e019      	b.n	1a00144e <RingBuffer_Pop+0x54>
1a00141a:	687b      	ldr	r3, [r7, #4]
1a00141c:	691b      	ldr	r3, [r3, #16]
1a00141e:	687a      	ldr	r2, [r7, #4]
1a001420:	6852      	ldr	r2, [r2, #4]
1a001422:	3a01      	subs	r2, #1
1a001424:	4013      	ands	r3, r2
1a001426:	687a      	ldr	r2, [r7, #4]
1a001428:	6892      	ldr	r2, [r2, #8]
1a00142a:	fb02 f303 	mul.w	r3, r2, r3
1a00142e:	68fa      	ldr	r2, [r7, #12]
1a001430:	4413      	add	r3, r2
1a001432:	60fb      	str	r3, [r7, #12]
1a001434:	687b      	ldr	r3, [r7, #4]
1a001436:	689b      	ldr	r3, [r3, #8]
1a001438:	461a      	mov	r2, r3
1a00143a:	68f9      	ldr	r1, [r7, #12]
1a00143c:	6838      	ldr	r0, [r7, #0]
1a00143e:	f000 fffb 	bl	1a002438 <memcpy>
1a001442:	687b      	ldr	r3, [r7, #4]
1a001444:	691b      	ldr	r3, [r3, #16]
1a001446:	1c5a      	adds	r2, r3, #1
1a001448:	687b      	ldr	r3, [r7, #4]
1a00144a:	611a      	str	r2, [r3, #16]
1a00144c:	2301      	movs	r3, #1
1a00144e:	4618      	mov	r0, r3
1a001450:	3710      	adds	r7, #16
1a001452:	46bd      	mov	sp, r7
1a001454:	bd80      	pop	{r7, pc}

1a001456 <ABS>:
1a001456:	b480      	push	{r7}
1a001458:	b083      	sub	sp, #12
1a00145a:	af00      	add	r7, sp, #0
1a00145c:	6078      	str	r0, [r7, #4]
1a00145e:	687b      	ldr	r3, [r7, #4]
1a001460:	2b00      	cmp	r3, #0
1a001462:	da02      	bge.n	1a00146a <ABS+0x14>
1a001464:	687b      	ldr	r3, [r7, #4]
1a001466:	425b      	negs	r3, r3
1a001468:	e000      	b.n	1a00146c <ABS+0x16>
1a00146a:	687b      	ldr	r3, [r7, #4]
1a00146c:	4618      	mov	r0, r3
1a00146e:	370c      	adds	r7, #12
1a001470:	46bd      	mov	sp, r7
1a001472:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001476:	4770      	bx	lr

1a001478 <pll_calc_divs>:
1a001478:	b580      	push	{r7, lr}
1a00147a:	b088      	sub	sp, #32
1a00147c:	af00      	add	r7, sp, #0
1a00147e:	6078      	str	r0, [r7, #4]
1a001480:	6039      	str	r1, [r7, #0]
1a001482:	687b      	ldr	r3, [r7, #4]
1a001484:	61fb      	str	r3, [r7, #28]
1a001486:	683b      	ldr	r3, [r7, #0]
1a001488:	681b      	ldr	r3, [r3, #0]
1a00148a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00148e:	2b00      	cmp	r3, #0
1a001490:	d005      	beq.n	1a00149e <pll_calc_divs+0x26>
1a001492:	683b      	ldr	r3, [r7, #0]
1a001494:	681b      	ldr	r3, [r3, #0]
1a001496:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a00149a:	683b      	ldr	r3, [r7, #0]
1a00149c:	601a      	str	r2, [r3, #0]
1a00149e:	2301      	movs	r3, #1
1a0014a0:	61bb      	str	r3, [r7, #24]
1a0014a2:	e06f      	b.n	1a001584 <pll_calc_divs+0x10c>
1a0014a4:	2300      	movs	r3, #0
1a0014a6:	613b      	str	r3, [r7, #16]
1a0014a8:	e066      	b.n	1a001578 <pll_calc_divs+0x100>
1a0014aa:	2301      	movs	r3, #1
1a0014ac:	617b      	str	r3, [r7, #20]
1a0014ae:	e05a      	b.n	1a001566 <pll_calc_divs+0xee>
1a0014b0:	683b      	ldr	r3, [r7, #0]
1a0014b2:	681b      	ldr	r3, [r3, #0]
1a0014b4:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0014b8:	2b00      	cmp	r3, #0
1a0014ba:	d00e      	beq.n	1a0014da <pll_calc_divs+0x62>
1a0014bc:	693b      	ldr	r3, [r7, #16]
1a0014be:	3301      	adds	r3, #1
1a0014c0:	697a      	ldr	r2, [r7, #20]
1a0014c2:	fa02 f303 	lsl.w	r3, r2, r3
1a0014c6:	461a      	mov	r2, r3
1a0014c8:	683b      	ldr	r3, [r7, #0]
1a0014ca:	695b      	ldr	r3, [r3, #20]
1a0014cc:	fb03 f202 	mul.w	r2, r3, r2
1a0014d0:	69bb      	ldr	r3, [r7, #24]
1a0014d2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014d6:	60fb      	str	r3, [r7, #12]
1a0014d8:	e008      	b.n	1a0014ec <pll_calc_divs+0x74>
1a0014da:	683b      	ldr	r3, [r7, #0]
1a0014dc:	695b      	ldr	r3, [r3, #20]
1a0014de:	697a      	ldr	r2, [r7, #20]
1a0014e0:	fb02 f203 	mul.w	r2, r2, r3
1a0014e4:	69bb      	ldr	r3, [r7, #24]
1a0014e6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014ea:	60fb      	str	r3, [r7, #12]
1a0014ec:	68fb      	ldr	r3, [r7, #12]
1a0014ee:	4a29      	ldr	r2, [pc, #164]	; (1a001594 <pll_calc_divs+0x11c>)
1a0014f0:	4293      	cmp	r3, r2
1a0014f2:	d934      	bls.n	1a00155e <pll_calc_divs+0xe6>
1a0014f4:	68fb      	ldr	r3, [r7, #12]
1a0014f6:	4a28      	ldr	r2, [pc, #160]	; (1a001598 <pll_calc_divs+0x120>)
1a0014f8:	4293      	cmp	r3, r2
1a0014fa:	d839      	bhi.n	1a001570 <pll_calc_divs+0xf8>
1a0014fc:	683b      	ldr	r3, [r7, #0]
1a0014fe:	681b      	ldr	r3, [r3, #0]
1a001500:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001504:	2b00      	cmp	r3, #0
1a001506:	d002      	beq.n	1a00150e <pll_calc_divs+0x96>
1a001508:	68fb      	ldr	r3, [r7, #12]
1a00150a:	60bb      	str	r3, [r7, #8]
1a00150c:	e005      	b.n	1a00151a <pll_calc_divs+0xa2>
1a00150e:	693b      	ldr	r3, [r7, #16]
1a001510:	3301      	adds	r3, #1
1a001512:	68fa      	ldr	r2, [r7, #12]
1a001514:	fa22 f303 	lsr.w	r3, r2, r3
1a001518:	60bb      	str	r3, [r7, #8]
1a00151a:	687a      	ldr	r2, [r7, #4]
1a00151c:	68bb      	ldr	r3, [r7, #8]
1a00151e:	1ad3      	subs	r3, r2, r3
1a001520:	4618      	mov	r0, r3
1a001522:	f7ff ff98 	bl	1a001456 <ABS>
1a001526:	4602      	mov	r2, r0
1a001528:	69fb      	ldr	r3, [r7, #28]
1a00152a:	4293      	cmp	r3, r2
1a00152c:	d918      	bls.n	1a001560 <pll_calc_divs+0xe8>
1a00152e:	683b      	ldr	r3, [r7, #0]
1a001530:	69ba      	ldr	r2, [r7, #24]
1a001532:	609a      	str	r2, [r3, #8]
1a001534:	693b      	ldr	r3, [r7, #16]
1a001536:	1c5a      	adds	r2, r3, #1
1a001538:	683b      	ldr	r3, [r7, #0]
1a00153a:	60da      	str	r2, [r3, #12]
1a00153c:	683b      	ldr	r3, [r7, #0]
1a00153e:	697a      	ldr	r2, [r7, #20]
1a001540:	611a      	str	r2, [r3, #16]
1a001542:	683b      	ldr	r3, [r7, #0]
1a001544:	68ba      	ldr	r2, [r7, #8]
1a001546:	619a      	str	r2, [r3, #24]
1a001548:	683b      	ldr	r3, [r7, #0]
1a00154a:	68fa      	ldr	r2, [r7, #12]
1a00154c:	61da      	str	r2, [r3, #28]
1a00154e:	687a      	ldr	r2, [r7, #4]
1a001550:	68bb      	ldr	r3, [r7, #8]
1a001552:	1ad3      	subs	r3, r2, r3
1a001554:	4618      	mov	r0, r3
1a001556:	f7ff ff7e 	bl	1a001456 <ABS>
1a00155a:	61f8      	str	r0, [r7, #28]
1a00155c:	e000      	b.n	1a001560 <pll_calc_divs+0xe8>
1a00155e:	bf00      	nop
1a001560:	697b      	ldr	r3, [r7, #20]
1a001562:	3301      	adds	r3, #1
1a001564:	617b      	str	r3, [r7, #20]
1a001566:	697b      	ldr	r3, [r7, #20]
1a001568:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a00156c:	dda0      	ble.n	1a0014b0 <pll_calc_divs+0x38>
1a00156e:	e000      	b.n	1a001572 <pll_calc_divs+0xfa>
1a001570:	bf00      	nop
1a001572:	693b      	ldr	r3, [r7, #16]
1a001574:	3301      	adds	r3, #1
1a001576:	613b      	str	r3, [r7, #16]
1a001578:	693b      	ldr	r3, [r7, #16]
1a00157a:	2b03      	cmp	r3, #3
1a00157c:	dd95      	ble.n	1a0014aa <pll_calc_divs+0x32>
1a00157e:	69bb      	ldr	r3, [r7, #24]
1a001580:	3301      	adds	r3, #1
1a001582:	61bb      	str	r3, [r7, #24]
1a001584:	69bb      	ldr	r3, [r7, #24]
1a001586:	2b04      	cmp	r3, #4
1a001588:	dd8c      	ble.n	1a0014a4 <pll_calc_divs+0x2c>
1a00158a:	bf00      	nop
1a00158c:	3720      	adds	r7, #32
1a00158e:	46bd      	mov	sp, r7
1a001590:	bd80      	pop	{r7, pc}
1a001592:	bf00      	nop
1a001594:	094c5eff 	.word	0x094c5eff
1a001598:	1312d000 	.word	0x1312d000

1a00159c <pll_get_frac>:
1a00159c:	b5b0      	push	{r4, r5, r7, lr}
1a00159e:	b09e      	sub	sp, #120	; 0x78
1a0015a0:	af00      	add	r7, sp, #0
1a0015a2:	6078      	str	r0, [r7, #4]
1a0015a4:	6039      	str	r1, [r7, #0]
1a0015a6:	f107 030c 	add.w	r3, r7, #12
1a0015aa:	2260      	movs	r2, #96	; 0x60
1a0015ac:	2100      	movs	r1, #0
1a0015ae:	4618      	mov	r0, r3
1a0015b0:	f7fe fea6 	bl	1a000300 <memset>
1a0015b4:	68fb      	ldr	r3, [r7, #12]
1a0015b6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0015ba:	60fb      	str	r3, [r7, #12]
1a0015bc:	683b      	ldr	r3, [r7, #0]
1a0015be:	695b      	ldr	r3, [r3, #20]
1a0015c0:	623b      	str	r3, [r7, #32]
1a0015c2:	683b      	ldr	r3, [r7, #0]
1a0015c4:	791b      	ldrb	r3, [r3, #4]
1a0015c6:	743b      	strb	r3, [r7, #16]
1a0015c8:	f107 030c 	add.w	r3, r7, #12
1a0015cc:	4619      	mov	r1, r3
1a0015ce:	6878      	ldr	r0, [r7, #4]
1a0015d0:	f7ff ff52 	bl	1a001478 <pll_calc_divs>
1a0015d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0015d6:	687a      	ldr	r2, [r7, #4]
1a0015d8:	429a      	cmp	r2, r3
1a0015da:	d10a      	bne.n	1a0015f2 <pll_get_frac+0x56>
1a0015dc:	683b      	ldr	r3, [r7, #0]
1a0015de:	461d      	mov	r5, r3
1a0015e0:	f107 040c 	add.w	r4, r7, #12
1a0015e4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0015e6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0015e8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0015ec:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0015f0:	e08e      	b.n	1a001710 <pll_get_frac+0x174>
1a0015f2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0015f4:	687a      	ldr	r2, [r7, #4]
1a0015f6:	1ad3      	subs	r3, r2, r3
1a0015f8:	4618      	mov	r0, r3
1a0015fa:	f7ff ff2c 	bl	1a001456 <ABS>
1a0015fe:	4603      	mov	r3, r0
1a001600:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001602:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001604:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001608:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00160a:	683b      	ldr	r3, [r7, #0]
1a00160c:	695b      	ldr	r3, [r3, #20]
1a00160e:	663b      	str	r3, [r7, #96]	; 0x60
1a001610:	683b      	ldr	r3, [r7, #0]
1a001612:	791b      	ldrb	r3, [r3, #4]
1a001614:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001618:	f107 030c 	add.w	r3, r7, #12
1a00161c:	3340      	adds	r3, #64	; 0x40
1a00161e:	4619      	mov	r1, r3
1a001620:	6878      	ldr	r0, [r7, #4]
1a001622:	f7ff ff29 	bl	1a001478 <pll_calc_divs>
1a001626:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001628:	687a      	ldr	r2, [r7, #4]
1a00162a:	429a      	cmp	r2, r3
1a00162c:	d10a      	bne.n	1a001644 <pll_get_frac+0xa8>
1a00162e:	683b      	ldr	r3, [r7, #0]
1a001630:	461d      	mov	r5, r3
1a001632:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001636:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001638:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00163a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00163e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001642:	e065      	b.n	1a001710 <pll_get_frac+0x174>
1a001644:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001646:	687a      	ldr	r2, [r7, #4]
1a001648:	1ad3      	subs	r3, r2, r3
1a00164a:	4618      	mov	r0, r3
1a00164c:	f7ff ff03 	bl	1a001456 <ABS>
1a001650:	4603      	mov	r3, r0
1a001652:	677b      	str	r3, [r7, #116]	; 0x74
1a001654:	687b      	ldr	r3, [r7, #4]
1a001656:	4a30      	ldr	r2, [pc, #192]	; (1a001718 <pll_get_frac+0x17c>)
1a001658:	4293      	cmp	r3, r2
1a00165a:	d81a      	bhi.n	1a001692 <pll_get_frac+0xf6>
1a00165c:	2340      	movs	r3, #64	; 0x40
1a00165e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001660:	683b      	ldr	r3, [r7, #0]
1a001662:	695b      	ldr	r3, [r3, #20]
1a001664:	643b      	str	r3, [r7, #64]	; 0x40
1a001666:	f107 030c 	add.w	r3, r7, #12
1a00166a:	3320      	adds	r3, #32
1a00166c:	4619      	mov	r1, r3
1a00166e:	6878      	ldr	r0, [r7, #4]
1a001670:	f7ff ff02 	bl	1a001478 <pll_calc_divs>
1a001674:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001676:	687a      	ldr	r2, [r7, #4]
1a001678:	429a      	cmp	r2, r3
1a00167a:	d10a      	bne.n	1a001692 <pll_get_frac+0xf6>
1a00167c:	683b      	ldr	r3, [r7, #0]
1a00167e:	461d      	mov	r5, r3
1a001680:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001684:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001686:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001688:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00168c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001690:	e03e      	b.n	1a001710 <pll_get_frac+0x174>
1a001692:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001694:	687a      	ldr	r2, [r7, #4]
1a001696:	1ad3      	subs	r3, r2, r3
1a001698:	4618      	mov	r0, r3
1a00169a:	f7ff fedc 	bl	1a001456 <ABS>
1a00169e:	4603      	mov	r3, r0
1a0016a0:	673b      	str	r3, [r7, #112]	; 0x70
1a0016a2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0016a4:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0016a6:	429a      	cmp	r2, r3
1a0016a8:	dc19      	bgt.n	1a0016de <pll_get_frac+0x142>
1a0016aa:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0016ac:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0016ae:	429a      	cmp	r2, r3
1a0016b0:	dc0a      	bgt.n	1a0016c8 <pll_get_frac+0x12c>
1a0016b2:	683b      	ldr	r3, [r7, #0]
1a0016b4:	461d      	mov	r5, r3
1a0016b6:	f107 040c 	add.w	r4, r7, #12
1a0016ba:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016bc:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016be:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016c2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016c6:	e023      	b.n	1a001710 <pll_get_frac+0x174>
1a0016c8:	683b      	ldr	r3, [r7, #0]
1a0016ca:	461d      	mov	r5, r3
1a0016cc:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0016d0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016d2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016d4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016d8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016dc:	e018      	b.n	1a001710 <pll_get_frac+0x174>
1a0016de:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0016e0:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0016e2:	429a      	cmp	r2, r3
1a0016e4:	dc0a      	bgt.n	1a0016fc <pll_get_frac+0x160>
1a0016e6:	683b      	ldr	r3, [r7, #0]
1a0016e8:	461d      	mov	r5, r3
1a0016ea:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0016ee:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016f0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016f2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016f6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016fa:	e009      	b.n	1a001710 <pll_get_frac+0x174>
1a0016fc:	683b      	ldr	r3, [r7, #0]
1a0016fe:	461d      	mov	r5, r3
1a001700:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001704:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001706:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001708:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00170c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001710:	3778      	adds	r7, #120	; 0x78
1a001712:	46bd      	mov	sp, r7
1a001714:	bdb0      	pop	{r4, r5, r7, pc}
1a001716:	bf00      	nop
1a001718:	068e7780 	.word	0x068e7780

1a00171c <Chip_Clock_GetDivRate>:
1a00171c:	b580      	push	{r7, lr}
1a00171e:	b084      	sub	sp, #16
1a001720:	af00      	add	r7, sp, #0
1a001722:	4603      	mov	r3, r0
1a001724:	460a      	mov	r2, r1
1a001726:	71fb      	strb	r3, [r7, #7]
1a001728:	4613      	mov	r3, r2
1a00172a:	71bb      	strb	r3, [r7, #6]
1a00172c:	79bb      	ldrb	r3, [r7, #6]
1a00172e:	4618      	mov	r0, r3
1a001730:	f000 f960 	bl	1a0019f4 <Chip_Clock_GetDividerSource>
1a001734:	4603      	mov	r3, r0
1a001736:	73fb      	strb	r3, [r7, #15]
1a001738:	79bb      	ldrb	r3, [r7, #6]
1a00173a:	4618      	mov	r0, r3
1a00173c:	f000 f97a 	bl	1a001a34 <Chip_Clock_GetDividerDivisor>
1a001740:	60b8      	str	r0, [r7, #8]
1a001742:	7bfb      	ldrb	r3, [r7, #15]
1a001744:	4618      	mov	r0, r3
1a001746:	f000 f991 	bl	1a001a6c <Chip_Clock_GetClockInputHz>
1a00174a:	4602      	mov	r2, r0
1a00174c:	68bb      	ldr	r3, [r7, #8]
1a00174e:	3301      	adds	r3, #1
1a001750:	fbb2 f3f3 	udiv	r3, r2, r3
1a001754:	4618      	mov	r0, r3
1a001756:	3710      	adds	r7, #16
1a001758:	46bd      	mov	sp, r7
1a00175a:	bd80      	pop	{r7, pc}

1a00175c <Chip_Clock_FindBaseClock>:
1a00175c:	b480      	push	{r7}
1a00175e:	b085      	sub	sp, #20
1a001760:	af00      	add	r7, sp, #0
1a001762:	4603      	mov	r3, r0
1a001764:	80fb      	strh	r3, [r7, #6]
1a001766:	231c      	movs	r3, #28
1a001768:	73fb      	strb	r3, [r7, #15]
1a00176a:	2300      	movs	r3, #0
1a00176c:	60bb      	str	r3, [r7, #8]
1a00176e:	e024      	b.n	1a0017ba <Chip_Clock_FindBaseClock+0x5e>
1a001770:	491d      	ldr	r1, [pc, #116]	; (1a0017e8 <Chip_Clock_FindBaseClock+0x8c>)
1a001772:	68ba      	ldr	r2, [r7, #8]
1a001774:	4613      	mov	r3, r2
1a001776:	005b      	lsls	r3, r3, #1
1a001778:	4413      	add	r3, r2
1a00177a:	005b      	lsls	r3, r3, #1
1a00177c:	440b      	add	r3, r1
1a00177e:	881b      	ldrh	r3, [r3, #0]
1a001780:	88fa      	ldrh	r2, [r7, #6]
1a001782:	429a      	cmp	r2, r3
1a001784:	d316      	bcc.n	1a0017b4 <Chip_Clock_FindBaseClock+0x58>
1a001786:	4918      	ldr	r1, [pc, #96]	; (1a0017e8 <Chip_Clock_FindBaseClock+0x8c>)
1a001788:	68ba      	ldr	r2, [r7, #8]
1a00178a:	4613      	mov	r3, r2
1a00178c:	005b      	lsls	r3, r3, #1
1a00178e:	4413      	add	r3, r2
1a001790:	005b      	lsls	r3, r3, #1
1a001792:	440b      	add	r3, r1
1a001794:	3302      	adds	r3, #2
1a001796:	881b      	ldrh	r3, [r3, #0]
1a001798:	88fa      	ldrh	r2, [r7, #6]
1a00179a:	429a      	cmp	r2, r3
1a00179c:	d80a      	bhi.n	1a0017b4 <Chip_Clock_FindBaseClock+0x58>
1a00179e:	4912      	ldr	r1, [pc, #72]	; (1a0017e8 <Chip_Clock_FindBaseClock+0x8c>)
1a0017a0:	68ba      	ldr	r2, [r7, #8]
1a0017a2:	4613      	mov	r3, r2
1a0017a4:	005b      	lsls	r3, r3, #1
1a0017a6:	4413      	add	r3, r2
1a0017a8:	005b      	lsls	r3, r3, #1
1a0017aa:	440b      	add	r3, r1
1a0017ac:	3304      	adds	r3, #4
1a0017ae:	781b      	ldrb	r3, [r3, #0]
1a0017b0:	73fb      	strb	r3, [r7, #15]
1a0017b2:	e002      	b.n	1a0017ba <Chip_Clock_FindBaseClock+0x5e>
1a0017b4:	68bb      	ldr	r3, [r7, #8]
1a0017b6:	3301      	adds	r3, #1
1a0017b8:	60bb      	str	r3, [r7, #8]
1a0017ba:	7bfb      	ldrb	r3, [r7, #15]
1a0017bc:	2b1c      	cmp	r3, #28
1a0017be:	d10b      	bne.n	1a0017d8 <Chip_Clock_FindBaseClock+0x7c>
1a0017c0:	4909      	ldr	r1, [pc, #36]	; (1a0017e8 <Chip_Clock_FindBaseClock+0x8c>)
1a0017c2:	68ba      	ldr	r2, [r7, #8]
1a0017c4:	4613      	mov	r3, r2
1a0017c6:	005b      	lsls	r3, r3, #1
1a0017c8:	4413      	add	r3, r2
1a0017ca:	005b      	lsls	r3, r3, #1
1a0017cc:	440b      	add	r3, r1
1a0017ce:	3304      	adds	r3, #4
1a0017d0:	781b      	ldrb	r3, [r3, #0]
1a0017d2:	7bfa      	ldrb	r2, [r7, #15]
1a0017d4:	429a      	cmp	r2, r3
1a0017d6:	d1cb      	bne.n	1a001770 <Chip_Clock_FindBaseClock+0x14>
1a0017d8:	7bfb      	ldrb	r3, [r7, #15]
1a0017da:	4618      	mov	r0, r3
1a0017dc:	3714      	adds	r7, #20
1a0017de:	46bd      	mov	sp, r7
1a0017e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017e4:	4770      	bx	lr
1a0017e6:	bf00      	nop
1a0017e8:	1a0029fc 	.word	0x1a0029fc

1a0017ec <Chip_Clock_EnableCrystal>:
1a0017ec:	b480      	push	{r7}
1a0017ee:	b083      	sub	sp, #12
1a0017f0:	af00      	add	r7, sp, #0
1a0017f2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0017f6:	603b      	str	r3, [r7, #0]
1a0017f8:	4b15      	ldr	r3, [pc, #84]	; (1a001850 <Chip_Clock_EnableCrystal+0x64>)
1a0017fa:	699b      	ldr	r3, [r3, #24]
1a0017fc:	607b      	str	r3, [r7, #4]
1a0017fe:	687b      	ldr	r3, [r7, #4]
1a001800:	f023 0302 	bic.w	r3, r3, #2
1a001804:	607b      	str	r3, [r7, #4]
1a001806:	4b12      	ldr	r3, [pc, #72]	; (1a001850 <Chip_Clock_EnableCrystal+0x64>)
1a001808:	699b      	ldr	r3, [r3, #24]
1a00180a:	687a      	ldr	r2, [r7, #4]
1a00180c:	429a      	cmp	r2, r3
1a00180e:	d002      	beq.n	1a001816 <Chip_Clock_EnableCrystal+0x2a>
1a001810:	4a0f      	ldr	r2, [pc, #60]	; (1a001850 <Chip_Clock_EnableCrystal+0x64>)
1a001812:	687b      	ldr	r3, [r7, #4]
1a001814:	6193      	str	r3, [r2, #24]
1a001816:	687b      	ldr	r3, [r7, #4]
1a001818:	f023 0301 	bic.w	r3, r3, #1
1a00181c:	607b      	str	r3, [r7, #4]
1a00181e:	4b0d      	ldr	r3, [pc, #52]	; (1a001854 <Chip_Clock_EnableCrystal+0x68>)
1a001820:	681b      	ldr	r3, [r3, #0]
1a001822:	4a0d      	ldr	r2, [pc, #52]	; (1a001858 <Chip_Clock_EnableCrystal+0x6c>)
1a001824:	4293      	cmp	r3, r2
1a001826:	d903      	bls.n	1a001830 <Chip_Clock_EnableCrystal+0x44>
1a001828:	687b      	ldr	r3, [r7, #4]
1a00182a:	f043 0304 	orr.w	r3, r3, #4
1a00182e:	607b      	str	r3, [r7, #4]
1a001830:	4a07      	ldr	r2, [pc, #28]	; (1a001850 <Chip_Clock_EnableCrystal+0x64>)
1a001832:	687b      	ldr	r3, [r7, #4]
1a001834:	6193      	str	r3, [r2, #24]
1a001836:	bf00      	nop
1a001838:	683b      	ldr	r3, [r7, #0]
1a00183a:	1e5a      	subs	r2, r3, #1
1a00183c:	603a      	str	r2, [r7, #0]
1a00183e:	2b00      	cmp	r3, #0
1a001840:	d1fa      	bne.n	1a001838 <Chip_Clock_EnableCrystal+0x4c>
1a001842:	bf00      	nop
1a001844:	370c      	adds	r7, #12
1a001846:	46bd      	mov	sp, r7
1a001848:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00184c:	4770      	bx	lr
1a00184e:	bf00      	nop
1a001850:	40050000 	.word	0x40050000
1a001854:	1a002964 	.word	0x1a002964
1a001858:	01312cff 	.word	0x01312cff

1a00185c <Chip_Clock_CalcMainPLLValue>:
1a00185c:	b580      	push	{r7, lr}
1a00185e:	b082      	sub	sp, #8
1a001860:	af00      	add	r7, sp, #0
1a001862:	6078      	str	r0, [r7, #4]
1a001864:	6039      	str	r1, [r7, #0]
1a001866:	683b      	ldr	r3, [r7, #0]
1a001868:	791b      	ldrb	r3, [r3, #4]
1a00186a:	4618      	mov	r0, r3
1a00186c:	f000 f8fe 	bl	1a001a6c <Chip_Clock_GetClockInputHz>
1a001870:	4602      	mov	r2, r0
1a001872:	683b      	ldr	r3, [r7, #0]
1a001874:	615a      	str	r2, [r3, #20]
1a001876:	687b      	ldr	r3, [r7, #4]
1a001878:	4a2b      	ldr	r2, [pc, #172]	; (1a001928 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00187a:	4293      	cmp	r3, r2
1a00187c:	d807      	bhi.n	1a00188e <Chip_Clock_CalcMainPLLValue+0x32>
1a00187e:	687b      	ldr	r3, [r7, #4]
1a001880:	4a2a      	ldr	r2, [pc, #168]	; (1a00192c <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001882:	4293      	cmp	r3, r2
1a001884:	d903      	bls.n	1a00188e <Chip_Clock_CalcMainPLLValue+0x32>
1a001886:	683b      	ldr	r3, [r7, #0]
1a001888:	695b      	ldr	r3, [r3, #20]
1a00188a:	2b00      	cmp	r3, #0
1a00188c:	d102      	bne.n	1a001894 <Chip_Clock_CalcMainPLLValue+0x38>
1a00188e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001892:	e044      	b.n	1a00191e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001894:	683b      	ldr	r3, [r7, #0]
1a001896:	2280      	movs	r2, #128	; 0x80
1a001898:	601a      	str	r2, [r3, #0]
1a00189a:	683b      	ldr	r3, [r7, #0]
1a00189c:	2200      	movs	r2, #0
1a00189e:	609a      	str	r2, [r3, #8]
1a0018a0:	683b      	ldr	r3, [r7, #0]
1a0018a2:	2200      	movs	r2, #0
1a0018a4:	60da      	str	r2, [r3, #12]
1a0018a6:	683b      	ldr	r3, [r7, #0]
1a0018a8:	695b      	ldr	r3, [r3, #20]
1a0018aa:	687a      	ldr	r2, [r7, #4]
1a0018ac:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018b0:	461a      	mov	r2, r3
1a0018b2:	683b      	ldr	r3, [r7, #0]
1a0018b4:	611a      	str	r2, [r3, #16]
1a0018b6:	687b      	ldr	r3, [r7, #4]
1a0018b8:	4a1d      	ldr	r2, [pc, #116]	; (1a001930 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0018ba:	4293      	cmp	r3, r2
1a0018bc:	d909      	bls.n	1a0018d2 <Chip_Clock_CalcMainPLLValue+0x76>
1a0018be:	683b      	ldr	r3, [r7, #0]
1a0018c0:	691b      	ldr	r3, [r3, #16]
1a0018c2:	461a      	mov	r2, r3
1a0018c4:	683b      	ldr	r3, [r7, #0]
1a0018c6:	695b      	ldr	r3, [r3, #20]
1a0018c8:	fb03 f302 	mul.w	r3, r3, r2
1a0018cc:	687a      	ldr	r2, [r7, #4]
1a0018ce:	429a      	cmp	r2, r3
1a0018d0:	d00f      	beq.n	1a0018f2 <Chip_Clock_CalcMainPLLValue+0x96>
1a0018d2:	6839      	ldr	r1, [r7, #0]
1a0018d4:	6878      	ldr	r0, [r7, #4]
1a0018d6:	f7ff fe61 	bl	1a00159c <pll_get_frac>
1a0018da:	683b      	ldr	r3, [r7, #0]
1a0018dc:	689b      	ldr	r3, [r3, #8]
1a0018de:	2b00      	cmp	r3, #0
1a0018e0:	d102      	bne.n	1a0018e8 <Chip_Clock_CalcMainPLLValue+0x8c>
1a0018e2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0018e6:	e01a      	b.n	1a00191e <Chip_Clock_CalcMainPLLValue+0xc2>
1a0018e8:	683b      	ldr	r3, [r7, #0]
1a0018ea:	689b      	ldr	r3, [r3, #8]
1a0018ec:	1e5a      	subs	r2, r3, #1
1a0018ee:	683b      	ldr	r3, [r7, #0]
1a0018f0:	609a      	str	r2, [r3, #8]
1a0018f2:	683b      	ldr	r3, [r7, #0]
1a0018f4:	691b      	ldr	r3, [r3, #16]
1a0018f6:	2b00      	cmp	r3, #0
1a0018f8:	d102      	bne.n	1a001900 <Chip_Clock_CalcMainPLLValue+0xa4>
1a0018fa:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0018fe:	e00e      	b.n	1a00191e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001900:	683b      	ldr	r3, [r7, #0]
1a001902:	68db      	ldr	r3, [r3, #12]
1a001904:	2b00      	cmp	r3, #0
1a001906:	d004      	beq.n	1a001912 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001908:	683b      	ldr	r3, [r7, #0]
1a00190a:	68db      	ldr	r3, [r3, #12]
1a00190c:	1e5a      	subs	r2, r3, #1
1a00190e:	683b      	ldr	r3, [r7, #0]
1a001910:	60da      	str	r2, [r3, #12]
1a001912:	683b      	ldr	r3, [r7, #0]
1a001914:	691b      	ldr	r3, [r3, #16]
1a001916:	1e5a      	subs	r2, r3, #1
1a001918:	683b      	ldr	r3, [r7, #0]
1a00191a:	611a      	str	r2, [r3, #16]
1a00191c:	2300      	movs	r3, #0
1a00191e:	4618      	mov	r0, r3
1a001920:	3708      	adds	r7, #8
1a001922:	46bd      	mov	sp, r7
1a001924:	bd80      	pop	{r7, pc}
1a001926:	bf00      	nop
1a001928:	0c28cb00 	.word	0x0c28cb00
1a00192c:	0094c5ef 	.word	0x0094c5ef
1a001930:	094c5eff 	.word	0x094c5eff

1a001934 <Chip_Clock_GetMainPLLHz>:
1a001934:	b580      	push	{r7, lr}
1a001936:	b08c      	sub	sp, #48	; 0x30
1a001938:	af00      	add	r7, sp, #0
1a00193a:	4b2c      	ldr	r3, [pc, #176]	; (1a0019ec <Chip_Clock_GetMainPLLHz+0xb8>)
1a00193c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00193e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001940:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001942:	0e1b      	lsrs	r3, r3, #24
1a001944:	b2db      	uxtb	r3, r3
1a001946:	f003 030f 	and.w	r3, r3, #15
1a00194a:	b2db      	uxtb	r3, r3
1a00194c:	4618      	mov	r0, r3
1a00194e:	f000 f88d 	bl	1a001a6c <Chip_Clock_GetClockInputHz>
1a001952:	62b8      	str	r0, [r7, #40]	; 0x28
1a001954:	4b26      	ldr	r3, [pc, #152]	; (1a0019f0 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001956:	681b      	ldr	r3, [r3, #0]
1a001958:	607b      	str	r3, [r7, #4]
1a00195a:	4b24      	ldr	r3, [pc, #144]	; (1a0019ec <Chip_Clock_GetMainPLLHz+0xb8>)
1a00195c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00195e:	f003 0301 	and.w	r3, r3, #1
1a001962:	2b00      	cmp	r3, #0
1a001964:	d101      	bne.n	1a00196a <Chip_Clock_GetMainPLLHz+0x36>
1a001966:	2300      	movs	r3, #0
1a001968:	e03b      	b.n	1a0019e2 <Chip_Clock_GetMainPLLHz+0xae>
1a00196a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00196c:	0c1b      	lsrs	r3, r3, #16
1a00196e:	b2db      	uxtb	r3, r3
1a001970:	627b      	str	r3, [r7, #36]	; 0x24
1a001972:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001974:	0b1b      	lsrs	r3, r3, #12
1a001976:	f003 0303 	and.w	r3, r3, #3
1a00197a:	623b      	str	r3, [r7, #32]
1a00197c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00197e:	0a1b      	lsrs	r3, r3, #8
1a001980:	f003 0303 	and.w	r3, r3, #3
1a001984:	61fb      	str	r3, [r7, #28]
1a001986:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001988:	09db      	lsrs	r3, r3, #7
1a00198a:	f003 0301 	and.w	r3, r3, #1
1a00198e:	61bb      	str	r3, [r7, #24]
1a001990:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001992:	099b      	lsrs	r3, r3, #6
1a001994:	f003 0301 	and.w	r3, r3, #1
1a001998:	617b      	str	r3, [r7, #20]
1a00199a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00199c:	3301      	adds	r3, #1
1a00199e:	613b      	str	r3, [r7, #16]
1a0019a0:	6a3b      	ldr	r3, [r7, #32]
1a0019a2:	3301      	adds	r3, #1
1a0019a4:	60fb      	str	r3, [r7, #12]
1a0019a6:	1d3a      	adds	r2, r7, #4
1a0019a8:	69fb      	ldr	r3, [r7, #28]
1a0019aa:	4413      	add	r3, r2
1a0019ac:	781b      	ldrb	r3, [r3, #0]
1a0019ae:	60bb      	str	r3, [r7, #8]
1a0019b0:	69bb      	ldr	r3, [r7, #24]
1a0019b2:	2b00      	cmp	r3, #0
1a0019b4:	d102      	bne.n	1a0019bc <Chip_Clock_GetMainPLLHz+0x88>
1a0019b6:	697b      	ldr	r3, [r7, #20]
1a0019b8:	2b00      	cmp	r3, #0
1a0019ba:	d007      	beq.n	1a0019cc <Chip_Clock_GetMainPLLHz+0x98>
1a0019bc:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0019be:	68fb      	ldr	r3, [r7, #12]
1a0019c0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019c4:	693a      	ldr	r2, [r7, #16]
1a0019c6:	fb02 f303 	mul.w	r3, r2, r3
1a0019ca:	e00a      	b.n	1a0019e2 <Chip_Clock_GetMainPLLHz+0xae>
1a0019cc:	68bb      	ldr	r3, [r7, #8]
1a0019ce:	005b      	lsls	r3, r3, #1
1a0019d0:	693a      	ldr	r2, [r7, #16]
1a0019d2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019d6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a0019d8:	68fa      	ldr	r2, [r7, #12]
1a0019da:	fbb1 f2f2 	udiv	r2, r1, r2
1a0019de:	fb02 f303 	mul.w	r3, r2, r3
1a0019e2:	4618      	mov	r0, r3
1a0019e4:	3730      	adds	r7, #48	; 0x30
1a0019e6:	46bd      	mov	sp, r7
1a0019e8:	bd80      	pop	{r7, pc}
1a0019ea:	bf00      	nop
1a0019ec:	40050000 	.word	0x40050000
1a0019f0:	1a002a68 	.word	0x1a002a68

1a0019f4 <Chip_Clock_GetDividerSource>:
1a0019f4:	b480      	push	{r7}
1a0019f6:	b085      	sub	sp, #20
1a0019f8:	af00      	add	r7, sp, #0
1a0019fa:	4603      	mov	r3, r0
1a0019fc:	71fb      	strb	r3, [r7, #7]
1a0019fe:	4a0c      	ldr	r2, [pc, #48]	; (1a001a30 <Chip_Clock_GetDividerSource+0x3c>)
1a001a00:	79fb      	ldrb	r3, [r7, #7]
1a001a02:	3312      	adds	r3, #18
1a001a04:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a08:	60fb      	str	r3, [r7, #12]
1a001a0a:	68fb      	ldr	r3, [r7, #12]
1a001a0c:	f003 0301 	and.w	r3, r3, #1
1a001a10:	2b00      	cmp	r3, #0
1a001a12:	d001      	beq.n	1a001a18 <Chip_Clock_GetDividerSource+0x24>
1a001a14:	2311      	movs	r3, #17
1a001a16:	e005      	b.n	1a001a24 <Chip_Clock_GetDividerSource+0x30>
1a001a18:	68fb      	ldr	r3, [r7, #12]
1a001a1a:	0e1b      	lsrs	r3, r3, #24
1a001a1c:	b2db      	uxtb	r3, r3
1a001a1e:	f003 031f 	and.w	r3, r3, #31
1a001a22:	b2db      	uxtb	r3, r3
1a001a24:	4618      	mov	r0, r3
1a001a26:	3714      	adds	r7, #20
1a001a28:	46bd      	mov	sp, r7
1a001a2a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a2e:	4770      	bx	lr
1a001a30:	40050000 	.word	0x40050000

1a001a34 <Chip_Clock_GetDividerDivisor>:
1a001a34:	b480      	push	{r7}
1a001a36:	b083      	sub	sp, #12
1a001a38:	af00      	add	r7, sp, #0
1a001a3a:	4603      	mov	r3, r0
1a001a3c:	71fb      	strb	r3, [r7, #7]
1a001a3e:	4a09      	ldr	r2, [pc, #36]	; (1a001a64 <Chip_Clock_GetDividerDivisor+0x30>)
1a001a40:	79fb      	ldrb	r3, [r7, #7]
1a001a42:	3312      	adds	r3, #18
1a001a44:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a48:	089b      	lsrs	r3, r3, #2
1a001a4a:	b2da      	uxtb	r2, r3
1a001a4c:	79fb      	ldrb	r3, [r7, #7]
1a001a4e:	4906      	ldr	r1, [pc, #24]	; (1a001a68 <Chip_Clock_GetDividerDivisor+0x34>)
1a001a50:	5ccb      	ldrb	r3, [r1, r3]
1a001a52:	4013      	ands	r3, r2
1a001a54:	b2db      	uxtb	r3, r3
1a001a56:	4618      	mov	r0, r3
1a001a58:	370c      	adds	r7, #12
1a001a5a:	46bd      	mov	sp, r7
1a001a5c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a60:	4770      	bx	lr
1a001a62:	bf00      	nop
1a001a64:	40050000 	.word	0x40050000
1a001a68:	1a002a6c 	.word	0x1a002a6c

1a001a6c <Chip_Clock_GetClockInputHz>:
1a001a6c:	b580      	push	{r7, lr}
1a001a6e:	b084      	sub	sp, #16
1a001a70:	af00      	add	r7, sp, #0
1a001a72:	4603      	mov	r3, r0
1a001a74:	71fb      	strb	r3, [r7, #7]
1a001a76:	2300      	movs	r3, #0
1a001a78:	60fb      	str	r3, [r7, #12]
1a001a7a:	79fb      	ldrb	r3, [r7, #7]
1a001a7c:	2b11      	cmp	r3, #17
1a001a7e:	d87f      	bhi.n	1a001b80 <Chip_Clock_GetClockInputHz+0x114>
1a001a80:	a201      	add	r2, pc, #4	; (adr r2, 1a001a88 <Chip_Clock_GetClockInputHz+0x1c>)
1a001a82:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001a86:	bf00      	nop
1a001a88:	1a001ad1 	.word	0x1a001ad1
1a001a8c:	1a001ad9 	.word	0x1a001ad9
1a001a90:	1a001adf 	.word	0x1a001adf
1a001a94:	1a001af3 	.word	0x1a001af3
1a001a98:	1a001b0d 	.word	0x1a001b0d
1a001a9c:	1a001b81 	.word	0x1a001b81
1a001aa0:	1a001b15 	.word	0x1a001b15
1a001aa4:	1a001b1d 	.word	0x1a001b1d
1a001aa8:	1a001b25 	.word	0x1a001b25
1a001aac:	1a001b2d 	.word	0x1a001b2d
1a001ab0:	1a001b81 	.word	0x1a001b81
1a001ab4:	1a001b81 	.word	0x1a001b81
1a001ab8:	1a001b35 	.word	0x1a001b35
1a001abc:	1a001b43 	.word	0x1a001b43
1a001ac0:	1a001b51 	.word	0x1a001b51
1a001ac4:	1a001b5f 	.word	0x1a001b5f
1a001ac8:	1a001b6d 	.word	0x1a001b6d
1a001acc:	1a001b7b 	.word	0x1a001b7b
1a001ad0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001ad4:	60fb      	str	r3, [r7, #12]
1a001ad6:	e056      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001ad8:	4b2d      	ldr	r3, [pc, #180]	; (1a001b90 <Chip_Clock_GetClockInputHz+0x124>)
1a001ada:	60fb      	str	r3, [r7, #12]
1a001adc:	e053      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001ade:	4b2d      	ldr	r3, [pc, #180]	; (1a001b94 <Chip_Clock_GetClockInputHz+0x128>)
1a001ae0:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001ae4:	f003 0307 	and.w	r3, r3, #7
1a001ae8:	2b04      	cmp	r3, #4
1a001aea:	d04b      	beq.n	1a001b84 <Chip_Clock_GetClockInputHz+0x118>
1a001aec:	4b2a      	ldr	r3, [pc, #168]	; (1a001b98 <Chip_Clock_GetClockInputHz+0x12c>)
1a001aee:	60fb      	str	r3, [r7, #12]
1a001af0:	e048      	b.n	1a001b84 <Chip_Clock_GetClockInputHz+0x118>
1a001af2:	4b28      	ldr	r3, [pc, #160]	; (1a001b94 <Chip_Clock_GetClockInputHz+0x128>)
1a001af4:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001af8:	f003 0307 	and.w	r3, r3, #7
1a001afc:	2b04      	cmp	r3, #4
1a001afe:	d002      	beq.n	1a001b06 <Chip_Clock_GetClockInputHz+0x9a>
1a001b00:	4b25      	ldr	r3, [pc, #148]	; (1a001b98 <Chip_Clock_GetClockInputHz+0x12c>)
1a001b02:	60fb      	str	r3, [r7, #12]
1a001b04:	e03f      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b06:	4b25      	ldr	r3, [pc, #148]	; (1a001b9c <Chip_Clock_GetClockInputHz+0x130>)
1a001b08:	60fb      	str	r3, [r7, #12]
1a001b0a:	e03c      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b0c:	4b24      	ldr	r3, [pc, #144]	; (1a001ba0 <Chip_Clock_GetClockInputHz+0x134>)
1a001b0e:	681b      	ldr	r3, [r3, #0]
1a001b10:	60fb      	str	r3, [r7, #12]
1a001b12:	e038      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b14:	4b23      	ldr	r3, [pc, #140]	; (1a001ba4 <Chip_Clock_GetClockInputHz+0x138>)
1a001b16:	681b      	ldr	r3, [r3, #0]
1a001b18:	60fb      	str	r3, [r7, #12]
1a001b1a:	e034      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b1c:	4b22      	ldr	r3, [pc, #136]	; (1a001ba8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b1e:	681b      	ldr	r3, [r3, #0]
1a001b20:	60fb      	str	r3, [r7, #12]
1a001b22:	e030      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b24:	4b20      	ldr	r3, [pc, #128]	; (1a001ba8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b26:	685b      	ldr	r3, [r3, #4]
1a001b28:	60fb      	str	r3, [r7, #12]
1a001b2a:	e02c      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b2c:	f7ff ff02 	bl	1a001934 <Chip_Clock_GetMainPLLHz>
1a001b30:	60f8      	str	r0, [r7, #12]
1a001b32:	e028      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b34:	79fb      	ldrb	r3, [r7, #7]
1a001b36:	2100      	movs	r1, #0
1a001b38:	4618      	mov	r0, r3
1a001b3a:	f7ff fdef 	bl	1a00171c <Chip_Clock_GetDivRate>
1a001b3e:	60f8      	str	r0, [r7, #12]
1a001b40:	e021      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b42:	79fb      	ldrb	r3, [r7, #7]
1a001b44:	2101      	movs	r1, #1
1a001b46:	4618      	mov	r0, r3
1a001b48:	f7ff fde8 	bl	1a00171c <Chip_Clock_GetDivRate>
1a001b4c:	60f8      	str	r0, [r7, #12]
1a001b4e:	e01a      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b50:	79fb      	ldrb	r3, [r7, #7]
1a001b52:	2102      	movs	r1, #2
1a001b54:	4618      	mov	r0, r3
1a001b56:	f7ff fde1 	bl	1a00171c <Chip_Clock_GetDivRate>
1a001b5a:	60f8      	str	r0, [r7, #12]
1a001b5c:	e013      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b5e:	79fb      	ldrb	r3, [r7, #7]
1a001b60:	2103      	movs	r1, #3
1a001b62:	4618      	mov	r0, r3
1a001b64:	f7ff fdda 	bl	1a00171c <Chip_Clock_GetDivRate>
1a001b68:	60f8      	str	r0, [r7, #12]
1a001b6a:	e00c      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b6c:	79fb      	ldrb	r3, [r7, #7]
1a001b6e:	2104      	movs	r1, #4
1a001b70:	4618      	mov	r0, r3
1a001b72:	f7ff fdd3 	bl	1a00171c <Chip_Clock_GetDivRate>
1a001b76:	60f8      	str	r0, [r7, #12]
1a001b78:	e005      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b7a:	2300      	movs	r3, #0
1a001b7c:	60fb      	str	r3, [r7, #12]
1a001b7e:	e002      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b80:	bf00      	nop
1a001b82:	e000      	b.n	1a001b86 <Chip_Clock_GetClockInputHz+0x11a>
1a001b84:	bf00      	nop
1a001b86:	68fb      	ldr	r3, [r7, #12]
1a001b88:	4618      	mov	r0, r3
1a001b8a:	3710      	adds	r7, #16
1a001b8c:	46bd      	mov	sp, r7
1a001b8e:	bd80      	pop	{r7, pc}
1a001b90:	00b71b00 	.word	0x00b71b00
1a001b94:	40043000 	.word	0x40043000
1a001b98:	017d7840 	.word	0x017d7840
1a001b9c:	02faf080 	.word	0x02faf080
1a001ba0:	1a002960 	.word	0x1a002960
1a001ba4:	1a002964 	.word	0x1a002964
1a001ba8:	1000087c 	.word	0x1000087c

1a001bac <Chip_Clock_GetBaseClocktHz>:
1a001bac:	b580      	push	{r7, lr}
1a001bae:	b082      	sub	sp, #8
1a001bb0:	af00      	add	r7, sp, #0
1a001bb2:	4603      	mov	r3, r0
1a001bb4:	71fb      	strb	r3, [r7, #7]
1a001bb6:	79fb      	ldrb	r3, [r7, #7]
1a001bb8:	4618      	mov	r0, r3
1a001bba:	f000 f857 	bl	1a001c6c <Chip_Clock_GetBaseClock>
1a001bbe:	4603      	mov	r3, r0
1a001bc0:	4618      	mov	r0, r3
1a001bc2:	f7ff ff53 	bl	1a001a6c <Chip_Clock_GetClockInputHz>
1a001bc6:	4603      	mov	r3, r0
1a001bc8:	4618      	mov	r0, r3
1a001bca:	3708      	adds	r7, #8
1a001bcc:	46bd      	mov	sp, r7
1a001bce:	bd80      	pop	{r7, pc}

1a001bd0 <Chip_Clock_SetBaseClock>:
1a001bd0:	b490      	push	{r4, r7}
1a001bd2:	b084      	sub	sp, #16
1a001bd4:	af00      	add	r7, sp, #0
1a001bd6:	4604      	mov	r4, r0
1a001bd8:	4608      	mov	r0, r1
1a001bda:	4611      	mov	r1, r2
1a001bdc:	461a      	mov	r2, r3
1a001bde:	4623      	mov	r3, r4
1a001be0:	71fb      	strb	r3, [r7, #7]
1a001be2:	4603      	mov	r3, r0
1a001be4:	71bb      	strb	r3, [r7, #6]
1a001be6:	460b      	mov	r3, r1
1a001be8:	717b      	strb	r3, [r7, #5]
1a001bea:	4613      	mov	r3, r2
1a001bec:	713b      	strb	r3, [r7, #4]
1a001bee:	4a1d      	ldr	r2, [pc, #116]	; (1a001c64 <Chip_Clock_SetBaseClock+0x94>)
1a001bf0:	79fb      	ldrb	r3, [r7, #7]
1a001bf2:	3316      	adds	r3, #22
1a001bf4:	009b      	lsls	r3, r3, #2
1a001bf6:	4413      	add	r3, r2
1a001bf8:	685b      	ldr	r3, [r3, #4]
1a001bfa:	60fb      	str	r3, [r7, #12]
1a001bfc:	79fb      	ldrb	r3, [r7, #7]
1a001bfe:	2b1b      	cmp	r3, #27
1a001c00:	d822      	bhi.n	1a001c48 <Chip_Clock_SetBaseClock+0x78>
1a001c02:	79bb      	ldrb	r3, [r7, #6]
1a001c04:	2b11      	cmp	r3, #17
1a001c06:	d028      	beq.n	1a001c5a <Chip_Clock_SetBaseClock+0x8a>
1a001c08:	68fa      	ldr	r2, [r7, #12]
1a001c0a:	4b17      	ldr	r3, [pc, #92]	; (1a001c68 <Chip_Clock_SetBaseClock+0x98>)
1a001c0c:	4013      	ands	r3, r2
1a001c0e:	60fb      	str	r3, [r7, #12]
1a001c10:	797b      	ldrb	r3, [r7, #5]
1a001c12:	2b00      	cmp	r3, #0
1a001c14:	d003      	beq.n	1a001c1e <Chip_Clock_SetBaseClock+0x4e>
1a001c16:	68fb      	ldr	r3, [r7, #12]
1a001c18:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001c1c:	60fb      	str	r3, [r7, #12]
1a001c1e:	793b      	ldrb	r3, [r7, #4]
1a001c20:	2b00      	cmp	r3, #0
1a001c22:	d003      	beq.n	1a001c2c <Chip_Clock_SetBaseClock+0x5c>
1a001c24:	68fb      	ldr	r3, [r7, #12]
1a001c26:	f043 0301 	orr.w	r3, r3, #1
1a001c2a:	60fb      	str	r3, [r7, #12]
1a001c2c:	79bb      	ldrb	r3, [r7, #6]
1a001c2e:	061b      	lsls	r3, r3, #24
1a001c30:	461a      	mov	r2, r3
1a001c32:	68fb      	ldr	r3, [r7, #12]
1a001c34:	4313      	orrs	r3, r2
1a001c36:	60fb      	str	r3, [r7, #12]
1a001c38:	4a0a      	ldr	r2, [pc, #40]	; (1a001c64 <Chip_Clock_SetBaseClock+0x94>)
1a001c3a:	79fb      	ldrb	r3, [r7, #7]
1a001c3c:	3316      	adds	r3, #22
1a001c3e:	009b      	lsls	r3, r3, #2
1a001c40:	4413      	add	r3, r2
1a001c42:	68fa      	ldr	r2, [r7, #12]
1a001c44:	605a      	str	r2, [r3, #4]
1a001c46:	e008      	b.n	1a001c5a <Chip_Clock_SetBaseClock+0x8a>
1a001c48:	4906      	ldr	r1, [pc, #24]	; (1a001c64 <Chip_Clock_SetBaseClock+0x94>)
1a001c4a:	79fb      	ldrb	r3, [r7, #7]
1a001c4c:	68fa      	ldr	r2, [r7, #12]
1a001c4e:	f042 0201 	orr.w	r2, r2, #1
1a001c52:	3316      	adds	r3, #22
1a001c54:	009b      	lsls	r3, r3, #2
1a001c56:	440b      	add	r3, r1
1a001c58:	605a      	str	r2, [r3, #4]
1a001c5a:	bf00      	nop
1a001c5c:	3710      	adds	r7, #16
1a001c5e:	46bd      	mov	sp, r7
1a001c60:	bc90      	pop	{r4, r7}
1a001c62:	4770      	bx	lr
1a001c64:	40050000 	.word	0x40050000
1a001c68:	e0fff7fe 	.word	0xe0fff7fe

1a001c6c <Chip_Clock_GetBaseClock>:
1a001c6c:	b480      	push	{r7}
1a001c6e:	b085      	sub	sp, #20
1a001c70:	af00      	add	r7, sp, #0
1a001c72:	4603      	mov	r3, r0
1a001c74:	71fb      	strb	r3, [r7, #7]
1a001c76:	79fb      	ldrb	r3, [r7, #7]
1a001c78:	2b1b      	cmp	r3, #27
1a001c7a:	d901      	bls.n	1a001c80 <Chip_Clock_GetBaseClock+0x14>
1a001c7c:	2311      	movs	r3, #17
1a001c7e:	e013      	b.n	1a001ca8 <Chip_Clock_GetBaseClock+0x3c>
1a001c80:	4a0c      	ldr	r2, [pc, #48]	; (1a001cb4 <Chip_Clock_GetBaseClock+0x48>)
1a001c82:	79fb      	ldrb	r3, [r7, #7]
1a001c84:	3316      	adds	r3, #22
1a001c86:	009b      	lsls	r3, r3, #2
1a001c88:	4413      	add	r3, r2
1a001c8a:	685b      	ldr	r3, [r3, #4]
1a001c8c:	60fb      	str	r3, [r7, #12]
1a001c8e:	68fb      	ldr	r3, [r7, #12]
1a001c90:	f003 0301 	and.w	r3, r3, #1
1a001c94:	2b00      	cmp	r3, #0
1a001c96:	d001      	beq.n	1a001c9c <Chip_Clock_GetBaseClock+0x30>
1a001c98:	2311      	movs	r3, #17
1a001c9a:	e005      	b.n	1a001ca8 <Chip_Clock_GetBaseClock+0x3c>
1a001c9c:	68fb      	ldr	r3, [r7, #12]
1a001c9e:	0e1b      	lsrs	r3, r3, #24
1a001ca0:	b2db      	uxtb	r3, r3
1a001ca2:	f003 031f 	and.w	r3, r3, #31
1a001ca6:	b2db      	uxtb	r3, r3
1a001ca8:	4618      	mov	r0, r3
1a001caa:	3714      	adds	r7, #20
1a001cac:	46bd      	mov	sp, r7
1a001cae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cb2:	4770      	bx	lr
1a001cb4:	40050000 	.word	0x40050000

1a001cb8 <Chip_Clock_EnableOpts>:
1a001cb8:	b480      	push	{r7}
1a001cba:	b085      	sub	sp, #20
1a001cbc:	af00      	add	r7, sp, #0
1a001cbe:	603b      	str	r3, [r7, #0]
1a001cc0:	4603      	mov	r3, r0
1a001cc2:	80fb      	strh	r3, [r7, #6]
1a001cc4:	460b      	mov	r3, r1
1a001cc6:	717b      	strb	r3, [r7, #5]
1a001cc8:	4613      	mov	r3, r2
1a001cca:	713b      	strb	r3, [r7, #4]
1a001ccc:	2301      	movs	r3, #1
1a001cce:	60fb      	str	r3, [r7, #12]
1a001cd0:	797b      	ldrb	r3, [r7, #5]
1a001cd2:	2b00      	cmp	r3, #0
1a001cd4:	d003      	beq.n	1a001cde <Chip_Clock_EnableOpts+0x26>
1a001cd6:	68fb      	ldr	r3, [r7, #12]
1a001cd8:	f043 0302 	orr.w	r3, r3, #2
1a001cdc:	60fb      	str	r3, [r7, #12]
1a001cde:	793b      	ldrb	r3, [r7, #4]
1a001ce0:	2b00      	cmp	r3, #0
1a001ce2:	d003      	beq.n	1a001cec <Chip_Clock_EnableOpts+0x34>
1a001ce4:	68fb      	ldr	r3, [r7, #12]
1a001ce6:	f043 0304 	orr.w	r3, r3, #4
1a001cea:	60fb      	str	r3, [r7, #12]
1a001cec:	683b      	ldr	r3, [r7, #0]
1a001cee:	2b02      	cmp	r3, #2
1a001cf0:	d103      	bne.n	1a001cfa <Chip_Clock_EnableOpts+0x42>
1a001cf2:	68fb      	ldr	r3, [r7, #12]
1a001cf4:	f043 0320 	orr.w	r3, r3, #32
1a001cf8:	60fb      	str	r3, [r7, #12]
1a001cfa:	88fb      	ldrh	r3, [r7, #6]
1a001cfc:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d00:	d308      	bcc.n	1a001d14 <Chip_Clock_EnableOpts+0x5c>
1a001d02:	490a      	ldr	r1, [pc, #40]	; (1a001d2c <Chip_Clock_EnableOpts+0x74>)
1a001d04:	88fb      	ldrh	r3, [r7, #6]
1a001d06:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d0a:	3320      	adds	r3, #32
1a001d0c:	68fa      	ldr	r2, [r7, #12]
1a001d0e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d12:	e005      	b.n	1a001d20 <Chip_Clock_EnableOpts+0x68>
1a001d14:	4906      	ldr	r1, [pc, #24]	; (1a001d30 <Chip_Clock_EnableOpts+0x78>)
1a001d16:	88fb      	ldrh	r3, [r7, #6]
1a001d18:	3320      	adds	r3, #32
1a001d1a:	68fa      	ldr	r2, [r7, #12]
1a001d1c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d20:	bf00      	nop
1a001d22:	3714      	adds	r7, #20
1a001d24:	46bd      	mov	sp, r7
1a001d26:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d2a:	4770      	bx	lr
1a001d2c:	40052000 	.word	0x40052000
1a001d30:	40051000 	.word	0x40051000

1a001d34 <Chip_Clock_Enable>:
1a001d34:	b480      	push	{r7}
1a001d36:	b083      	sub	sp, #12
1a001d38:	af00      	add	r7, sp, #0
1a001d3a:	4603      	mov	r3, r0
1a001d3c:	80fb      	strh	r3, [r7, #6]
1a001d3e:	88fb      	ldrh	r3, [r7, #6]
1a001d40:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d44:	d310      	bcc.n	1a001d68 <Chip_Clock_Enable+0x34>
1a001d46:	4a11      	ldr	r2, [pc, #68]	; (1a001d8c <Chip_Clock_Enable+0x58>)
1a001d48:	88fb      	ldrh	r3, [r7, #6]
1a001d4a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d4e:	3320      	adds	r3, #32
1a001d50:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d54:	490d      	ldr	r1, [pc, #52]	; (1a001d8c <Chip_Clock_Enable+0x58>)
1a001d56:	88fb      	ldrh	r3, [r7, #6]
1a001d58:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d5c:	f042 0201 	orr.w	r2, r2, #1
1a001d60:	3320      	adds	r3, #32
1a001d62:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d66:	e00b      	b.n	1a001d80 <Chip_Clock_Enable+0x4c>
1a001d68:	4a09      	ldr	r2, [pc, #36]	; (1a001d90 <Chip_Clock_Enable+0x5c>)
1a001d6a:	88fb      	ldrh	r3, [r7, #6]
1a001d6c:	3320      	adds	r3, #32
1a001d6e:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d72:	4907      	ldr	r1, [pc, #28]	; (1a001d90 <Chip_Clock_Enable+0x5c>)
1a001d74:	88fb      	ldrh	r3, [r7, #6]
1a001d76:	f042 0201 	orr.w	r2, r2, #1
1a001d7a:	3320      	adds	r3, #32
1a001d7c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d80:	bf00      	nop
1a001d82:	370c      	adds	r7, #12
1a001d84:	46bd      	mov	sp, r7
1a001d86:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d8a:	4770      	bx	lr
1a001d8c:	40052000 	.word	0x40052000
1a001d90:	40051000 	.word	0x40051000

1a001d94 <Chip_Clock_GetRate>:
1a001d94:	b580      	push	{r7, lr}
1a001d96:	b086      	sub	sp, #24
1a001d98:	af00      	add	r7, sp, #0
1a001d9a:	4603      	mov	r3, r0
1a001d9c:	80fb      	strh	r3, [r7, #6]
1a001d9e:	88fb      	ldrh	r3, [r7, #6]
1a001da0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001da4:	d308      	bcc.n	1a001db8 <Chip_Clock_GetRate+0x24>
1a001da6:	4a1b      	ldr	r2, [pc, #108]	; (1a001e14 <Chip_Clock_GetRate+0x80>)
1a001da8:	88fb      	ldrh	r3, [r7, #6]
1a001daa:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001dae:	3320      	adds	r3, #32
1a001db0:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001db4:	617b      	str	r3, [r7, #20]
1a001db6:	e005      	b.n	1a001dc4 <Chip_Clock_GetRate+0x30>
1a001db8:	4a17      	ldr	r2, [pc, #92]	; (1a001e18 <Chip_Clock_GetRate+0x84>)
1a001dba:	88fb      	ldrh	r3, [r7, #6]
1a001dbc:	3320      	adds	r3, #32
1a001dbe:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001dc2:	617b      	str	r3, [r7, #20]
1a001dc4:	697b      	ldr	r3, [r7, #20]
1a001dc6:	f003 0301 	and.w	r3, r3, #1
1a001dca:	2b00      	cmp	r3, #0
1a001dcc:	d01b      	beq.n	1a001e06 <Chip_Clock_GetRate+0x72>
1a001dce:	88fb      	ldrh	r3, [r7, #6]
1a001dd0:	4618      	mov	r0, r3
1a001dd2:	f7ff fcc3 	bl	1a00175c <Chip_Clock_FindBaseClock>
1a001dd6:	4603      	mov	r3, r0
1a001dd8:	72fb      	strb	r3, [r7, #11]
1a001dda:	7afb      	ldrb	r3, [r7, #11]
1a001ddc:	4618      	mov	r0, r3
1a001dde:	f7ff fee5 	bl	1a001bac <Chip_Clock_GetBaseClocktHz>
1a001de2:	60f8      	str	r0, [r7, #12]
1a001de4:	697b      	ldr	r3, [r7, #20]
1a001de6:	095b      	lsrs	r3, r3, #5
1a001de8:	f003 0307 	and.w	r3, r3, #7
1a001dec:	2b00      	cmp	r3, #0
1a001dee:	d102      	bne.n	1a001df6 <Chip_Clock_GetRate+0x62>
1a001df0:	2301      	movs	r3, #1
1a001df2:	613b      	str	r3, [r7, #16]
1a001df4:	e001      	b.n	1a001dfa <Chip_Clock_GetRate+0x66>
1a001df6:	2302      	movs	r3, #2
1a001df8:	613b      	str	r3, [r7, #16]
1a001dfa:	68fa      	ldr	r2, [r7, #12]
1a001dfc:	693b      	ldr	r3, [r7, #16]
1a001dfe:	fbb2 f3f3 	udiv	r3, r2, r3
1a001e02:	60fb      	str	r3, [r7, #12]
1a001e04:	e001      	b.n	1a001e0a <Chip_Clock_GetRate+0x76>
1a001e06:	2300      	movs	r3, #0
1a001e08:	60fb      	str	r3, [r7, #12]
1a001e0a:	68fb      	ldr	r3, [r7, #12]
1a001e0c:	4618      	mov	r0, r3
1a001e0e:	3718      	adds	r7, #24
1a001e10:	46bd      	mov	sp, r7
1a001e12:	bd80      	pop	{r7, pc}
1a001e14:	40052000 	.word	0x40052000
1a001e18:	40051000 	.word	0x40051000

1a001e1c <SystemCoreClockUpdate>:
1a001e1c:	b580      	push	{r7, lr}
1a001e1e:	af00      	add	r7, sp, #0
1a001e20:	2069      	movs	r0, #105	; 0x69
1a001e22:	f7ff ffb7 	bl	1a001d94 <Chip_Clock_GetRate>
1a001e26:	4602      	mov	r2, r0
1a001e28:	4b01      	ldr	r3, [pc, #4]	; (1a001e30 <SystemCoreClockUpdate+0x14>)
1a001e2a:	601a      	str	r2, [r3, #0]
1a001e2c:	bf00      	nop
1a001e2e:	bd80      	pop	{r7, pc}
1a001e30:	100008dc 	.word	0x100008dc

1a001e34 <Chip_GPIO_Init>:
1a001e34:	b480      	push	{r7}
1a001e36:	b083      	sub	sp, #12
1a001e38:	af00      	add	r7, sp, #0
1a001e3a:	6078      	str	r0, [r7, #4]
1a001e3c:	bf00      	nop
1a001e3e:	370c      	adds	r7, #12
1a001e40:	46bd      	mov	sp, r7
1a001e42:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e46:	4770      	bx	lr

1a001e48 <Chip_TIMER_GetClockIndex>:
1a001e48:	b480      	push	{r7}
1a001e4a:	b085      	sub	sp, #20
1a001e4c:	af00      	add	r7, sp, #0
1a001e4e:	6078      	str	r0, [r7, #4]
1a001e50:	687b      	ldr	r3, [r7, #4]
1a001e52:	4a0e      	ldr	r2, [pc, #56]	; (1a001e8c <Chip_TIMER_GetClockIndex+0x44>)
1a001e54:	4293      	cmp	r3, r2
1a001e56:	d102      	bne.n	1a001e5e <Chip_TIMER_GetClockIndex+0x16>
1a001e58:	23a4      	movs	r3, #164	; 0xa4
1a001e5a:	81fb      	strh	r3, [r7, #14]
1a001e5c:	e00f      	b.n	1a001e7e <Chip_TIMER_GetClockIndex+0x36>
1a001e5e:	687b      	ldr	r3, [r7, #4]
1a001e60:	4a0b      	ldr	r2, [pc, #44]	; (1a001e90 <Chip_TIMER_GetClockIndex+0x48>)
1a001e62:	4293      	cmp	r3, r2
1a001e64:	d102      	bne.n	1a001e6c <Chip_TIMER_GetClockIndex+0x24>
1a001e66:	23a3      	movs	r3, #163	; 0xa3
1a001e68:	81fb      	strh	r3, [r7, #14]
1a001e6a:	e008      	b.n	1a001e7e <Chip_TIMER_GetClockIndex+0x36>
1a001e6c:	687b      	ldr	r3, [r7, #4]
1a001e6e:	4a09      	ldr	r2, [pc, #36]	; (1a001e94 <Chip_TIMER_GetClockIndex+0x4c>)
1a001e70:	4293      	cmp	r3, r2
1a001e72:	d102      	bne.n	1a001e7a <Chip_TIMER_GetClockIndex+0x32>
1a001e74:	2385      	movs	r3, #133	; 0x85
1a001e76:	81fb      	strh	r3, [r7, #14]
1a001e78:	e001      	b.n	1a001e7e <Chip_TIMER_GetClockIndex+0x36>
1a001e7a:	2384      	movs	r3, #132	; 0x84
1a001e7c:	81fb      	strh	r3, [r7, #14]
1a001e7e:	89fb      	ldrh	r3, [r7, #14]
1a001e80:	4618      	mov	r0, r3
1a001e82:	3714      	adds	r7, #20
1a001e84:	46bd      	mov	sp, r7
1a001e86:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e8a:	4770      	bx	lr
1a001e8c:	400c4000 	.word	0x400c4000
1a001e90:	400c3000 	.word	0x400c3000
1a001e94:	40085000 	.word	0x40085000

1a001e98 <Chip_TIMER_Init>:
1a001e98:	b580      	push	{r7, lr}
1a001e9a:	b082      	sub	sp, #8
1a001e9c:	af00      	add	r7, sp, #0
1a001e9e:	6078      	str	r0, [r7, #4]
1a001ea0:	6878      	ldr	r0, [r7, #4]
1a001ea2:	f7ff ffd1 	bl	1a001e48 <Chip_TIMER_GetClockIndex>
1a001ea6:	4603      	mov	r3, r0
1a001ea8:	4618      	mov	r0, r3
1a001eaa:	f7ff ff43 	bl	1a001d34 <Chip_Clock_Enable>
1a001eae:	bf00      	nop
1a001eb0:	3708      	adds	r7, #8
1a001eb2:	46bd      	mov	sp, r7
1a001eb4:	bd80      	pop	{r7, pc}
1a001eb6:	Address 0x000000001a001eb6 is out of bounds.


1a001eb8 <_Exit>:
1a001eb8:	b508      	push	{r3, lr}
1a001eba:	f7fe fe8f 	bl	1a000bdc <_exit>
1a001ebe:	bf00      	nop

1a001ec0 <abort>:
1a001ec0:	b508      	push	{r3, lr}
1a001ec2:	2006      	movs	r0, #6
1a001ec4:	f000 fba6 	bl	1a002614 <raise>
1a001ec8:	2001      	movs	r0, #1
1a001eca:	f7fe fe87 	bl	1a000bdc <_exit>
1a001ece:	bf00      	nop

1a001ed0 <malloc>:
1a001ed0:	4b02      	ldr	r3, [pc, #8]	; (1a001edc <malloc+0xc>)
1a001ed2:	4601      	mov	r1, r0
1a001ed4:	6818      	ldr	r0, [r3, #0]
1a001ed6:	f000 b80b 	b.w	1a001ef0 <_malloc_r>
1a001eda:	bf00      	nop
1a001edc:	10000000 	.word	0x10000000

1a001ee0 <free>:
1a001ee0:	4b02      	ldr	r3, [pc, #8]	; (1a001eec <free+0xc>)
1a001ee2:	4601      	mov	r1, r0
1a001ee4:	6818      	ldr	r0, [r3, #0]
1a001ee6:	f000 bc03 	b.w	1a0026f0 <_free_r>
1a001eea:	bf00      	nop
1a001eec:	10000000 	.word	0x10000000

1a001ef0 <_malloc_r>:
1a001ef0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1a001ef4:	f101 050b 	add.w	r5, r1, #11
1a001ef8:	2d16      	cmp	r5, #22
1a001efa:	b083      	sub	sp, #12
1a001efc:	4606      	mov	r6, r0
1a001efe:	d823      	bhi.n	1a001f48 <_malloc_r+0x58>
1a001f00:	2910      	cmp	r1, #16
1a001f02:	f200 80b9 	bhi.w	1a002078 <_malloc_r+0x188>
1a001f06:	f000 fb31 	bl	1a00256c <__malloc_lock>
1a001f0a:	2510      	movs	r5, #16
1a001f0c:	2318      	movs	r3, #24
1a001f0e:	2002      	movs	r0, #2
1a001f10:	4fc5      	ldr	r7, [pc, #788]	; (1a002228 <_malloc_r+0x338>)
1a001f12:	443b      	add	r3, r7
1a001f14:	f1a3 0208 	sub.w	r2, r3, #8
1a001f18:	685c      	ldr	r4, [r3, #4]
1a001f1a:	4294      	cmp	r4, r2
1a001f1c:	f000 8166 	beq.w	1a0021ec <_malloc_r+0x2fc>
1a001f20:	6863      	ldr	r3, [r4, #4]
1a001f22:	f023 0303 	bic.w	r3, r3, #3
1a001f26:	4423      	add	r3, r4
1a001f28:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
1a001f2c:	685a      	ldr	r2, [r3, #4]
1a001f2e:	60e9      	str	r1, [r5, #12]
1a001f30:	f042 0201 	orr.w	r2, r2, #1
1a001f34:	608d      	str	r5, [r1, #8]
1a001f36:	4630      	mov	r0, r6
1a001f38:	605a      	str	r2, [r3, #4]
1a001f3a:	f000 fb1d 	bl	1a002578 <__malloc_unlock>
1a001f3e:	3408      	adds	r4, #8
1a001f40:	4620      	mov	r0, r4
1a001f42:	b003      	add	sp, #12
1a001f44:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a001f48:	f035 0507 	bics.w	r5, r5, #7
1a001f4c:	f100 8094 	bmi.w	1a002078 <_malloc_r+0x188>
1a001f50:	42a9      	cmp	r1, r5
1a001f52:	f200 8091 	bhi.w	1a002078 <_malloc_r+0x188>
1a001f56:	f000 fb09 	bl	1a00256c <__malloc_lock>
1a001f5a:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
1a001f5e:	f0c0 8183 	bcc.w	1a002268 <_malloc_r+0x378>
1a001f62:	0a6b      	lsrs	r3, r5, #9
1a001f64:	f000 808f 	beq.w	1a002086 <_malloc_r+0x196>
1a001f68:	2b04      	cmp	r3, #4
1a001f6a:	f200 8146 	bhi.w	1a0021fa <_malloc_r+0x30a>
1a001f6e:	09ab      	lsrs	r3, r5, #6
1a001f70:	f103 0039 	add.w	r0, r3, #57	; 0x39
1a001f74:	f103 0c38 	add.w	ip, r3, #56	; 0x38
1a001f78:	00c3      	lsls	r3, r0, #3
1a001f7a:	4fab      	ldr	r7, [pc, #684]	; (1a002228 <_malloc_r+0x338>)
1a001f7c:	443b      	add	r3, r7
1a001f7e:	f1a3 0108 	sub.w	r1, r3, #8
1a001f82:	685c      	ldr	r4, [r3, #4]
1a001f84:	42a1      	cmp	r1, r4
1a001f86:	d106      	bne.n	1a001f96 <_malloc_r+0xa6>
1a001f88:	e00c      	b.n	1a001fa4 <_malloc_r+0xb4>
1a001f8a:	2a00      	cmp	r2, #0
1a001f8c:	f280 811d 	bge.w	1a0021ca <_malloc_r+0x2da>
1a001f90:	68e4      	ldr	r4, [r4, #12]
1a001f92:	42a1      	cmp	r1, r4
1a001f94:	d006      	beq.n	1a001fa4 <_malloc_r+0xb4>
1a001f96:	6863      	ldr	r3, [r4, #4]
1a001f98:	f023 0303 	bic.w	r3, r3, #3
1a001f9c:	1b5a      	subs	r2, r3, r5
1a001f9e:	2a0f      	cmp	r2, #15
1a001fa0:	ddf3      	ble.n	1a001f8a <_malloc_r+0x9a>
1a001fa2:	4660      	mov	r0, ip
1a001fa4:	693c      	ldr	r4, [r7, #16]
1a001fa6:	f8df c294 	ldr.w	ip, [pc, #660]	; 1a00223c <_malloc_r+0x34c>
1a001faa:	4564      	cmp	r4, ip
1a001fac:	d071      	beq.n	1a002092 <_malloc_r+0x1a2>
1a001fae:	6863      	ldr	r3, [r4, #4]
1a001fb0:	f023 0303 	bic.w	r3, r3, #3
1a001fb4:	1b5a      	subs	r2, r3, r5
1a001fb6:	2a0f      	cmp	r2, #15
1a001fb8:	f300 8144 	bgt.w	1a002244 <_malloc_r+0x354>
1a001fbc:	2a00      	cmp	r2, #0
1a001fbe:	e9c7 cc04 	strd	ip, ip, [r7, #16]
1a001fc2:	f280 8126 	bge.w	1a002212 <_malloc_r+0x322>
1a001fc6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
1a001fca:	f080 8169 	bcs.w	1a0022a0 <_malloc_r+0x3b0>
1a001fce:	08db      	lsrs	r3, r3, #3
1a001fd0:	1c59      	adds	r1, r3, #1
1a001fd2:	687a      	ldr	r2, [r7, #4]
1a001fd4:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
1a001fd8:	f8c4 8008 	str.w	r8, [r4, #8]
1a001fdc:	f04f 0e01 	mov.w	lr, #1
1a001fe0:	109b      	asrs	r3, r3, #2
1a001fe2:	fa0e f303 	lsl.w	r3, lr, r3
1a001fe6:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
1a001fea:	4313      	orrs	r3, r2
1a001fec:	f1ae 0208 	sub.w	r2, lr, #8
1a001ff0:	60e2      	str	r2, [r4, #12]
1a001ff2:	607b      	str	r3, [r7, #4]
1a001ff4:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
1a001ff8:	f8c8 400c 	str.w	r4, [r8, #12]
1a001ffc:	1082      	asrs	r2, r0, #2
1a001ffe:	2401      	movs	r4, #1
1a002000:	4094      	lsls	r4, r2
1a002002:	429c      	cmp	r4, r3
1a002004:	d84b      	bhi.n	1a00209e <_malloc_r+0x1ae>
1a002006:	421c      	tst	r4, r3
1a002008:	d106      	bne.n	1a002018 <_malloc_r+0x128>
1a00200a:	f020 0003 	bic.w	r0, r0, #3
1a00200e:	0064      	lsls	r4, r4, #1
1a002010:	421c      	tst	r4, r3
1a002012:	f100 0004 	add.w	r0, r0, #4
1a002016:	d0fa      	beq.n	1a00200e <_malloc_r+0x11e>
1a002018:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
1a00201c:	46ce      	mov	lr, r9
1a00201e:	4680      	mov	r8, r0
1a002020:	f8de 300c 	ldr.w	r3, [lr, #12]
1a002024:	459e      	cmp	lr, r3
1a002026:	d107      	bne.n	1a002038 <_malloc_r+0x148>
1a002028:	e122      	b.n	1a002270 <_malloc_r+0x380>
1a00202a:	2a00      	cmp	r2, #0
1a00202c:	f280 8129 	bge.w	1a002282 <_malloc_r+0x392>
1a002030:	68db      	ldr	r3, [r3, #12]
1a002032:	459e      	cmp	lr, r3
1a002034:	f000 811c 	beq.w	1a002270 <_malloc_r+0x380>
1a002038:	6859      	ldr	r1, [r3, #4]
1a00203a:	f021 0103 	bic.w	r1, r1, #3
1a00203e:	1b4a      	subs	r2, r1, r5
1a002040:	2a0f      	cmp	r2, #15
1a002042:	ddf2      	ble.n	1a00202a <_malloc_r+0x13a>
1a002044:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
1a002048:	195c      	adds	r4, r3, r5
1a00204a:	f045 0501 	orr.w	r5, r5, #1
1a00204e:	605d      	str	r5, [r3, #4]
1a002050:	f042 0501 	orr.w	r5, r2, #1
1a002054:	f8c8 e00c 	str.w	lr, [r8, #12]
1a002058:	4630      	mov	r0, r6
1a00205a:	f8ce 8008 	str.w	r8, [lr, #8]
1a00205e:	e9c7 4404 	strd	r4, r4, [r7, #16]
1a002062:	e9c4 cc02 	strd	ip, ip, [r4, #8]
1a002066:	6065      	str	r5, [r4, #4]
1a002068:	505a      	str	r2, [r3, r1]
1a00206a:	9301      	str	r3, [sp, #4]
1a00206c:	f000 fa84 	bl	1a002578 <__malloc_unlock>
1a002070:	9b01      	ldr	r3, [sp, #4]
1a002072:	f103 0408 	add.w	r4, r3, #8
1a002076:	e763      	b.n	1a001f40 <_malloc_r+0x50>
1a002078:	2400      	movs	r4, #0
1a00207a:	230c      	movs	r3, #12
1a00207c:	4620      	mov	r0, r4
1a00207e:	6033      	str	r3, [r6, #0]
1a002080:	b003      	add	sp, #12
1a002082:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a002086:	f44f 7300 	mov.w	r3, #512	; 0x200
1a00208a:	2040      	movs	r0, #64	; 0x40
1a00208c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
1a002090:	e773      	b.n	1a001f7a <_malloc_r+0x8a>
1a002092:	687b      	ldr	r3, [r7, #4]
1a002094:	1082      	asrs	r2, r0, #2
1a002096:	2401      	movs	r4, #1
1a002098:	4094      	lsls	r4, r2
1a00209a:	429c      	cmp	r4, r3
1a00209c:	d9b3      	bls.n	1a002006 <_malloc_r+0x116>
1a00209e:	68bc      	ldr	r4, [r7, #8]
1a0020a0:	6863      	ldr	r3, [r4, #4]
1a0020a2:	f023 0903 	bic.w	r9, r3, #3
1a0020a6:	45a9      	cmp	r9, r5
1a0020a8:	d303      	bcc.n	1a0020b2 <_malloc_r+0x1c2>
1a0020aa:	eba9 0305 	sub.w	r3, r9, r5
1a0020ae:	2b0f      	cmp	r3, #15
1a0020b0:	dc7b      	bgt.n	1a0021aa <_malloc_r+0x2ba>
1a0020b2:	4b5e      	ldr	r3, [pc, #376]	; (1a00222c <_malloc_r+0x33c>)
1a0020b4:	f8df a188 	ldr.w	sl, [pc, #392]	; 1a002240 <_malloc_r+0x350>
1a0020b8:	681a      	ldr	r2, [r3, #0]
1a0020ba:	f8da 3000 	ldr.w	r3, [sl]
1a0020be:	3301      	adds	r3, #1
1a0020c0:	eb05 0802 	add.w	r8, r5, r2
1a0020c4:	f000 8148 	beq.w	1a002358 <_malloc_r+0x468>
1a0020c8:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
1a0020cc:	f108 080f 	add.w	r8, r8, #15
1a0020d0:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
1a0020d4:	f028 080f 	bic.w	r8, r8, #15
1a0020d8:	4641      	mov	r1, r8
1a0020da:	4630      	mov	r0, r6
1a0020dc:	f000 fa5c 	bl	1a002598 <_sbrk_r>
1a0020e0:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
1a0020e4:	4683      	mov	fp, r0
1a0020e6:	f000 8104 	beq.w	1a0022f2 <_malloc_r+0x402>
1a0020ea:	eb04 0009 	add.w	r0, r4, r9
1a0020ee:	4558      	cmp	r0, fp
1a0020f0:	f200 80fd 	bhi.w	1a0022ee <_malloc_r+0x3fe>
1a0020f4:	4a4e      	ldr	r2, [pc, #312]	; (1a002230 <_malloc_r+0x340>)
1a0020f6:	6813      	ldr	r3, [r2, #0]
1a0020f8:	4443      	add	r3, r8
1a0020fa:	6013      	str	r3, [r2, #0]
1a0020fc:	f000 814d 	beq.w	1a00239a <_malloc_r+0x4aa>
1a002100:	f8da 1000 	ldr.w	r1, [sl]
1a002104:	3101      	adds	r1, #1
1a002106:	bf1b      	ittet	ne
1a002108:	ebab 0000 	subne.w	r0, fp, r0
1a00210c:	181b      	addne	r3, r3, r0
1a00210e:	f8ca b000 	streq.w	fp, [sl]
1a002112:	6013      	strne	r3, [r2, #0]
1a002114:	f01b 0307 	ands.w	r3, fp, #7
1a002118:	f000 8134 	beq.w	1a002384 <_malloc_r+0x494>
1a00211c:	f1c3 0108 	rsb	r1, r3, #8
1a002120:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
1a002124:	448b      	add	fp, r1
1a002126:	3308      	adds	r3, #8
1a002128:	44d8      	add	r8, fp
1a00212a:	f3c8 080b 	ubfx	r8, r8, #0, #12
1a00212e:	eba3 0808 	sub.w	r8, r3, r8
1a002132:	4641      	mov	r1, r8
1a002134:	4630      	mov	r0, r6
1a002136:	9201      	str	r2, [sp, #4]
1a002138:	f000 fa2e 	bl	1a002598 <_sbrk_r>
1a00213c:	1c43      	adds	r3, r0, #1
1a00213e:	9a01      	ldr	r2, [sp, #4]
1a002140:	f000 8146 	beq.w	1a0023d0 <_malloc_r+0x4e0>
1a002144:	eba0 010b 	sub.w	r1, r0, fp
1a002148:	4441      	add	r1, r8
1a00214a:	f041 0101 	orr.w	r1, r1, #1
1a00214e:	6813      	ldr	r3, [r2, #0]
1a002150:	f8c7 b008 	str.w	fp, [r7, #8]
1a002154:	4443      	add	r3, r8
1a002156:	42bc      	cmp	r4, r7
1a002158:	f8cb 1004 	str.w	r1, [fp, #4]
1a00215c:	6013      	str	r3, [r2, #0]
1a00215e:	d015      	beq.n	1a00218c <_malloc_r+0x29c>
1a002160:	f1b9 0f0f 	cmp.w	r9, #15
1a002164:	f240 8130 	bls.w	1a0023c8 <_malloc_r+0x4d8>
1a002168:	6860      	ldr	r0, [r4, #4]
1a00216a:	f1a9 010c 	sub.w	r1, r9, #12
1a00216e:	f021 0107 	bic.w	r1, r1, #7
1a002172:	f000 0001 	and.w	r0, r0, #1
1a002176:	eb04 0c01 	add.w	ip, r4, r1
1a00217a:	4308      	orrs	r0, r1
1a00217c:	f04f 0e05 	mov.w	lr, #5
1a002180:	290f      	cmp	r1, #15
1a002182:	6060      	str	r0, [r4, #4]
1a002184:	e9cc ee01 	strd	lr, lr, [ip, #4]
1a002188:	f200 813a 	bhi.w	1a002400 <_malloc_r+0x510>
1a00218c:	4a29      	ldr	r2, [pc, #164]	; (1a002234 <_malloc_r+0x344>)
1a00218e:	482a      	ldr	r0, [pc, #168]	; (1a002238 <_malloc_r+0x348>)
1a002190:	6811      	ldr	r1, [r2, #0]
1a002192:	68bc      	ldr	r4, [r7, #8]
1a002194:	428b      	cmp	r3, r1
1a002196:	6801      	ldr	r1, [r0, #0]
1a002198:	bf88      	it	hi
1a00219a:	6013      	strhi	r3, [r2, #0]
1a00219c:	6862      	ldr	r2, [r4, #4]
1a00219e:	428b      	cmp	r3, r1
1a0021a0:	f022 0203 	bic.w	r2, r2, #3
1a0021a4:	bf88      	it	hi
1a0021a6:	6003      	strhi	r3, [r0, #0]
1a0021a8:	e0a7      	b.n	1a0022fa <_malloc_r+0x40a>
1a0021aa:	1962      	adds	r2, r4, r5
1a0021ac:	f043 0301 	orr.w	r3, r3, #1
1a0021b0:	f045 0501 	orr.w	r5, r5, #1
1a0021b4:	6065      	str	r5, [r4, #4]
1a0021b6:	4630      	mov	r0, r6
1a0021b8:	60ba      	str	r2, [r7, #8]
1a0021ba:	6053      	str	r3, [r2, #4]
1a0021bc:	f000 f9dc 	bl	1a002578 <__malloc_unlock>
1a0021c0:	3408      	adds	r4, #8
1a0021c2:	4620      	mov	r0, r4
1a0021c4:	b003      	add	sp, #12
1a0021c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0021ca:	4423      	add	r3, r4
1a0021cc:	68e1      	ldr	r1, [r4, #12]
1a0021ce:	685a      	ldr	r2, [r3, #4]
1a0021d0:	68a5      	ldr	r5, [r4, #8]
1a0021d2:	f042 0201 	orr.w	r2, r2, #1
1a0021d6:	60e9      	str	r1, [r5, #12]
1a0021d8:	4630      	mov	r0, r6
1a0021da:	608d      	str	r5, [r1, #8]
1a0021dc:	605a      	str	r2, [r3, #4]
1a0021de:	f000 f9cb 	bl	1a002578 <__malloc_unlock>
1a0021e2:	3408      	adds	r4, #8
1a0021e4:	4620      	mov	r0, r4
1a0021e6:	b003      	add	sp, #12
1a0021e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
1a0021ec:	68dc      	ldr	r4, [r3, #12]
1a0021ee:	42a3      	cmp	r3, r4
1a0021f0:	bf08      	it	eq
1a0021f2:	3002      	addeq	r0, #2
1a0021f4:	f43f aed6 	beq.w	1a001fa4 <_malloc_r+0xb4>
1a0021f8:	e692      	b.n	1a001f20 <_malloc_r+0x30>
1a0021fa:	2b14      	cmp	r3, #20
1a0021fc:	d971      	bls.n	1a0022e2 <_malloc_r+0x3f2>
1a0021fe:	2b54      	cmp	r3, #84	; 0x54
1a002200:	f200 80ad 	bhi.w	1a00235e <_malloc_r+0x46e>
1a002204:	0b2b      	lsrs	r3, r5, #12
1a002206:	f103 006f 	add.w	r0, r3, #111	; 0x6f
1a00220a:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
1a00220e:	00c3      	lsls	r3, r0, #3
1a002210:	e6b3      	b.n	1a001f7a <_malloc_r+0x8a>
1a002212:	4423      	add	r3, r4
1a002214:	4630      	mov	r0, r6
1a002216:	685a      	ldr	r2, [r3, #4]
1a002218:	f042 0201 	orr.w	r2, r2, #1
1a00221c:	605a      	str	r2, [r3, #4]
1a00221e:	3408      	adds	r4, #8
1a002220:	f000 f9aa 	bl	1a002578 <__malloc_unlock>
1a002224:	e68c      	b.n	1a001f40 <_malloc_r+0x50>
1a002226:	bf00      	nop
1a002228:	10000434 	.word	0x10000434
1a00222c:	100008b4 	.word	0x100008b4
1a002230:	10000884 	.word	0x10000884
1a002234:	100008ac 	.word	0x100008ac
1a002238:	100008b0 	.word	0x100008b0
1a00223c:	1000043c 	.word	0x1000043c
1a002240:	1000083c 	.word	0x1000083c
1a002244:	1961      	adds	r1, r4, r5
1a002246:	f045 0e01 	orr.w	lr, r5, #1
1a00224a:	f042 0501 	orr.w	r5, r2, #1
1a00224e:	f8c4 e004 	str.w	lr, [r4, #4]
1a002252:	4630      	mov	r0, r6
1a002254:	e9c7 1104 	strd	r1, r1, [r7, #16]
1a002258:	e9c1 cc02 	strd	ip, ip, [r1, #8]
1a00225c:	604d      	str	r5, [r1, #4]
1a00225e:	50e2      	str	r2, [r4, r3]
1a002260:	f000 f98a 	bl	1a002578 <__malloc_unlock>
1a002264:	3408      	adds	r4, #8
1a002266:	e66b      	b.n	1a001f40 <_malloc_r+0x50>
1a002268:	08e8      	lsrs	r0, r5, #3
1a00226a:	f105 0308 	add.w	r3, r5, #8
1a00226e:	e64f      	b.n	1a001f10 <_malloc_r+0x20>
1a002270:	f108 0801 	add.w	r8, r8, #1
1a002274:	f018 0f03 	tst.w	r8, #3
1a002278:	f10e 0e08 	add.w	lr, lr, #8
1a00227c:	f47f aed0 	bne.w	1a002020 <_malloc_r+0x130>
1a002280:	e052      	b.n	1a002328 <_malloc_r+0x438>
1a002282:	4419      	add	r1, r3
1a002284:	461c      	mov	r4, r3
1a002286:	684a      	ldr	r2, [r1, #4]
1a002288:	68db      	ldr	r3, [r3, #12]
1a00228a:	f854 5f08 	ldr.w	r5, [r4, #8]!
1a00228e:	f042 0201 	orr.w	r2, r2, #1
1a002292:	604a      	str	r2, [r1, #4]
1a002294:	4630      	mov	r0, r6
1a002296:	60eb      	str	r3, [r5, #12]
1a002298:	609d      	str	r5, [r3, #8]
1a00229a:	f000 f96d 	bl	1a002578 <__malloc_unlock>
1a00229e:	e64f      	b.n	1a001f40 <_malloc_r+0x50>
1a0022a0:	0a5a      	lsrs	r2, r3, #9
1a0022a2:	2a04      	cmp	r2, #4
1a0022a4:	d935      	bls.n	1a002312 <_malloc_r+0x422>
1a0022a6:	2a14      	cmp	r2, #20
1a0022a8:	d86f      	bhi.n	1a00238a <_malloc_r+0x49a>
1a0022aa:	f102 015c 	add.w	r1, r2, #92	; 0x5c
1a0022ae:	00c9      	lsls	r1, r1, #3
1a0022b0:	325b      	adds	r2, #91	; 0x5b
1a0022b2:	eb07 0e01 	add.w	lr, r7, r1
1a0022b6:	5879      	ldr	r1, [r7, r1]
1a0022b8:	f1ae 0e08 	sub.w	lr, lr, #8
1a0022bc:	458e      	cmp	lr, r1
1a0022be:	d058      	beq.n	1a002372 <_malloc_r+0x482>
1a0022c0:	684a      	ldr	r2, [r1, #4]
1a0022c2:	f022 0203 	bic.w	r2, r2, #3
1a0022c6:	429a      	cmp	r2, r3
1a0022c8:	d902      	bls.n	1a0022d0 <_malloc_r+0x3e0>
1a0022ca:	6889      	ldr	r1, [r1, #8]
1a0022cc:	458e      	cmp	lr, r1
1a0022ce:	d1f7      	bne.n	1a0022c0 <_malloc_r+0x3d0>
1a0022d0:	f8d1 e00c 	ldr.w	lr, [r1, #12]
1a0022d4:	687b      	ldr	r3, [r7, #4]
1a0022d6:	e9c4 1e02 	strd	r1, lr, [r4, #8]
1a0022da:	f8ce 4008 	str.w	r4, [lr, #8]
1a0022de:	60cc      	str	r4, [r1, #12]
1a0022e0:	e68c      	b.n	1a001ffc <_malloc_r+0x10c>
1a0022e2:	f103 005c 	add.w	r0, r3, #92	; 0x5c
1a0022e6:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
1a0022ea:	00c3      	lsls	r3, r0, #3
1a0022ec:	e645      	b.n	1a001f7a <_malloc_r+0x8a>
1a0022ee:	42bc      	cmp	r4, r7
1a0022f0:	d072      	beq.n	1a0023d8 <_malloc_r+0x4e8>
1a0022f2:	68bc      	ldr	r4, [r7, #8]
1a0022f4:	6862      	ldr	r2, [r4, #4]
1a0022f6:	f022 0203 	bic.w	r2, r2, #3
1a0022fa:	4295      	cmp	r5, r2
1a0022fc:	eba2 0305 	sub.w	r3, r2, r5
1a002300:	d802      	bhi.n	1a002308 <_malloc_r+0x418>
1a002302:	2b0f      	cmp	r3, #15
1a002304:	f73f af51 	bgt.w	1a0021aa <_malloc_r+0x2ba>
1a002308:	4630      	mov	r0, r6
1a00230a:	f000 f935 	bl	1a002578 <__malloc_unlock>
1a00230e:	2400      	movs	r4, #0
1a002310:	e616      	b.n	1a001f40 <_malloc_r+0x50>
1a002312:	099a      	lsrs	r2, r3, #6
1a002314:	f102 0139 	add.w	r1, r2, #57	; 0x39
1a002318:	00c9      	lsls	r1, r1, #3
1a00231a:	3238      	adds	r2, #56	; 0x38
1a00231c:	e7c9      	b.n	1a0022b2 <_malloc_r+0x3c2>
1a00231e:	f8d9 9000 	ldr.w	r9, [r9]
1a002322:	4599      	cmp	r9, r3
1a002324:	f040 8083 	bne.w	1a00242e <_malloc_r+0x53e>
1a002328:	f010 0f03 	tst.w	r0, #3
1a00232c:	f1a9 0308 	sub.w	r3, r9, #8
1a002330:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
1a002334:	d1f3      	bne.n	1a00231e <_malloc_r+0x42e>
1a002336:	687b      	ldr	r3, [r7, #4]
1a002338:	ea23 0304 	bic.w	r3, r3, r4
1a00233c:	607b      	str	r3, [r7, #4]
1a00233e:	0064      	lsls	r4, r4, #1
1a002340:	429c      	cmp	r4, r3
1a002342:	f63f aeac 	bhi.w	1a00209e <_malloc_r+0x1ae>
1a002346:	b91c      	cbnz	r4, 1a002350 <_malloc_r+0x460>
1a002348:	e6a9      	b.n	1a00209e <_malloc_r+0x1ae>
1a00234a:	0064      	lsls	r4, r4, #1
1a00234c:	f108 0804 	add.w	r8, r8, #4
1a002350:	421c      	tst	r4, r3
1a002352:	d0fa      	beq.n	1a00234a <_malloc_r+0x45a>
1a002354:	4640      	mov	r0, r8
1a002356:	e65f      	b.n	1a002018 <_malloc_r+0x128>
1a002358:	f108 0810 	add.w	r8, r8, #16
1a00235c:	e6bc      	b.n	1a0020d8 <_malloc_r+0x1e8>
1a00235e:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a002362:	d826      	bhi.n	1a0023b2 <_malloc_r+0x4c2>
1a002364:	0beb      	lsrs	r3, r5, #15
1a002366:	f103 0078 	add.w	r0, r3, #120	; 0x78
1a00236a:	f103 0c77 	add.w	ip, r3, #119	; 0x77
1a00236e:	00c3      	lsls	r3, r0, #3
1a002370:	e603      	b.n	1a001f7a <_malloc_r+0x8a>
1a002372:	687b      	ldr	r3, [r7, #4]
1a002374:	1092      	asrs	r2, r2, #2
1a002376:	f04f 0801 	mov.w	r8, #1
1a00237a:	fa08 f202 	lsl.w	r2, r8, r2
1a00237e:	4313      	orrs	r3, r2
1a002380:	607b      	str	r3, [r7, #4]
1a002382:	e7a8      	b.n	1a0022d6 <_malloc_r+0x3e6>
1a002384:	f44f 5380 	mov.w	r3, #4096	; 0x1000
1a002388:	e6ce      	b.n	1a002128 <_malloc_r+0x238>
1a00238a:	2a54      	cmp	r2, #84	; 0x54
1a00238c:	d829      	bhi.n	1a0023e2 <_malloc_r+0x4f2>
1a00238e:	0b1a      	lsrs	r2, r3, #12
1a002390:	f102 016f 	add.w	r1, r2, #111	; 0x6f
1a002394:	00c9      	lsls	r1, r1, #3
1a002396:	326e      	adds	r2, #110	; 0x6e
1a002398:	e78b      	b.n	1a0022b2 <_malloc_r+0x3c2>
1a00239a:	f3c0 010b 	ubfx	r1, r0, #0, #12
1a00239e:	2900      	cmp	r1, #0
1a0023a0:	f47f aeae 	bne.w	1a002100 <_malloc_r+0x210>
1a0023a4:	eb09 0208 	add.w	r2, r9, r8
1a0023a8:	68b9      	ldr	r1, [r7, #8]
1a0023aa:	f042 0201 	orr.w	r2, r2, #1
1a0023ae:	604a      	str	r2, [r1, #4]
1a0023b0:	e6ec      	b.n	1a00218c <_malloc_r+0x29c>
1a0023b2:	f240 5254 	movw	r2, #1364	; 0x554
1a0023b6:	4293      	cmp	r3, r2
1a0023b8:	d81c      	bhi.n	1a0023f4 <_malloc_r+0x504>
1a0023ba:	0cab      	lsrs	r3, r5, #18
1a0023bc:	f103 007d 	add.w	r0, r3, #125	; 0x7d
1a0023c0:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
1a0023c4:	00c3      	lsls	r3, r0, #3
1a0023c6:	e5d8      	b.n	1a001f7a <_malloc_r+0x8a>
1a0023c8:	2301      	movs	r3, #1
1a0023ca:	f8cb 3004 	str.w	r3, [fp, #4]
1a0023ce:	e79b      	b.n	1a002308 <_malloc_r+0x418>
1a0023d0:	2101      	movs	r1, #1
1a0023d2:	f04f 0800 	mov.w	r8, #0
1a0023d6:	e6ba      	b.n	1a00214e <_malloc_r+0x25e>
1a0023d8:	4a16      	ldr	r2, [pc, #88]	; (1a002434 <_malloc_r+0x544>)
1a0023da:	6813      	ldr	r3, [r2, #0]
1a0023dc:	4443      	add	r3, r8
1a0023de:	6013      	str	r3, [r2, #0]
1a0023e0:	e68e      	b.n	1a002100 <_malloc_r+0x210>
1a0023e2:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
1a0023e6:	d814      	bhi.n	1a002412 <_malloc_r+0x522>
1a0023e8:	0bda      	lsrs	r2, r3, #15
1a0023ea:	f102 0178 	add.w	r1, r2, #120	; 0x78
1a0023ee:	00c9      	lsls	r1, r1, #3
1a0023f0:	3277      	adds	r2, #119	; 0x77
1a0023f2:	e75e      	b.n	1a0022b2 <_malloc_r+0x3c2>
1a0023f4:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
1a0023f8:	207f      	movs	r0, #127	; 0x7f
1a0023fa:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
1a0023fe:	e5bc      	b.n	1a001f7a <_malloc_r+0x8a>
1a002400:	f104 0108 	add.w	r1, r4, #8
1a002404:	4630      	mov	r0, r6
1a002406:	9201      	str	r2, [sp, #4]
1a002408:	f000 f972 	bl	1a0026f0 <_free_r>
1a00240c:	9a01      	ldr	r2, [sp, #4]
1a00240e:	6813      	ldr	r3, [r2, #0]
1a002410:	e6bc      	b.n	1a00218c <_malloc_r+0x29c>
1a002412:	f240 5154 	movw	r1, #1364	; 0x554
1a002416:	428a      	cmp	r2, r1
1a002418:	d805      	bhi.n	1a002426 <_malloc_r+0x536>
1a00241a:	0c9a      	lsrs	r2, r3, #18
1a00241c:	f102 017d 	add.w	r1, r2, #125	; 0x7d
1a002420:	00c9      	lsls	r1, r1, #3
1a002422:	327c      	adds	r2, #124	; 0x7c
1a002424:	e745      	b.n	1a0022b2 <_malloc_r+0x3c2>
1a002426:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
1a00242a:	227e      	movs	r2, #126	; 0x7e
1a00242c:	e741      	b.n	1a0022b2 <_malloc_r+0x3c2>
1a00242e:	687b      	ldr	r3, [r7, #4]
1a002430:	e785      	b.n	1a00233e <_malloc_r+0x44e>
1a002432:	bf00      	nop
1a002434:	10000884 	.word	0x10000884

1a002438 <memcpy>:
1a002438:	4684      	mov	ip, r0
1a00243a:	ea41 0300 	orr.w	r3, r1, r0
1a00243e:	f013 0303 	ands.w	r3, r3, #3
1a002442:	d16d      	bne.n	1a002520 <memcpy+0xe8>
1a002444:	3a40      	subs	r2, #64	; 0x40
1a002446:	d341      	bcc.n	1a0024cc <memcpy+0x94>
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
1a0024c0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024c4:	f840 3b04 	str.w	r3, [r0], #4
1a0024c8:	3a40      	subs	r2, #64	; 0x40
1a0024ca:	d2bd      	bcs.n	1a002448 <memcpy+0x10>
1a0024cc:	3230      	adds	r2, #48	; 0x30
1a0024ce:	d311      	bcc.n	1a0024f4 <memcpy+0xbc>
1a0024d0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024d4:	f840 3b04 	str.w	r3, [r0], #4
1a0024d8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024dc:	f840 3b04 	str.w	r3, [r0], #4
1a0024e0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024e4:	f840 3b04 	str.w	r3, [r0], #4
1a0024e8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024ec:	f840 3b04 	str.w	r3, [r0], #4
1a0024f0:	3a10      	subs	r2, #16
1a0024f2:	d2ed      	bcs.n	1a0024d0 <memcpy+0x98>
1a0024f4:	320c      	adds	r2, #12
1a0024f6:	d305      	bcc.n	1a002504 <memcpy+0xcc>
1a0024f8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0024fc:	f840 3b04 	str.w	r3, [r0], #4
1a002500:	3a04      	subs	r2, #4
1a002502:	d2f9      	bcs.n	1a0024f8 <memcpy+0xc0>
1a002504:	3204      	adds	r2, #4
1a002506:	d008      	beq.n	1a00251a <memcpy+0xe2>
1a002508:	07d2      	lsls	r2, r2, #31
1a00250a:	bf1c      	itt	ne
1a00250c:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002510:	f800 3b01 	strbne.w	r3, [r0], #1
1a002514:	d301      	bcc.n	1a00251a <memcpy+0xe2>
1a002516:	880b      	ldrh	r3, [r1, #0]
1a002518:	8003      	strh	r3, [r0, #0]
1a00251a:	4660      	mov	r0, ip
1a00251c:	4770      	bx	lr
1a00251e:	bf00      	nop
1a002520:	2a08      	cmp	r2, #8
1a002522:	d313      	bcc.n	1a00254c <memcpy+0x114>
1a002524:	078b      	lsls	r3, r1, #30
1a002526:	d08d      	beq.n	1a002444 <memcpy+0xc>
1a002528:	f010 0303 	ands.w	r3, r0, #3
1a00252c:	d08a      	beq.n	1a002444 <memcpy+0xc>
1a00252e:	f1c3 0304 	rsb	r3, r3, #4
1a002532:	1ad2      	subs	r2, r2, r3
1a002534:	07db      	lsls	r3, r3, #31
1a002536:	bf1c      	itt	ne
1a002538:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a00253c:	f800 3b01 	strbne.w	r3, [r0], #1
1a002540:	d380      	bcc.n	1a002444 <memcpy+0xc>
1a002542:	f831 3b02 	ldrh.w	r3, [r1], #2
1a002546:	f820 3b02 	strh.w	r3, [r0], #2
1a00254a:	e77b      	b.n	1a002444 <memcpy+0xc>
1a00254c:	3a04      	subs	r2, #4
1a00254e:	d3d9      	bcc.n	1a002504 <memcpy+0xcc>
1a002550:	3a01      	subs	r2, #1
1a002552:	f811 3b01 	ldrb.w	r3, [r1], #1
1a002556:	f800 3b01 	strb.w	r3, [r0], #1
1a00255a:	d2f9      	bcs.n	1a002550 <memcpy+0x118>
1a00255c:	780b      	ldrb	r3, [r1, #0]
1a00255e:	7003      	strb	r3, [r0, #0]
1a002560:	784b      	ldrb	r3, [r1, #1]
1a002562:	7043      	strb	r3, [r0, #1]
1a002564:	788b      	ldrb	r3, [r1, #2]
1a002566:	7083      	strb	r3, [r0, #2]
1a002568:	4660      	mov	r0, ip
1a00256a:	4770      	bx	lr

1a00256c <__malloc_lock>:
1a00256c:	4801      	ldr	r0, [pc, #4]	; (1a002574 <__malloc_lock+0x8>)
1a00256e:	f7fd bf11 	b.w	1a000394 <__retarget_lock_acquire_recursive>
1a002572:	bf00      	nop
1a002574:	100008c8 	.word	0x100008c8

1a002578 <__malloc_unlock>:
1a002578:	4801      	ldr	r0, [pc, #4]	; (1a002580 <__malloc_unlock+0x8>)
1a00257a:	f7fd bf0d 	b.w	1a000398 <__retarget_lock_release_recursive>
1a00257e:	bf00      	nop
1a002580:	100008c8 	.word	0x100008c8

1a002584 <mallinfo>:
1a002584:	b510      	push	{r4, lr}
1a002586:	4b03      	ldr	r3, [pc, #12]	; (1a002594 <mallinfo+0x10>)
1a002588:	4604      	mov	r4, r0
1a00258a:	6819      	ldr	r1, [r3, #0]
1a00258c:	f000 f9ce 	bl	1a00292c <_mallinfo_r>
1a002590:	4620      	mov	r0, r4
1a002592:	bd10      	pop	{r4, pc}
1a002594:	10000000 	.word	0x10000000

1a002598 <_sbrk_r>:
1a002598:	b538      	push	{r3, r4, r5, lr}
1a00259a:	4c07      	ldr	r4, [pc, #28]	; (1a0025b8 <_sbrk_r+0x20>)
1a00259c:	2300      	movs	r3, #0
1a00259e:	4605      	mov	r5, r0
1a0025a0:	4608      	mov	r0, r1
1a0025a2:	6023      	str	r3, [r4, #0]
1a0025a4:	f7fe fada 	bl	1a000b5c <_sbrk>
1a0025a8:	1c43      	adds	r3, r0, #1
1a0025aa:	d000      	beq.n	1a0025ae <_sbrk_r+0x16>
1a0025ac:	bd38      	pop	{r3, r4, r5, pc}
1a0025ae:	6823      	ldr	r3, [r4, #0]
1a0025b0:	2b00      	cmp	r3, #0
1a0025b2:	d0fb      	beq.n	1a0025ac <_sbrk_r+0x14>
1a0025b4:	602b      	str	r3, [r5, #0]
1a0025b6:	bd38      	pop	{r3, r4, r5, pc}
1a0025b8:	100008e0 	.word	0x100008e0

1a0025bc <_raise_r>:
1a0025bc:	291f      	cmp	r1, #31
1a0025be:	b538      	push	{r3, r4, r5, lr}
1a0025c0:	d822      	bhi.n	1a002608 <_raise_r+0x4c>
1a0025c2:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
1a0025c6:	4605      	mov	r5, r0
1a0025c8:	460c      	mov	r4, r1
1a0025ca:	b16b      	cbz	r3, 1a0025e8 <_raise_r+0x2c>
1a0025cc:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
1a0025d0:	b152      	cbz	r2, 1a0025e8 <_raise_r+0x2c>
1a0025d2:	2a01      	cmp	r2, #1
1a0025d4:	d012      	beq.n	1a0025fc <_raise_r+0x40>
1a0025d6:	1c51      	adds	r1, r2, #1
1a0025d8:	d012      	beq.n	1a002600 <_raise_r+0x44>
1a0025da:	2500      	movs	r5, #0
1a0025dc:	4620      	mov	r0, r4
1a0025de:	f843 5024 	str.w	r5, [r3, r4, lsl #2]
1a0025e2:	4790      	blx	r2
1a0025e4:	4628      	mov	r0, r5
1a0025e6:	bd38      	pop	{r3, r4, r5, pc}
1a0025e8:	4628      	mov	r0, r5
1a0025ea:	f000 f82f 	bl	1a00264c <_getpid_r>
1a0025ee:	4622      	mov	r2, r4
1a0025f0:	4601      	mov	r1, r0
1a0025f2:	4628      	mov	r0, r5
1a0025f4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1a0025f8:	f000 b814 	b.w	1a002624 <_kill_r>
1a0025fc:	2000      	movs	r0, #0
1a0025fe:	bd38      	pop	{r3, r4, r5, pc}
1a002600:	2316      	movs	r3, #22
1a002602:	6003      	str	r3, [r0, #0]
1a002604:	2001      	movs	r0, #1
1a002606:	bd38      	pop	{r3, r4, r5, pc}
1a002608:	2316      	movs	r3, #22
1a00260a:	6003      	str	r3, [r0, #0]
1a00260c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a002610:	bd38      	pop	{r3, r4, r5, pc}
1a002612:	bf00      	nop

1a002614 <raise>:
1a002614:	4b02      	ldr	r3, [pc, #8]	; (1a002620 <raise+0xc>)
1a002616:	4601      	mov	r1, r0
1a002618:	6818      	ldr	r0, [r3, #0]
1a00261a:	f7ff bfcf 	b.w	1a0025bc <_raise_r>
1a00261e:	bf00      	nop
1a002620:	10000000 	.word	0x10000000

1a002624 <_kill_r>:
1a002624:	b538      	push	{r3, r4, r5, lr}
1a002626:	460b      	mov	r3, r1
1a002628:	4c07      	ldr	r4, [pc, #28]	; (1a002648 <_kill_r+0x24>)
1a00262a:	4605      	mov	r5, r0
1a00262c:	4611      	mov	r1, r2
1a00262e:	4618      	mov	r0, r3
1a002630:	2300      	movs	r3, #0
1a002632:	6023      	str	r3, [r4, #0]
1a002634:	f7fe fab8 	bl	1a000ba8 <_kill>
1a002638:	1c43      	adds	r3, r0, #1
1a00263a:	d000      	beq.n	1a00263e <_kill_r+0x1a>
1a00263c:	bd38      	pop	{r3, r4, r5, pc}
1a00263e:	6823      	ldr	r3, [r4, #0]
1a002640:	2b00      	cmp	r3, #0
1a002642:	d0fb      	beq.n	1a00263c <_kill_r+0x18>
1a002644:	602b      	str	r3, [r5, #0]
1a002646:	bd38      	pop	{r3, r4, r5, pc}
1a002648:	100008e0 	.word	0x100008e0

1a00264c <_getpid_r>:
1a00264c:	f7fe babe 	b.w	1a000bcc <_getpid>

1a002650 <_malloc_trim_r>:
1a002650:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002652:	4f24      	ldr	r7, [pc, #144]	; (1a0026e4 <_malloc_trim_r+0x94>)
1a002654:	460c      	mov	r4, r1
1a002656:	4606      	mov	r6, r0
1a002658:	f7ff ff88 	bl	1a00256c <__malloc_lock>
1a00265c:	68bb      	ldr	r3, [r7, #8]
1a00265e:	685d      	ldr	r5, [r3, #4]
1a002660:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
1a002664:	310f      	adds	r1, #15
1a002666:	f025 0503 	bic.w	r5, r5, #3
1a00266a:	4429      	add	r1, r5
1a00266c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
1a002670:	f021 010f 	bic.w	r1, r1, #15
1a002674:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
1a002678:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
1a00267c:	db07      	blt.n	1a00268e <_malloc_trim_r+0x3e>
1a00267e:	2100      	movs	r1, #0
1a002680:	4630      	mov	r0, r6
1a002682:	f7ff ff89 	bl	1a002598 <_sbrk_r>
1a002686:	68bb      	ldr	r3, [r7, #8]
1a002688:	442b      	add	r3, r5
1a00268a:	4298      	cmp	r0, r3
1a00268c:	d004      	beq.n	1a002698 <_malloc_trim_r+0x48>
1a00268e:	4630      	mov	r0, r6
1a002690:	f7ff ff72 	bl	1a002578 <__malloc_unlock>
1a002694:	2000      	movs	r0, #0
1a002696:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a002698:	4261      	negs	r1, r4
1a00269a:	4630      	mov	r0, r6
1a00269c:	f7ff ff7c 	bl	1a002598 <_sbrk_r>
1a0026a0:	3001      	adds	r0, #1
1a0026a2:	d00d      	beq.n	1a0026c0 <_malloc_trim_r+0x70>
1a0026a4:	4b10      	ldr	r3, [pc, #64]	; (1a0026e8 <_malloc_trim_r+0x98>)
1a0026a6:	68ba      	ldr	r2, [r7, #8]
1a0026a8:	6819      	ldr	r1, [r3, #0]
1a0026aa:	1b2d      	subs	r5, r5, r4
1a0026ac:	f045 0501 	orr.w	r5, r5, #1
1a0026b0:	4630      	mov	r0, r6
1a0026b2:	1b09      	subs	r1, r1, r4
1a0026b4:	6055      	str	r5, [r2, #4]
1a0026b6:	6019      	str	r1, [r3, #0]
1a0026b8:	f7ff ff5e 	bl	1a002578 <__malloc_unlock>
1a0026bc:	2001      	movs	r0, #1
1a0026be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a0026c0:	2100      	movs	r1, #0
1a0026c2:	4630      	mov	r0, r6
1a0026c4:	f7ff ff68 	bl	1a002598 <_sbrk_r>
1a0026c8:	68ba      	ldr	r2, [r7, #8]
1a0026ca:	1a83      	subs	r3, r0, r2
1a0026cc:	2b0f      	cmp	r3, #15
1a0026ce:	ddde      	ble.n	1a00268e <_malloc_trim_r+0x3e>
1a0026d0:	4c06      	ldr	r4, [pc, #24]	; (1a0026ec <_malloc_trim_r+0x9c>)
1a0026d2:	4905      	ldr	r1, [pc, #20]	; (1a0026e8 <_malloc_trim_r+0x98>)
1a0026d4:	6824      	ldr	r4, [r4, #0]
1a0026d6:	f043 0301 	orr.w	r3, r3, #1
1a0026da:	1b00      	subs	r0, r0, r4
1a0026dc:	6053      	str	r3, [r2, #4]
1a0026de:	6008      	str	r0, [r1, #0]
1a0026e0:	e7d5      	b.n	1a00268e <_malloc_trim_r+0x3e>
1a0026e2:	bf00      	nop
1a0026e4:	10000434 	.word	0x10000434
1a0026e8:	10000884 	.word	0x10000884
1a0026ec:	1000083c 	.word	0x1000083c

1a0026f0 <_free_r>:
1a0026f0:	2900      	cmp	r1, #0
1a0026f2:	d053      	beq.n	1a00279c <_free_r+0xac>
1a0026f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0026f6:	460c      	mov	r4, r1
1a0026f8:	4606      	mov	r6, r0
1a0026fa:	f7ff ff37 	bl	1a00256c <__malloc_lock>
1a0026fe:	f854 cc04 	ldr.w	ip, [r4, #-4]
1a002702:	4f71      	ldr	r7, [pc, #452]	; (1a0028c8 <_free_r+0x1d8>)
1a002704:	f02c 0101 	bic.w	r1, ip, #1
1a002708:	f1a4 0508 	sub.w	r5, r4, #8
1a00270c:	186b      	adds	r3, r5, r1
1a00270e:	68b8      	ldr	r0, [r7, #8]
1a002710:	685a      	ldr	r2, [r3, #4]
1a002712:	4298      	cmp	r0, r3
1a002714:	f022 0203 	bic.w	r2, r2, #3
1a002718:	d053      	beq.n	1a0027c2 <_free_r+0xd2>
1a00271a:	f01c 0f01 	tst.w	ip, #1
1a00271e:	605a      	str	r2, [r3, #4]
1a002720:	eb03 0002 	add.w	r0, r3, r2
1a002724:	d13b      	bne.n	1a00279e <_free_r+0xae>
1a002726:	f854 cc08 	ldr.w	ip, [r4, #-8]
1a00272a:	6840      	ldr	r0, [r0, #4]
1a00272c:	eba5 050c 	sub.w	r5, r5, ip
1a002730:	f107 0e08 	add.w	lr, r7, #8
1a002734:	68ac      	ldr	r4, [r5, #8]
1a002736:	4574      	cmp	r4, lr
1a002738:	4461      	add	r1, ip
1a00273a:	f000 0001 	and.w	r0, r0, #1
1a00273e:	d075      	beq.n	1a00282c <_free_r+0x13c>
1a002740:	f8d5 c00c 	ldr.w	ip, [r5, #12]
1a002744:	f8c4 c00c 	str.w	ip, [r4, #12]
1a002748:	f8cc 4008 	str.w	r4, [ip, #8]
1a00274c:	b360      	cbz	r0, 1a0027a8 <_free_r+0xb8>
1a00274e:	f041 0301 	orr.w	r3, r1, #1
1a002752:	606b      	str	r3, [r5, #4]
1a002754:	5069      	str	r1, [r5, r1]
1a002756:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
1a00275a:	d350      	bcc.n	1a0027fe <_free_r+0x10e>
1a00275c:	0a4b      	lsrs	r3, r1, #9
1a00275e:	2b04      	cmp	r3, #4
1a002760:	d870      	bhi.n	1a002844 <_free_r+0x154>
1a002762:	098b      	lsrs	r3, r1, #6
1a002764:	f103 0439 	add.w	r4, r3, #57	; 0x39
1a002768:	00e4      	lsls	r4, r4, #3
1a00276a:	f103 0238 	add.w	r2, r3, #56	; 0x38
1a00276e:	1938      	adds	r0, r7, r4
1a002770:	593b      	ldr	r3, [r7, r4]
1a002772:	3808      	subs	r0, #8
1a002774:	4298      	cmp	r0, r3
1a002776:	d078      	beq.n	1a00286a <_free_r+0x17a>
1a002778:	685a      	ldr	r2, [r3, #4]
1a00277a:	f022 0203 	bic.w	r2, r2, #3
1a00277e:	428a      	cmp	r2, r1
1a002780:	d971      	bls.n	1a002866 <_free_r+0x176>
1a002782:	689b      	ldr	r3, [r3, #8]
1a002784:	4298      	cmp	r0, r3
1a002786:	d1f7      	bne.n	1a002778 <_free_r+0x88>
1a002788:	68c3      	ldr	r3, [r0, #12]
1a00278a:	e9c5 0302 	strd	r0, r3, [r5, #8]
1a00278e:	609d      	str	r5, [r3, #8]
1a002790:	60c5      	str	r5, [r0, #12]
1a002792:	4630      	mov	r0, r6
1a002794:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a002798:	f7ff beee 	b.w	1a002578 <__malloc_unlock>
1a00279c:	4770      	bx	lr
1a00279e:	6840      	ldr	r0, [r0, #4]
1a0027a0:	f000 0001 	and.w	r0, r0, #1
1a0027a4:	2800      	cmp	r0, #0
1a0027a6:	d1d2      	bne.n	1a00274e <_free_r+0x5e>
1a0027a8:	6898      	ldr	r0, [r3, #8]
1a0027aa:	4c48      	ldr	r4, [pc, #288]	; (1a0028cc <_free_r+0x1dc>)
1a0027ac:	4411      	add	r1, r2
1a0027ae:	42a0      	cmp	r0, r4
1a0027b0:	f041 0201 	orr.w	r2, r1, #1
1a0027b4:	d062      	beq.n	1a00287c <_free_r+0x18c>
1a0027b6:	68db      	ldr	r3, [r3, #12]
1a0027b8:	60c3      	str	r3, [r0, #12]
1a0027ba:	6098      	str	r0, [r3, #8]
1a0027bc:	606a      	str	r2, [r5, #4]
1a0027be:	5069      	str	r1, [r5, r1]
1a0027c0:	e7c9      	b.n	1a002756 <_free_r+0x66>
1a0027c2:	f01c 0f01 	tst.w	ip, #1
1a0027c6:	440a      	add	r2, r1
1a0027c8:	d107      	bne.n	1a0027da <_free_r+0xea>
1a0027ca:	f854 3c08 	ldr.w	r3, [r4, #-8]
1a0027ce:	1aed      	subs	r5, r5, r3
1a0027d0:	441a      	add	r2, r3
1a0027d2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
1a0027d6:	60cb      	str	r3, [r1, #12]
1a0027d8:	6099      	str	r1, [r3, #8]
1a0027da:	4b3d      	ldr	r3, [pc, #244]	; (1a0028d0 <_free_r+0x1e0>)
1a0027dc:	681b      	ldr	r3, [r3, #0]
1a0027de:	f042 0101 	orr.w	r1, r2, #1
1a0027e2:	4293      	cmp	r3, r2
1a0027e4:	6069      	str	r1, [r5, #4]
1a0027e6:	60bd      	str	r5, [r7, #8]
1a0027e8:	d804      	bhi.n	1a0027f4 <_free_r+0x104>
1a0027ea:	4b3a      	ldr	r3, [pc, #232]	; (1a0028d4 <_free_r+0x1e4>)
1a0027ec:	4630      	mov	r0, r6
1a0027ee:	6819      	ldr	r1, [r3, #0]
1a0027f0:	f7ff ff2e 	bl	1a002650 <_malloc_trim_r>
1a0027f4:	4630      	mov	r0, r6
1a0027f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a0027fa:	f7ff bebd 	b.w	1a002578 <__malloc_unlock>
1a0027fe:	08c9      	lsrs	r1, r1, #3
1a002800:	6878      	ldr	r0, [r7, #4]
1a002802:	1c4a      	adds	r2, r1, #1
1a002804:	2301      	movs	r3, #1
1a002806:	1089      	asrs	r1, r1, #2
1a002808:	408b      	lsls	r3, r1
1a00280a:	4303      	orrs	r3, r0
1a00280c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
1a002810:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
1a002814:	607b      	str	r3, [r7, #4]
1a002816:	3908      	subs	r1, #8
1a002818:	e9c5 0102 	strd	r0, r1, [r5, #8]
1a00281c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
1a002820:	60c5      	str	r5, [r0, #12]
1a002822:	4630      	mov	r0, r6
1a002824:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
1a002828:	f7ff bea6 	b.w	1a002578 <__malloc_unlock>
1a00282c:	2800      	cmp	r0, #0
1a00282e:	d145      	bne.n	1a0028bc <_free_r+0x1cc>
1a002830:	440a      	add	r2, r1
1a002832:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
1a002836:	f042 0001 	orr.w	r0, r2, #1
1a00283a:	60cb      	str	r3, [r1, #12]
1a00283c:	6099      	str	r1, [r3, #8]
1a00283e:	6068      	str	r0, [r5, #4]
1a002840:	50aa      	str	r2, [r5, r2]
1a002842:	e7d7      	b.n	1a0027f4 <_free_r+0x104>
1a002844:	2b14      	cmp	r3, #20
1a002846:	d908      	bls.n	1a00285a <_free_r+0x16a>
1a002848:	2b54      	cmp	r3, #84	; 0x54
1a00284a:	d81e      	bhi.n	1a00288a <_free_r+0x19a>
1a00284c:	0b0b      	lsrs	r3, r1, #12
1a00284e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
1a002852:	00e4      	lsls	r4, r4, #3
1a002854:	f103 026e 	add.w	r2, r3, #110	; 0x6e
1a002858:	e789      	b.n	1a00276e <_free_r+0x7e>
1a00285a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
1a00285e:	00e4      	lsls	r4, r4, #3
1a002860:	f103 025b 	add.w	r2, r3, #91	; 0x5b
1a002864:	e783      	b.n	1a00276e <_free_r+0x7e>
1a002866:	4618      	mov	r0, r3
1a002868:	e78e      	b.n	1a002788 <_free_r+0x98>
1a00286a:	1093      	asrs	r3, r2, #2
1a00286c:	6879      	ldr	r1, [r7, #4]
1a00286e:	2201      	movs	r2, #1
1a002870:	fa02 f303 	lsl.w	r3, r2, r3
1a002874:	430b      	orrs	r3, r1
1a002876:	607b      	str	r3, [r7, #4]
1a002878:	4603      	mov	r3, r0
1a00287a:	e786      	b.n	1a00278a <_free_r+0x9a>
1a00287c:	e9c7 5504 	strd	r5, r5, [r7, #16]
1a002880:	e9c5 0002 	strd	r0, r0, [r5, #8]
1a002884:	606a      	str	r2, [r5, #4]
1a002886:	5069      	str	r1, [r5, r1]
1a002888:	e7b4      	b.n	1a0027f4 <_free_r+0x104>
1a00288a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
1a00288e:	d806      	bhi.n	1a00289e <_free_r+0x1ae>
1a002890:	0bcb      	lsrs	r3, r1, #15
1a002892:	f103 0478 	add.w	r4, r3, #120	; 0x78
1a002896:	00e4      	lsls	r4, r4, #3
1a002898:	f103 0277 	add.w	r2, r3, #119	; 0x77
1a00289c:	e767      	b.n	1a00276e <_free_r+0x7e>
1a00289e:	f240 5254 	movw	r2, #1364	; 0x554
1a0028a2:	4293      	cmp	r3, r2
1a0028a4:	d806      	bhi.n	1a0028b4 <_free_r+0x1c4>
1a0028a6:	0c8b      	lsrs	r3, r1, #18
1a0028a8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
1a0028ac:	00e4      	lsls	r4, r4, #3
1a0028ae:	f103 027c 	add.w	r2, r3, #124	; 0x7c
1a0028b2:	e75c      	b.n	1a00276e <_free_r+0x7e>
1a0028b4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
1a0028b8:	227e      	movs	r2, #126	; 0x7e
1a0028ba:	e758      	b.n	1a00276e <_free_r+0x7e>
1a0028bc:	f041 0201 	orr.w	r2, r1, #1
1a0028c0:	606a      	str	r2, [r5, #4]
1a0028c2:	6019      	str	r1, [r3, #0]
1a0028c4:	e796      	b.n	1a0027f4 <_free_r+0x104>
1a0028c6:	bf00      	nop
1a0028c8:	10000434 	.word	0x10000434
1a0028cc:	1000043c 	.word	0x1000043c
1a0028d0:	10000840 	.word	0x10000840
1a0028d4:	100008b4 	.word	0x100008b4

1a0028d8 <__malloc_update_mallinfo>:
1a0028d8:	b470      	push	{r4, r5, r6}
1a0028da:	4c12      	ldr	r4, [pc, #72]	; (1a002924 <__malloc_update_mallinfo+0x4c>)
1a0028dc:	f504 6580 	add.w	r5, r4, #1024	; 0x400
1a0028e0:	f854 3f08 	ldr.w	r3, [r4, #8]!
1a0028e4:	685e      	ldr	r6, [r3, #4]
1a0028e6:	f026 0603 	bic.w	r6, r6, #3
1a0028ea:	2e0f      	cmp	r6, #15
1a0028ec:	4631      	mov	r1, r6
1a0028ee:	bfd4      	ite	le
1a0028f0:	2000      	movle	r0, #0
1a0028f2:	2001      	movgt	r0, #1
1a0028f4:	68e3      	ldr	r3, [r4, #12]
1a0028f6:	429c      	cmp	r4, r3
1a0028f8:	d008      	beq.n	1a00290c <__malloc_update_mallinfo+0x34>
1a0028fa:	685a      	ldr	r2, [r3, #4]
1a0028fc:	68db      	ldr	r3, [r3, #12]
1a0028fe:	f022 0203 	bic.w	r2, r2, #3
1a002902:	429c      	cmp	r4, r3
1a002904:	f100 0001 	add.w	r0, r0, #1
1a002908:	4411      	add	r1, r2
1a00290a:	d1f6      	bne.n	1a0028fa <__malloc_update_mallinfo+0x22>
1a00290c:	3408      	adds	r4, #8
1a00290e:	42a5      	cmp	r5, r4
1a002910:	d1f0      	bne.n	1a0028f4 <__malloc_update_mallinfo+0x1c>
1a002912:	4b05      	ldr	r3, [pc, #20]	; (1a002928 <__malloc_update_mallinfo+0x50>)
1a002914:	681a      	ldr	r2, [r3, #0]
1a002916:	6058      	str	r0, [r3, #4]
1a002918:	1a52      	subs	r2, r2, r1
1a00291a:	e9c3 1608 	strd	r1, r6, [r3, #32]
1a00291e:	61da      	str	r2, [r3, #28]
1a002920:	bc70      	pop	{r4, r5, r6}
1a002922:	4770      	bx	lr
1a002924:	10000434 	.word	0x10000434
1a002928:	10000884 	.word	0x10000884

1a00292c <_mallinfo_r>:
1a00292c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00292e:	4d0b      	ldr	r5, [pc, #44]	; (1a00295c <_mallinfo_r+0x30>)
1a002930:	4606      	mov	r6, r0
1a002932:	4608      	mov	r0, r1
1a002934:	460f      	mov	r7, r1
1a002936:	f7ff fe19 	bl	1a00256c <__malloc_lock>
1a00293a:	f7ff ffcd 	bl	1a0028d8 <__malloc_update_mallinfo>
1a00293e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a002940:	4634      	mov	r4, r6
1a002942:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a002944:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a002946:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a002948:	e895 0003 	ldmia.w	r5, {r0, r1}
1a00294c:	e884 0003 	stmia.w	r4, {r0, r1}
1a002950:	4638      	mov	r0, r7
1a002952:	f7ff fe11 	bl	1a002578 <__malloc_unlock>
1a002956:	4630      	mov	r0, r6
1a002958:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1a00295a:	bf00      	nop
1a00295c:	10000884 	.word	0x10000884

1a002960 <ExtRateIn>:
1a002960:	00000000                                ....

1a002964 <OscRateIn>:
1a002964:	00b71b00                                ....

1a002968 <leds>:
1a002968:	02050202 0a020014 00100e00 0b010b02     ................
1a002978:	0c020010 00100c01 00050002 01020014     ................
1a002988:	00140105                                ....

1a00298c <keys>:
1a00298c:	04000001 01010050 00500800 09000201     ....P.....P.....
1a00299c:	06010050 00500901                       P.....P.

1a0029a4 <InitClkStates>:
1a0029a4:	00010100 00010909 0001090a 01010701     ................
1a0029b4:	00010902 00010906 0101090c 0001090d     ................
1a0029c4:	0001090e 0001090f 00010910 00010911     ................
1a0029d4:	00010912 00010913 00011114 00011119     ................
1a0029e4:	0001111a 0001111b                       ........

1a0029ec <UART_PClock>:
1a0029ec:	00820081 00a200a1                       ........

1a0029f4 <UART_BClock>:
1a0029f4:	01a201c2 01620182                       ......b.

1a0029fc <periph_to_base>:
1a0029fc:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a002a0c:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a002a1c:	000100e0 01000100 01200003 00060120     .......... . ...
1a002a2c:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a002a3c:	01820013 00120182 01a201a2 01c20011     ................
1a002a4c:	001001c2 01e201e2 0202000f 000e0202     ................
1a002a5c:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a002a6c:	0f0f0f03 ffff00ff                       ........

Disassembly of section .init:

1a002a74 <_init>:
1a002a74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002a76:	bf00      	nop

Disassembly of section .fini:

1a002a78 <_fini>:
1a002a78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002a7a:	bf00      	nop
