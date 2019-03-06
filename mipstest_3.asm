main: addi $5, $0, 2        # $5 <--- 2
    addi $6, $0, 8          # $6 <--- 8
    addi $3, $0, 4          # $3 <--- 4
    add $7, $5, $6          # $7 <--- a   ( 2+8 = a )
    and $4, $7, $3          # $4 <--- 0   ( a and 4 = 0 )
    bne $4, $5, end         # 0 != 2 , so branch to end:
    add $6, $7, $2          # doesn't execute
end: xori $2, $7, 5         # $2 <--- f   ( a xor 5 = f )
    addi $9, $2, 0          # $9 <--- f   ( just using to show f through the ALU )