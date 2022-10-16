class ResistorColorDuo
  RESISTORS_COLOR = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ].freeze

  def self.value(color)
    "#{RESISTOR.index(color[0])}#{RESISTORS_COLOR.index(color[1])}".to_i
  end
end
