// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(JUDGE)
	@KBD
	D=M
	@WHITE
	D;JEQ

(BLACK)
	@SCREEN
	D=A
	@i
	M=D
	@8192
	D=D+A
	@bound
	M=D

(LOOPB)
//if i >= bound goto end
	@i
	D=M
	@bound
	D=D-M
	@ENDB
	D;JGE

	@i
	A=M
	M=-1
	@i
	M=M+1

	@LOOPB
	0;JMP
(ENDB)
	@JUDGE
	0;JMP

(WHITE)
	@SCREEN
	D=A
	@i
	M=D
	@8192
	D=D+A
	@bound
	M=D

(LOOPW)
//if i >= bound goto end
	@i
	D=M
	@bound
	D=D-M
	@ENDW
	D;JGE

	@i
	A=M
	M=0
	@i
	M=M+1

	@LOOPW
	0;JMP
(ENDW)
	@JUDGE
	0;JMP