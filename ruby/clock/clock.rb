# Write your code for the 'Clock' exercise in this file. Make the tests in
# `clock_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/clock` directory.
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    add_one_hour_for_each_sixty_minute
    reset_after_twenty_four_hours
  end

  def to_s
    format('%<hour>.2d:%<minute>.2d', { hour: @hour, minute: @minute })
  end

  def add_one_hour_for_each_sixty_minute
    while @minute >= 60
      @minute -= 60
      @hour += 1
    end

    while @minute.negative?
      @minute += 60
      @hour -= 1
    end
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  def reset_after_twenty_four_hours
    @hour -= 24 while @hour >= 24
    @hour += 24 while @hour.negative?
  end
end
