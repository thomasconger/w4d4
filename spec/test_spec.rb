require 'rspec'
require 'test'

describe '#my_uniq' do

  # [0,1,2,3].my_uniq -> return [0,1,2,3]
  # [0,0,1,1,2,-3].my_uniq -> return [0,1,2,-3]
  # [] -> []
  # () no arguments -> []

  subject(:arr1) {[0,1,2,3]}
  subject(:arr2) {[0,0,1,1,2,-3]}

  it "if all elements are unique, returns an equal array" do
    expect(my_uniq(arr1)).to eq(arr1)
  end

  it "if not all elements are unique, returns no duplicate values" do
    expect(my_uniq(arr2)).to eq(arr2.uniq)
  end

  it "if no argument, returns an empty array" do
    expect(my_uniq()).to eq([])
  end

end
