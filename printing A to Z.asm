.model small
.stack 100h
.data
msg db 'Printing A to Z$' 
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
    
    mov cx,26
    int 21h
    mov dl,'A'
    
    label1:
    int 21h
    inc dl
    loop label1
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
                        