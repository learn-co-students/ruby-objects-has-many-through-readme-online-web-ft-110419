require "pry"
class Waiter
  attr_accessor :yrs_experience
  attr_reader :name
  @@all = []
  
  def initialize(name,yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip=0)
  end
  
  def customers
    self.meals.map {|meal| meal.customer }
  end
  
  def best_tipper
    binding.pry
    meals.max {|meal_a,meal_b| meal_a.tip <=> meal_b.tip}
  end
  
  
end


