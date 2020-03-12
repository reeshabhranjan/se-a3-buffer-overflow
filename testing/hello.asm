        global _start

        section .text
_start: mov     rax, 1          ; syscall number for write-syscall
        mov     rdi, 1          ; first argument for write-syscall: stdout
        mov     rsi, hw_str     ; second argument for write-syscall: address of string
        mov     rdx, 13         ; third argument for write-syscall: number of bytes to write
        syscall                 ; the write-syscall
        mov     rax, 60         ; syscall number for exit
        xor     rdi, rdi          ; first argument for exit: exit-code
        syscall                 ; the exit-syscall

        section .data
hw_str: db      "Hello World!", 10