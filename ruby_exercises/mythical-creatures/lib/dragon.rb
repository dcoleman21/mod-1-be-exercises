class Dragon
  attr_reader :name,
              :color,
              :rider,
              :hungry,
              :meals_eaten 

  def initialize(name, color, rider)
    @name      = name
    @color     = color
    @rider     = rider
    @is_hungry = true 
    @meals_eaten     = 0
  end

  def hungry?
    @is_hungry
  end

  def eat
    @meals_eaten += 1
    if meals_eaten < 3
      @is_hungry = true 
    else
      @is_hungry = false
    end
  end
end