# Virus Predictor

# I worked on this challenge Brigitte Kozena.
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# This class predicts the virus death rate and speed of spread for each state.
class VirusPredictor

  # This method initializes the instance varaibles for the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population #@STATE_DATA[state_of_origin][:population]
    @population_density = population_density #STATE_DATA[state_of_origin][:population_density]
  end

  #This method calls the private methods with instance variables arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #Calculates the predicted eaths in each state bsaed on its propulation density and prints the result for each stat.
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

  #This method predicts the speed of spread based on the population densit. It then returns the speed of spread in months.
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
 # initialize VirusPredictor for each state

# STATE_DATA.each_key do |state|
#   report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#   report.virus_effects
# end
STATE_DATA.each do |state, state_info|
  report = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  report.virus_effects
end

# STATE_DATA.each do |state, state_info|
#   report = VirusPredictor.new(state)
#   report.virus_effects
# end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# # Reflection Section
# # What are the differences between the two different hash syntaxes shown in the state_data file?
# They use different syntaxes, but it doesn't change their functionality.  I assume it's jst for readability.

# # What does require_relative do? How is it different from require?
# require_relative accesses another ruby file in the same directory.  Require does the same thing but acccesses a file from a different path.

# # What are some ways to iterate through a hash?
# You can use each or each_key or each_value.

# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# Because the variables were instance variables, there was no need for them in the virus_effects method.
# # What concept did you most solidify in this challenge?
# require_relative / require.  It was also a good refresher on variable scope.  I still need more help with classes.