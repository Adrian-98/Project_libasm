extern strlen

section .text
    global _ft_strcmp

    _ft_strcmp:
    call _ft_srtlen

    mov rcx, rax
    mov rax, 0

    bucle:
    dec rcx
    mov dl, BYTE[rdi + rax]
    mov al, BYTE[rsi + rax]
    
    cmp dl, al
    ja more
    jb less
    inc rax

    LOOP bucle


    return:
    cmp dl, al
    je equal
    jmp less

    return1:
    cmp dl, al
    je equal
    jmp more

    equal:
    mov rax, 0
    ret

    less:
    mov rax, -1
    ret

    more:
    mov rax, 1
    ret