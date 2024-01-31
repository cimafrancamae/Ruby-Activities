
def is_isogram(word)    
    letters = Set.new
    word.each_char do |letter|
        return false if letters.include?(letter.downcase)
        letters.add(letter.downcase)
    end
    true
end

puts is_isogram('Dermatoglyphics')
puts is_isogram('aba')
puts is_isogram('moOse')