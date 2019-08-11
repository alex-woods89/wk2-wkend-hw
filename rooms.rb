class Rooms

  attr_reader :name
  attr_accessor :till

  def initialize(name, guests, songs, till)
    @name = name
    @guests = []
    @songs = []
    @till = till
  end
  #count number of guests already in guests array
  def guest_count
    return @guests.count
  end
  #add a guest to the guests array in room
  def add_guest(guest_to_be_added)
    @guests << guest_to_be_added
  end
  #remove a guest from the guests array
  def remove_guest(guest_to_be_removed)
    @guests.delete(guest_to_be_removed)
  end
  #count number of somgs already in songs array
  def song_count
    return @songs.count
  end
  #adds a song to the song array
  def add_song(song_to_be_added)
    @songs << song_to_be_added
  end

  def remove_song(song_to_be_removed)
    @songs.delete(song_to_be_removed)
  end

  def check_capacity
   @guests.count < 2 ? "come on in" : "come back later"
  end

  def add_entry_fee_to_till
    @till +=  5
  end

  # def favourite_song_is_playing(room_playlist)
  #   for song in @songs
  #     if song == @favourite_song
  #       return "woo"
  #   end
  # end
  # end

end
