# Write your code for the 'Microwave' exercise in this file. Make the tests in
# `microwave_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/microwave` directory.

class Microwave
  def initialize(seconds)
    @minutes = seconds / 100
    @seconds = seconds % 100
  end

  def timer
    if @seconds >= 60
      @seconds %= 60
      @minutes += 1
    end

    format('%<minutes>.2d:%<seconds>.2d', { minutes: @minutes, seconds: @seconds })
  end
end
