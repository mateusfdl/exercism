class Scrabble
  PATTERN_MATCH_ONE_POINT = /a|e|i|o|u|l|n|r|s|t/
  PATTERN_MATCH_TWO_POINTS = /d|g/
  PATTERN_MATCH_TREE_POINTS = /b|c|m|p/
  PATTERN_MATCH_FOUR_POINTS = /f|h|v|w|y/
  PATTERN_MATCH_FIVE_POINTS = /k/
  PATTERN_MATCH_EIGTH_POINTS = /j|x/
  PATTERN_MATCH_TEN_POINTS = /q|z/

  class << self
    def score(word)
      new(word).score
    end
  end
    
  def initialize(word)
    @score = 0
    word&.chars&.each { compute _1 }
  end

  def compute(letter)
    case letter
    when PATTERN_MATCH_ONE_POINT then @score+=1   
    when PATTERN_MATCH_TWO_POINTS then @score+=2  
    when PATTERN_MATCH_TREE_POINTS then @score+=3 
    when PATTERN_MATCH_FOUR_POINTS then @score+=4  
    when PATTERN_MATCH_FIVE_POINTS then @score+=5  
    when PATTERN_MATCH_EIGTH_POINTS then @score+=8 
    when PATTERN_MATCH_TEN_POINTS then @score+=10 
    end
  end

  attr_reader :score
end
