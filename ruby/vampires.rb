
# Release 0: Vampire Interview - Variables


interview_permission = nil
name = nil
age = nil
dob = nil
garlicbread = nil
healthplan = nil
valid_age = nil
result = nil
interview_count = nil

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

# Test Code
# age = 35.to_i
# dob = "01/07/1986"
# garlicbread = "n"
# healthplan = "y"
# name = "Adam"
# name = "Drake Cula"
# name = "Tu Fang"

puts "Enter number of surveys/interviews:"
interview_count = gets.chomp.to_i

def survey_questions
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
        age = gets.chomp.to_i

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


        calculated_age = age_calculator(dob)
        if calculated_age == age
            valid_age = true
        else
            valid_age = false
        end


        if (name == "Drake Cula") || (name == "Tu Fang")
            result = "Definitely a vampire."
        elsif (valid_age == false) && (garlicbread == "n") && (healthplan == "n")
            result = "Almost certainly a vampire."
        elsif (valid_age == true) && (garlicbread == "y" || healthplan == "y")
            result = "Probably not a vampire."
        elsif (valid_age == false) && (garlicbread == "n" || healthplan == "n")
            result = "Probably a vampire."
        else
            result = "Results inconclusive."
        end

        puts "----- Results Summary --------"
        puts "Name: #{name}"
        puts "Interview Permission: #{interview_permission}"
        puts "DOB: #{dob}"
        puts "Provided Age: #{age}"
        puts "Calculated Age: #{calculated_age}"
        puts "Valid Age: #{valid_age}"
        puts "Healthplan: #{healthplan}"
        puts "Garlicbread: #{garlicbread}"
        puts "Result: #{result}"

    end #  unless interview conditional ends
end  #survey_questions method ends

i=0
while i<interview_count
  survey_questions
  i+=1
end
