// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package acronym should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package acronym

import (
	"regexp"
	"strings"
)

// Abbreviate should have a comment documenting it.

func Abbreviate(s string) string {
	acronym := ""

	splitedSpaces := regexp.MustCompile(`[^-A-Za-z\s]`).ReplaceAllString(ReplaceNonAlpha(s), "")

	for _, word := range strings.Split(splitedSpaces, " ") {
		if len(strings.TrimSpace(word)) > 0 {
			acronym += string(word[0])
		}
	}

	return strings.ToUpper(acronym)
}

func ReplaceNonAlpha(s string) string {
	return regexp.MustCompile(`[_/*-]`).ReplaceAllString(s, " ")
}
