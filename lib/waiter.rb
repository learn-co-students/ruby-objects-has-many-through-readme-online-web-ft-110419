class Waiter

    @@all = []

    attr_accessor :name, :exp

    def initialize(name, exp)
        @name = name
        @exp = exp
        @@all << self
    end

    def meals
        Meal.all.select { |meal| meal.waiter == self }
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def best_tipper
        meals.max { |meal_a, meal_b| meal_a.tip <=> meal_b.tip }.customer
    end

    def self.all
        @@all
    end
end