class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect,
              :hunt_white_walkers

  def initialize(name, home="Beyond the Wall", size="Massive")
    @name                = name
    @home               = home
    @size               = size
    @starks_to_protect  = []
    @hunt_white_walkers = true
  end

  def protects(stark)
    @starks_to_protect << stark if stark.location == @home && @starks_to_protect.count < 2
    stark.safe = true 
    @hunt_white_walkers = false 
  end

  def hunts_white_walkers?
    @hunt_white_walkers
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safe = false 
    stark 
  end
end

class Stark 
  attr_reader :name, 
              :location,
              :house_words
  attr_accessor :safe 

  def initialize(name, location="Winterfell", house_words="Winter is Coming")
    @name        = name 
    @location    = location
    @safe        = false
    @house_words = house_words
  end

  def safe?
    @safe 
  end
end