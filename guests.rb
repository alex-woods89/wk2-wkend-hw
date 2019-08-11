class Guests


attr_reader :name
attr_accessor :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def buy_ticket
  @wallet -= 5
end


end
