class Waiter
    attr_reader :name, :experience
    @@all = []
  def initialize(name,experience)
    @name = name
    @experience = experience
    @@all << self
  end
  def self.all
    @@all
  end
  def waiter
    @@all[0]
  end
  def new_meal(customer,total,tip)
    Meal.new(self,customer,total,tip)
  end
  def meals
    Meal.all.find_all {|meal| meal.waiter == self}
  end
  def best_tipper
   meals.sort { |a,b| b.tip <=> a.tip}.first.customer

  end
end
