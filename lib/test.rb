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
