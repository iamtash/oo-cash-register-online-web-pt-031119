class CashRegister

  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount * 0.1
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.items << title
    self.total += price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total *= self.discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
  end

end
