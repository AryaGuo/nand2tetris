
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

// function Sys.init 0

// label 
(Sys.init)

// push constant 4000
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

// call Sys.main 0
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
@Sys.main
0;JMP

// label ret.1
(Sys.init$ret.1)

// pop temp 1
@5
D=A
@1
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

// label LOOP
(Sys.init$LOOP)

// goto LOOP
@Sys.init$LOOP
0;JMP

// function Sys.main 5

// label 
(Sys.main)
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
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

// push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@LCL
D=M
@1
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

// push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@LCL
D=M
@2
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

// push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@LCL
D=M
@3
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

// push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.add12 1
@Sys.main$ret.1
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
@Sys.add12
0;JMP

// label ret.1
(Sys.main$ret.1)

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

// push local 2
@LCL
D=M
@2
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

// push local 3
@LCL
D=M
@3
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

// push local 4
@LCL
D=M
@4
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

// function Sys.add12 0

// label 
(Sys.add12)

// push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
@SP
A=M
D=M
@THIS
M=D

// push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D

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

// push constant 12
@12
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
