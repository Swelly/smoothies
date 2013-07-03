require 'pry'

# create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.

class Person
  attr_accessor :stomach, :allergies

  def initialize(allergies = [])
    @allergies = []
    @stomach = []
  end

  def eats(food)
    toxic_mix = @allergies & food
    if toxic_mix.empty?
      "barf" + ". I'm so sorry..."
    else
      @stomach << food
      puts "C'est bon"
    end
  end
end



chris = Person.new
chris.allergies << ["gluten"]
beth = Person.new
beth.allergies << ["scallops"]

# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]

puts chris.eats(pizza)
puts beth.eats(pan_seared_scallops)
