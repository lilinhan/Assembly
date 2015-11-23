DATA SEGMENT
    INFOR1 DB "Please input the first data(<10):$"
    INFOR2 DB 0AH,0DH,"Please input the second data(<10):$"
    INFOR3 DB 0AH,0DH,"The result is:$"
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:  MOV AX,DATA
            MOV DS,AX
            ;显示信息infor1
            MOV DX,OFFSET INFOR1
            MOV AH,09H
            INT 21H
            ;接收键盘输入
            MOV AH,01H
            INT 21H
            SUB AL,30H

            MOV BL,AL
            ;显示信息INFOR2
            MOV DX,OFFSET INFOR2
            MOV AH,09H
            INT 21H
            ;接收键盘输入
            MOV AH,01H
            INT 21H
            SUB AL,30H
            
            ;求和并调整指令序列
            XOR AH,AH
            ADD AL,BL
            AAA

            PUSH AX
            ;显示信息INFOR3
            MOV DX,OFFSET INFOR3
            MOV AH,09H
            INT 21H

            POP AX
            PUSH AX
            ;显示十位及个位上数字的指令序列
            MOV DL,AH
            ADD DL,30H
            MOV AH,02H
            INT 21H
            POP AX
            MOV DL,AL
            ADD DL,30H
            MOV AH,02H
            INT 21H

            MOV AH,4CH
            INT 21H
        CODE ENDS
            END START
            
