class Medusa
  attr_reader :name, 
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if victim.stoned? == true 
      "#{victim.name} is already stoned and cannot by stoned again."
    elsif @statues.length == 3
      "#{@statues.first.name} is no longer stoned but #{victim.name} is now stoned."
      @statues.first.stone = false
      @statues.shift
      victim.stone = true
      @statues << victim
    else
      @statues << victim
      victim.stone = true 
    end
  end
end

class Person
  attr_reader :name
  attr_accessor :stone 

  def initialize(name)
    @name = name 
    @stone = false
  end

  def stoned?
    @stone 
  end
end