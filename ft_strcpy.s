section .text
    global _ft_strcpy

	_ft_strcpy:
	mov rax,0
	mov rbx, rdi

	loop:
	mov dl, BYTE[rsi + rax]			;guardamos en dl el caracter de rsi
    cmp dl, 0                         ;si fuera nulo 
    je nullsrc							; llamamos nullsrc
    mov BYTE[rdi + rax], dl				;guardamos en rdi el caracter de rsi
	inc rax
	jmp loop

	nullsrc:
	mov BYTE[rdi + rax], 0
    mov rax, rbx
    ret
