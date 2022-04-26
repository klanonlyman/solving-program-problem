.data
	input: .asciiz "input number:" 
	output: .asciiz "output number:" 
	newline : .asciiz "\n" 
.text
main:
	la  $a0,input
    	li  $v0,4
   	syscall
   	li   $v0, 5
	syscall
	add $s0,$v0,$zero
	li $t0,0
	li $s4,1
	li $s5,0
	slt $t3,$s0,$zero
	j function

function:
	sll $s5,$s5,1
	and $s1,$s0,$s4
	add $s5,$s5,$s1
	srl $s0,$s0,1
	add $t0,$t0,1
	slti $t3,$t0,32
	beq $t3,1,function
	j exit
exit:
	la  $a0,output
    	li  $v0,4
   	syscall
   	add  $a0,$s5,$zero
    	li  $v0,1
   	syscall