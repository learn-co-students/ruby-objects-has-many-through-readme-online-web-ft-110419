class Waiter
  attr_accessor :yrs_experience
  attr_reader :name
  @@all = []
  
  def initialize(name,yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
end