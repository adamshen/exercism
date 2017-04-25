package bob

import (
	"regexp"
	"strings"
	"unicode"
)

const testVersion = 2

func MatchAllSpace(input string) bool {
	for _, v := range input {
		if !unicode.IsSpace(v) {
			return false
		}
	}

	return true
}

func MatchChillOut(input string) bool {
	reAtLestOneUpper := regexp.MustCompile("[A-Z|ÄÜ]+")
	reLower := regexp.MustCompile("[a-z|ä]")

	return reAtLestOneUpper.MatchString(input) && !reLower.MatchString(input)
}

func MatchQuestion(input string) bool {
	return strings.HasSuffix(strings.Trim(input, " "), "?")
}

func Hey(input string) string {
	if input == "" || MatchAllSpace(input) {
		return "Fine. Be that way!"
	} else if MatchChillOut(input) {
		return "Whoa, chill out!"
	} else if MatchQuestion(input) {
		return "Sure."
	} else {
		return "Whatever."
	}
}
