extern _ft_strlen
extern _malloc
extern _ft_strcpy

section .text
	global _ft_strdup

	_ft_strdup:
	cmp rdi, 0						;compruebo que rdi no este vacio
	je fail
	push rdi						;guardo el contenido de rdi en la pila
	call _ft_strlen
	mov rdi, rax					;guardo en rdi el tamaño del string 
	inc rdi							;y le vamos a sumaar 1 pra el nulo del final
	call _malloc
	cmp rax, 0						;comprobamos que no haya fallado malloc
	je fail
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	ret

	fail:
	mov rax, 0
	ret