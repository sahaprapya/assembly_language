.model small
.stack 100h
.data
msg db 'Printing 0 to 9$' 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,10
    int 21h
    mov dl,48
    
    label1:
    int 21h
    inc dl
    mov bl,dl
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13 
    int 21h
    mov dl,bl
    loop label1
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
                        