class PezDispenser

  def initialize
  @flavors = ["Cherry",
              "Chocolate",
              "Cola",
              "Grape",
              "Lemon",
              "Mango",
              "Orange",
              "Peppermint",
              "Raspberry"]

    @capacity = @flavors.length
  end

  def counter
    # count = @flavors.length
    p "You have " + @capacity.to_s + " pez in your dispenser."
  end

  def eat_a_pez
    pez_removed = @flavors.shift
    p "You just removed a " + pez_removed + " and ate it."

  end

  def add_pez
    p "What flavor would you like to add to your dispenser?"
    pez_flavor = gets.chomp
    @flavors.unshift(pez_flavor)
  end

  def see_all_pez
    p "Here's what's in your pez: "
    i=0
    until i == @flavors.length
      p @flavors[i]
      i+=1
    end
  end
end


my_pez = PezDispenser.new
my_pez.counter
my_pez.eat_a_pez
my_pez.add_pez
my_pez.see_all_pez