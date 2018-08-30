require 'hand.rb'

RSpec.describe 'Hand class for poker' do
  describe 'Hand#initialize' do
    subject (:hand) {Hand.new}
    it 'initializes hand as an empty array' do 
      expect(hand.cards).to eq([])
    end
    
    it 'stores a hand value' do
      expect(hand.value).to_not be(nil)
    end
  end
  
  describe 'Hand#get_val' do
    let(:card1) {Card.new('A', 's')}
    let(:card2) {Card.new('K', 's')}
    let(:card3) {Card.new('Q', 's')}
    let(:card4) {Card.new('J', 's')}
    let(:card5) {Card.new('T', 's')}


    context 'straight flush' do
      subject(:hand) {Hand.new}
      let(:cards) {hand.cards = [card1,card2,card3,card4,card5]}
      it "recognizes a straight flush" do
        expect(get_val).to eq(13)
      end
      
      it "updates hand value to straight flush" do
        expect(hand.value).to eq(13)
      end
    end
    
  end
end