class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do
      puts "Woof!"
    num
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    puts num *= 7
    num
  end

  def high_five
    puts "*high fives*"
  end

end



#DRIVER CODE **********************
fido = Puppy.new
fido.fetch("ball")
fido.speak(4)
fido.roll_over
fido.dog_years(3)
fido.high_five
fido.initialize
