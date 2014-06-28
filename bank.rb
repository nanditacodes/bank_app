class Bank
  attr_accessor :customer_id, :balance
  def initialize customer_id=0, customer_name="", balance=0
    @customer_id = customer_id
    @customer_name = customer_name
    @balance = balance
  end

  def add_funds amount
    ret = "success"
    if amount <= 0
      ret = "failure"
    else
      self.balance += amount
    end
    ret
  end

  def withdraw_funds amount
    ret = "success"
    if amount > 0
      amount < self.balance ? self.balance -=amount : ret="failure"
    end
    ret
  end

end
