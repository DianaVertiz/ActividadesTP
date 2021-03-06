#define WEAK __attribute__ ((weak))
#define ALIAS(f) __attribute__ ((weak, alias (#f)))

//*****************************************************************************
//
// Forward declaration of the default handlers. These are aliased.
// When the application defines a handler (with the same name), this will 
// automatically take precedence over these weak definitions
//
//*****************************************************************************
void ResetISR(void);
WEAK void NMI_Handler(void);
WEAK void HardFault_Handler(void);
WEAK void MemManage_Handler(void);
WEAK void BusFault_Handler(void);
WEAK void UsageFault_Handler(void);
WEAK void SVC_Handler(void);
WEAK void DebugMon_Handler(void);
WEAK void PendSV_Handler(void);
WEAK void SysTick_Handler(void);
WEAK void IntDefaultHandler(void);

//*****************************************************************************
//
// Forward declaration of the specific IRQ handlers. These are aliased
// to the IntDefaultHandler, which is a 'forever' loop. When the application
// defines a handler (with the same name), this will automatically take 
// precedence over these weak definitions
//
//*****************************************************************************
void DAC_IRQHandler(void) ALIAS(IntDefaultHandler);
void M0CORE_IRQHandler(void) ALIAS(IntDefaultHandler);
void DMA_IRQHandler(void) ALIAS(IntDefaultHandler);
void FLASH_EEPROM_IRQHandler(void) ALIAS(IntDefaultHandler);
void ETH_IRQHandler(void) ALIAS(IntDefaultHandler);
void SDIO_IRQHandler(void) ALIAS(IntDefaultHandler);
void LCD_IRQHandler(void) ALIAS(IntDefaultHandler);
void USB0_IRQHandler(void) ALIAS(IntDefaultHandler);
void USB1_IRQHandler(void) ALIAS(IntDefaultHandler);
void SCT_IRQHandler(void) ALIAS(IntDefaultHandler);
void RIT_IRQHandler(void) ALIAS(IntDefaultHandler);
void TIMER0_IRQHandler(void) ALIAS(IntDefaultHandler);
void TIMER1_IRQHandler(void) ALIAS(IntDefaultHandler);
void TIMER2_IRQHandler(void) ALIAS(IntDefaultHandler);
void TIMER3_IRQHandler(void) ALIAS(IntDefaultHandler);
void MCPWM_IRQHandler(void) ALIAS(IntDefaultHandler);
void ADC0_IRQHandler(void) ALIAS(IntDefaultHandler);
void I2C0_IRQHandler(void) ALIAS(IntDefaultHandler);
void SPI_IRQHandler(void) ALIAS(IntDefaultHandler);
void I2C1_IRQHandler(void) ALIAS(IntDefaultHandler);
void ADC1_IRQHandler(void) ALIAS(IntDefaultHandler);
void SSP0_IRQHandler(void) ALIAS(IntDefaultHandler);
void SSP1_IRQHandler(void) ALIAS(IntDefaultHandler);
void UART0_IRQHandler(void) ALIAS(IntDefaultHandler);
void UART1_IRQHandler(void) ALIAS(IntDefaultHandler);
void UART2_IRQHandler(void) ALIAS(IntDefaultHandler);
void UART3_IRQHandler(void) ALIAS(IntDefaultHandler);
void I2S0_IRQHandler(void) ALIAS(IntDefaultHandler);
void I2S1_IRQHandler(void) ALIAS(IntDefaultHandler);
void SPIFI_IRQHandler(void) ALIAS(IntDefaultHandler);
void SGPIO_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO0_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO1_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO2_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO3_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO4_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO5_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO6_IRQHandler(void) ALIAS(IntDefaultHandler);
void GPIO7_IRQHandler(void) ALIAS(IntDefaultHandler);
void GINT0_IRQHandler(void) ALIAS(IntDefaultHandler);
void GINT1_IRQHandler(void) ALIAS(IntDefaultHandler);
void EVRT_IRQHandler(void) ALIAS(IntDefaultHandler);
void CAN1_IRQHandler(void) ALIAS(IntDefaultHandler);
void VADC_IRQHandler(void) ALIAS(IntDefaultHandler);
void ATIMER_IRQHandler(void) ALIAS(IntDefaultHandler);
void RTC_IRQHandler(void) ALIAS(IntDefaultHandler);
void WDT_IRQHandler(void) ALIAS(IntDefaultHandler);
void M0SUB_IRQHandler(void) ALIAS(IntDefaultHandler);
void CAN0_IRQHandler(void) ALIAS(IntDefaultHandler);
void QEI_IRQHandler(void) ALIAS(IntDefaultHandler);

extern int main(void);
extern void _vStackTop(void);

//*****************************************************************************
//
// External declaration for LPC MCU vector table checksum from  Linker Script
//
//*****************************************************************************
WEAK extern void __valid_user_code_checksum();


//*****************************************************************************
//
// The vector table.
// This relies on the linker script to place at correct location in memory.
//
//*****************************************************************************
extern void (* const isrVector[])(void);
__attribute__ ((used,section(".isr_vector")))
void (* const isrVector[])(void) = {
    // Core Level - CM4
    &_vStackTop,                    // The initial stack pointer
    ResetISR,                       // The reset handler
    NMI_Handler,                    // The NMI handler
    HardFault_Handler,              // The hard fault handler
    MemManage_Handler,              // The MPU fault handler
    BusFault_Handler,               // The bus fault handler
    UsageFault_Handler,             // The usage fault handler
    __valid_user_code_checksum,     // LPC MCU Checksum
    0,                              // Reserved
    0,                              // Reserved
    0,                              // Reserved
    SVC_Handler,                    // SVCall handler
    DebugMon_Handler,               // Debug monitor handler
    0,                              // Reserved
    PendSV_Handler,                 // The PendSV handler
    SysTick_Handler,                // The SysTick handler

    // Chip Level - LPC43 (M4)
    DAC_IRQHandler,           // 16
    M0CORE_IRQHandler,        // 17
    DMA_IRQHandler,           // 18
    0,           // 19
    FLASH_EEPROM_IRQHandler,  // 20 ORed flash Bank A, flash Bank B, EEPROM interrupts
    ETH_IRQHandler,           // 21
    SDIO_IRQHandler,          // 22
    LCD_IRQHandler,           // 23
    USB0_IRQHandler,          // 24
    USB1_IRQHandler,          // 25
    SCT_IRQHandler,           // 26
    RIT_IRQHandler,           // 27
    TIMER0_IRQHandler,        // 28
    TIMER1_IRQHandler,        // 29
    TIMER2_IRQHandler,        // 30
    TIMER3_IRQHandler,        // 31
    MCPWM_IRQHandler,         // 32
    ADC0_IRQHandler,          // 33
    I2C0_IRQHandler,          // 34
    I2C1_IRQHandler,          // 35
    SPI_IRQHandler,           // 36
    ADC1_IRQHandler,          // 37
    SSP0_IRQHandler,          // 38
    SSP1_IRQHandler,          // 39
    UART0_IRQHandler,         // 40
    UART1_IRQHandler,         // 41
    UART2_IRQHandler,         // 42
    UART3_IRQHandler,         // 43
    I2S0_IRQHandler,          // 44
    I2S1_IRQHandler,          // 45
    SPIFI_IRQHandler,         // 46
    SGPIO_IRQHandler,         // 47
    GPIO0_IRQHandler,         // 48
    GPIO1_IRQHandler,         // 49
    GPIO2_IRQHandler,         // 50
    GPIO3_IRQHandler,         // 51
    GPIO4_IRQHandler,         // 52
    GPIO5_IRQHandler,         // 53
    GPIO6_IRQHandler,         // 54
    GPIO7_IRQHandler,         // 55
    GINT0_IRQHandler,         // 56
    GINT1_IRQHandler,         // 57
    EVRT_IRQHandler,          // 58
    CAN1_IRQHandler,          // 59
    0,                        // 60
    VADC_IRQHandler,          // 61
    ATIMER_IRQHandler,        // 62
    RTC_IRQHandler,           // 63
    0,                        // 64
    WDT_IRQHandler,           // 65
    M0SUB_IRQHandler,         // 66
    CAN0_IRQHandler,          // 67
    QEI_IRQHandler,           // 68
};


__attribute__((section(".after_vectors")))
void data_init(unsigned int romstart, unsigned int start, unsigned int len) {
    unsigned int *pulDest = (unsigned int*) start;
    unsigned int *pulSrc = (unsigned int*) romstart;
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
        *pulDest++ = *pulSrc++;
}

__attribute__ ((section(".after_vectors")))
void bss_init(unsigned int start, unsigned int len) {
    unsigned int *pulDest = (unsigned int*) start;
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
        *pulDest++ = 0;
}

extern unsigned int __data_section_table_;
extern unsigned int __data_section_table_end_;
extern unsigned int __bss_section_table_;
extern unsigned int __bss_section_table_end_;

void ResetISR(void) {

// *************************************************************
// The following conditional block of code manually resets as
// much of the peripheral set of the LPC43 as possible. This is
// done because the LPC43 does not provide a means of triggering
// a full system reset under debugger control, which can cause
// problems in certain circumstances when debugging.
//
// You can prevent this code block being included if you require
// (for example when creating a final executable which you will
// not debug) by setting the define 'DONT_RESET_ON_RESTART'.
//
#ifndef DONT_RESET_ON_RESTART

    // Disable interrupts
    __asm volatile ("cpsid i");
    // equivalent to CMSIS '__disable_irq()' function

    unsigned int *RESET_CONTROL = (unsigned int *) 0x40053100;
    // LPC_RGU->RESET_CTRL0 @ 0x40053100
    // LPC_RGU->RESET_CTRL1 @ 0x40053104
    // Note that we do not use the CMSIS register access mechanism,
    // as there is no guarantee that the project has been configured
    // to use CMSIS.

    // Write to LPC_RGU->RESET_CTRL0
    *(RESET_CONTROL + 0) = 0x10DF1000;
    // GPIO_RST|AES_RST|ETHERNET_RST|SDIO_RST|DMA_RST|
    // USB1_RST|USB0_RST|LCD_RST|M0_SUB_RST

    // Write to LPC_RGU->RESET_CTRL1
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
    // M0APP_RST|CAN0_RST|CAN1_RST|I2S_RST|SSP1_RST|SSP0_RST|
    // I2C1_RST|I2C0_RST|UART3_RST|UART1_RST|UART1_RST|UART0_RST|
    // DAC_RST|ADC1_RST|ADC0_RST|QEI_RST|MOTOCONPWM_RST|SCT_RST|
    // RITIMER_RST|TIMER3_RST|TIMER2_RST|TIMER1_RST|TIMER0_RST

    // Clear all pending interrupts in the NVIC
    volatile unsigned int *NVIC_ICPR = (unsigned int *) 0xE000E280;
    unsigned int irqpendloop;
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
    }

    // Reenable interrupts
    __asm volatile ("cpsie i");
    // equivalent to CMSIS '__enable_irq()' function

#endif  // ifndef DONT_RESET_ON_RESTART
// *************************************************************


    //
    // Copy the data sections from flash to SRAM.
    //
    unsigned int LoadAddr, ExeAddr, SectionLen;
    unsigned int *SectionTableAddr;

    // Load base address of Global Section Table
    SectionTableAddr = &__data_section_table_;

    // Copy the data sections from flash to SRAM.
    while (SectionTableAddr < &__data_section_table_end_) {
        LoadAddr = *SectionTableAddr++;
        ExeAddr = *SectionTableAddr++;
        SectionLen = *SectionTableAddr++;
        data_init(LoadAddr, ExeAddr, SectionLen);
    }
    // At this point, SectionTableAddr = &__bss_section_table;
    // Zero fill the bss segment
    while (SectionTableAddr < &__bss_section_table_end_) {
        ExeAddr = *SectionTableAddr++;
        SectionLen = *SectionTableAddr++;
        bss_init(ExeAddr, SectionLen);
    }


  main();


    //
    // main() shouldn't return, but if it does, we'll just enter an infinite loop
    //
    while (1) {
        ;
    }
}

//*****************************************************************************
// Default exception handlers. Override the ones here by defining your own
// handler routines in your application code.
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void NMI_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void HardFault_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void MemManage_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void BusFault_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void UsageFault_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void SVC_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void DebugMon_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void PendSV_Handler(void) {
    while (1) {
    }
}
__attribute__ ((section(".after_vectors")))
void SysTick_Handler(void) {
    while (1) {
    }
}

//*****************************************************************************
//
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.
//
//*****************************************************************************
__attribute__ ((section(".after_vectors")))
void IntDefaultHandler(void) {
    while (1) {
    }
}






