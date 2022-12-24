# fib.s
.text
fib:
.globl fib
  li a4, 0

loop:
  bgeu a4, a0, loop_exit
  
  lw t0, 0(a1) # считываются числа
  lw t1, 0(a2)
  
  add t1, t1, t0 # переменная с большим зхначением перезаписывается суммой
  lw t0, 0(a2) # в переменную с мееньшим считывается бывшее большее значение
  
  sw t0, 0(a1) # в памяти перезаписываются значения чисел
  sw t1, 0(a2)
  
  
  addi a4, a4, 1
  jal zero, loop
  
loop_exit:
  lw a0, 0(a1) 
  
finish:
  ret