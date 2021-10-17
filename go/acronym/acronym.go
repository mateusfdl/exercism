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
var acronym []string

func Abbreviate(s string) string {

	splitedSpaces := strings.Split(ReplaceNonAlpha(s), " ")

	for _, word := range splitedSpaces {
		acronym = append(acronym, strings.ToUpper(word[0:1]))
	}

	return strings.Join(acronym, "")
}

func ReplaceNonAlpha(s string) string {

	return regexp.MustCompile(`[_/*-]`).ReplaceAllString(s, " ")
}
