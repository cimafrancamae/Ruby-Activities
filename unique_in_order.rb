
def unique_in_order(sequence)
  unique_list = []

  for i in 0...sequence.length
    current_item = sequence.is_a?(String) ? sequence[i] : sequence[i].to_s
    previous_item = sequence[i - 1].to_s if i > 0

    if i == 0 || current_item != previous_item
      unique_list << current_item
    end
  end

  return unique_list
end
  

  puts unique_in_order("AAAABBBCCDAABBB")
  puts unique_in_order("ABBCcAD")
  puts unique_in_order([1,2,2,3,3])
  





  # def unique_in_order(sequence)
#     unique_list = []
  
#     sequence.each_char do |char|
#       if unique_list.empty? || char != unique_list.last
#         unique_list << char
#       end
#     end
  
#     return unique_list
#   end