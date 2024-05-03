def reverse_alternate(text)

  # Remove leading and trailing whitespace
  trimmed_text = text.strip

  # Split the string into words while preserving spaces
  words = trimmed_text.split(/\s+/)

  # Reverse every other word in-place (even indexed)
  words.each_with_index do |word, index|
    words[index] = word.reverse if index.odd?
  end

  # Join the reversed words back into a string with spaces
  return words.join(' ')
end

reverse_alternate(" Did it  work?")
