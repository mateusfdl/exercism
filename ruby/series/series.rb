class Series
 private

 attr_accessor :string

  def initialize(string)
	 	@string = string.chars
  end

 public

  def slices(lenght)
	unless lenght <= string.length

		raise ArgumentError, 'Slices length cannot be longer than series length'

	end

	@string.each_cons(lenght).map(&:join)
  end

end
