class Deck
  RANKS = ['A','K','Q','J','T','9','8','7','6','5','4','3','2']
  SUITS = ['s','c','h','d']
  
  attr_accessor :cards, :dealt
  def initialize
    @cards = []
    @dealt = []
  end

  def self.create
    my_deck = Deck.new
    RANKS.each do |rank|
      SUITS.each do |suit|
        my_deck.cards << Card.new(rank,suit)
      end
    end
    
    return my_deck
  end
  
  def shuffle
    @cards.shuffle!
  end
  
  def deal_card
    card = @cards.shift
    @dealt << card
    card
  end
    
end