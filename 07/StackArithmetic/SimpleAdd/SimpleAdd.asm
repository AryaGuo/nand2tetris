
// push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8
@8
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