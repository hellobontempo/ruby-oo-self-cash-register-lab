
class CashRegister
    attr_accessor :discount, :total, :cart, :quantity, :title, :price, :last_transaction

    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @title = title
        @price = price
        @quantity = quantity
    end

    def add_item (title, price, quantity=1)
        count = 0
        @total += price*quantity
        while count < quantity 
            @cart << title
            count += 1
        end
        self.last_transaction = price*quantity
    end

    def apply_discount
        self.total = @total - (@total * (@discount.to_f/100)) 
        if @discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{Integer(@total)}."
        end
    end

    def items
        @cart
    end

    def void_last_transaction
    @total -= self.last_transaction.to_f
    end
end