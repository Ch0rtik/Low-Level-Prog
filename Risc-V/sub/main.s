# main.s
.text
main:
.globl main
  addi sp, sp, -16 # выделение памяти в стеке
  sw ra, 12(sp) # сохранение ra
  
  la a0, number # считывается адрес порядкового номера
  lw a0, 0(a0) # в переменную считывается порядковый номер
  la a1, first # считываентся адрес меньшего числа Фибоначчи
  la a2, second # считывается адрес большего числа Фибоначчи
  
    
  call fib # вызов подпрограммы fib
  
  la a3, result # считывается адрес результата
  sw a0, 0(a3)

finish:
  lw ra, 12(sp) # восстановление ra
  addi sp, sp, 16 # выделение памяти в стеке
  li a0, 0
  ret
  
.data
first:
  .word 0 # меньшее число
second:
  .word 1 # большее число
result:
  .word 0 # результат
  
.rodata
number:
  .word 10 # номер искомого числа