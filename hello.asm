        global _start
        section .text
_start: xor     rax, rax
        mov     al, 0x01                ; syscall number for write-syscall
        xor     rdi, rdi
        mov     dil, 0x01               ; first argument for write-syscall: stdout
        jmp _trick
_continue:
        pop     rsi                     ; Address of the string is now in rsi register
        xor     rdx, rdx
        mov     dl, 0x0d                ; third argument for write-syscall: number of bytes to write; change to 14
        syscall                         ; the write-syscall
        xor     rax, rax
        mov     al, 0x3c                ; syscall number for exit
        xor     rdi, rdi                ; first argument for exit: exit-code
        syscall                         ; the exit-syscall
_trick:
        call _continue
        db      "Hello world!", 0x20