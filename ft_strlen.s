section .text
    global _ft_strlen

    _ft_strlen:
    mov rax, -1     ;empezamos rax en -1

    loop:
    inc rax
    cmp byte [rdi + rax], 0                      ; comparamos el valor de la casilla 0 + rax
    je return									; si es igua return
    jmp loop									;llamos a loop para creaar un bucle

    return:
    ret
