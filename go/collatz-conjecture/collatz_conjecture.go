package collatzconjecture

import "errors"

var ErrInvalidValue = errors.New("invalid value")

func CollatzConjecture(n int) (int, error) {
	for i := 0; ; i++ {
		if n == 1 {
			return i, nil
		}

		if n < 1 {
			return 0, ErrInvalidValue
		}

		if n%2 == 0 {
			n /= 2
		} else {
			n = 3*n + 1
		}
	}
}
