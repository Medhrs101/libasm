section .text
global  _ft_strcmp

_ft_strcmp:
        mov rcx, 0
        mov rbx, 0
        mov rdx, 0
        jmp compare

compare:
        cmp BYTE [rdi + rcx], 0
        je exit
        mov bl, BYTE[rdi + rcx]
        mov dl, BYTE[rsi + rcx]
        cmp rbx, rdx
        jne exit
        inc rcx
        jmp compare

exit:
        mov bl, BYTE[rdi + rcx]
        mov dl, BYTE[rsi + rcx]
        sub rbx, rdx
        mov rax, rbx
        ret
