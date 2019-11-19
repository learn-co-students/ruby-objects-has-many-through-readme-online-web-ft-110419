require 'pry'
class Customer

    @@all = []

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select { |meal| meal.customer == self }
    end

    def waiters
        meals.collect { |meal| meal.waiter }
    end

    def self.all
        @@all
    end
  
end