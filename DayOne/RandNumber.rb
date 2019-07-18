
max_rand = 100

number_to_guess = rand(max_rand)

puts "Guess a number be 1 and #{max_rand}"
#puts number_to_guess #for debugging

x = gets until x.to_i == number_to_guess

puts "You guessed correct"