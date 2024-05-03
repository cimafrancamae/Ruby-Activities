def letter_count(string)
  letters = Hash.new(0)

  string.each_char do |char|
    char = char.downcase

    letters[char.to_sym] += 1
  end
  letters.sort_by { |key, _| key }.to_h
end

letter_count('arithmetics')
