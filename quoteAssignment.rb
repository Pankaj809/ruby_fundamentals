class Quote
    attr_accessor :author, :content
    @@all_quotes=[]

    def initialize(content, author)
        @content=content
        @author=author
        @@all_quotes << self
    end

    def show_quote
        puts "#{@content} - #{@author}"
    end

    def self.random
        random_quote= @@all_quotes.sample
        puts random_quote.content
    end
end


Quote.new("I'm not a cat", "Beth")
Quote.new("I'm not a dog", "Cathy")
Quote.new("I'm not a human", "Labish")

Quote.random

new_quote=Quote.new("Bright like a diamond", "Rihanna")
new_quote.show_quote