require("minitest/autorun")
require("minitest/rg")
require("pry")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomsTest < MiniTest::Test

  def setup
    @song1 = Song.new("paranoid")
    @song2 = Song.new("crazy train")
    @song3 = Song.new("war pigs")

    @guest1 = Guests.new("Bob", 10, "paranoid")
    @guest2 = Guests.new("Charlotte", 15, "crazy train")
    @guest3 = Guests.new("Laura", 25, "war pigs")

    @room1 = Rooms.new("party room", [], [], 100)

  end

  def test_has_name
    assert_equal("party room", @room1.name)
  end

  def test_guest_count
  assert_equal(0, @room1.guest_count)
  end

  def test_add_guests
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(3, @room1.guest_count)
  end

  def test_remove_guests
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(3, @room1.guest_count)
    @room1.remove_guest(@guest1)
    assert_equal(2, @room1.guest_count)
  end

  def test_song_count
  assert_equal(0, @room1.song_count)
  end

  def test_add_song
    @room1.add_song(@song1)
    assert_equal(1, @room1.song_count)
  end

  def test_remove_song
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    assert_equal(3, @room1.song_count)
    @room1.remove_song(@song1)
    assert_equal(2, @room1.song_count)
  end

  def test_check_capacity__room_for_more
    assert_equal("come on in", @room1.check_capacity)
  end

  def test_check_capacity__no_more_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal("come back later", @room1.check_capacity)
  end

  def test_serve_customer
    @guest1.buy_ticket
    assert_equal(5, @guest1.wallet)
    @room1.add_entry_fee_to_till
    assert_equal(105, @room1.till)
  end

  # def test_favourite_song_is_playing
  #   @room1.add_song(@song1)
  #   @room1.add_guest(@guest1)
  #   @room1.favourite_song_is_playing(@guest1.favourite_song)
  #   assert_equal("woo",)
  # end

end
