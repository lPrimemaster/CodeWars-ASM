bits 64
global sqrdigs

section .text

; <-- RAX sqrdigs(EDI n) -->
sqrdigs:
    xor rcx, rcx
L0:
    mov ebx, 10
    xor rax, rax
    xor rdx, rdx
    mov eax, edi
    idiv ebx
    mov edi, eax
    mov rbx, rdx
L1:
    mov rax, rdx
    shl rdx, 3
    add rdx, rax
    add rdx, rax
    cmp rbx, 3
    mov rbx, 0
    jg L1
    add rcx, rdx
    cmp edi, 0
    jg L0
    mov rax, rcx
    ret
; -----> endof sqrdigs <-----