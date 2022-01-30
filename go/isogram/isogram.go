package isogram

import (
	"regexp"
	"unicode"
)

func IsIsogram(word string) bool {
	lettersMap := make(map[rune]bool)
	word = regexp.MustCompile(`[^a-zA-Z]`).ReplaceAllString(word, "")

	for _, letter := range word {
		if unicode.IsUpper(letter) {
			letter = unicode.ToLower(letter)
		}
		if lettersMap[letter] {
			return false
		}
		lettersMap[letter] = true
	}
	return true
}
