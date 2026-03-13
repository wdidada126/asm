section .data
    msg db "Testing strtod", 10, 0
    buffer: db "1.5 2.5", 0
    endptr: dq 0
    
section .text
    global _start
    extern strtod, printf
    
_start:
    and rsp, -16
    
    mov rdi, buffer
    mov rsi, endptr
    call strtod
    
    ;; Print endptr value using printf
    mov rdi, msg
    call printf
    
    mov rax, 60
    mov rdi, 0
    syscall
