# module for getDays(char *buffer, int mon, int year)

   
    
    .data
MSG:
    .asciz "%d\n" 
   
# TODO - put strings here

main:
    push %rbp
    mov %rsp, %rbp
    
    mov $4, %rdi
    
    call fib
    
    mov $MSG, %rsi
    mov %rax, %rdi
    
    xor %rax, %rax
    call printf
    xor %rax, %rax
    
    
    pop %rbp
    ret
    
fib:
    push %rbp
    mov %rbp, %rsp
    
    cmp $0, %edi
    je if_true
    cmpl $1, %edi
    je if_true
    
    
    movl %edi, -8(%rbp)
    subl $2, %edi
    call fib
    movl %eax, -16(%rbp)
    
    movl -8(%rbp), %edi
    subl $1, %edi
    call fib
    movl -16(%rbp), %edi
    addl %edi, %eax
    jmp done
    
if_true:
    mov $1, %eax
    
done:
    pop %rbp
    ret
    
