
// init
@256
D=A
@SP
M=D

// call Sys.init 0
@bootstrap$ret.1
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
(bootstrap$ret.1)

// function Class1.set 0

// label 
(Class1.set)

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

// pop static 0
@SP
M=M-1
@SP
A=M
D=M
@Class1.0
M=D

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

// pop static 1
@SP
M=M-1
@SP
A=M
D=M
@Class1.1
M=D

// push constant 0
@0
D=A
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

// function Class1.get 0

// label 
(Class1.get)

// push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class1.1
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
@R15
A=M
0;JMP

// function Sys.init 0

// label 
(Sys.init)

// push constant 6
@6
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

// call Class1.set 2
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
@2
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
@Class1.set
0;JMP

// label ret.1
(Sys.init$ret.1)

// pop temp 0
@5
D=A
@0
D=D+A
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D

// push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class2.set 2
@Sys.init$ret.2
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
@2
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
@Class2.set
0;JMP

// label ret.2
(Sys.init$ret.2)

// pop temp 0
@5
D=A
@0
D=D+A
@R15
M=D
@SP
M=M-1
@SP
A=M
D=M
@R15
A=M
M=D

// call Class1.get 0
@Sys.init$ret.3
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
@Class1.get
0;JMP

// label ret.3
(Sys.init$ret.3)

// call Class2.get 0
@Sys.init$ret.4
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
@Class2.get
0;JMP

// label ret.4
(Sys.init$ret.4)

// label WHILE
(Sys.init$WHILE)

// goto WHILE
@Sys.init$WHILE
0;JMP

// function Class2.set 0

// label 
(Class2.set)

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

// pop static 0
@SP
M=M-1
@SP
A=M
D=M
@Class2.0
M=D

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

// pop static 1
@SP
M=M-1
@SP
A=M
D=M
@Class2.1
M=D

// push constant 0
@0
D=A
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

// function Class2.get 0

// label 
(Class2.get)

// push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1
@Class2.1
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
@R15
A=M
0;JMP
