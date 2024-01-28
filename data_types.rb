#1
puts '-' * 50
puts 'Activity #1:'
numbers = [1,2,3,4,5,6,7,8,9,10]

# numbers.each do |number|
#     puts number
# end

numbers.each { |number| puts number}

#2
puts '-' * 50
puts 'Activity #2:'

h = {a:1, b:2, c:3, d:4}
puts "Value of b is #{h[:b]}"
h[:e] = 5
puts "Updated hash is #{h}"

#3
puts '-' * 50
puts 'Activity #3:'

contact_data = [
  ["john@email.com", "123 Main st.", "555-123-4567"],
  ["avion@email.com", "404 Not Found Dr.", "123-234-3456"]  
]

contacts = {"John Cruz": {}, "Avion School": {}}

def merge_contact_data(contact_data, contacts)
  contacts.each_with_index do |(person, contact), index |
    email, address, phone = contact_data[index]
    contact[:email] = email
    contact[:address] = address
    contact[:phone] = phone
  end
end

puts merge_contact_data(contact_data, contacts)

#4
puts '-' * 50
puts 'Activity #4:'
puts "How old are you?"
age = gets.chomp.to_i

puts "In 10 years you will be: #{age + 10}"
puts "In 20 years you will be: #{age + 20}"
puts "In 30 years you will be: #{age + 30}"
puts "In 40 years you will be: #{age + 40}"

#5
puts '-' * 50
puts 'Activity #5:'

arr = [1,3,5,7,9,11]
number = 3

def check_number(arr, number)
  
  # arr.include?(number)

  arr.each do |x|
    puts true if x == number
  end
end

result = check_number(arr,number)
puts result

#6
puts '-' * 50
puts 'Activity #6:'

def number_between(num)
  if num < 0
    puts "less than 0"
  elsif num >= 0 && num <= 50
    puts "between 0-50"
  elsif num >= 51 && num <= 100
    puts "between 51-100"
  else
    puts "above 100"
  end
end

puts "Please enter a number between 0 and 100:"
num = gets.chomp.to_i

number_between(num)


#3 (Day 2)
puts '-' * 50
puts 'Activity #3 (Day 2):'

input = ""
while input.downcase != "stop"
  puts "Type something (or STOP to end):"
  input = gets.chomp
end

#4 (Day 2)
puts '-' * 50
puts 'Activity #4 (Day 2):'

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

# new_arr = arr.select { |num| num % 2 == 0 }
# new_arr = arr.select { |num| num.even? }

new_arr = []

arr.each do |num|
  if num % 2 == 0
    # new_arr << num
    new_arr.push num
  end
end

puts "Numbers divisible by 2: #{new_arr}"