require 'pry'
class Customer

  @@all = []

  attr_reader :name, :age, :meals, :waiters 

  def initialize(name, age)  
   @name = name 
   @age = age
   @@all << self
  end
  
  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    Meal.new(self, waiter, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.customer == self}
  end 

  def waiters 
    self.meals.map {|meal| meal.waiter}    
  end 
end
