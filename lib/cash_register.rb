class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity

  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    self.total +=  (price * quantity)
    @items << item
  end

  def apply_discount
    self.total = total * (1 - (discount/100))
  end

  def items
    @items
  end

  def void_last_transaction
    @total
  end
end
