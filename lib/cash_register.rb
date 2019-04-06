class CashRegister

  attr_reader :total, :discount, :items

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
    self.discount > 0 ? self.total *= self.discount : 
  end

  def void_last_transaction
  end

end
