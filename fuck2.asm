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

            mov ax,3
            mov x,ax

            mov ax,1
            mov y,ax

            mov ax,x
            xor ah,ah
            sub ax,y
            aas
            mov z,ax

            mov ax,z
            add ah,30h
            mov dl,ah
            mov ah,2
            int 21h

            mov ax,z
            add al,30h
            mov dl,al
            mov ah,2
            int 21h

            mov ah,4ch
            int 21h
code ends
end start


