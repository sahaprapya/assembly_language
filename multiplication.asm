.model small
.stack 100h
.data   
a dw ?
b dw ?
c db 'Enter first digit:$'
d db 10,13,'Enter second digit:$'
e db 10,13,'Result:$' 
.code
main proc  
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov ah,0
    mov a,ax
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov ah,0
    mov b,ax 
    
    mov ah,9
    lea dx,e
    int 21h
    
    mov ax,a
    mul b 
    aam 
    
    
    mov bx,ax 
    mov ah,2
    add bh,48
    mov dl,bh
    int 21h
    add bl,48
    mov dl,bl 
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main 