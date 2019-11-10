class Waiter
  attr_accessor :name, :years_of_experience
  
  @@all = []
  
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def new_meal(customer, total, tip)
    return Meal.new(self, customer, total, tip)
  end
  
  def meals
    return Meal.all.select { |meal| meal.waiter == self }
  end
  
  def best_tipper
    best = meals.max { |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    }
    return best.customer
  end
end
