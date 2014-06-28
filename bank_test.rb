require 'minitest/autorun'
require 'minitest/pride'
require './Bank'

class BankTest < Minitest::Test

  def setup
    bank_entry_1 = Bank.new(1, "Joe", 100)
    bank_entry_2 = Bank.new(2, "Jack", 200)
    bank_entry_3 = Bank.new(3, "Jane", 300)
    bank_entry_4 = Bank.new(4, "Jade", 400)
    @bank = [bank_entry_1, bank_entry_2, bank_entry_3, bank_entry4]
  end
  
end
