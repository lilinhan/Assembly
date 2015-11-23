data segment
    x db 95
    y db 87
    z db ?
data ends
code segment
    main proc far
    assume cs:code,ds:data
        start:
            push ds
            mov ax,0
            push ax
            mov ax,data
            mov ds,ax
            mov al,x
            add al,y
            mov ah,0
            adc ah,0
            mov bl,2
            div bl
            mov z,al
            ret
    main endp
code ends
    end start
