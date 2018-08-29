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

def my_transpose(matrix)
  result = Array.new(matrix.length) {[]} 
  matrix.each_with_index do |row,row_idx|
    row.each_with_index do |el, col_idx|
      result[col_idx][row_idx] = el
    end
  end
  result
end

def stock_picker(arr)
  max = 0
  sell = 0
  buy = 0
  
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      if el2 - el1 > max && idx2 >= idx1
        buy = idx1
        sell = idx2  
        max = el2 - el1 
      end
    end
  end
  [buy, sell]
    
end