class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction_amount

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item(item, price, quantity=1)
        quantity.times do
            self.items << item
        end  
        @total += price * quantity
        @last_transaction_amount = price * quantity
    end
    def apply_discount
        if discount ===  0
            return "There is no discount to apply."
        else
            @total -= @total * (@discount/100.0)
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end
    def void_last_transaction
        @total -= @last_transaction_amount
    end
end

