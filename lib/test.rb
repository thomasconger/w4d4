def my_uniq(arr=[])
  #return keys of hash
  #assess if each element is included in an array, conditionally shove
  #nil case
  hash = Hash.new {|h,k| h[k] = 0}
  arr.each do |ele|
    hash[ele] += 1
  end
  hash.keys
end


class Array
  def two_sum
    pairs = []
    self.each.with_index do |num, i|
      self.each.with_index do |num2, j|
        if j > i && num + num2 == 0
          pairs << [i,j]
        end
      end
    end
    pairs
  end
end

def my_transpose(arr=nil)
  return nil if arr.nil?

  length = arr.length

  output = Array.new(length) {Array.new(length,nil)}

  (0...length).each do |idx|
    (0...length).each do |jdx|
      output[jdx][idx] = arr[idx][jdx]
    end
  end
  output

end

def stock_picker(arr)
  output = []
  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      output << [i, j] if j > i
    end
  end
  output.inject do |acc, ele|
    if (ele[1] - ele[0]) > (acc[1] - acc[0])
      ele
    else
      acc
    end
  end
end

class Towers_of_Hanoi

  attr_reader :one, :two, :three

  def initialize
    @stack = [
      [3],
      [2],
      [1]
    ]

  end

  def input

  end


end
