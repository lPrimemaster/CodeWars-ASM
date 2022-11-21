bits 64
global middle_char
section .text

; <--- void middle_char(const char* s, char* buf) --->
middle_char:
    xor rcx, rcx
    mov cl, [rdi]
    xor rdx, rdx
    cmp rcx, 0
    je LE           ; if (s[0] == 0) return;
    xor rax, rax
L0:
    cmp [rdi+rax], byte 0
    jz L1
    inc rax         ; int n = strlen(s); (But less safe... I guess ?)
    jmp L0
L1:
    test rax, 1
    jnz L3
    shr rax, 1
    inc rdx

    dec rax
    mov cl, byte [rdi+rax]
    mov [rsi], cl
    inc rax
    jmp L2
L3:     ; Not the most elegant solution
    shr rax, 1
L2:
    mov cl, byte [rdi+rax]
    mov [rsi+rdx], cl
    inc rdx
LE:
    mov [rsi+rdx], byte 0
    ret
    