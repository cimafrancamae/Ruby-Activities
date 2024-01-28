require 'rspec'

def square_of_squares(num)
  # code here
  # (-1..num).any? { |i| i*i == num }
  return false if num < 0

  i = 0
  while i * i <= num
    return true if i * i == num
    i+=1
  end

  false
  
end

describe 'square_of_squares' do
  it 'checks if a given integer is a perfect square' do
  expect(square_of_squares(-1)).to eq(false)
    expect(square_of_squares(0)).to eq(true)
    expect(square_of_squares(3)).to eq(false)
    expect(square_of_squares(4)).to eq(true)
    expect(square_of_squares(25)).to eq(true)
    expect(square_of_squares(26)).to eq(false)
  end
end