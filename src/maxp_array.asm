bits 64
global adjacent_elements_product
section .text

; <--- int adjacent_elements_product(int* inputArray, size_t input_size) --->
adjacent_elements_product:
; Assume arrays bigger than 1
    mov rbx, rsi
    dec rbx
    xor rdx, rdx
    mov r8d, 080000000h
L0:
    dec rsi
    dec rbx
    mov eax, dword [rdi+rsi*4]
    mov ecx, dword [rdi+rbx*4]
    imul ecx ; Assuming edx is zero here (since the function must return an int)
    cmp eax, r8d
    cmovg r8d, eax
    cmp rsi, 1
    jg L0
    mov eax, r8d
    ret
    