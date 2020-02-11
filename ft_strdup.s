section .text
	global _ft_strdup

	_ft_strdup:
	push rdi
	call _ft_strlen
	mov rdi, rax
	call _malloc
	mov rdi, rax
	pop rsi 
	call _ft_strcpy
	ret