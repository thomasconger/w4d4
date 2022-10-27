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

describe "#my_transpose" do

  subject(:arr){[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}

  it "returns a square matrix of identical size" do
    expect(my_transpose(arr).length).to eq(3)
  end

  it "returns nil if no argument is given" do
    expect(my_transpose).to eq(nil)
  end

  it "tranposes the argument" do
    expect(my_transpose(arr)).to eq([
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
      ])
  end


end

describe "#stock_picker" do
  #arr of prices of stocks
  subject(:p1) {[1,2,3,4,5]}
  subject(:p2) {(0..100).to_a.sample(5)}
  #ordered pair, order uniq
  #return indices, to indicate day
  #buy on first day and sell on last day
  #iterate through arr and making a set of ranges
  #five elements, four days where we can sell if we buy on
  #day 1
  it "should buy on first day and sell on last day for simple case" do
    expect(stock_picker(p1)).to eq([0,4])
  end

  it "should never buy on the last day" do
    expect(stock_picker(p2).first).not_to eq((p2).last)
  end

  it "should never sell before buying" do
    expect((stock_picker(p1))[0] < stock_picker(p1)[-1]).to eq(true)
  end

end

describe "#towers_or_honoi" do
  # In a loop, prompt the user (using gets) and ask what pile to select a disc from and where to put it.

  #   After each move, check to see if they have succeeded in moving all the discs to the final pile. If so, they win!

  # Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:

  

end
