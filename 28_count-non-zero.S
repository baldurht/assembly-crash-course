.intel_syntax noprefix

cmp rdi, 0
je rdi_is_zero

loop:
cmp byte ptr [rdi+rax*8], 0
je done
inc rax
jmp loop

rdi_is_zero:
mov rax, 0

done:
nop
