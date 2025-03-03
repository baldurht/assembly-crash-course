.intel_syntax noprefix

xor rax, rax
cmp rdi, 0
  je done

loop:
  cmp byte ptr [rdi], 0
    je done
  cmp byte ptr [rdi], 0x5a
    jg while
      push rax
      mov rax, 0x403000
      push rdi
      mov rdi, [rdi]
      call rax
      pop rdi
      mov byte ptr [rdi], al
      pop rax 
      inc rax
    while:
    inc rdi
    jmp loop

done:
  ret
