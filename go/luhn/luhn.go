package luhn

func Valid(id string) bool {
	var sum, totalDigits int
	double := false

	for i := len(id) - 1; i >= 0; i-- {
		v := id[i]

		if v == ' ' {
			continue
		}

		if v < '0' || v > '9' {
			return false
		}
		totalDigits++

		n := int(v - '0')
		if double {
			n *= 2
			if n > 9 {
				n -= 9
			}
		}

		sum += n
		double = !double
	}

	return totalDigits > 1 && sum%10 == 0
}
