package raindrops

import (
	"fmt"
)

const testVersion = 2

var rule = []struct {
	number int
	match  string
}{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"},
}

func Convert(num int) string {
	var result string

	for _, v := range rule {
		if num%v.number == 0 {
			result = result + v.match
		}
	}

	if result == "" {
		return fmt.Sprintf("%d", num)
	} else {
		return result
	}
}
