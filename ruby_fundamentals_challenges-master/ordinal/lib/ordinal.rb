def ordinal(number)
  # your code here
  if number % 100 == 11 || number % 100 == 12 || number % 100 == 13
    return "#{number}th"
  elsif number.to_s.end_with?("1")
    return "#{number}st"
  elsif number.to_s.end_with?("2")
    return "#{number}nd"
  elsif number.to_s.end_with?("3")
    return "#{number}rd"
  else
    return "#{number}th"
  end
end

puts ordinal(22)



