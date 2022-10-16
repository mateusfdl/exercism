class Acronym
  def self.abbreviate(word)
    word.tr('-', ' ').split.map(&:chr).join.upcase
  end
end
