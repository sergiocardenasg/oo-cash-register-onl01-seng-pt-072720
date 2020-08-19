class CashRegister
  attr_accessor :total, :discount, :quantity, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (item, price, quantity = 1)
    self.total +=  (price * quantity)
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      self.total *= ((100 - self.discount)/100)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
