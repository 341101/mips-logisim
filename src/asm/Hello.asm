.data
	str: .asciiz  "Hello World!\nI am a program runing at 32-bit MIPS CPU."
.text
main:
	la $t0,str
	addi $v0,$0,11
	loop_print:
	lw $a0,($t0)
	addi $t0,$t0,4
	beq $a0,$0,exit
	loop_print_char:
	syscall
	srl $a0,$a0,8
	bne $a0,$0,loop_print_char
	beq $a0,$0,loop_print
	exit:
	addi $v0,$0,10
	syscall
