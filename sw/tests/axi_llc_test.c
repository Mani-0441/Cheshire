// Copyright 2022 ETH Zurich and University of Bologna.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Authors:
// - Nicole Narr <narrn@ethz.ch>
// - Christopher Reinwardt <creinwar@ethz.ch>
// Date:   05.12.2022

#include "uart.h"
#include "printf.h"
#include "axi_llc_reg32.h"

char uart_initialized = 0;

extern void *__base_axi_llc;

void __attribute__((aligned(4))) trap_vector(void)
{
    long int mcause = 0, mepc = 0, mip = 0, mie = 0, mstatus = 0, mtval = 0;

    asm volatile(
        "csrrs t0, mcause, x0\n     \
         sd t0, %0\n                \
         csrrs t0, mepc, x0\n       \
         sd t0, %1\n                \
         csrrs t0, mip, x0\n        \
         sd t0, %2\n                \
         csrrs t0, mie, x0\n        \
         sd t0, %3\n                \
         csrrs t0, mstatus, x0\n    \
         sd t0, %4\n                \
         csrrs t0, mtval, x0\n      \
         sd t0, %5\n"
         : "=m" (mcause),
           "=m" (mepc),
           "=m" (mip),
           "=m" (mie),
           "=m" (mstatus),
           "=m" (mtval)
         :: "t0");

    // Interrupt with exception code 7 == Machine Mode Timer Interrupt
    if(mcause < 0 && (mcause << 1) == 14){
        // Handle interrupt by disabling the timer interrupt and returning
        asm volatile(
            "addi t0, x0, 128\n     \
             csrrc x0, mie, t0\n"
             ::: "t0"
        );
        return;
    } else {
        if(uart_initialized){
            printf_("Hello from the trap_vector :)\r\n");
            printf_("mcause:    0x%lx\r\n", mcause);
            printf_("mepc:      0x%lx\r\n", mepc);
            printf_("mip:       0x%lx\r\n", mip);
            printf_("mie:       0x%lx\r\n", mie);
            printf_("mstatus:   0x%lx\r\n", mstatus);
            printf_("mtval:     0x%lx\r\n", mtval);
        }
    }

    while(1){
        asm volatile("wfi\n" :::);
    }

    return;
}

void init_llc(void *base)
{
    printf("[axi_llc] AXI LLC Version   :       0x%lx\r\n", axi_llc_reg32_get_version(base));
    printf("[axi_llc] Set Associativity :       %d\r\n", axi_llc_reg32_get_set_asso(base));
    printf("[axi_llc] Num Blocks        :       %d\r\n", axi_llc_reg32_get_num_blocks(base));
    printf("[axi_llc] Num Lines         :       %d\r\n", axi_llc_reg32_get_num_lines(base));
    printf("[axi_llc] BIST Outcome      :       %d\r\n", axi_llc_reg32_get_bist_out(base));

    axi_llc_reg32_all_spm(base);
}

int main(void)
{
    //init_uart(200000000, 115200);
    init_uart(50000000, 115200);

    uart_initialized = 1;
    
    init_llc((void *) &__base_axi_llc);

}


