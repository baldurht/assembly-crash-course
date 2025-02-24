.intel_syntax noprefix

jmp jumpe

.rept 0x51
  nop
.endr

jumpe:
mov rax, 0x1
