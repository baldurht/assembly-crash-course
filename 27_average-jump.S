.intel_syntax noprefix

mov rcx, 0

loop:
  add rax, [rdi+rbx*8]
  inc rbx
  cmp rbx, rsi
  jne loop

div rbx
