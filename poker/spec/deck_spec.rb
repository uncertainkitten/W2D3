require 'deck.rb'

RSpec.describe "Deck class for poker" do
  subject(:deck) {Deck.new}
  
  describe "Deck#initialize" do
    it "should have 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end
  
  describe "Deck#shuffle" do
    it "should shuffle the cards" do
      deck.shuffle
      expect(deck.cards).not_to eq(Deck.new.cards)
    end
  end
  
  describe "Deck#deal_card" do
   let(:player) {double('player')}
   let(:card) {deal_card(player)}
   it 'Returns a card' do
      expect(card.class).to be (Card) 
    end 
    it 'Removes card from deck' do 
      expect (deck.cards).to_not include(card)
    end
    it 'Adds card to dealt cards' do 
      expect(deck.dealt).to include(card)
    end
  end
end