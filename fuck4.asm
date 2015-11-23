data segment
    x db ?
    y db ?
    z db ?
data ends
code segment
    assume cs:code,ds:data
        start:
            mov ax,data
            mov ds,ax

            mov ax,8
            mov x,ax

            mov ax,2
            mov y,ax

            mov ah,0
            mov al,x
            mov bl,y
            aad
            div bl

            mov z,ax
            add al,30h
            mov dl,al
            mov ah,2
            int 21h

            mov ah,4ch
            int 21h
code ends
    end start

