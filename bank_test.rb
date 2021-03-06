require 'minitest/autorun'
require 'minitest/pride'
require './Bank'


class BankTest < Minitest::Test

  def setup
    @bank = Bank.new("Joe", 100)
  end

  def test_get_initial_balance
    assert_equal 100, @bank.balance
  end

  def test_add_valid_funds
    result = @bank.add_funds 100
    assert_equal "success", result
  end

  def test_add_invalid_funds
    result = @bank.add_funds -1
    assert_equal "failure", result
  end

  def test_withdraw_valid_funds
    result = @bank.withdraw_funds 50
    assert_equal "success", result
  end

  def test_withdraw_entire_balance
    result = @bank.withdraw_funds 100
    assert_equal "failure", result
  end

  def test_withdraw_more_than_balance
    result = @bank.withdraw_funds 200
    assert_equal "failure", result
  end

  def test_withdraw_0
    result = @bank.withdraw_funds 0
    assert_equal "success", result
  end

  def test_get_balance
    @bank.add_funds 200
    assert_equal 300, @bank.balance
  end

  def test_get_customer_name
    assert_equal "Joe", @bank.customer_name
  end

end
