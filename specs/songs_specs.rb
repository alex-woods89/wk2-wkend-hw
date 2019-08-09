require ("minitest/autorun")
require ("minitest/rg")
require_relative("../songs")

class SongsTest < MiniTest::Test

  def setup

    @song1 = Song.new("paranoid")

  end

  def test_has_name
    assert_equal("paranoid", @song1.name)
  end

end
