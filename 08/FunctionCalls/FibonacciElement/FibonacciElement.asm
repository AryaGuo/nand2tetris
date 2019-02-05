
// init
@256
D=A
@SP
M=D

// call Sys.init 0
@$ret.1
D=A
@R13
M=D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R13
M=D
@R13
D=M
@0
D=D-A
@R14
M=D
@R14
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D

// goto 
@Sys.init
0;JMP

// label ret.1
($ret.1)

// function Main.fibonacci 0

// label 
(Main.fibonacci)

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

// push constant 2
@2
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
@Main.TRUE1
D;JLT
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@Main.END1
0;JMP
(Main.TRUE1)
@1
D=-A
@SP
A=M
M=D
@SP
M=M+1
(Main.END1)

// if-goto IF_TRUE
@SP
M=M-1
@SP
A=M
D=M
@R13
M=D
@R13
D=M
@Main.fibonacci$IF_TRUE
D;JNE

// goto IF_FALSE
@Main.fibonacci$IF_FALSE
0;JMP

// label IF_TRUE
(Main.fibonacci$IF_TRUE)

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
@R15
A=M
0;JMP

// label IF_FALSE
(Main.fibonacci$IF_FALSE)

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

// push constant 2
@2
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

// call Main.fibonacci 1
@Main.fibonacci$ret.1
D=A
@R13
M=D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R13
M=D
@R13
D=M
@1
D=D-A
@R14
M=D
@R14
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D

// goto 
@Main.fibonacci
0;JMP

// label ret.1
(Main.fibonacci$ret.1)

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

// push constant 1
@1
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

// call Main.fibonacci 1
@Main.fibonacci$ret.2
D=A
@R13
M=D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R13
M=D
@R13
D=M
@1
D=D-A
@R14
M=D
@R14
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D

// goto 
@Main.fibonacci
0;JMP

// label ret.2
(Main.fibonacci$ret.2)

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
@R15
A=M
0;JMP

// function Sys.init 0

// label 
(Sys.init)

// push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Main.fibonacci 1
@Sys.init$ret.1
D=A
@R13
M=D
@R13
D=M
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@R13
M=D
@R13
D=M
@1
D=D-A
@R14
M=D
@R14
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D

// goto 
@Main.fibonacci
0;JMP

// label ret.1
(Sys.init$ret.1)

// label WHILE
(Sys.init$WHILE)

// goto WHILE
@Sys.init$WHILE
0;JMP
