require 'deck.rb'

RSpec.describe "Deck class for poker" do
  subject(:deck) {Deck.create}
  
  describe "Deck#initialize" do
    it "should have 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
    
    it "has a 'dealt cards' instance variable" do
      expect(deck.dealt).to eq([])
    end
  end
  
  describe "Deck#shuffle" do
    it "should shuffle the cards" do
      deck.shuffle
      expect(deck.cards).not_to eq(Deck.create.cards)
    end
  end
  
  describe "Deck#deal_card" do
   let(:card) {deck.deal_card}
   
   it 'Returns a card' do
      expect(card.class).to be (Card) 
    end 
    
    it 'Removes card from deck' do 
      expect(deck.cards).not_to include(card)
    end
    
    it 'Adds card to dealt cards' do 
      expect(deck.dealt).to include(card)
    end
    
  end
end