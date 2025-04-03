section .data @ global variables
    msg db "hello world!!", 0xa @ asci no for new line, db = define bytes
    len equ $ - msg @ represent the length of msg, $ represent the address where we are

section .text @ function declaration? + code
    global _start @ export a label

_start:
    mov eax, 4 @ move into eax for write sys call, 4
    mov ebx, 1 @ stdout
    mov ecx, msg @ pointer to data, swaps to address of var
    mov edx, len @ length of string, number of bytes
    int 0x80 @ interrupt

    mov eax, 1 @ move to eax for exit sys call, 1
    mov ebx, 0 @ exit status code
    int 0x80