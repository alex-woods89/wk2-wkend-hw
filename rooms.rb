class Rooms

  attr_reader :name

  def initialize(name, guests, songs)
    @name = name
    @guests = []
    @songs = []
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
end
