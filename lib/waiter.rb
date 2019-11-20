class Waiter

  @@all = []

  attr_accessor :years_of_experience, :meals, :customers
  attr_reader :name

  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
    @meals = []
    @customers = [] 
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(customer, self, total, tip)
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end

  def best_tipper
    largest_tip = 0
    best_tipper = nil
    self.meals.each do |meal|
      if meal.tip > largest_tip
        largest_tip = meal.tip
        best_tipper = meal.customer
      end
    end
    best_tipper
  end

end
