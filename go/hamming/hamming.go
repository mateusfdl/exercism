package hamming

import (
	"errors"
)

func Distance(a, b string) (int, error) {
	distance, a_bytes_slice, b_bytes_slice := 0, []byte(a), []byte(b)

	if len(a) != len(b) {
		return distance, errors.New("Ditances converge")
	}

	for index := 0; index < len(a_bytes_slice); index++ {
		if a_bytes_slice[index] != b_bytes_slice[index] {
			distance++
		}
	}

	return distance, nil
}
