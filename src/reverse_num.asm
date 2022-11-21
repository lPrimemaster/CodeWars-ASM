bits 64
global reverse_num
section .text

; <--- long long reverse_num(long long n) --->
reverse_num:
    ; xor rax, rax        ; RAX <- the result

    ; Check if the number is negative
    test rdi, rdi
    jg L2                   ; if(n < 0) {
    mov rbx, 1
    push rbx
    neg rdi                 ;   n = -n;
    jmp L3                  ; }
L2:
    mov rbx, 0
    push rbx
L3:
    mov rbx, 10             ; const long long d = 10;
    xor rcx, rcx            ; long long res = 0;
L0:                         
    mov rax, rdi            ; do {
    xor rdx, rdx
    idiv rbx                ;   n = n / d;
    push rax                ;   r = n % d;
    mov rax, rcx
    push rdx
    imul rbx
    pop rdx
    add rax, rdx            ;   res = res * d + r;
    mov rcx, rax
    pop rdi
    test rdi, rdi           ; } while(n > 0)
    jg L0
    mov rax, rcx
    pop rbx
    test rbx, rbx           ; if(n < 0) { // A copy of the original n that is (since rdi as changed)
    jle L1
    neg rax                 ;   n = -n; }
L1:
    ret                     ; return n;