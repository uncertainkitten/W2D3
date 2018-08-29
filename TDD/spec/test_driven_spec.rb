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
  
  describe '#my_transpose' do
    let (:matrix) {[[1,2,3],[4,5,6],[7,8,9]]}
    it "transposes an array correctly" do
      expect(my_transpose(matrix)).to eq([[1,4,7],[2,5,8],[3,6,9]])
    end
    
    it "doesn't call Array#transpose" do
      expect(matrix).not_to receive(:transpose)
      my_transpose(matrix)
    end
  end
  
  describe '#stock_picker' do
    let(:prices) {[5,10,2,20,2]}
    it "gets the highest value pair" do
      expect(stock_picker(prices)).to eq([2,3])
    end
    
    it "buys before it sells" do
      temp = stock_picker(prices)
      expect((temp[0] < temp[1])).to be(true)
    end
  end
end