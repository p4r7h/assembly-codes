section .text

        global _start:

_start:

        push 'bin/'
        push 'sh'
        mov rax,59
        mov rdi,rsp
        mov rsi,0                ;mov rdx,0
        syscall

        mov rax,60
        mov rdi,0
        syscall
end: