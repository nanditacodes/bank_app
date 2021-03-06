class Bank
  attr_accessor :customer_name, :balance
  def initialize customer_name="", balance=0
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
    if amount >= 0
      amount < self.balance ? self.balance -=amount : ret="failure"
    end
    ret
  end

end
