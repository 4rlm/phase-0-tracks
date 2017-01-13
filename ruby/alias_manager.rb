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

# full_name = nil




=begin
def name_swapper(fulln)
    fulln.downcase!
    split_name = fulln.split(' ')
    swapped = "#{split_name[1]} #{split_name[0]}"
    return swapped
end

def next_letter(swapped_name)
    puts swapped_name
end

swapped_name = name_swapper("Adam Booth")

# p next_letter(swapped_input)

# puts swapped
=end

####################
=begin
full_name = "Adam Booth"

def name_swapper(full_name)
    full_name_downcase = full_name.downcase
    split_name = full_name_downcase.split(' ')
    swapped = "#{split_name[1]} #{split_name[0]}"
    return swapped
end

def next_letter(full_name)
    swapped =  name_swapper(full_name)
    puts swapped.class
end

next_letter(full_name)
=end


# original_full_name = "Adam Booth"
# fullname = original_full_name.downcase
#
# def letter_replacer(fullname)
#     puts alphabet = 'abcdefghijklmnopqrstuvwxyz'
#     puts vowels = 'aeiouy' * 2
#     puts consonants = alphabet.delete('aeiouy') * 2
#
# end
#
# # def next_letter(fullname)
# #     replaced_full_name = letter_replacer(fullname)
# #     puts replaced_full_name.class
# # end
#
# letter_replacer(fullname)



# puts alphabet = 'abcdefghijklmnopqrstuvwxyz'
# puts vowels = 'aeiouy' * 2
# puts consonants = alphabet.delete('aeiouy') * 2
#
# full_name = "adam booth"
#
# if full_name.include?(vowels)
#     puts vowels.next
# end


# alpha = 'abcdefghijklmnopqrstuvwxyza'.split("")
# vowels = 'aeiouya'.split("")
# p alpha
# p vowels


# def vowel_adv(str)
#   vowels = ["a", "e", "i", "o", "u"]
#   str = str.split('')
#   str_new = str.map do |char|
#     if vowels.include?(char)
#       vowels.rotate(1)[vowels.index(char)]
#     else
#       char
#     end
#   end
#   str_new.join
# end
# puts vowel_adv("really")
# # => "i,e"


#
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# orig_vows = 'aeiouy' * 2
# orig_cons = alphabet.delete('aeiouy') * 2
# vows = orig_vows.chars
# cons = orig_cons.chars
#
# orig_name = "booth"
# p name = orig_name.chars
#
# name = name.map! {|ch|
#     if vows.include?(ch)
#         vows.rotate(1)[vows.index(ch)]
#     else
#         ch
#     end
# }
# adv_name = name.join
# puts adv_name

#########################

#
# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# orig_vows = 'aeiouy' * 2
# orig_cons = alphabet.delete('aeiouy') * 2
# vows = orig_vows.chars
# cons = orig_cons.chars
#
# orig_name = "booth"
# p name = orig_name.chars
#
# name = name.map! {|ch|
#     if vows.include?(ch)
#         vows.rotate(1)[vows.index(ch)]
#     else
#         ch
#     end
#
#     if cons.include?(ch)
#         cons.rotate(1)[cons.index(ch)]
#     else
#         ch
#     end
# }
# adv_name = name.join
# puts adv_name

#########################

# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

name = "ooth"

def name_rotator(orig_name)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    orig_vows = 'aeiouy' * 2
    orig_cons = alphabet.delete('aeiouy') * 2
    vows = orig_vows.chars
    cons = orig_cons.chars

    p name = orig_name.chars

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
    adv_name = name.join
    puts adv_name
end

def starter(name)
    name_rotator(name)
end

starter(name)
