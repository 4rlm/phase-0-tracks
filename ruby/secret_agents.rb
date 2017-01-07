# 1. Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# 2. Asks them for the password
# 3. Conducts the requested operation, prints the result to the screen, and exits

puts "\n\n"

def encrypt(string)
    string_array = string.split(//)
    key = "abcdefghijklmnopqrstuvwxyz" * 2

    puts "\nYour password has been encrypted from '#{string}' to: \n"
    puts

    i=0
    while i<string_array.length
        index = key.index(string_array[i])
        index_plus_one = index + 1
        print key[index_plus_one]
        i+=1
    end
    puts
    puts "\n Please remember your secret password and do not share it with anyone! \n"
    puts
end

puts "Would you like to encrypt your password? Enter: y/n"
answer = gets.chomp

if answer == "y"
    puts "\nPlease enter your password below:\n"
    password = gets.chomp
    encrypt(password)
else
    puts "\nSorry.  You will not be able to move forward without encryption.  Please try again when you are ready to move forward.\n"
    puts
end


=begin
# Decrypt - Method
def decrypt(string)
    string_array = string.split(//)
    key = "abcdefghijklmnopqrstuvwxyz" * 2
    puts "Decrypt from '#{string}' to: "

    i=0
    while i<string_array.length
        index = key.index(string_array[i])
        index_minus_one = index - 1
        print key[index_minus_one]
        i+=1
    end
end

decrypt(string)

=end

# PSEUDOCODE BELOW:


=begin
# Test Code
encrypt("abc") # bcd
puts "\n----------"
encrypt("zed") # afe
puts "\n----------"
decrypt("bcd") # abc
puts "\n----------"
decrypt("afe") # zed
=end

=begin
    # This doesn't work!
puts "\n----- Nested Method: --------\n"

decrypt(encrypt("abc"))

puts "\n===============\n"

=end


=begin
str = "abcdef"
puts str[3]

puts "mission"[-1]
puts "agent".index("a")
puts "FBI".length

1. An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character ­­ no change made.

2. A decrypt method that reverses the process above. Note that Ruby doesn't have a built­in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

1. encrypt("abc") should return "bcd"
2. encrypt("zed") should return "afe"
3. decrypt("bcd") should return "abc"
4. decrypt("afe") should return "zed"

Add the call decrypt(encrypt("swordfish")) to the driver code of your program, and print the result. Why does this nested method call work? Add a note in the comments of your code explaining it to any future agents.
=end

=begin
key = "abcdefghijklmnopqrstuvwxyz"

i=0
while i<key.length
    hash = Hash.new
    puts key[i]
    hash[key[i]] = i
    puts hash
    puts i+=1
end

=end

=begin
# Working! V1
string = "abc"

i=0
while i < string.length
puts "#{string[i]}"
i+=1
end

=end

=begin
string = "abc"
i=0
while i < string.length
new_string = string[i]
puts new_string.next
i+=1
end
=end

=begin
puts "\n-----Ex 1 --------\n"

string_next = "abc"
i=0
while i < string_next.length
print string_next[i].next
i+=1
end

puts "\n-----Ex 2 --------\n"

string_prev = "bcd"
i=0
while i < string_prev.length
print string_prev[i]
i+=1
end

puts "\n-----Ex 3 --------\n"

key = "abcdefghijklmnopqrstuvwxyz"
i=0
while i<key.length
print key[i]
i+=1
end

puts "\n-----Ex 4 --------\n"

key = "abcdefghijklmnopqrstuvwxyz"
print key.index("a")

puts "\n-----Ex 5 --------\n"

key = "abcdefghijklmnopqrstuvwxyz"
print key.index("d")-1

puts "\n-----Ex 6 --------\n"

string = "bcd"
i=0
while i<string.length
    print i
    i+=1
end

puts "\n-----Ex 7 --------\n"

key = "abcdefghijklmnopqrstuvwxyz"
print key.index("cd")-1

puts "\n-----Ex 8 --------\n"

arr = ["b","c","d"]

i=0
while i<arr.length
    print arr[i]
    i+=1
end

puts "\n-----Ex 9 --------\n"

arr = []
string = "bcd"

i=0
while i<arr.length
    print arr[i]
    i+=1
end

puts "\n-----Ex 10 --------\n"

string = "bcd"
string_array = string.split(//)
print string_array

puts "\n-----Ex 11 --------\n"

string = "bcd"
string_array = string.split(//)

i=0
while i<string_array.length
    puts string_array[i]
    i+=1
end

puts "\n===============\n"
puts "\n-----Ex 12 --------\n"

string = "bcd"
string_array = string.split(//)
key = "abcdefghijklmnopqrstuvwxyz"

i=0
while i<string_array.length
    print key.index(string_array[i])
    i+=1
end


puts "\n===============\n"
puts "\n----- Encrypt: --------\n"

string = "abc"
string_array = string.split(//)
key = "abcdefghijklmnopqrstuvwxyz"
puts "Encrypt from '#{string}' to: "

i=0
while i<string_array.length
    index = key.index(string_array[i])
    index_plus_one = index + 1
    # print index_minus_one
    print key[index_plus_one]
    i+=1
end

puts "\n-------------\n"


puts "\n===============\n"
puts "\n----- Decrypt: --------\n"

string = "bcd"
string_array = string.split(//)
key = "abcdefghijklmnopqrstuvwxyz"
puts "Decrypt from '#{string}' to: "

i=0
while i<string_array.length
    index = key.index(string_array[i])
    index_minus_one = index - 1
    # print index_minus_one
    print key[index_minus_one]
    i+=1
end

puts "\n-------------\n"


puts "==============="
puts "Methods Below - V1"
puts "==============="


puts "\n===============\n"
puts "\n----- Encrypt - Method: --------\n"

def encrypt(string)
    string_array = string.split(//)
    key = "abcdefghijklmnopqrstuvwxyz"
    puts "Encrypt from '#{string}' to: "

    i=0
    while i<string_array.length
        index = key.index(string_array[i])
        index_plus_one = index + 1
        print key[index_plus_one]
        i+=1
    end
end

string = "abc"
encrypt(string)

puts "\n-------------\n"


puts "\n===============\n"
puts "\n----- Decrypt - Method: --------\n"


def decrypt(string)
    string_array = string.split(//)
    key = "abcdefghijklmnopqrstuvwxyz"
    puts "Decrypt from '#{string}' to: "

    i=0
    while i<string_array.length
        index = key.index(string_array[i])
        index_minus_one = index - 1
        print key[index_minus_one]
        i+=1
    end
end

string = "bcd"
decrypt(string)


puts "\n-------------\n"

=end
