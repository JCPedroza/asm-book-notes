    .global main  // Instructs assembler to make 'main' visible to the linker

main:
    stp x21, x30, [sp, -16]  // Push into stack
    mov x21, x1              // argc -> x0, argv -> x1

top:
    ldr x0, [x21], 8  // argv++, old value in x0
    cbz x0, bottom    // if * argv == NULL goto bottom
    b1 puts           // puts(*argv)
    b top             // goto top

bottom:
    ldp x21, x30, [sp], 16  // pop from stack
    mov x0, xzr             // return 0
    ret

    .end