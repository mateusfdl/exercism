class Series
  private

  attr_accessor :string

  def initialize(string)
    @string = string.chars
  end

  def slices(lenght)
    raise ArgumentError, 'Slices length cannot be longer than series length' unless lenght <= string.length

    string.each_cons(lenght).map(&:join)
  end
end
