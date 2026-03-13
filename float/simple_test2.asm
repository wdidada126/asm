section .data
    MAX_ELEMS equ 100
    BUFFER_SIZE equ 1024
    
    msg db "test", 10
    vector_1: times MAX_ELEMS dq 0
    buffer_1: times BUFFER_SIZE db 0
    end_buffer_1: dq 0
    
section .text
    global _start
    extern strtod
    
_start:
    and rsp, -16
    mov rdi, buffer_1
    mov rsi, end_buffer_1
    call strtod
    
    mov rax, 60
    mov rdi, 0
    syscall
