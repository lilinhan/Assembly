data segment
    x db 42
    y db 7
data ends

code segment
    assume cs:code,ds:data
    start:
        mov ax,data
        mov ds,ax
        
        mov ah,0
        mov al,x
        mov bl,y
        aad
        div bl

        push ax
        add al,30h
        mov dl,al
        mov ah,2
        int 21h

        mov ah,4ch
        int 21h
code ends
end start
