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
total_guesses = 10 

guessed_it = false

puts "Here is the example demo Ruby while loop."
puts "It executes while the condition is true"
puts "while guessed_it == false && total_guesses != 0"
while guessed_it == false && total_guesses != 0
  puts "You have #{total_guesses} guesses left"
  print "Make a guess: "
  my_guess = gets.to_i
  
  if my_guess > target
    puts "Oops! Your guess was HIGH"
    num_guesses+=1
    total_guesses -= 1
  elsif my_guess < target
    puts "Oops! Your guess was LOW"
    num_guesses+=1
    total_guesses -= 1
  else
    puts "Good job #{name}!" 
    puts "You guessed my number in #{num_guesses} guesses"
    guessed_it = true
  end
end

num_guesses = 0
total_guesses = 10 

guessed_it = false
puts "Here is the example demo Ruby until loop."
puts "It executes while the condition is false"
puts "until guessed_it == true || total_guesses == 0"
until guessed_it == true || total_guesses == 0
  puts "You have #{total_guesses} guesses left"
  print "Make a guess: "
  my_guess = gets.to_i
  
  if my_guess > target
    puts "Oops! Your guess was HIGH"
    num_guesses+=1
    total_guesses -= 1
  elsif my_guess < target
    puts "Oops! Your guess was LOW"
    num_guesses+=1
    total_guesses -= 1
  else
    puts "Good job #{name}!" 
    puts "You guessed my number in #{num_guesses} guesses"
    guessed_it = true
  end
end
# if not guessed_it
# unless executes when false
unless guessed_it
  puts "Sorry. You didn't get my number. It was #{target}"
end