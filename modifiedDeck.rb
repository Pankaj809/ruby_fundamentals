class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def numeric_value
    case @rank
    when 'A' then 1
    when 'J' then 11
    when 'Q' then 12
    when 'K' then 13
    else @rank.to_i
    end
  end
end

class Deck
  attr_reader :cards

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
    @cards.shift
  end
end

class InBetweenGame
  attr_reader :player1_cards, :player2_cards

  def initialize(deck)
    @deck = deck
    @player1_cards = []
    @player2_cards = []
  end

  def deal_initial_cards
    2.times do
      @player1_cards << @deck.deal
      @player2_cards << @deck.deal
    end
  end

  def play_game
    loop do
      deal_third_card
      display_cards(@player1_cards)
      display_cards(@player2_cards)
      if player1_wins?
        display_winner("Player 1")
        break
      elsif player2_wins?
        display_winner("Player 2")
        break
      end
    end
  end

  private

  def deal_third_card
    1.times do
      @player1_cards << @deck.deal
      @player2_cards << @deck.deal
    end
  end

  def player1_wins?
    card_falls_between?(@player1_cards[2], @player1_cards[0], @player1_cards[1])
  end

  def player2_wins?
    card_falls_between?(@player2_cards[2], @player2_cards[0], @player2_cards[1])
  end

  def card_falls_between?(card, first_card, second_card)
    card_value = card.numeric_value
    first_value = first_card.numeric_value
    second_value = second_card.numeric_value
    (first_value..second_value).include?(card_value) || (second_value..first_value).include?(card_value)
  end

  def display_cards(cards)
    puts "Cards: #{cards.map { |card| "#{card.rank} of #{card.suit}" }.join(', ')}"
  end

  def display_winner(winner)
    puts "#{winner} wins!"
  end
end

deck = Deck.new
deck.shuffle

game = InBetweenGame.new(deck)
game.deal_initial_cards
game.play_game
