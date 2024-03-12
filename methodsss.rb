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
