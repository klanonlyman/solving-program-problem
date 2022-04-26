.data
	
	inputN: .asciiz "input N:" 
	output: .asciiz "output number:" 
	inputX: .asciiz "input X:" 
	newline : .asciiz "\n" 
	temp: .float 1.0
	
.text
main:
	lwc1 $f12, temp
	#li $v0,2
	#syscall
	la  $a0,inputX
    	li  $v0,4
   	syscall
   	li   $v0, 6
	syscall

	la  $a0,inputN
    	li  $v0,4
   	syscall
	li   $v0, 5
	syscall
	add $t0,$v0,$zero
	li $s5,1
	j loop
loop:
	subi $t0,$t0,1
	slt $t3,$zero,$t0
	mul.s $f12,$f12,$f0
	beq $t3,0,exit
	j loop
exit:
	la  $a0,output
    	li  $v0,4
   	syscall
    	li  $v0,2
   	syscall
