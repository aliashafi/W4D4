
class Array 

  def my_uniq
    arr = []
    self.each_with_index do |ele, idx|
      if !arr.include?(ele)
        arr << ele
      end
    end
    arr
  end

  def two_sum
    answer = []
    (0...self.length).each do |idx|
      (idx...self.length).each do |idx2| 
        if idx != idx2
          answer << [ idx, idx2] if self[idx] + self[idx2] == 0
        end
      end
    end
    answer
  end

  def my_transpose
    re_arr = Array.new(self.length) {Array.new} 
    (0...self.length).each do |row|
      (0...self.length).each do |col|
        re_arr[col][row] = self[row][col]
      end
    end
    re_arr

  end
end