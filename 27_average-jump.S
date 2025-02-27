.intel_syntax noprefix

mov rcx, 0

loop:
  add rax, [rdi+rbx*8]
  inc rbx
  cmp rbx, rsi
  jle loop

div rbx
