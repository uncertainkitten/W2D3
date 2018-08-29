def remove_dups(arr)
  result = []
  arr.each {|el| result << el unless result.include?(el)}
  result
end

def two_sum(arr)
  result = []
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      next if idx2 <= idx1
      result << [idx1,idx2] if el1 + el2 == 0
    end
  end
  
  result
end