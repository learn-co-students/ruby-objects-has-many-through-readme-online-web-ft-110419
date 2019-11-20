class Meal

  @@all = []

  attr_accessor :tip, :total
  attr_reader :waiter, :customer

  def initialize(customer, waiter, total, tip)
    @customer = customer
    @waiter = waiter
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
    @@all
  end

end
