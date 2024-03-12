class Cat 
    attr_accessor :name, :age
    @@count = 0
    def initialize(name, age)
        @name=name
        @age=age
        @@count+=1
    end

    def crawl
        puts "Meow is crawling"
    end

    def climb
        puts "Meow is climbing"
    end

    def cry
        puts "Meow is crying"
    end

    def meow
        puts "Meow is meowing"
    end

    def say_intro
        puts "Meow is #{@name} and is #{@age} years old"
    end

    def self.count
        puts"Number of cats object : #{@@count}"
    end
end

cat=Cat.new("labish", 3)
beth=Cat.new("beth", 4)


cat.meow
cat.crawl
cat.climb
cat.cry
Cat.count

cat.say_intro

