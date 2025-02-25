.intel_syntax noprefix

cmp dword ptr [rdi], 0x7f454c46
  je equal1

cmp dword ptr [rdi], 0x00005A4D
  je equal2

mov eax, [rdi+4]
imul eax, [rdi+8]
imul eax, [rdi+12]
jmp done

equal1:
  mov eax, [rdi+4]
  add eax, [rdi+8]
  add eax, [rdi+12]
  jmp done

equal2:
  mov eax, [rdi+4]
  sub eax, [rdi+8]
  sub eax, [rdi+12]
  jmp done

done:
  nop
