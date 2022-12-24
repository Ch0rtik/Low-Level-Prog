# fib.s
.text
fib:
.globl fib
  li t3, 0
  li t0, 0
  li t1, 1

loop:
  bgeu t3, a0, loop_exit
  
  addi t2, t1, 0
  
  add t1, t1, t0 
  addi t0, t2, 0
  
  addi t3, t3, 1
  jal zero, loop
  
loop_exit:
  addi a0, t0, 0 
  
finish:
  ret