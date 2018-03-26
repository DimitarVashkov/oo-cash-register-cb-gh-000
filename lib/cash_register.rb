
class CashRegister
  attr_reader :discount
  attr_accessor :total

  @items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(name,price,quantity=1)
    @total += 
  end

end
