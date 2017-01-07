
# Release 0: Vampire Interview - Variables
interview_permission = nil
name = nil
age = nil
dob = nil
garlicbread = nil
healthplan = nil

age = 30.to_i
dob = "01/07/1986"
valid_age = nil

#===================
#IMPORTANT - DO NOT DELETE
=begin
# Response Variables:
garlicbread_like = "And you mentioned that you DO like garlic bread and would like to try some.  My assistant has brought some up for you to try.  I think you will really love it.  It's got a lot of garlic on it, so it's very healthy!  Our interview is complete, but I hope you have some time to chat over some garlic bread."
garlicbread_dislike = "Our interview is now complete, but you are welcome to stick around to talk for a while while my assistant brings up some garlic bread.  I told her to bring extra for you in case you change your mind.  It's extra garlicy, so I hope the smell won't bother you."

healthplan_accept = nil
healthplan_decline = "not"

# Q1: interview_permission
puts "\nWelcome!  Thank you for your interest in pursuing a position at our company.  Before moving on to the next step, we would like to ask you a few preliminary questions to learn more about you.  Would that be fine with you?\n"
puts "\nPlease enter y/n below:\n"
interview_permission = gets.chomp

unless interview_permission == "y"
    puts "\nGoodbye!  Sorry that this isn't a good time for you.  Please revisit us when you have a few minutes.\n"
else
    # Q1: name
    puts "\n1) What's your name?\n"
    puts "\nPlease enter name below:\n"
    name = gets.chomp

    # Q2: age
    puts "\n2) How old are you?\n"
    puts "\nPlease enter numeric age below:\n"
    age = gets.chomp

    # Q3: dob
    puts "\nPlease enter full date of birth in mm/dd/yyyy format below:\n"
    dob = gets.chomp

    # Q4: garlicbread
    puts "\n4) Oh.  By the way, our company cafeteria serves the most delicious garlic bread. Should we order some for you?\n"
    puts "\nPlease enter y/n below:\n"
    garlicbread = gets.chomp

    # Q5: healthplan
    puts "\n5) Would you like to enroll in the company’s health insurance?\n"
    healthplan = gets.chomp


    # Conclusion:
    # puts "\nThank you very much for answering these questions #{name}.  I have noted that you are currently #{age} years old and born in #{dob}.  And I've noted that you would #{healthplan == "y" ? puts(healthplan_accept) : puts(healthplan_decline)}like to enroll in our company health plan."
    #
    # garlicbread == "y" ? puts(garlicbread_like) : puts(garlicbread_dislike)

end
=end
#IMPORTANT - DO NOT DELETE
#===================

# Release 2: Detection Logic
# current_year = 2017
#
# puts age = 30
# puts dob = "01/06/1986"
# puts dob = dob[6..9]

# Release 2: Detection Logic - Variables

# current_year = 2017
# valid_age = nil
#
# if current_year - dob == age
#   valid_age = TRUE
# else
#   valid_age = FALSE
# end
#
# puts valid_age

puts "----------------------"

def age_calculator(dob)
    current_time = Time.new
    current_mo = current_time.month
    current_day = current_time.day

    dob_mo = dob[0..1].to_i
    dob_day = dob[3..4].to_i
    dob_yr = dob[6..9].to_i

    (current_mo <= dob_mo) && (current_day < dob_day) ? (dob_yr = dob_yr+1) : (dob_yr)

    dob_exact = Time.new(dob_yr,dob_mo,dob_day)
    return current_time.year - dob_exact.year
end

calculated_age = age_calculator(dob)
#==============
puts calculated_age
puts age

calculated_age == age ? (valid_age) : FALSE

if valid_age == TRUE
    puts "True"
else
    puts "False"
end
