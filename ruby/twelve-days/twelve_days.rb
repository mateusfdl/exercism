require 'byebug'
class TwelveDays
  DAYS = %w[
    first
    second
    third
    fourth
    fifth
    sixth
    seventh
    eighth
    ninth
    tenth
    eleventh
    twelfth
  ].freeze
  SONG = [
    "a Partridge in a Pear Tree.\n",
    'two Turtle Doves, and ',
    'three French Hens, ',
    'four Calling Birds, ',
    'five Gold Rings, ',
    'six Geese-a-Laying, ',
    'seven Swans-a-Swimming, ',
    'eight Maids-a-Milking, ',
    'nine Ladies Dancing, ',
    'ten Lords-a-Leaping, ',
    'eleven Pipers Piping, ',
    'twelve Drummers Drumming, ',
  ]

  def self.song
    (0..11).map do |weekday|
      "On the #{DAYS[weekday]} day of Christmas my true love gave to me: #{SONG.slice(0..weekday).reverse.join}"
    end.join("\n")
  end
end
