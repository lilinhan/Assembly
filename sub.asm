data segment
    x db 35h
    y db 15h
data ends

stack segment
stack ends

code segment
assume cs:code,ds:data,ss:stack
    start:
        mov ax,data
        mov ds,ax
        
        mov al,x
        sub al,y
        aas

        push ax
        mov ah,30h
        mov dl,ah
        mov ah,2
        int 21h

        pop ax
        add al,30h
        mov dl,al
        mov ah,2
        int 21h

        mov ah,4ch
        int 21h
code ends
    end start
