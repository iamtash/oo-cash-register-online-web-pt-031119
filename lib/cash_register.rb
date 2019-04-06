class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items << title
    end
    self.total += price * quantity
  end

  def apply_discount
    if self.discount > 0
      discount = self.total * 0.1 * self.discount
      self.discount -= discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
  end

end
