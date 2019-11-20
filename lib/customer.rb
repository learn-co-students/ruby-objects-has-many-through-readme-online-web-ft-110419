class Customer
  
  attr_accessor :name, :age
 
  @@all = []
 
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip) # self is customer
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
      # customer looks at all meals, selects the ones that belong to them
    end
  end
  
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
  
end