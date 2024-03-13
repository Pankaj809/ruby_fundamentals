#FooBar Challenge
puts "How many number do you want to see?"
    num=gets.chomp.to_i
    (1..num).each do |i|
        if i%3==0 && i%5==0
            puts "FooBar"
        elsif i%3==0
            puts "Foo"
        elsif i%5==0
            puts "Bar"
        else
            puts i
        end
    end