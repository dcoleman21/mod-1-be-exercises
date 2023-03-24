class Werewolf
  attr_reader :name,
              :location

  def initialize(name, location='London')
    @name      = name
    @location  = location 
    @human     = true 
    @werewolf  = false
    @change    = 0
    @hungry    = false
  end

  def human?
    if @change.odd?
      false
    else
      true
    end
  end

  def change!
    @change += 1
  end

  def wolf?
    if @change.odd?
      true
    else
      false
    end
  end

  def hungry?
    if @change.odd?
      true
    else
      false 
    end
  end

  def consume(victim)
    !human? && ((@hungry = false) || (victim.status = :dead))
  end
  
end