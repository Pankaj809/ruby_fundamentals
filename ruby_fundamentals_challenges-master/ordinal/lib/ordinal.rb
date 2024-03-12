def ordinal(number)
  # your code here
  if number.to_s.end_with?("1") && number != 11 
    return "#{number}st"
  elsif number.to_s.end_with?("2") && number != 12 && number != 112 && number != 1012
    return "#{number}nd"
  elsif number.to_s.end_with?("3") && number != 13 && number != 213
    return "#{number}rd"
  else
    return "#{number}th"
  end
end 
