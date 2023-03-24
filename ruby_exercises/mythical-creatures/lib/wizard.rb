class Wizard
  attr_reader :name,
              :bearded,
              :is_rested,
              :unrest 

  def initialize(name, bearded = {bearded: true})
    @name       = name
    @bearded    = bearded[:bearded]
    @is_rested  = true 
    @unrest       = 0
  end

  def bearded?
    @bearded 
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if unrest <= 2
      @is_rested = true 
    else
      @is_rested = false
    end
  end
  
  def cast(spell)
    @unrest += 1
    spell 
  end
  
end