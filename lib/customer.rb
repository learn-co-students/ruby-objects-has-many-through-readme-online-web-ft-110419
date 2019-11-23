
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
            Meal.new(waiter, self, total, tip)
          end

          def new_meal(
              Waiter.new()
          )

    #new_meal
    #nitializes a meal using the current Customer instance, a provided Waiter instance and a total and tip
    #meals
      #returns an Array of Meal instances associated with this customer (FAILED - 1)



      def meals
        Meal.all.select do |meal|
          meal.customer == self #checking for waiter now
        end
      end
    #waiters
      #returns an Array of Waiter instances associated with this customer's meals (FAILED - 2)
      def waiters
        meals.map do |meal|
          meal.waiter
        end
      end
       
      end
