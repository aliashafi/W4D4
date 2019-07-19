require_relative "card"
class Deck
  attr_reader :cards

  def self.all_cards
    cards = []
    Card.get_values.each do |val|
      Card.get_suits.each do |suit|
        cards << Card.new(val, suit)
      end
    end
    cards
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  def deal(num_cards)
    #we are return 5 random cards
    dealt = @cards.sample(num_cards)
    remove_cards(dealt)
    dealt
  end

  def remove_cards(arr)
    ##remove from dek
    @cards -= arr
  end

end

if $PROGRAM_NAME == __FILE__ 
  deck = Deck.new
  test = deck.cards
  deck.deal(5)
  test2 = deck.cards
  p test2.all? {|card| test.include?(card)}
end