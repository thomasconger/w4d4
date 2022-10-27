require 'rspec'
require 'test'

describe '#my_uniq' do

  # [0,1,2,3].my_uniq -> return [0,1,2,3]
  # [0,0,1,1,2,-3].my_uniq -> return [0,1,2,-3]
  # [] -> []
  # () no arguments -> []

  subject(:arr1) {[0,1,2,3]}
  subject(:arr2) {[0,0,1,1,2,-3]}
  subject(:arr3) {[0,1,0,0,0,0]}

  it "if all elements are unique, returns an equal array" do
    expect(my_uniq(arr1)).to eq(arr1)
  end

  it "if not all elements are unique, returns no duplicate values" do
    expect(my_uniq(arr2)).to eq(arr2.uniq)
  end

  it "if no argument, returns an empty array" do
    expect(my_uniq()).to eq([])
  end

  it "it should preserve order" do
    expect(my_uniq(arr3)).to eq([0,1])
  end

end

describe "Array#two_sum" do
  #subjects:cases
  #[-1,1].two_sum = [[0,1]]
  #[-1,2,3,4,1].two_sum = [[0,4]]
  #[-10,10,4,8,-4,-8].two_sum = [[0,1],[3,5],[4,6]]
  subject(:arr1) {[-1,1]}
  subject(:arr2) {[-1,2,3,4,1]}
  subject(:arr3) {[-10,10,4,8,-4,-8]}
  it "returns indices" do
    expect(arr1.two_sum).to eq([[0,1]])
  end
  it "ignores pairs that dont sum to zero" do
    expect(arr2.two_sum).to eq([[0,4]])
  end
  it "returns multiple pairs, sorted dictionary style" do
    expect(arr3.two_sum).to eq([[0,1],[2,4],[3,5]])
  end
end
