class Card
    attr_accessor :rank, :suit
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    # def to_s
    #     "#{@rank} #{@suit}"
    #   end
    
    

end
    
    class Deck
       # attr_accessor :cards
        def initialize
            @cards = []
            ranks = %w{2 3 4 5 6 7 8 9 10 J Q K A}
            suits = %w{Spades Hearts Diamonds Clubs}
            suits.each do |suit|
            ranks.each do |rank|

                @cards << Card.new(rank, suit)
            end
            end
        end


        def shuffle
            @cards.shuffle!
            
        end

        def deal
            card= @cards.shift
            puts "The dealed card is #{card.rank} of #{card.suit}"
        end

        
    end
    
    deck = Deck.new
    deck.shuffle
    deck.deal
    



    