def encode(string)
  vowel_mapping = { 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5' }
  new_string = ''

  string.chars.map do |char|
    new_string += vowel_mapping[char] || char
  end

  new_string
end

def decode(encoded_string)
  number_mapping = { '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u' }
  decoded_string = ''

  encoded_string.chars.map do |char|
    decoded_string += number_mapping[char] || char
  end

  decoded_string
end

encoded_string = encode('hello')
decode(encoded_string)

decoded_string = decode('h3 th2r2')
encode(decoded_string)
