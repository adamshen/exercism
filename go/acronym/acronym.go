package acronym

import (
	"regexp"
	"strings"
	"unicode"
)

const testVersion = 2

func Abbreviate(sentence string) string {
	re := regexp.MustCompile("[A-Z]{2,}")
	title := re.FindString(sentence)
	if len(title) > 0 {
		return title
	}

	var letters string
	words := strings.Split(strings.Title(sentence), " ")
	for _, word := range words {
		for _, charInWord := range word {
			if unicode.IsUpper(charInWord) {
				letters = letters + string(charInWord)
			}
		}
	}

	return letters
}
