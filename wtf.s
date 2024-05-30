#This program reads 2 numbers from the user and multiplies them.
.text
.globl __start
__start:

    #lets read the numbers
    #1st number
    la $a0, msg_for_number
    li $v0, 4
    syscall

    li $v0, 5  #read_int
    syscall
    move $s1, $v0  # $v0->$s1

    li $v0, 1  #print_int
    move $a0, $s1
    syscall

    #print new line
    li $v0, 11   #print_char
    li $a0, 10  #new line character
    syscall

    
    #2nd number
    la $a0, msg_for_number
    li $v0, 4
    syscall

    li $v0, 5  #read_int
    syscall
    move $s2, $v0  # $v0->$s2

    li $v0, 1  #print_int
    move $a0, $s2
    syscall

    li $v0, 11  #print_char
    li $a0, 10
    syscall

    
    #Calculations
    mult	$s1, $s2			# $s1 * $s2 = Hi and Lo registers
    mflo	$s3					# copy Lo to $t2
    
    #Lets print the result
    #s1*s2=$s3
    li $v0, 1  #print_int $s1
    move $a0, $s1  #number1 in $a0
    syscall

    li $v0, 4  #print_char "*"
    la $a0, multipl
    syscall
    
    li $v0, 1  #print_int $s2
    move $a0, $s2  #number1 in $a0
    syscall

    li $v0, 4  #print_char "="
    la $a0, equality
    syscall

    li $v0, 1  #print_int $s3
    move $a0, $s3
    syscall


    #au revoir
    li $v0, 10  #exit_program
    syscall


.data
msg_for_number: .asciiz "Please give a number: "
multipl: .asciiz "*"
equality: .asciiz "="




