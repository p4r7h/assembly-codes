section .data                          
	parth db "Hello World, parth is here ",0xa	
	l equ $-parth			
section .text			
	global _start			
_start:					
	mov rax,1			
	mov rdi,1		
	mov rsi,parth			
	mov rdx,l			
	syscall				

	mov rax,60			
	mov rdi,0			
	syscall			
end:		