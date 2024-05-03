def up_array(array)
  return nil if array.empty?

  if array.any? { |num| num < 0 || num > 9 }
    return nil
  end

  new_array = array.map do |num|
    Integer(num) if (0..9).include?(num)
  end

  # filter out non-integers and values outside 0-9 range
  new_array.compact

  # modulo 10 to handle overflow for single digit range
  new_array.map { |num| (num + 1) % 10 }
end

up_array([2,3,9])
