section .text
    global _ft_strcpy

    _ft_strcpy:
    mov rax,0
	mov rbx, rdi

    loop:
    cmp byte [rsi + rax], 0                         ;proteccion src
    je nullsrc
	mov rdi, [rsi + rax]
	inc rdi
	inc rax
	jmp loop

    nullsrc;
    mov rax, rbx
    ret
