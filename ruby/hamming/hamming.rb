class Hamming
  class << self
    def compute(strand1, strand2)
      raise ArgumentError if strand1.length != strand2.length

      strand1.chars.zip(strand2.chars).count do
        _1 != _2
      end
    end
  end
end
