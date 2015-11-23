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

        mov ax,1
        mov x,1

        mov ax,3
        mov y,ax

        mov al,x
        mov ah,y
        add al,ah
        mov z,al

        mov ax,z
        push ax
        add al,30h
        mov dl,al
        mov ah,2
        int 21h

        mov ah,4ch
        int 21h
code ends
end start

