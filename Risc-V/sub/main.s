# main.s
.text
main:
.globl main
  addi sp, sp, -16 # выделение памяти в стеке
  sw ra, 12(sp) # сохранение ra
  la a0, number # считывается адрес порядкового номера
  lw a0, 0(a0) # в переменную считывается порядковый номер
  
  call fib # вызов подпрограммы fib
  
  la t0, result # считывается адрес результата
  
  sw a0, 0(t0)

finish:
  lw ra, 12(sp) # восстановление ra
  addi sp, sp, 16 # выделение памяти в стеке
  li a0, 0
  ret
  
.data
result:
  .word 0 # результат
  
.rodata
number:
  .word 10 # номер искомого числа