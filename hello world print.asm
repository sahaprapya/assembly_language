.model small
.stack 100h  
.data
msg db 'Hello World$'    ;define byte=db
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    