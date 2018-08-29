require 'card.rb'

RSpec.describe "Card class for poker" do
  subject(:card) {Card.new(9, "c")}
  describe "Card#initialize" do
    it "has a rank" do
      expect(card.rank).to eq(9)
    end
    
    it "has a suit" do
      expect(card.suit).to eq("c")
    end
  end
  
  describe "Card#to_s" do
    it "print the rank and suit" do
      expect(card.to_s).to eq("9c")
    end
  end
end