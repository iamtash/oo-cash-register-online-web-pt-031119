class CashRegister

  attr_accessor :total, :discount, :items

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
    self.total *= self.discount if self.discount > 0
  end

  def void_last_transaction
  end

end
