section .data
    buffer: db "1.5 2.5", 0
    endptr: dq 0
    
section .text
    global _start
    extern strtod
    
_start:
    and rsp, -16
    
    ;; First call
    mov rdi, buffer
    mov rsi, endptr
    call strtod
    
    ;; Second call
    mov rdi, endptr
    mov rsi, endptr
    call strtod
    
    mov rax, 60
    mov rdi, 0
    syscall
