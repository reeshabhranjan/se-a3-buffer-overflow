        global _start

        section .text
_start: mov     rax, 1          ; syscall number for write-syscall
        mov     rdi, 1          ; first argument for write-syscall: stdout
        jmp _trick
_continue:
        pop     rsi             ; Address of the string is now in rsi register
        mov     rdx, 13         ; third argument for write-syscall: number of bytes to write
        syscall                 ; the write-syscall
        mov     rax, 60         ; syscall number for exit
        xor     rdi, rdi        ; first argument for exit: exit-code
        syscall                 ; the exit-syscall

_trick:
        call _continue
        db      "Hello World!!", 10