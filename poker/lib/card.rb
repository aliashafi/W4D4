class Card

  SUIT_STRINGS = {
    :clubs    => "♣",
    :diamonds => "♦",
    :hearts   => "♥",
    :spades   => "♠"
  }

  VALUE_STRINGS = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

  POKER_VALUE = {
    :deuce => 2,
    :three => 3,
    :four  => 4,
    :five  => 5,
    :six   => 6,
    :seven => 7,
    :eight => 8,
    :nine  => 9,
    :ten   => 10,
    :jack  => 11,
    :queen => 12,
    :king  => 13,
    :ace  => 14
  }
  def valid?(suit_value)
    if !VALUE_STRINGS.keys.include?(suit_value) && !SUIT_STRINGS.keys.include?(suit_value)
      raise "invalid suit or value"
    end
    true
  end

  def initialize(value, suit)
    @value = value if valid?(value)
    @suit = suit if valid?(suit)
  end

  def self.get_values
    POKER_VALUE.keys
  end

  def self.get_suits
    SUIT_STRINGS.keys
  end

  def to_s
    VALUE_STRINGS[@value] + SUIT_STRINGS[@suit]
  end
end

if $PROGRAM_NAME == __FILE__ 
  new_card = Card.new(:ace, :clubs)
  puts new_card
end