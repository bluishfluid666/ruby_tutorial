a = 10
b = 20
puts "a = #{a}"
puts "b = #{b}"
puts "a**b will give #{a**b}"
puts "(a == b) is #{a == b}"
puts "(a != b) is #{a != b}"
puts "(a > b) is #{a > b}"
puts "(a < b) is #{a < b}"
puts "(a >= b) is #{a >= b}"
puts "(a <= b) is #{a <= b}"
puts"Combined comparison operator:"
puts "-1 -> op1 < op2" 
puts "0 -> op1 == op2"
puts "1 -> op1 > op2"
puts "(a <=> b) returns #{a <=> b}"
# Test equality 
# within a when clause of a case statement
puts "1...10 === 5 returns #{(1...10) === 5}"
# Kinda like === in JavaScript
puts "1 === 1.0 returns #{1 === 10}, but 1.eql?(1.0)
is #{1.eql?(1.0)}"
puts ".eql? in Ruby is like JS strict comparator ==="
puts "However, === in Ruby is not like JS ==="
puts "Although, they may look the same"
# "equal? -> true if receiver and argument have same object id"
puts "================="
puts "Bitwise Operators"
puts "================="
a = 60
b = 13
puts "a = 60 (dec)"
puts "a = 0011 1100 (bin)"
puts "b = 13 (dec)"
puts "b = 0000 1101 (bin)"
puts "(a & b) will give #{a & b}, which is 0000 1100"
puts "(a | b) will give #{a | b}, which is 0011 1101"
puts "(a ^ (XOR) b) will give #{a ^ b}, which is 0011 0001"
puts "(~a ) will give #{~a}, which is 1100 0011 in 2's complement form due to a signed binary number."
puts "Binary Left Shift Operator. The left operands value is moved left by 
the number of bits specified by the right operand."
puts "a << 2 will give #{a << 2}, which is 1111 0000"
puts "Binary Right Shift Operator. The left operands value is moved right by 
the number of bits specified by the right operand."
puts "a >> 2 will give #{a >> 2}, which is 0000 1111"
puts "================="
puts "Logical Operators"
puts "================="
a = 10
b = 20
puts "a = #{a}"
puts "b = #{b}"
puts "&&: If both the operands are non zero, 
then the condition becomes true."
puts "(a && b) is #{a && b}"
puts "and: If both the operands are true, 
then the condition becomes true."
puts "compare boolean only:"
puts "(a and b) is #{a and b}"
puts ".. creates a range from start to end inclusive"
puts (1..5)# => 1 2 3 4 5
puts "... creates a range from start to end exclusive"
puts (1...5) # => 1 2 3 4 
