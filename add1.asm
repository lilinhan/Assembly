data segment
    x db 9
    y db 9
data ends

code segment
    assume cs:code,ds:data
    start:
        mov ax,data
        mov ds,ax

        mov al,x
        xor ah,ah
        add al,y
        aaa
        
        push ax
        add ah,30h
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
