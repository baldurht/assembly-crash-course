.intel_syntax noprefix

cmp rdi, 3
jg else

jmp [rsi+rdi*8]

else:
  jmp [rsi+4*8]
