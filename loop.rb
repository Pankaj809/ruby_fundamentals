puts "Enter a sentence: "
sentence = gets.chomp
sentence = sentence.downcase
words_hash = Hash.new(0)
words = sentence.split(" ")
words.each do |word|
  words_hash[word] += 1
end
words_hash.each do |word, count|
  puts "#{word} is repeated: #{count} times."
end