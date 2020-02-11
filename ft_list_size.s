section	.text
		global _ft_list_size

	_ft_list_size:
	xor rax, rax		;inicializamos rax
	mov rsi, rdi		;pr no perder el origen de la lista

	loop:
	cmp rdi, 0			;coprobamos que no sea null
	je  finish
	inc rax				;aumentamos contador
	mov rdi, [rdi + 8]	;rdi = rdi.next
	jmp loop			;volvemos a empear con el loop

	finish:
	mov rdi, rsi
	ret