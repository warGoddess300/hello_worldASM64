;warGoddess300, first assembly code
BITS 64 ; means the assembly code will be assembled for 64bits CPU
default rel

; semicolons are comments in assembly code
; in assemnly code there are different sections

section .data ;where i can store variables

;msg is a label called msg
msg: db "Hello World", 0x0A ; message and 0x0A means newline like \n in C and C++

section .text ; the section where the code goes

global _start  

_start: ; the start symbol like the main() function in C and C++, it will be the first routine that gets called by the operating system

mov rax, 1 ;system write linux function
mov rdi, 1; file descriptor 1 = stdout
lea rsi, [rel msg] ; pointer to message
mov rdx, 12 ;12 bytes to write to sdout
syscall

mov rax, 60 ;a syscall to exit, 60 number is exit
xor rdi, rdi  ; return the status 0, i can do mov rdi 0, xor rdi is faster
syscall

;this is a "hello world" program
