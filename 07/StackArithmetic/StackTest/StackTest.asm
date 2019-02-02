
// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE1
D;JEQ
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END1
0;JEQ
(TRUE1)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END1)

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE2
D;JEQ
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END2
0;JEQ
(TRUE2)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END2)

// push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE3
D;JEQ
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END3
0;JEQ
(TRUE3)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END3)

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE4
D;JLT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END4
0;JEQ
(TRUE4)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END4)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 892
@892
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE5
D;JLT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END5
0;JEQ
(TRUE5)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END5)

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE6
D;JLT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END6
0;JEQ
(TRUE6)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END6)

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE7
D;JGT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END7
0;JEQ
(TRUE7)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END7)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE8
D;JGT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END8
0;JEQ
(TRUE8)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END8)

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@TRUE9
D;JGT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@END9
0;JEQ
(TRUE9)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(END9)

// push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M+D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M-D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1

// neg
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R13
M=-M
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1

// and
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M&D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R14
D=M
@R13
M=M|D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R13
M=!M
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1
