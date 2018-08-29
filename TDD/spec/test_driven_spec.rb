require 'test_driven.rb'

RSpec.describe "test driven" do
  describe '#remove_dups' do
    it 'return an array with all uniq values' do
      expect(remove_dups([1, 2, 2, 5, 6, 9, 5])).to eq([1, 2, 5, 6, 9])
  end
    it "doesn't call Array#uniq" do 
      arr = [1, 2, 2, 5, 6, 9, 5]
      expect(arr).not_to receive(:uniq)
      remove_dups(arr)
    end
  end
  
  describe '#two-sum' do
    let(:arr) {[0,1,-1,2]}
    it 'return an array with all uniq values' do
      expect(two_sum(arr)).to eq([[1,2]])
    end
  end
end