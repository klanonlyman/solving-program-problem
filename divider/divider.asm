.data
	divide: .asciiz "input divide:" 
	divisor: .asciiz "input divisor:" 
	quotient: .asciiz "quotient:" 
	remainder: .asciiz "remainder:" 
	newline : .asciiz "\n" 
.text
main:	
	la  $a0,divide
    	li  $v0,4
   	syscall
	li   $v0, 5
	syscall
	li $s0,0 #divide
	add $s1,$v0,$zero #quotient
	la  $a0,newline
    	li  $v0,4
   	syscall
	
	
	la  $a0,divisor
    	li  $v0,4
   	syscall
	li   $v0, 5
	syscall
	add $a1,$v0,$zero
	la  $a0,newline
    	li  $v0,4
   	syscall
	
	
	li $t0,1 #epoch
	li $t1,1
	sll $t1,$t1,31
	jal init
	j loop
loop:	
	slt $t3,$s0,$a1
	beq $t3,1,function1  #remainder<0
	beq $t3,0,function2 #remainder>=0
	slti $t3,$t0,32
	addi $t0,$t0,1
	beq $t3,1,loop
	srl $s0,$s0,1
	j exit
init:
	and $t2,$s1,$t1
	srl $t2,$t2,31
	sll $s0,$s0,1
	sll $s1,$s1,1
	add $s0,$s0,$t2
	jr $ra
function1:
	addi $s4,$ra,24
	and $t2,$s1,$t1
	srl $t2,$t2,31
	sll $s0,$s0,1
	sll $s1,$s1,1
	add $s0,$s0,$t2
	jr $s4
function2:
	addi $s4,$ra,24
	sub $s0,$s0,$a1
	and $t2,$s1,$t1
	srl $t2,$t2,31
	sll $s0,$s0,1
	sll $s1,$s1,1
	add $s0,$s0,$t2
	add $s1,$s1,1
	jr $s4
exit:
	la  $a0,quotient
    	li  $v0,4
   	syscall
	add  $a0,$s1,$zero
    	li  $v0,1
   	syscall
   	la  $a0,newline
    	li  $v0,4
   	syscall
   	
   	la  $a0,remainder
    	li  $v0,4
   	syscall
	add  $a0,$s0,$zero
    	li  $v0,1
   	syscall
	la  $a0,newline
    	li  $v0,4
   	syscall
	
	
