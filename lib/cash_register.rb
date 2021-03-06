require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :price, :last_transaction
  
  def initialize(discount = 0)
    @items=[]
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, optional=1)
    
    self.total += price * optional
    optional.times do 
    @items << title
  end
  self.last_transaction = price * optional
 end
 
  def apply_discount
   
    if @discount > 0
       
       
       
       difference = @total * (@discount/100.0)
       @total = @total - difference
        
       "After the discount, the total comes to $#{total.to_i}."
     else
       "There is no discount to apply."
     end
  end
  
  def items
   @items
  end
  
  def void_last_transaction
    @total = @total - self.last_transaction
  end
end
