class CashRegister
  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
  end

  def total
    @total
  end

  def add_item(title, price)
  end
end
