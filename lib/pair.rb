
    attr_accessor :total, :discount, :items
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        
       
    end
    def add_item(item, price, quantity=1)
       quantity.times do
           self.items<<item
       end
       @total = (@total+(price*quantity))
    end
    def apply_discount
        if discount >0
        @total=(@total-@total/100*@discount)
        return "After the discount, the total comes to $#{@total}."
        elsif discount == 0
            return "There is no discount to apply."
        end
    end
    def items
        return @items 
    end
end