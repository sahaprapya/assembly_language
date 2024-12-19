.model small
.stack 100h
.data
a db 'Enter first number:$'  
b db 'Enter second number:$' 
c db 'Enter third number:$' 
res db 'Largest number is:$'  
.code
main proc
    mov ax,@data
    mov ds,ax 
     
    ;display a
    
    mov ah,9
    lea dx,a
    int 21h 
     
    ;take input a
    
    mov ah,1
    int 21h 
    mov bh,al
    
    ;new line 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;display b 
    
    mov ah,9
    lea dx,b
    int 21h 
    
    ;take input b
    
    mov ah,1
    int 21h 
    mov bl,al
    
    ;new line
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ;display c
    
    mov ah,9
    lea dx,c
    int 21h 
     
    ;take input c
    
    mov ah,1
    int 21h 
    mov cl,al
    
    ;new line 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;display res
     
    mov ah,9
    lea dx,res
    int 21h 
    
    ;compare a , b , c
    
    cmp bl,bh
    jge a1
    
    b1:
    cmp bh,cl
    jge c1
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    c1:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    a1:
    cmp bl,cl
    jge d
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    d:
    mov ah,2
    mov dl,bl
    int 21h
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
                        