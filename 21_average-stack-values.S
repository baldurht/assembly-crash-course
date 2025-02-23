.intel_syntax noprefix

mov rax, 0
add rax, [rsp]
add rax, [rsp+0x08]
add rax, [rsp+0x10]
add rax, [rsp+0x18]
shr rax, 2
push rax

