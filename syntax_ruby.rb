#HERE DOCUMENT IN RUBY
# "Here Document" refers to build strings from multiple
#  lines. Following a << you can specify a string 
#  or an identifier to terminate the string literal,
#  and all lines following the current line up to the
#  terminator are the value of the string.

# If the terminator is quoted, the type of quotes
#  determines the type of the line-oriented string literal.
#  Notice there must be no space between << and the
#  terminator.
print << EOF
  This is the first way of creating
  here document ie. multiple line string.
  EOF
  
print << "EOF";
  This is the first way of creating
  here document ie. multiple line string.
EOF

print << 'EOF'
      echo hi there
      echo lo there
EOF

print << "foo", << "bar"
      I said foo.
foo
      I said bar.
bar

# Declare code to be called before the program is run
BEGIN {
  # code
}
# example
puts "This line will be executed after BEGIN"
BEGIN{
  puts "This line will be executed first"
}
# The opposite of BEGIN
END {
  puts "This will be executed last"
}
puts "Hello world"

=begin
  We can also make comments in Ruby this way.
=end