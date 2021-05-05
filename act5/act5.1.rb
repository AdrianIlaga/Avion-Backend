class Ride

    def initialize(km, fc, e)
        @distance = km.to_f  # Kilometers
        @fuel_cost = fc.to_f  # Pesos per litre
        @efficiency = e.to_f  # Litres per kilometer 
    end

    def total_cost()
        cost = @distance * @fuel_cost * @efficiency
        puts "The total cost would amount to #{cost} pesos"
    end

end

car_ride = Ride.new(300, 50, 0.107)
car_ride.total_cost

