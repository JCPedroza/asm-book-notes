    .global main  // Instructs assembler to make 'main' visible to the linker

main:
    /* Copy (push) registers x21 and x30 into stack. The x30 register contains
     * address of instruction, it gets overwitten every time a function call
     * is made, so we need to remember it as a breadcrumb. This is manual
     * management of the function call stack. The x21 register's value must be
     * preserved and restored to its previous value upon leaving the function
     * (by convention), so we need to remember it too.
     *
     * Registers that start with x are "x registers". [] means dereference,
     * like * in C. Sp is the stack pointer, a register which keeps track of
     * where your stack currently is. The -16 subtracts 16 from the current
     * value of the stack register (x registers are each 8 bytes wide, this
     * accounts for the value 16 = 2 * 8). The ! means that the stack pointer
     * should be changed (the -16 applied to it) before the value of the stack
     * pointer is used as the address in memory to which the registers will be
     * copied (a predecrement).
     *
     * THE STACK POINTER IN ARM V8 CAN ONLY BE MANIPULATED IN MULTIPLES OF 16.
     *
     * High level form
     * *(--sp) = x21;
     * *(--sp) = x30;
     *
     * Subtract from the stack pointer and copy x21 to that location. Then
     * subtract from the stack pointer again and copy x30 to that location.
     *
     * STP: store pair
     */
    stp x21, x30, [sp, -16]!


    /* Copy value in x21 into x1.
     *
     * Registers x0 through x7 are scratch registers. They can be overwritten
     * with new values at any time. They are often used to store function
     * arguments.
     *
     * x0 is like argc, and x1 is like argv.
     */
    mov x21, x1

top:
    ldr x0, [x21], 8  // argv++, old value in x0
    cbz x0, bottom    // if * argv == NULL goto bottom
    bl puts           // puts(*argv)
    b top             // goto top

bottom:
    ldp x21, x30, [sp], 16  // pop from stack
    mov x0, xzr             // return 0
    ret

    .end
