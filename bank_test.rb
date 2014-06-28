require 'minitest/autorun'
require 'minitest/pride'
require './Bank'
require 'minitest/sound'


class BankTest < Minitest::Test

  def setup
    @bank = Bank.new(1, "Joe", 100)
  end

  def test_get_initial_balance
    assert_equal 100, @bank.balance
  end
  
end
