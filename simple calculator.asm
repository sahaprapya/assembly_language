.model small
.stack 100h
.data
msg1 db 'Enter 1 for Addition: $'
msg2 db 10,13,'Enter 2 for Subtraction: $'
msg3 db 10,13,'Enter 3 for Multiplication: $'
msg4 db 10,13,'Enter 4 for Division: $' 
msg5 db 10,13,'Choose Operation: $'
msg6 db 10,13,'Enter First Number: $'
msg7 db 10,13,'Enter Second Number: $'
msg8 db 10,13,'The Result is: $'

num1 db ?
num2 db ? 
result db ? 

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1  ;print msg1
    mov ah,9
    int 21h
    
    lea dx,msg2  ;print msg2
    mov ah,9
    int 21h
    
    lea dx,msg3  ;print msg3
    mov ah,9
    int 21h
    
    lea dx,msg4  ;print msg4
    mov ah,9
    int 21h 
    
    lea dx,msg5  ;print msg5
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub bh,48
    
    cmp bh,1
    je additon
    
    cmp bh,2
    je subtraction
    
    cmp bh,3
    je multiplication
    
    cmp bh,4
    je division
    
    additon:
    lea dx,msg6   ;print msg6
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg7   ;print msg7
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    add al,bl
    mov ah,0
    aaa
    
    mov bx,ax
    add bh,48
    add bl,48
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit_p
    
    subtraction: 
    lea dx,msg6   ;print msg6
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg7   ;print msg7
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al 
    
    sub bl,cl
    add bl,48
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    jmp EXIT_P
    
    multiplication:
    lea dx,msg6   ;print msg6
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48
    mov num1,al
    
    lea dx,msg7    ;print msg7
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov num2,al
    
    mul num1
    mov result,al
    aam
    
    add ah,48
    add al,48
    
    mov bx,ax
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit_p
    
    division:
    lea dx,msg6   ;print msg6
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48
    mov num1,al
    
    lea dx,msg7   ;print msg7
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov num2,al
    
    mov cl,num1
    mov ch,00
    mov ax,cx
    
    div num2
    mov result,al
    mov ah,00
    aad
    
    add ah,48
    add al,48
    
    mov bx,ax
    
    lea dx,msg8
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit_p
     
    exit_p: 
    mov ah,4ch
    int 21h 
    main endp
end main