
// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

//int i=0;
@i
M=0
//LOOP
(LOOP)
//if(i-R1>=0) goto END
@R1
D=M
@i
D=M-D
@END
D;JGE
//R2=R2+R0
@R0
D=M
@R2
M=D+M
//i++;
@i
M=M+1
//goto LOOP
@LOOP
0;JMP
//END
(END)
//goto END
@END
0;JMP
