section .text
    global _ft_strcpy

    _ft_strcpy:
    mov rax,0
	mov rbx, rdi

    loop:
	mov dl, BYTE[rsi + rax]
    cmp dl, 0                         ;proteccion src
    je nullsrc
    mov BYTE[rdi + rax], dl
	inc rax
	jmp loop

    nullsrc:
    mov rax, rsi
    ret
