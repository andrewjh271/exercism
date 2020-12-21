require "ordinalize_full/integer"

class TwelveDays
  GIFTS = [
    "a Partridge in a Pear Tree",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"
  ].freeze

  def self.song
    1.upto(GIFTS.length).map { |index| verse(index) }.join("\n")
  end

  def self.verse(verse_number)
    "#{prologue(verse_number)} #{body(verse_number)}.\n"
  end

  def self.prologue(verse_number)
    "On the #{(verse_number).ordinalize_full} day of Christmas my true love gave to me:"
  end

  def self.body(verse_number)
    GIFTS.first(verse_number).reverse.join(", ").sub(/.*\K,/, ", and")
  end
end