/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(sched_yield)
    mov     ip, r7
    ldr     r7, =__NR_sched_yield
    swi     #0
    mov     r7, ip
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno
END(sched_yield)
