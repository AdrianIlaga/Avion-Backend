class Ride

    def initialize(m, fc, e)
        @distance = m.to_f  # meters
        @fuel_cost = fc.to_f  # Pesos per litre
        @efficiency = e.to_f  # Litres per kilometer 
    end

    def total_cost()
        cost = kilometers * cost_per_kilometer
        puts "The total cost would amount to #{cost} pesos"
    end

    private

    def cost_per_kilometer
        @fuel_cost * @efficiency
    end

    def kilometers
        @distance/1000
    end

end

car_ride = Ride.new(420000, 50, 0.107)
car_ride.total_cost