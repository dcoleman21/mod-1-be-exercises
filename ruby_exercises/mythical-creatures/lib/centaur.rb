class Centaur
  attr_reader :name, 
              :breed,
              :health 
              

  def initialize(name, breed)
    @name        = name
    @breed       = breed
    @cranky      = false
    @standing    = true 
    @shoot_count = 0
    @laying      = false 
    @health      = "Full health"
  end

  def shoot
    if @shoot_count < 3 && @laying == false
      @shoot_count += 1
      'Twang!!!'
    else @shoot_count >= 3 || @laying == true
      "NO!"
    end
  end

  def run
    if @laying == true 
      "NO!"
    else
      @shoot_count += 1 
      "Clop clop clop clop!"
    end
  end

  def cranky?
    if @shoot_count >= 3
      @cranky = true 
    else
      @cranky = false
    end
    @cranky 
  end

  def standing?
    @standing 
  end

  def stand_up 
    @standing = true 
    @laying = false 
  end

  def sleep 
    if @standing == true 
      "NO!"
    else @standing == false && @shoot_count >= 3
      true
      @shoot_count = 0
    end
  end

  def lay_down
    @standing = false 
    @laying = true 
  end

  def laying?
    @laying 
  end

  def drink_potion
    if @standing == true && @shoot_count > 0
      @shoot_count = 0
    elsif @shoot_count == 0
      @health = "I'm sick"
    else @standing == false
      "Not while I am laying"
    end
  end
end