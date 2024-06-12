.globl factorial

.data
n: .word 7

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    add t1, a0, x0
    bne t1, x0, loop
    
loop:
    addi t2, x0, 1
    beq t1, t2, exit
    addi t3, t1, -1
    mul a0, a0, t3
    addi t1, t1, -1
    j loop
    
exit:
    jr ra