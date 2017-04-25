package accumulate

const testVersion = 1

func Accumulate(input []string, do_method func(string) string) []string {
	for i, v := range input {
		input[i] = do_method(v)
	}

	return input
}
