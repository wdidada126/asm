section .data
    buffer: db "1.5 2.5", 0
    endptr: dq 0
    
section .text
    global _start
    extern strtod
    
_start:
    and rsp, -16
    
    mov rdi, buffer
    mov rsi, endptr
    call strtod
    
    mov rax, [endptr]
    mov [rsp-8], rax
    mov rdi, 1
    mov rsi, rsp
    sub rsi, 8
    mov rdx, 8
    mov rax, 1
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall
