global _start
section .text
_start
    ;print on screen
    mov rax, 1
    mov rdi, 1
    mov rsi, hello_world
    mov rdi, length
    syscall
                
    ;exit gratefully

    mov rax, 60
    mov rdi, 0
    syscall

section .data

    hello_world: db 'hello world, parth is here',0xa
    length: equ $-hello_world                        
end: