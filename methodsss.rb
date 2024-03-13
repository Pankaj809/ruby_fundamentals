# class Pen 
#     def self.disappear
#         puts "all pen are hidden"
#     end
#     def write 
#         puts "writitng"
#     end
# end

# a = Pen.new
# Pen.disappear


class Pen
    attr_accessor :color
    def initialize
        @color="blue"
    end
    def write
        puts "writing with #{self.color} pen"
        
    end
end

pen1=Pen.new
puts pen1.write

pen1.color="red"
puts pen1.write

pen2=Pen.new
puts pen2.write


#self is a special variable that points to the object that "owns" the currently executing code. In other words, it refers to the instance of the class that is being used. 
#In the above example, self.color refers to the color attribute of the pen object that is currently being used. 
#This allows us to access and modify the attributes and methods of the current object within the class definition. 
#In the write method, self.color refers to the color attribute of the pen object that is calling the method. 
#This allows us to write a message that includes the color of the pen that is currently being used. 
#This is a common use case for self within a class definition. 
#It allows us to access and modify the attributes and methods of the current object within the class definition. 
#This is a common use case for self within a class definition.