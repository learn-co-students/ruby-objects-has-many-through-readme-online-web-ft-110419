class Customer
  attr_accessor :age
  attr_reader :name
  @@all = []
  
  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end
  
  def new_meal()
end