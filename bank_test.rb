require 'minitest/autorun'
require 'minitest/pride'
require './Bank'
require 'minitest/sound'

Minitest::Sound.success = 'xxx.mp3'

class BankTest < Minitest::Test

  def setup
    bank = Bank.new(1, "Joe", 100)end

end
