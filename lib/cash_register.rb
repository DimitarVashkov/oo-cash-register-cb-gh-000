
class CashRegister
  attr_reader :discount
  attr_accessor :total



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name,price,quantity=1)
    @total += price * quantity
    @items << name
  end

  def apply_discount
    if @discount != 0
      puts
      @total = @total * (100-discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end


end
