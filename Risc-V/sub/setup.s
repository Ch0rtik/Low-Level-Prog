# setup.s
.text
__start:
.globl __start
  call main
  
finish:
  addi a1, a0, 0
  li a0, 17
  ecall # выход с кодом завершения