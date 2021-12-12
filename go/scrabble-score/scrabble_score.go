package scrabble

import (
	"regexp"
	"strings"
)

var (
	onePointRegexp    = regexp.MustCompile("^[a|e|i|o|u|l|n|r|s|t]")
	twoPointsRegexp   = regexp.MustCompile("^[d|g]")
	treePointsRegexp  = regexp.MustCompile("^[b|c|m|p]")
	fourPointsRegexp  = regexp.MustCompile("^[f|h|v|w|y]")
	fivePointsRegexp  = regexp.MustCompile("^[k]")
	eightPointsRegexp = regexp.MustCompile("^[j|x]")
	tenPointsRegexp   = regexp.MustCompile("^[q|z]")
)

func Score(word string) int {
	points := 0

	for _, value := range strings.ToLower(word) {
		points += pointsFor(string(value))
	}

	return points
}

func pointsFor(str string) int {
	switch {
	case onePointRegexp.MatchString(str):
		return 1
	case twoPointsRegexp.MatchString(str):
		return 2
	case treePointsRegexp.MatchString(str):
		return 3
	case fourPointsRegexp.MatchString(str):
		return 4
	case fivePointsRegexp.MatchString(str):
		return 5
	case eightPointsRegexp.MatchString(str):
		return 8
	case tenPointsRegexp.MatchString(str):
		return 10
	}
	return 0
}
