;----------------------
;creat by - parth
;----------------------


section .data
    who: db "what's your name?",0xa
    l: equ $-who

section .text
    global _start
_start:
    mov rax,1
    mov rdi,1
    mov rsi,who
    mov rdx,l
    syscall

    mov rax,60
    mov rdi,0
    syscall
end:





