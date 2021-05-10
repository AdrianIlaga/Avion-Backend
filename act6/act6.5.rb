# Bad Code

class Store
    
    def initialize(user)
        # For Local (If buying local, use this)
        @local = LocalMarket.new(user)

        # For International (If buying international, use this)
        # @international = IntlMarket.new()
        # @user = user
    end

    def purchaseGarlic(quantity)
        quantity = quantity.to_f

        @local.makePayment(6.0 * quantity) # (If buying local, use this)

        # @international.makePayment(@user, (6.0 * quantity / 50)) # (If buying international, use this)
    end

end

class LocalMarket

    def initialize(user)
        @user = user
    end

    def makePayment(amount_in_pesos)
        puts "#{@user} will pay #{amount_in_pesos} pesos to the Local Market"
    end

end

class IntlMarket

    def makePayment(user, amount_in_dollars)
        puts "#{user} will pay #{amount_in_dollars*50} pesos to the International Market"
    end

end

local = Store.new("Analyn")
local.purchaseGarlic(25)

# international = Store.new("John")
# international.purchaseGarlic(35)

# Good Code

class Store2
    
    def initialize(processor)
        @processor = processor
    end

    def purchaseGarlic(quantity)
        quantity = quantity.to_f
        @processor.pay(6.0 * quantity)

    end

end

class LocalPaymentProcessor
    def initialize(user)
        @local = LocalMarket.new(user)
    end

    def pay (amount_in_pesos)
        @local.makePayment(amount_in_pesos)
    end
end

class IntlPaymentProcessor
    def initialize(user)
        @international = IntlMarket.new()
        @user = user
    end

    def pay (amount_in_pesos)
        @international.makePayment(@user, amount_in_pesos/50)
    end
end

class LocalMarket

    def initialize(user)
        @user = user
    end

    def makePayment(amount_in_pesos)
        puts "#{@user} will pay #{amount_in_pesos} pesos to the Local Market"
    end

end

class IntlMarket

    def makePayment(user, amount_in_dollars)
        puts "#{user} will pay #{amount_in_dollars*50} pesos to the International Market"
    end

end

local2 = Store2.new(LocalPaymentProcessor.new("Joseph"))
local2.purchaseGarlic(50)

international2 = Store2.new(IntlPaymentProcessor.new("Joestar"))
international2.purchaseGarlic(70)