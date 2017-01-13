# 5.5 Solo Challenge: Manipulating Strings with Iteration

# A Few New String and Array Method: In order to manipulate a string's value, we can convert it into an array, iterate through its letters, and then join the array back into a string.

# Example:
# p letters = "hello world".split('')
# p letters.class
# p letters.map! { |letter| letter.next }
# p letters
# p new_string = letters.join('')

# You'll probably see .split used often, but .chars is equivalent:
#p "hello".chars # => ["h","e","l","l","o"]

# You can chain methods in Ruby, so if you were feeling terse, you could simply do this in IRB:
#p "hello world".chars.map!{|letter| letter.next}.join('')

# You can change the argument given to .split in order to make an array of words instead of characters. Try it:
# p "hello world".split(' ')

########################

# Release 0: Attempt a Tricky Algorithm

# 1. Swapping the first and last name.


####################

# name = "Adam Booth".downcase

# name = nil
puts "Enter a name to encrypt:"
name = gets.chomp

def name_rotator(orig_name)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    orig_vows = 'aeiouyaeiouy'
    orig_cons = alphabet.delete('aeiouy')
    vows = orig_vows.chars
    cons = orig_cons.chars
    capitalize_original = orig_name.split.map(&:capitalize).join(' ')
    downcase_original = orig_name.downcase
    name = downcase_original.chars

    name = name.map! {|ch|
        if vows.include?(ch)
            vows.rotate(1)[vows.index(ch)]
        else
            ch
        end

        if cons.include?(ch)
            cons.rotate(1)[cons.index(ch)]
        else
            ch
        end
    }
    encrypted_name = name.join
    split_encrypted = encrypted_name.split(' ')
    giv_name_encrypted = split_encrypted[0].capitalize
    mid_name_encrypted = split_encrypted[1].capitalize unless split_encrypted[1] == nil
    sur_name_encrypted = split_encrypted[2].capitalize unless split_encrypted[2] == nil


    swapped_encrypted_full_name = "#{sur_name_encrypted} #{mid_name_encrypted} #{giv_name_encrypted}"
    puts "------------------------------"
    puts "Original Name: #{capitalize_original}"
    puts "Encrypted Name: #{swapped_encrypted_full_name}"
    puts "------------------------------"
end

name_rotator(name)
