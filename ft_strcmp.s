section .text
    
    global _ft_strcmp 		; void *strcmp(char const *s1, char const *s2)

 _ft_strcmp:
	xor rcx, rcx			;damos el valor 0 aa rcx
	mov rax, 0				;damos el vaalor 0 a rax

 loop:
	mov al, BYTE[rdi + rcx]			;guardamos el caracter de rdi
	mov r8b, BYTE[rsi + rcx]		;guardamos el caracter de rsi
	cmp al, 0
	je end
	cmp r8b, 0
	je end
	cmp al, r8b
	jne end							; si no es igual llamamos end
	inc rcx
	jmp loop

 end:
	cmp al, r8b
	ja more
	jb less
	ret

 more:
	mov rax, 1
	ret

 less:
	mov rax, -1
	ret

