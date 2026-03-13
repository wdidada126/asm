section .data
    BUFFER_SIZE equ 1024
    
    prompt1 db "Input: ", 0
    buffer: times BUFFER_SIZE db 0
    end_buffer: dq 0
    
section .text
    global _start
    extern strtod, printf
    
_start:
    and rsp, -16
    
    mov rdi, buffer
    mov si, "1"
    mov [rdi], si
    inc rdi
    mov si, " "
    mov [rdi], si
    inc rdi
    mov si, "2"
    mov [rdi], si
    inc rdi
    mov si, 0
    mov [rdi], si
    
    xor r14, r14
    
_parse_loop:
    lea rsi, [rel end_buffer]
    mov rdi, buffer
    add rdi, r14
    call strtod
    
    mov rax, [rel end_buffer]
    
    cmp rax, rdi
    je _done
    
    inc r14
    jmp _parse_loop
    
_done:
    mov rax, 60
    xor rdi, rdi
    syscall
