data segment
    num db 09h
    num1 db 08h
    default db ?
    carry db ?
data ends
code segment
    assume cs:code,ds:data
        start:
            mov ax,data
            mov ds,ax

            mov al,num
            add al,num1
            aaa

            jc ss2
            jmp ss3
            jnc ss1
            jmp ss3

            ss1:mov carry,30h
            ss2:mov carry,31h
            ss3:mov default,al
                add default,30h

            mov dl,carry
            mov ah,2
            int 21h

            mov dl,default
            mov ah,2
            int 21h

            mov ah,4ch
            int 21h
code ends
end start

