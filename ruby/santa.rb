class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
    puts "Santa's age is now #{@age}"
  end

  def get_mad_at(reindeer)
    index = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
    puts @reindeer_ranking
  end

end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

santa = Santa.new("agender", "black")
santa.get_mad_at("Vixen")
santa.gender = "new_GENDER"
puts "santa's new gender is #{santa.gender}"
santa

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
def random_gender_age_ethnicity_generator
  santa.gender = example_genders.sample
  santa.ethnicity = example_ethnicities.sample
  santa.age.rand(0..140)

  santa.gender, santa.ethnicity, santa.age
end

random_gender_age_ethnicity_generator
