require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")


class GuestsTest < MiniTest::Test

def setup
 @guest1 = Guests.new("bob", 10)
end

def test_has_name
  assert_equal("bob", @guest1.name)
end

def test_has_money_in_wallet
  assert_equal(10, @guest1.wallet)
end

def test_buy_ticket
  @guest1.buy_ticket
  assert_equal(5, @guest1.wallet)
end


end
