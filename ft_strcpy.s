section .text
global _ft_strcpy

_ft_strcpy:
        mov rax, 0
        mov rbx, 0
        jmp compare
     
compare:
        cmp BYTE[rsi + rax], 0
        je exit
        mov bl, BYTE[rsi + rax]
        mov BYTE[rdi + rax], bl
        inc rax
        jmp compare

exit:
        mov BYTE[rdi + rax], 0
        mov rax, rdi
        ret
