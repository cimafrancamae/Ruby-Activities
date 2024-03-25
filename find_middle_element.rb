def find_middle_element(arr)

  sum = arr.sum

  middle = sum - arr.min - arr.max

  index = arr.index(middle)

  puts "#{middle} is the number that fits between #{arr.min} and #{arr.max} and the index of  #{middle} in the input array is #{index}"

end

arr = [2,3,1]
find_middle_element(arr)

arr = [5,10,14]
find_middle_element(arr)
