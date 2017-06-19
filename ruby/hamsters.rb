name = nil
vol_level = nil
vol_level.to_i
fur_color = nil
condition = nil
condition.to_i
age = nil
age.to_i

puts "Enter hamster's name:"
name = gets.chomp

puts "How noisy from 0-10 is the hamster?"
vol_level = gets.chomp
vol_level

puts "What color is the fur?"
fur_color = gets.chomp

puts "Rate the condition for adoption"
condition = gets.chomp

puts "How old is the hamster?"
age = gets.chomp
age


puts "Your hamster is #{name} with a noise level of #{vol_level} and #{fur_color} colored fur.  You rated its condition as #{condition} out of 10 and estimated the age as #{age}."
