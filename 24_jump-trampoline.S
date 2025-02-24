.intel_syntax noprefix

jmp jumpe

.rept 0x51
  nop
.endr

jumpe:
pop rdi
mov rax, 0x403000 
jmp rax



