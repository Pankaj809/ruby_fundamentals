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

    def say_human_age
        if @age==1
            human_years=15
        elsif @age==2
            human_years=24
        else
            human_years=24+(@age-2)*4
        end
        puts "I'm #{@age} years old in cat years and #{human_years} years old in human years"

    end
end


cat1=Cat.new("labish", 3)
cat2=Cat.new("beth", 4)
cat3=Cat.new("cathy", 5)

cat1.say_human_age
cat2.say_human_age
cat3.say_human_age


cat.meow
cat.crawl
cat.climb
cat.cry
Cat.count

cat.say_intro

