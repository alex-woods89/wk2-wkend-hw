require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class GuestsTest < MiniTest::Test

def setup
 @guest1 = Guests.new("bob")
end

def test_has_name
  assert_equal("bob", @guest1.name)
end

end
