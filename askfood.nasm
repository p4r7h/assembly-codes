section .data
    text db "which on is your favourit food? "
    text2 db " is also my favourit food"
    len equ $-text
    lenghth equ $-text2

section .bss 
    food resb 11

section .text
    global _start
_start:

    call _print1
    call _input
    call _print3
    call _print4

    mov rax,60
    mov rdi,0
    syscall

_print1:
    mov rax,1
    mov rdi,1
    mov rsi,text
    mov rdx,len
    syscall
    ret

_input:
    mov rax,0
    mov rdi,0
    mov rsi,food
    mov rdx,11
    syscall
    ret

_print3:
    mov rax,1
    mov rdi,1
    mov rsi,food
    mov rdx,11
    syscall
    ret

_print4:
    mov rax,1
    mov rdi,1
    mov rsi,text2
    mov rdx,lenghth
    syscall
    ret

end: