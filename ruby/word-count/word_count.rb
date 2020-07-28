class Phrase
		def initialize(string)
			@string = string
		end

		def words
			@string.downcase.scan(/[[:alnum:]]+/)
		end

		def word_count
			words.each_with_object(Hash.new(0)) do |word, count|
				count[word] += 1
			end
		end
end
