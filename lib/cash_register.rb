class CashRegister
  attr_reader :total :employee_discount :items
  
  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
  end

  def apply_discount
  end

  
end
