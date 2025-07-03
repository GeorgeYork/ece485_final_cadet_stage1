        addi    x5, x0, 9      #x1 = number of values in array - 1
        la      x6, array      #a1 = address (or pointer) to top of array
        lw      x7, 0(x6)      #a2 = initial value 
loop:   addi    x6, x6, 4     
        lw      x10, 0(x6)     
        add     x7, x10, x7     
        subi    x5, x5, 1     
        bne     x5, x0, loop
done:   j     done    #breakpoint at end
 
#   initialize data in the array
array:  .word 0x5, 0x4, 0x10, 0x3, 0x12, 0x1, 0x7, 0x4, 0x8, 0x2