require 'rspec'

def find_smallest_int(arr)
  return arr.min
end

describe 'find_smallest_int' do
  it 'returns the smallest integer given an array' do
    arr = [34, 15, 88, 2]
    expect(find_smallest_int(arr)).to eq(2)

    arr = [25, 8, -8, 1]
    expect(find_smallest_int(arr)).to eq(-8)

    arr = [34, -345, -1, 100]
    expect(find_smallest_int(arr)).to eq(-345)
  end
end

arr = [34, 15, 88, 2]
puts find_smallest_int(arr)

arr = [25, 8, -8, 1]
puts find_smallest_int(arr)

arr = [34, -345, -1, 100]
puts find_smallest_int(arr)