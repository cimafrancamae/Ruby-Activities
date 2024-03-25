def reverse_string(str)
  reversed = ''
  i = str.length - 1

  while i>= 0
    reversed += str[i]
    i -= 1
  end

  return reversed

end

puts reverse_string("hello")
puts reverse_string("avion")
