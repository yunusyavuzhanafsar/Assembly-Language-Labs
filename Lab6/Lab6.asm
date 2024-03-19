org 100h 

lea si, alphabet
mov di, 2000h
mov cx, 26
rep 
movsb 

lea si, terminate 
mov di, 3000h
mov cx, 9
rep
movsb

main:

mov di, 0 
mov cx, 0
mov dx, OFFSET message
mov ah, 9
int 21h

get_word:
mov ah, 00
int 16h 
cmp al, 0DH
je start_terminate
mov ah, 0EH
int 10H  
mov my_arr[di], al  
inc di 
inc cx 
jmp get_word
                              
start_terminate:
mov di, 0
mov si, 3000h 
mov dx, cx
mov cx, 9

terminated:
mov bh, my_arr[di]
mov bl, [si]
cmp bl, bh
jne print
inc si 
inc di

loop terminated
jmp end

print: 
mov cx, dx
MOV DI, 2000h
mov DX, OFFSET greater
mov AH, 9
int 21H 
mov bp, 0
    
control1:
mov ah, 0         
mov al, my_arr[bp]
cmp ax, 41h
dec dx
ja control2
dec cx
inc bp
cmp al, 0
je continue
jmp control1 
        
control2:
cmp ax, 5Bh
jb control3
dec cx 
dec dx
inc bp 
jmp control1
        
control3:
cmp al, [di]
je true
inc di
dec cx 
dec dx
inc bp
jne control1
            
true:
inc di
mov AL, my_arr[bp]
mov AH, 0EH
int 10H
                     
mov AL, ','
mov AH, 0EH
int 10H
inc bp

jmp control1

continue:
mov DX, OFFSET greater
mov AH, 9
int 21H 

inc cx
add cx, '0'
mov al, cl
mov AH, 0EH
int 10H
    
mov al, 0ah
mov ah, 0eh
int 10h
    
mov al, 13          
mov ah, 0eh
int 10h
    
mov bx, 0
mov cx, 26
clear_loop:
    
mov my_arr[bx], 0
inc bx 
Loop clear_loop
    
call main

end:
ret

my_arr db 26 DUP(0) 
message db "ENTER INPUT:$"
greater DB " > $"
alphabet db "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
terminate db "TERMINATE"