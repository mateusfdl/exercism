class Complement
  RNA_MAP = {
    ?G => ?C,
    ?C => ?G,
    ?T => ?A,
    ?A => ?U
  }
  def self.of_dna(strand)
    strand.chars.map { RNA_MAP[_1] }.join
  end
end
