require "pry"
class Customer
attr_reader :name, :age
attr_accessor :meals
  @@all = []
  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(waiter,total,tip)
  self.meals =  Meal.new(waiter,self,total,tip)

  end
  def meals
    customer_meals = Meal.all.find_all {|meal| meal.customer == self}
  end
  def waiters
     meals.map { |meal| meal.waiter}
    end

end
