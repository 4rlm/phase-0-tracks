# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "---------- START ---------------"

#1) "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts "-------- 1 - Done ---------"
puts "Goal: InVeStIgAtIoN"
one = "iNvEsTiGaTiOn".swapcase
p one

#2) "zom".<???>
# => “zoom”
puts "-------- 2 - Done ---------"
puts "Goal: zoom"
two = "zom".gsub("o", "oo")
p two

#3) "enhance".<???>
# => "    enhance    "
puts "-------- 3 - Done ---------"
puts "Goal: '    enhance    '"
three = "enhance".center("enhance".length + 10)
p three

#4) "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts "-------- 4 - Done ---------"
puts "Goal: STOP! YOU’RE UNDER ARREST!"
four = "Stop! You’re under arrest!".upcase
p four

#5) "the usual".<???>
#=> "the usual suspects"
puts "-------- 5 - Done ---------"
puts "Goal: the usual suspects"
five = "the usual".insert(-1, " suspects")
p five

#6) " suspects".<???>
# => "the usual suspects"
puts "-------- 6 - Done ---------"
puts "Goal: the usual suspects"
six = " suspects".insert(0, "the usual")
p six

#7) "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "-------- 7 - Done ---------"
puts "Goal: The case of the disappearing last lette"
seven = "The case of the disappearing last letter".chomp("r")
p seven

#8) "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "---------- 8 - Done -------------"
puts "Goal: he mystery of the missing first letter"
eight = "The mystery of the missing first letter"
p eight[1..-1]

#9) "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "---------- 9 - Done -------------"
puts "Goal: Elementary, my dear Watson!"
nine = "Elementary,    my   dear        Watson!".squeeze(" ")
p nine

#10) "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)
puts "---------- 10 - Done -------------"
puts "Goal: 122"
ten = "z".ord
p ten

#11) "How many times does the letter 'a' appear in this string?".<???>
# => 4
puts "---------- 11 - Done -------------"
puts "Goal: 4"
eleven = "How many times does the letter 'a' appear in this string?".count("a")
p eleven

puts "---------- END ---------------"


puts "---------- METHODS ---------------"

p eleven.methods
