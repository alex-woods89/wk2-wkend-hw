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
  assert_equal(10, @guest.wallet)
end

def test_can_buy_ticket
end

end
