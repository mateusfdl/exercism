require 'date'

class Meetup
  OFFSETS = {
    first: 1,
    second: 8,
    third: 15,
    fourth: 22,
    teenth: 13,
    last: -7
  }
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    date = Date.new(year, month, OFFSETS[schedule])
    date = date.next until date.send("#{weekday}?")
    date
  end
end
