.model small
.stack 100h 
.data
a db 'Enter the data: $'
b db 10,13,'The left triangle is: $' 
.code
 
main proc 
    mov ax,@data
    mov ds,ax 
    
    ;display a
    mov ah,9
    lea dx,a
    int 21h
     
    ;input 
    mov ah,1
    int 21h
    mov cl,al
    
    ;display b
    mov ah,9
    lea dx,b
    int 21h 
 
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
 
    ;loop1 start
    mov ch,48
    l1:      
    inc ch   
 
        mov dh,48     
        l2:
        inc dh
 
        mov ah,2
        mov dl,42
        int 21h
 
        cmp dh,ch
        jl l2
 
 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
 
    cmp ch,cl
    jl l1
    ;loop1 end
 
 
 
    exit:
    mov ah,4ch
    int 21h
    main endp
end main 