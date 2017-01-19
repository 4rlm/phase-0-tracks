## 6.2 Mandatory Pairing: Instance Methods ##

# Release 0: Add Behavior to a Class #
class Puppy

    # Instance Method
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  # Instance Method # speak method that takes an integer and prints "Woof!" that many times. (2)
  def speak(num)
      num.times do
          print "Woof!"
      end
  end

  # Instance Method # roll_over method that just prints "*rolls over*". (3)
  def roll_over
      print "*rolls over*"
  end

  # Instance Method # dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer. (4)
  def dog_years(human_years)
      dog_years = human_years * 7
      print "#{human_years} human years * 7 dog years = #{dog_years} dog years."
  end

  # Instance Method # one more trick -- whichever one you'd like. (5)
  def sit
      print "*sits*"
  end

end

# Update driver code to demonstrate methods work as expected. (6) #
spot = Puppy.new # initializes an instance of Puppy. (1) #
puts spot.fetch('ball') # instance can now fetch a ball. (1) #
puts spot.speak(5) # instance can now "Woof" 5 times. (2) #
puts spot.roll_over # instance can now "*rolls over*". (3) #
puts spot.dog_years(10) # instance can now convert human years to dog years. (4) #
puts spot.sit # instance can now "*sit*". (5) #

#####################

# Release 1: Declare an Initialize Method #
