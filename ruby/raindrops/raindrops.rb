class Raindrops
    
   RAINDROPS = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }.freeze

  def initialize(value)
    @value = value
  end

  def factors
    RAINDROPS.map { _2 if @value  % _1 == 0 }.compact.join
  end

  def print_result
    return value.to_s if factors.empty?
    factors
  end

  attr_reader :value

  class << self

    def convert(value)
      new(value).print_result
    end
  end
end
