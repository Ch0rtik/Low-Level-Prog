.text
__start:
.globl __start
  li a2, 0 # задаётся первоначальное значение счётчику
  la a3, number # считывается адрес порядкового номера
  lw a3, 0(a3) # в переменную считывается порядковый номер
  la a4, result # считывается адрес результата
  li t0, 0
  li t1, 1
  
loop:
  bgeu a2, a3, loop_exit
  
  addi t2, t1, 0
  
  add t1, t1, t0 
  addi t0, t2, 0
  
  addi a2, a2, 1
  jal zero, loop
  
loop_exit:
  sw t0, 0(a4)
  
  
finish:
  li a0, 17
  li a1, 0
  ecall
  
.data
result:
  .word 0
  
.rodata
number:
  .word 10