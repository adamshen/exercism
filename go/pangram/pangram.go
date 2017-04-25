package pangram

import (
	"strings"
	"unicode"
)

const testVersion = 1

func IsPangram(input string) bool {
	var letters string

	for _, v := range input {
		if v >= 'A' && v <= 'z' {
			letter := string(unicode.ToLower(v))
			if strings.Index(letters, letter) == -1 {
				letters = letters + letter
			}
		}
	}

	return len(letters) == 26
}
