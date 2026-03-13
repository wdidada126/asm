;; Definition of the `data` section
section .data
        ;; String variable with the value `hello world!`. 
        ;; `10` is the ASCII code for the line feed character (LF), i.e., '\n'.
        msg db "hello, world!", 10

;; Definition of the text section
section .text
        ;; Reference to the entry point of our program
        global _main

;; Entry point
_main:
        ;; Specify the number of the system call (0x2000004 is `sys_write` on macOS).
        mov rax, 0x2000004
        ;; Set the first argument of `sys_write` to 1 (`stdout`).
        mov rdi, 1
        ;; Set the second argument of `sys_write` to the reference of the `msg` variable.
        mov rsi, msg
        ;; Set the third argument of `sys_write` to the length of the `msg` variable's value (14 bytes).
        mov rdx, 14
        ;; Call the `sys_write` system call.
        syscall

        ;; Specify the number of the system call (0x2000001 is `sys_exit` on macOS).
        mov rax, 0x2000001
        ;; Set the first argument of `sys_exit` to 0. The 0 status code is success.
        mov rdi, 0
        ;; Call the `sys_exit` system call.
        syscall