require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :price
  
  def initialize( discount = 0)
    @items=[]
    @total = total
    @discount = discount
    @price = price
  end
  
  def add_item(title, price, optional=1)
    
    total = price * optional
    @total += total
    @items << title
 end
 
  def apply_discount
   
    if @discount > 0
       
       binding pry
       total
       #difference = @price * (@discount/100)
       #total = total - difference
        
       "After the discount, the total comes to $#{total}."
     else
       "No discount to apply"
     end
  end
  
  def items(array)
   
  end
  
  def void_last_transaction
  end
end
