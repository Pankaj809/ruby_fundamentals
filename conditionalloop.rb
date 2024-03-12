def is_divisible_by_7_or_11?(number)
  if number % 7 == 0 || number % 11 == 0
    return puts"#{number} is divisible by 7 or 11"
  else
    return puts"#{number} is not divisible by 7 or 11"
  end
end


is_divisible_by_7_or_11?(577)

