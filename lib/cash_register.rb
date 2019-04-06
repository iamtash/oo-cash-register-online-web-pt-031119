class CashRegister

  attr_accessor :total, :employee_discount, :items

  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount if employee_discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.items << title
    self.total += price * quantity
  end

  def apply_discount
    self.total = self.total * self.employee_discount * 0.1
  end

  def void_last_transaction
  end

end
