
def remove_all_vowels(message)
  new_message = ''

  message.each_char do |char|
    new_message += char unless 'aeiouAEIOU'.include?(char)
  end

  new_message
end

puts remove_all_vowels('This website is for losers LOL!')
