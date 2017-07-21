# Virus Predictor

# I worked on this challenge with: Nicole Gasperini.
# We spent 1.5 hours on this challenge.

#
#
#
require_relative 'state_data'

class VirusPredictor
  #Initializing the instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Calls the other two methods, passes the instance variables as a arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #Anything below you cannot see...
  private
  #Calculation of instance variables through if statement to get the number of deaths
  #based on population density per state (then prints)
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end
  #Calculates the speed of deaths per state based on pop. density
  #and then prints
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

   if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

   puts " and will spread across the state in #{speed} months.\n\n"

 end

end

#=======================================================================

# DRIVER CODE
#loop
STATE_DATA.each do |state_name, pop_hash|
  state = VirusPredictor.new(state_name, pop_hash[:population_density], pop_hash[:population])
  state.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

#=======================================================================
# Reflection

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   There are strings used as keys, as well as symbols. Strings are definitely more readible, so using
#   a string for the state's name is appropriate. Otherwise, a symbol for the population data that has
#   numbers as the values, the symbols don't need to be readible, also population_density is two words.
#
# What does require_relative do? How is it different from require?
#   Require loads the file using the full path of the file, whereas require_relative loads it
#   relative to the location of the file, thus full path not needed.
#
# What are some ways to iterate through a hash?
#   You can iterate through hashes using #each and other #each derivatives, #each_key, #each_pair
#
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   We ended up removing the parameters from the two methods inside of virus_effects.
#   Those methods pass in non-instance variables, but don't use them inside the method anyway,
#   and the methods use the @instance variables, which are already stored inside of initialize.
#
# What concept did you most solidify in this challenge?
#   I think accessing nested hash key-values were really helpful and I'm glad we finally
#   were able to do some exercises that required it. I also get scope and variable scope more.
