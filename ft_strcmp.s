section .text
    
    global _ft_strcmp 		; void *strcmp(char const *s1, char const *s2)

 _ft_strcmp:
	xor rcx, rcx
	mov rax, 0

 loop:
	mov al, BYTE[rdi + rcx]
	mov r8b, BYTE[rsi + rcx]
	cmp al, 0
	je end
	cmp r8b, 0
	je end
	cmp al, r8b
	jne end
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

