class Isogram
  class << self
    def isogram?(input)
      new(input).isogram?
    end
   
  end

  def initialize(words)
    @words = words.scan(/[a-z,A-z]/).join
  end 

  def isogram?
    @words.downcase.chars.uniq.length == @words.downcase.length
  end
end
