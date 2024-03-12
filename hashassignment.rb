user_data = {}

puts "Enter first name: "
user_data[:name1] = gets.chomp

puts"Enter second name: "
user_data[:name2]=gets.chomp

puts "Enter third name: "
user_data[:name3]=gets.chomp

puts "Enter fourth name: "
user_data[:name4]=gets.chomp

value_counts = user_data.values.tally
puts "Number of times each value is repeated:"

value_counts.each {| value, count | puts "#{value}: #{count}" }

