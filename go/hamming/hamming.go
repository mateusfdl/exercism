package hamming

import (
	"errors"
)

func Distance(a, b string) (int, error) {
	a_bytes_slice, b_bytes_slice := []byte(a), []byte(b)

	distance := 0

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
