class Bank
  attr_accessor :customer_id, :balance
  def initialize customer_id=0, customer_name="", balance=0
    @customer_id = customer_id
    @customer_name = customer_name
    @balance = balance
  end
end
