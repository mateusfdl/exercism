class Matrix
  def initialize(string)
    @rows = string.split("\n").map {|x| x.split(' ').map(&:to_i)}
    @columns = rows.transpose
  end

  attr_reader :rows, :columns
end

