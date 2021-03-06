.section .text

// Draw the coinNmuber on the screen
.global   drawCoinNumberOnTheScreen
drawCoinNumberOnTheScreen:
push    {r0, r4-r8, lr}
ldr     r6, =coinNumber
ldr     r0, [r6, #4]    // get the second bit of the coinNumber
cmp     r0, #0
bne     number1
ldr     r6, =numberZero
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number1:    // draw the first digit of the coinNumber
cmp     r0, #1
bne     number2
ldr     r6, =numberOne
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number2:
cmp     r0, #2
bne     number3
ldr     r6, =numberTwo
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number3:
cmp     r0, #3
bne     number4
ldr     r6, =numberThree
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number4:
cmp     r0, #4
bne     number5
ldr     r6, =numberFour
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number5:
cmp     r0, #5
bne     number6
ldr     r6, =numberFive
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number6:
cmp     r0, #6
bne     number7
ldr     r6, =numberSix
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number7:
cmp     r0, #7
bne     number8
ldr     r6, =numberSeven
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number8:
cmp     r0, #8
bne     number9
ldr     r6, =numberEight
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       nextBit
number9:
ldr     r6, =numberNine
ldr     r4, =416
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture


nextBit:
ldr     r6, =coinNumber
ldr     r0, [r6]    // get the first bit of coinNumber
cmp     r0, #0
bne     number11
ldr     r6, =numberZero
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number11:   // draw the second digit of the coinNumber
cmp     r0, #1
bne     number22
ldr     r6, =numberOne
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number22:
cmp     r0, #2
bne     number33
ldr     r6, =numberTwo
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number33:
cmp     r0, #3
bne     number44
ldr     r6, =numberThree
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number44:
cmp     r0, #4
bne     number55
ldr     r6, =numberFour
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number55:
cmp     r0, #5
bne     number66
ldr     r6, =numberFive
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number66:
cmp     r0, #6
bne     number77
ldr     r6, =numberSix
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number77:
cmp     r0, #7
bne     number88
ldr     r6, =numberSeven
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number88:
cmp     r0, #8
bne     number99
ldr     r6, =numberEight
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture
b       exit
number99:
ldr     r6, =numberNine
ldr     r4, =384
ldr     r5, =64
ldr     r7, =32
ldr     r8, =32
bl      drawPicture



exit:
pop     {r0, r4-r8, lr}
bx      lr
