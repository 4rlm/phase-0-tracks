### MODULE DECLARATION ##
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

### CLASS DECLARATIONS ##
class Bird
    include Flight
end

class Plane
    include Flight
end

### DRIVER CODE ##
bird = Bird.new
puts bird.take_off(800)

plane = Plane.new
puts plane.take_off(30000)
