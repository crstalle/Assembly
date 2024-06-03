#This program performs a WHILE statement, and prints the numbers 1...10
.text
.globl __start
__start:

    #we need to have a variable that ++ everytime while loop operates
    li $a1, 1  #we initialize it with 1

    #while loop
while:  li $v0, 1  #print_int
        add $a0, $a1, $zero
        syscall
        
        addi $a1, $a1, 1  # $a0=$a0 + 1

        bne $a0, 10, while

Exit:   li $v0, 10  #exit_program
        syscall


    
    
    