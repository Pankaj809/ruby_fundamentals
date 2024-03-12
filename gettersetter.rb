# class Cat 

#     # attr_writer:name, :age
#     # attr_reader:name, :age
#     #combination of both attr_writer and attr_reader

#     attr_accessor :name, :age
#     def initialize(name, age)
#         @name=name
#         @age=age
#     end

#     # def name=(name)
#     #     @name=name
#     # end

#     # def age=(age)
#     #     @age=age
#     # end

#     def name
#         @name
#     end

#     def age
#         @age
#     end
# end

# cat1=Cat.new("Whiskers", 3)

# puts "befor: "+cat1.inspect

# cat1.name = "Whiskerandy"
# cat1.age = 4

# puts "After: "+ cat1.inspect

# puts "Name: #{cat1.name}"
# puts "Age: #{cat1.age}"



class Car
    attr_accessor :brand, :color, :maximum_passenger, :max_speed
    def initialize(brand, color, maximum_passenger,max_speed)
        @brand = brand
        @color = color
        @maximum_passenger = maximum_passenger
        @max_speed = max_speed
    end
end

car1=Car.new("BMW", "Black", 5, 240)

puts "Before: "+car1.inspect

car1.brand="Audi"
car1.color="Red"
car1.maximum_passenger=4
car1.max_speed=220

puts "After: "+car1.inspect

puts "Brand: #{car1.brand}"
puts "Color: #{car1.color}"
puts "Maximum Passenger: #{car1.maximum_passenger}"
puts "Max Speed: #{car1.max_speed}"