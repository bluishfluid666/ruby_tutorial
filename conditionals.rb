$stdout.sync = true

puts "Welcome to 'Get My Number'"
print "What's your name? "
input = gets
name  = input.chomp
puts "Welcome, #{name}!"

puts "I've got a random number btween 1 and 100"
puts "Can you guess what it is?"
target = rand(100) + 1

num_guesses = 0

guessed_it = false

print "Make a guess: "
my_guess = gets.to_i

if my_guess > target
  puts "Oops! Your guess was HIGH"
  num_guesses+=1
elsif my_guess < target
  puts "Oop! Your guess was LOW"
  num_guesses+=1
else
  puts "Good job #{name}!" 
  puts "You guessed my number in #{num_guesses} guesses"
end

# if not guessed_it
# unless executes when false
unless guessed_it
  puts "Sorry. You didn't get my number. It was #{target}"
end