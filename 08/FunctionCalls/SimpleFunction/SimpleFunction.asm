
// function SimpleFunction.test 2

// label SimpleFunction.test
(SimpleFunction$SimpleFunction.test)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@LCL
D=M
@0
D=D-A
@R15
M=D
@R15
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 1
@LCL
D=M
@1
D=D+A
@R15
M=D
@R15
A=M
D=M
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

// push argument 0
@ARG
D=M
@0
D=D-A
@R15
M=D
@R15
A=M
D=M
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

// push argument 1
@ARG
D=M
@1
D=D+A
@R15
M=D
@R15
A=M
D=M
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

// return
@LCL
D=M
@5
D=D-A
@R13
M=D
@R13
A=M
D=M
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R14
M=D
@R14
D=M
@ARG
A=M
M=D
@ARG
D=M
@1
D=D+A
@SP
M=D
@R13
D=M
@1
D=D+A
@R13
M=D
@R13
A=M
D=M
@LCL
M=D
@R13
D=M
@1
D=D+A
@R13
M=D
@R13
A=M
D=M
@ARG
M=D
@R13
D=M
@1
D=D+A
@R13
M=D
@R13
A=M
D=M
@THIS
M=D
@R13
D=M
@1
D=D+A
@R13
M=D
@R13
A=M
D=M
@THAT
M=D

// goto R15
@SimpleFunction$R15
0;JMP
