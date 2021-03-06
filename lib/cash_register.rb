
class CashRegister
  attr_reader :discount
  attr_accessor :total


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name,price,quantity=1)

    @items << [name,price,quantity]

    @total += price * quantity

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

  def  items
    result = []
    @items.each do |x|
      x[2].times do
        result << x[0]
      end
    end
    result
  end

  def void_last_transaction
    last_transaction = @items.pop()
    @total -= last_transaction[1] * last_transaction[2]
  end

end
